#include "once_blck.h"
#include "ui_once_blck.h"

once_blck::once_blck(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::once_blck)
{
    ui->setupUi(this);
}

once_blck::~once_blck()
{
    delete ui;
}
