//////////////////////////////////////////////////////////////////////////////////
// Company: Fpga Publish
// Engineer: F
//
// Create Date: 2022 20:47:39
// Design Name:
// Module Name: dudpdriv.cpp
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision: 0.01
// Revision 0.01 - File Created
// Additional Comments:
//          1. path = D:/demo rather than D:/demo/
//////////////////////////////////////////////////////////////////////////////////
#include "dudpdriv.h"
#include "ui_dudpdriv.h"

DUdpDriv::DUdpDriv(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::DUdpDriv)
{
    ui->setupUi(this);
    udp = new QUdpSocket;
    udp->bind(QHostAddress("192.168.120.11"),5001);
    connect(udp,&QUdpSocket::readyRead,this,&DUdpDriv::on_udp_recv_act_ready);
}

DUdpDriv::~DUdpDriv()
{
    delete udp;
    delete ui;
}

void DUdpDriv::on_ui_send_act_clicked()
{
    QString s_txt = ui->ui_send_txt->toPlainText();
    QByteArray a_txt = s_txt.toLatin1();
    udp->writeDatagram(a_txt,QHostAddress("192.168.120.10"),5001);
}

void DUdpDriv::on_udp_recv_act_ready()
{
    while(udp->hasPendingDatagrams())
    {
        QByteArray a_txt;
        a_txt.resize(udp->pendingDatagramSize());
        udp->readDatagram(a_txt.data(),a_txt.size());
        ui->ui_recv_txt->setText(a_txt);
    }
}

