#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    productsBtnPtr_ = ui->productsBtn;
    saleReportBtnPtr_ = ui->saleReportBtn;
    inventoryBtnPtr_ = ui->inventoryBtn;
    menuBtnPtr_ = ui->menuBtn;
    salePosBtnPtr_ = ui->salePosBtn;

    addItemBtnPtr_ = ui->addItemBtn;
    listWidgetPtr_ = ui->listWidget;
    gridWidgetPtr_ = ui->gridWidget;
    lineEditPtr_ = ui->lineEdit;

    titleLabelPtr_ = ui->label;

    connect(menuBtnPtr_, &QPushButton::clicked, this, &MainWindow::menuBtn_clicked);
    connect(salePosBtnPtr_, &QPushButton::clicked, this, &MainWindow::salePosBtn_clicked);
    connect(addItemBtnPtr_, &QPushButton::clicked, this, &MainWindow::addItemBtn_clicked);
    
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::menuBtn_clicked() //menu btn function
{

    qDebug()<< "about to toogle menus";

    if (!showMenu_){
        qDebug()<< "showMenu = false";
        salePosBtnPtr_->show();
        productsBtnPtr_->show();
        saleReportBtnPtr_->show();
        inventoryBtnPtr_->show();
        addItemBtnPtr_->show();// search btn အဖြစ်ပြောင်းရန်။
        listWidgetPtr_->show();
        lineEditPtr_->show();
        showMenu_ = true;
    }
    else {
        qDebug()<< "showMenu = true";
        salePosBtnPtr_->hide();
        productsBtnPtr_->hide();
        saleReportBtnPtr_->hide();
        inventoryBtnPtr_->hide();
        resetGridLayout();
        listWidgetPtr_->hide();
        lineEditPtr_->hide();
        addItemBtnPtr_->hide();
        titleLabelPtr_->setText("Point Of Sale System");
        showMenu_ = false;
    }
    
}


void MainWindow::salePosBtn_clicked()
{
    qDebug()<< "about to go sale panel";
    resetGridLayout();
    emit getProductsData(); //
}

void MainWindow::addItemBtn_clicked()
{
    qDebug()<< "adding items on list widgets";
    static int count = 1;
    listWidgetPtr_->addItem("Sale Items " + QString::number(count++));
}


void MainWindow::receivedProductsData(QString name, int stock_count)
{
    qDebug()<< "receivedProducts Data: ";
    // graphic render on gridWidget.
    titleLabelPtr_->setText("အမြတ်ကောင်းကောင်းနဲ့ ရှယ်ရောင်း");
    
    // gridWidgetPtr_ already has ready

    QGridLayout *gridLayout = qobject_cast<QGridLayout*>(gridWidgetPtr_->layout());
    if (!gridLayout) {
        gridLayout = new QGridLayout(gridWidgetPtr_);
        gridWidgetPtr_->setLayout(gridLayout);
    }

    // Create a new product widget
    QWidget *productWidget = new QWidget(gridWidgetPtr_);
    productWidget->setStyleSheet("background-color: lightblue; border: 1px solid black;");
    productWidget->setFixedSize(100, 100); // Square size

    // Add label inside widget
    QLabel *label = new QLabel(name + "\nStock: " + QString::number(stock_count), productWidget);
    label->setAlignment(Qt::AlignCenter);

    // Use a layout inside the widget
    QVBoxLayout *layout = new QVBoxLayout(productWidget);
    layout->addWidget(label);
    layout->setContentsMargins(5, 5, 5, 5);
    productWidget->setLayout(layout);

    // Find the next available position in the grid
    int row = gridLayout->rowCount();
    int col = gridLayout->count() % 3; // Assume 3 columns max
    gridLayout->addWidget(productWidget, row, col);

}

void MainWindow::resetGridLayout() 
{
    if (!gridWidgetPtr_) return;

    QGridLayout *gridLayout = qobject_cast<QGridLayout*>(gridWidgetPtr_->layout());
    if (!gridLayout) return;

    // Remove all widgets
    while (QLayoutItem *item = gridLayout->takeAt(0)) {
        if (QWidget *widget = item->widget()) {
            widget->deleteLater();
        }
        delete item;
    }

    // Remove layout completely
    delete gridLayout;
    gridWidgetPtr_->setLayout(nullptr);

    // Create a new layout
    QGridLayout *newLayout = new QGridLayout(gridWidgetPtr_);
    gridWidgetPtr_->setLayout(newLayout);
}

