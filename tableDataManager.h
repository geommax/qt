#ifndef TABLEDATAMANAGER_H
#define TABLEDATAMANAGER_H

#include <QObject>
#include <QThread>

class TableDataManager : public QObject
{
    Q_OBJECT

public:
    explicit TableDataManager(QObject *parent = nullptr);
    
public slots:
    void fetchTableData(); // Function to fetch data asynchronously
};

#endif // TABLEDATAMANAGER_H
