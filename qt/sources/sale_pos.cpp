#include "sale_pos.h"

SalePos::SalePos(QObject *parent): QObject(parent)
{

}

void SalePos::onGetTableData()
{

    emit getSalePOSData();


}