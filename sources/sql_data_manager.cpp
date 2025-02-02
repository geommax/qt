#include "headers/sql_data_manager.h"


SqlDataManager::SqlDataManager(QObject *parent) : QObject(parent) {}

void SqlDataManager::fetchProductsData()
{
    qDebug() << "Table data is being processed in fetchProuctsData!";

    QSqlQuery query;
    const QString& tableName = "products";
    query.prepare("DESCRIBE " + tableName);
    if (!query.exec()) {
        qDebug() << "Error: Could not execute query!" << query.lastError();
        return;
    }

    while (query.next()) {
        QString columnName = query.value(0).toString(); // Column Name
        QString dataType = query.value(1).toString();  // Data Type
        qDebug() << "Column Name:" << columnName << ", Data Type:" << dataType;
    }

    if (query.exec("SELECT * FROM products")) 
    {
        qDebug() << "Fetching data from products table:" ;
        while (query.next()) 
        {
            qDebug() << "Fetching data from users table:";
            //int id = query.value("id").toInt();
            QString name = query.value("name").toString();
            QString description = query.value("description").toString();
            int total_stock = query.value("total_stock").toInt();
            emit submitProductsData(name, total_stock);

            qDebug() << "Product Name:" << name << ", Description:" << description << ", total_stock:" << total_stock;
        }
        return;
    }
    else 
    {
        qDebug() << "ERRORS : Fetching data from products table:" << query.lastError().text();
    }
}

