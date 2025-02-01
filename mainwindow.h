#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QPushButton>
#include <QListWidget>

#include <QDebug>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    void hideLeftPanel(bool state);

signals:
    void getTableData(); 

private slots:
    void menuBtn_clicked();
    void salePosBtn_clicked();
    void addItemBtn_clicked();

private:
    Ui::MainWindow *ui;
    bool showMenu_;

    QPushButton *inventoryBtnPtr_ = nullptr;
    QPushButton *productsBtnPtr_ = nullptr; 
    QPushButton *saleReportBtnPtr_ = nullptr;
    QPushButton *menuBtnPtr_ = nullptr;

    QPushButton *salePosBtnPtr_ = nullptr;
    QPushButton *addItemBtnPtr_ = nullptr;
    QListWidget *listWidgetPtr_ = nullptr;
};
#endif // MAINWINDOW_H
