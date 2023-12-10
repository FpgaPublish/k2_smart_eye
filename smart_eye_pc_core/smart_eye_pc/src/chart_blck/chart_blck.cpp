#include "chart_blck.h"
#include "ui_chart_blck.h"

chart_blck::chart_blck(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::chart_blck)
{
    ui->setupUi(this);
}

chart_blck::~chart_blck()
{
    delete ui;
}
