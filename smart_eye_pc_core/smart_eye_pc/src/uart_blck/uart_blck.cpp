#include "uart_blck.h"
#include "ui_uart_blck.h"
#include <QFile>
#include <QFileInfo>
// --------------------------------------------
// user macro
#include "../MACRO.h"
uart_blck::uart_blck(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::uart_blck)
{
    ui->setupUi(this);
    c_serial = new QSerialPort;
    uart_init();
    uart_update();
    F_SETWIN
}

uart_blck::~uart_blck()
{
    delete c_serial;
    delete ui;

}

void uart_blck::uart_init()
{
    //update port
    QStringList sl_port_valid;
    foreach(const QSerialPortInfo &info,QSerialPortInfo::availablePorts())
    {
        sl_port_valid.append(info.portName());
    }
    // --------------------------------------------
    // enable edit
    ui->ui_port_bit->setEditable(true);
    ui->ui_baud_bit->setEditable(true);
    ui->ui_chck_bit->setEditable(true);
    ui->ui_data_bit->setEditable(true);
    ui->ui_stop_bit->setEditable(true);
    ui->ui_ctrl_bit->setEditable(true);

    ui->ui_port_bit->addItems(sl_port_valid);
    ui->ui_port_bit->setCurrentIndex(0);

    ui->ui_baud_bit->addItem("115200");
    ui->ui_baud_bit->setCurrentIndex(0);

    ui->ui_chck_bit->addItem("None");
    ui->ui_chck_bit->setCurrentIndex(0);

    ui->ui_data_bit->addItem("8");
    ui->ui_data_bit->setCurrentIndex(0);

    ui->ui_stop_bit->addItem("1");
    ui->ui_stop_bit->setCurrentIndex(0);

    ui->ui_ctrl_bit->addItem("None");
    ui->ui_ctrl_bit->setCurrentIndex(0);


}

void uart_blck::uart_update()
{
    QStringList sl_port_valid;
    foreach(const QSerialPortInfo &info,QSerialPortInfo::availablePorts())
    {
        sl_port_valid.append(info.portName());
    }
    ui->ui_port_bit->clear();
    ui->ui_port_bit->addItems(sl_port_valid);
    //sync variable
    n_port_bit = ui->ui_port_bit->currentIndex();
    n_baud_bit = ui->ui_baud_bit->currentIndex();
    n_chck_bit = ui->ui_chck_bit->currentIndex();
    n_data_bit = ui->ui_data_bit->currentIndex();
    n_stop_bit = ui->ui_stop_bit->currentIndex();
    n_ctrl_bit = ui->ui_ctrl_bit->currentIndex();

    s_port_bit = ui->ui_port_bit->currentText();
    s_baud_bit = ui->ui_baud_bit->currentText();
    s_chck_bit = ui->ui_chck_bit->currentText();
    s_data_bit = ui->ui_data_bit->currentText();
    s_stop_bit = ui->ui_stop_bit->currentText();
    s_ctrl_bit = ui->ui_ctrl_bit->currentText();

}

void uart_blck::on_ui_read_par_clicked()
{
    ui->ui_port_bit->setCurrentText(ui->ui_port_bit->itemText(n_port_bit));
    ui->ui_baud_bit->setCurrentText(ui->ui_baud_bit->itemText(n_baud_bit));
    ui->ui_chck_bit->setCurrentText(ui->ui_chck_bit->itemText(n_chck_bit));
    ui->ui_data_bit->setCurrentText(ui->ui_data_bit->itemText(n_data_bit));
    ui->ui_stop_bit->setCurrentText(ui->ui_stop_bit->itemText(n_stop_bit));
    ui->ui_ctrl_bit->setCurrentText(ui->ui_ctrl_bit->itemText(n_ctrl_bit));
    uart_update();
}


void uart_blck::on_ui_setx_par_clicked()
{
    uart_update();
}


void uart_blck::on_ui_exit_win_clicked()
{
    this->close();
}

void uart_blck::uart_open()
{
    c_serial->setPortName(s_port_bit);
    c_serial->setBaudRate(s_baud_bit.toInt());
    switch(n_chck_bit)
    {
        case  0: c_serial->setParity(QSerialPort::NoParity); break;
        default: c_serial->setParity(QSerialPort::NoParity); break;

    }
    switch(n_data_bit)
    {
        case  0: c_serial->setDataBits(QSerialPort::Data8);break;
        default: c_serial->setDataBits(QSerialPort::Data8);break;

    }
    switch(n_stop_bit)
    {
        case  0: c_serial->setStopBits(QSerialPort::OneStop); break;
        default: c_serial->setStopBits(QSerialPort::OneStop); break;
    }
    switch(n_ctrl_bit)
    {
        case 0  : c_serial->setFlowControl(QSerialPort::NoFlowControl); break;
        default : c_serial->setFlowControl(QSerialPort::NoFlowControl); break;

    }
    // open uart
    if(c_serial->open(QIODevice::ReadWrite))
    {
        emit spd_trig(s_baud_bit.toInt()*100/115200);
        QString text = "uart -port " + s_port_bit +\
                           " -baud " + s_baud_bit +\
                           " -data " + s_data_bit +\
                           " -chck " + s_chck_bit +\
                           " -stop " + s_stop_bit +\
                           " -ctrl " + s_ctrl_bit ;
        emit info_trig(0,CODE_UART_INFO,"info",text);
        connect(c_serial,&QSerialPort::readyRead,this,&uart_blck::uart_recv_cmd);
        //lock current param
        ui->ui_port_bit->setEnabled(false);
        ui->ui_baud_bit->setEnabled(false);
        ui->ui_chck_bit->setEnabled(false);
        ui->ui_data_bit->setEnabled(false);
        ui->ui_stop_bit->setEnabled(false);
        ui->ui_ctrl_bit->setEnabled(false);
    }
    else
    {
        disconnect(c_serial,&QSerialPort::readyRead,this,&uart_blck::uart_recv_cmd);
        emit spd_trig(0);
        emit info_trig(0,CODE_UART_INFO,"error","Uart Port is illegal or Used,close it");
        c_serial->close();
        //lock current param
        ui->ui_port_bit->setEnabled(true);
        ui->ui_baud_bit->setEnabled(true);
        ui->ui_chck_bit->setEnabled(true);
        ui->ui_data_bit->setEnabled(true);
        ui->ui_stop_bit->setEnabled(true);
        ui->ui_ctrl_bit->setEnabled(true);
    }

}

void uart_blck::uart_recv_cmd()
{
    QByteArray data = c_serial->readAll();
    QString text;
    text += data;
    QStringList sl_cmd = text.split("\n");
    sl_cmd[0] = s_text_temp + sl_cmd[0];
    s_text_temp = sl_cmd.last();
    sl_cmd.removeLast();
    foreach(QString cmd,sl_cmd)
    {
        QByteArray ba_cmd = cmd.toUtf8();
        if(ba_cmd.left(4).toInt() == CODE_UART_PS) //PS uart
        {
            emit info_trig(1,CODE_UART_PS,"info",cmd.mid(4,-1));
        }
        else if(ba_cmd.left(4).toInt() == CODE_UART_PL) //PL uart
        {
            emit info_trig(1,CODE_UART_PL,"info",cmd.mid(4,-1));
        }

    }
}

void uart_blck::uart_send_cmd(QString pns_dat,quint32 code)
{
    QFile f(pns_dat);
    QFileInfo fi(pns_dat);
    QList<quint32> l_dat_hex;
    switch (code)
    {
    case CODE_UART_PL:
        if(!fi.exists())
        {
            QString info = "no file " + pns_dat + " to read";
            emit info_trig(0,CODE_UART_PL,"error",info);
            return;
        }
        f.open(QIODevice::ReadOnly | QIODevice::Text);
        l_dat_hex.clear();
        int i = 0;
        while(!f.atEnd())
        {
            bool ok;
            QByteArray b_line =  f.readLine();
            QString s_line(b_line);
            s_line.remove("\n");
            l_dat_hex.append(QString::number(s_line.toInt(),16).toInt(&ok,16));

            i ++;
        }

        //qDebug() << l_dat_hex;
        // --------------------------------------------
        // send data
        pkg_send.pkg_code = CODE_UART_PL; //small format
        pkg_send.pkg_len  = l_dat_hex.size() * 4;
        pkg_send.pkg_wid  = 1;
        pkg_send.pkg_xor  = 0;
        //qDebug() << l_dat_hex.size();
        pkg_send.pkg_wid = pkg_send.pkg_wid << 16;
        for(int i = 0; i < l_dat_hex.size(); i++)
        {
            pkg_send.pkg_dat[i*4+0] = l_dat_hex[i] >> 24; //big format
            pkg_send.pkg_dat[i*4+1] = l_dat_hex[i] >> 16;
            pkg_send.pkg_dat[i*4+2] = l_dat_hex[i] >>  8;
            pkg_send.pkg_dat[i*4+3] = l_dat_hex[i] >>  0;
            pkg_send.pkg_xor = pkg_send.pkg_xor ^ pkg_send.pkg_dat[i*4+0]
                                                ^ pkg_send.pkg_dat[i*4+1]
                                                ^ pkg_send.pkg_dat[i*4+2]
                                                ^ pkg_send.pkg_dat[i*4+3];

        }
        pkg_send.pkg_wid = pkg_send.pkg_wid | (1); //update cur width
        if(c_serial->isOpen())
        {
            // --------------------------------------------
            // send UDP pkg
            QByteArray ba_dat;
            ba_dat.resize(sizeof(pkg_send));
            char *pba_dat = ba_dat.data();
            memcpy(pba_dat,&pkg_send,sizeof(pkg_send));
            c_serial->write(pba_dat);
            emit info_trig(1,CODE_UART_PL,"info","uart param download is ok");
        }
        else
        {
            emit info_trig(1,CODE_UART_PL,"error","uart is not open");
        }
        break;
    }
}

