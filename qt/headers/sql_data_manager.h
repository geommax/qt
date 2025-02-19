#ifndef TABLEDATAMANAGER_H
#define TABLEDATAMANAGER_H

#include <QObject>
#include <QSqlDatabase>
#include <QDebug>
#include <QtSql>
#include <QSqlQuery>
#include <QDebug>
#include <QSqlError>

class SqlDataManager : public QObject
{
    Q_OBJECT

public:
    explicit SqlDataManager(QObject *parent = nullptr);
    
public slots:
    void fetchProductsData();

signals:
    void submitProductsData(QString name, int stock_count); 

};

#endif // TABLEDATAMANAGER_H
