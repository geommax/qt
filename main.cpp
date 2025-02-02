#include "mainwindow.h"
#include "tableDataManager.h"
#include <QApplication>
#include <QThread>

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    //--------------------- KST ------------------//
    TableDataManager *tableManager = new TableDataManager();

    // Move to separate thread
    QThread *workerThread = new QThread;
    tableManager->moveToThread(workerThread);
    
    QObject::connect(&w, &MainWindow::getTableData, tableManager, &TableDataManager::fetchTableData);
    workerThread->start();
    //--------------------- KST ------------------//
    w.show();
    return a.exec();
}

