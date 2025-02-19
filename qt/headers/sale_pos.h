#ifndef SALEPOS_H
#define SALEPOS_H

#include <QMainWindow>
#include <QPushButton>
#include <QListWidget>

#include <QDebug>

class SalePos : public QObject
{
    Q_OBJECT

public:
    SalePos(QObject *parent = nullptr);
    ~SalePos(){};

signals:
    //void transmitTableData();
    void getSalePOSData();

slots:
    void onGetTableData(); 

private slots:


private:

};
#endif 