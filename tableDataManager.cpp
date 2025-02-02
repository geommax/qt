#include "tableDataManager.h"
#include <QDebug>

TableDataManager::TableDataManager(QObject *parent) : QObject(parent) {}

void TableDataManager::fetchTableData()
{
    qDebug() << "Table data is being processed in another thread!";
    // Simulate processing
}
