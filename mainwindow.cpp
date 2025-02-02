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

    hideLeftPanel(false); 

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

        addItemBtnPtr_->hide();
        listWidgetPtr_->hide();

        showMenu_ = true;
    }
    else {
        qDebug()<< "showMenu = true";
        salePosBtnPtr_->hide();
        productsBtnPtr_->hide();
        saleReportBtnPtr_->hide();
        inventoryBtnPtr_->hide();
        showMenu_ = false;
    }
    
}

void MainWindow::hideLeftPanel(bool state) // default menu btns are hide.
{
    salePosBtnPtr_->hide();
    productsBtnPtr_->hide();
    saleReportBtnPtr_->hide();
    inventoryBtnPtr_->hide();

    addItemBtnPtr_->hide();
    listWidgetPtr_->hide();
    showMenu_ = state;
}

void MainWindow::salePosBtn_clicked()
{
    qDebug()<< "about to go sale panel";
    hideLeftPanel(false);
    
    addItemBtnPtr_->show();
    listWidgetPtr_->show();
    // show table

    emit getTableData(); // emit to other class that can process with threadings async. 

    // click 

    // show btn
}

void MainWindow::addItemBtn_clicked()
{
    qDebug()<< "adding items on list widgets";
    static int count = 1;
    listWidgetPtr_->addItem("Sale Items " + QString::number(count++));
}

