#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QPushButton>
#include <QListWidget>
#include <QLabel>

#include <QSqlDatabase>
#include <QDebug>
#include <QtSql>
#include <QSqlQuery>
#include <QDebug>
#include <QSqlError>
#include <QVBoxLayout>

#include <QApplication>

#include "headers/sql_data_manager.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    //void hideLeftPanel(bool state);

signals:
    void getProductsData(); 

public slots:
    void receivedProductsData(QString name, int stock_count);

private slots:
    void menuBtn_clicked();
    void salePosBtn_clicked();
    void addItemBtn_clicked();

private:
    Ui::MainWindow *ui;
    bool showMenu_;
    int row, col;  

    QPushButton *inventoryBtnPtr_ = nullptr;
    QPushButton *productsBtnPtr_ = nullptr; 
    QPushButton *saleReportBtnPtr_ = nullptr;
    QPushButton *menuBtnPtr_ = nullptr;

    QPushButton *salePosBtnPtr_ = nullptr;
    QPushButton *addItemBtnPtr_ = nullptr;
    QListWidget *listWidgetPtr_ = nullptr;
    QWidget *gridWidgetPtr_ = nullptr;  
    QLineEdit *lineEditPtr_ = nullptr;

    QLabel *titleLabelPtr_ = nullptr;

    void resetGridLayout(); 
};
#endif // MAINWINDOW_H
