#include "mainwindow.h"

SqlDataManager *dataManager = new SqlDataManager();

int main(int argc, char *argv[])
{   
    QApplication a(argc, argv);
    MainWindow w;
    //--------------------- KST ------------------//
    
    //Database Connection
    QSqlDatabase mySqlDatabase = QSqlDatabase::addDatabase("QMYSQL");
    mySqlDatabase.setHostName("127.0.0.1");  
    mySqlDatabase.setDatabaseName("db_web_pos");  
    mySqlDatabase.setUserName("TZH");  
    mySqlDatabase.setPassword("password");  
    mySqlDatabase.setPort(3306);  

    if (!mySqlDatabase.open()) {
        qDebug() << "Database Error:" << mySqlDatabase.lastError().text();
        return -1;  
    }
    qDebug() << "Connected to database successfully!";
    //--------------------- KST ------------------//
    
    QObject::connect(&w, &MainWindow::getProductsData, dataManager, &SqlDataManager::fetchProductsData);
    QObject::connect(dataManager, &SqlDataManager::submitProductsData, &w, &MainWindow::receivedProductsData);

    //--------------------- KST ------------------//
    w.show();
    return a.exec();
}

