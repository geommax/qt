#ifndef DATABASE_H
#define DATABASE_H

#include <QThreads>

#include <QDebug>
struct DbData
{
    QSqlRecord record;
    QList<QString> rowData;
};

class DatabaseThread : public QObject, public QThreads
{
    Q_OBJECT

public:
    DatabaseThread(QObject *parent = nullptr);
    ~DatabaseThread(){};

signals:


slots:
    void onGetSalePOSData();
    

private slots:


private:

};
#endif 
#endif // DATABASE_H
