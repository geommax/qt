

#include "db_thread.h"

DatabaseThread::DatabaseThread(QObject *parent): QObject(parent)
{

}

void DatabaseThread::onGetSalePOSData()
{

    //Go to database 
    //Get Columns
    //Get Entry


    emit sendSaleData();

}