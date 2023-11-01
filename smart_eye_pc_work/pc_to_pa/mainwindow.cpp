//////////////////////////////////////////////////////////////////////////////////
// Company: Fpga Publish
// Engineer: F
//
// Create Date: 2022 23:27:03
// Design Name:
// Module Name: mainwindow.cpp
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
// =====================================================
// file source
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QTimer>
#include <QDebug>
#include <QApplication>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    // =====================================================
    // icon set
    QString p_icon_app = QApplication::applicationDirPath() + "/icons/reco_eye.png";
    //qDebug() << p_icon_app;
    this->setWindowIcon(QIcon(p_icon_app));
    // =====================================================
    // control win
    // --------------------------------------------
    // net param
    u_udp_subs = new udp_subs;
    connect(u_udp_subs,&udp_subs::spd_trig,this,&MainWindow::net_spd_driv);
    // --------------------------------------------
    // uart param
    u_uart_blck = new uart_blck;
    connect(u_uart_blck,&uart_blck::spd_trig,this,&MainWindow::uart_spd_driv);
    // --------------------------------------------
    // uvc param
    u_uvc_blck = new uvc_blck;
    // --------------------------------------------
    // fpga set
    u_fpga_subs = new fpga_subs;
    connect(u_fpga_subs,&fpga_subs::udp_trig,u_udp_subs,&udp_subs::m_send_udp_dat);
    // --------------------------------------------
    // cmd mode set
    u_cmd_blck = new cmd_blck;

    // =====================================================
    // file connect
    u_file_mdle = new file_mdle;
    connect(u_file_mdle,&file_mdle::update_trig,
            u_uvc_blck,&uvc_blck::update_file_path);
    connect(u_file_mdle,&file_mdle::update_trig,
            u_fpga_subs,&fpga_subs::update_file_path);
    u_file_mdle->m_get_path(); //must connect before this
    // =====================================================
    // info win
    // --------------------------------------------
    // info init
    //ui->ui_info_log->setText("[0x11000000]info: Welcome to Imag Recognize\n\r");
    QString n_app;
    QTextStream ts(&n_app);
    ts <<  "Welcome to " << APP_NAME;
    info_blck(0,CODE_WELCOME,"info",n_app);
    //list to feedback info
    connect(u_udp_subs,&udp_subs::info_trig,this,&MainWindow::info_blck);
    connect(u_uart_blck,&uart_blck::info_trig,this,&MainWindow::info_blck);
    connect(u_uvc_blck,&uvc_blck::info_trig,this,&MainWindow::info_blck);
    connect(u_file_mdle,&file_mdle::info_trig,this,&MainWindow::info_blck);
    connect(u_fpga_subs,&fpga_subs::info_trig,this,&MainWindow::info_blck);
    //first view
    ui->tab_console->setCurrentIndex(0);

    // =====================================================
    // dispaly win
    // --------------------------------------------
    // welcome widget init
    ui->ui_display->clear();
    u_welcome_mdle = new welcome_mdle;
    ui->ui_display->insertTab(0,u_welcome_mdle,"welcome");
    // --------------------------------------------
    // flow control win
    u_flow_blck = new flow_blck;
    connect(u_uvc_blck,&uvc_blck::bmp_trig,u_flow_blck,&flow_blck::m_bmp_in);
    connect(u_flow_blck,&flow_blck::bmp_udp_trig,u_udp_subs,&udp_subs::m_send_udp_bmp);




}

MainWindow::~MainWindow()
{
    // --------------------------------------------
    // delete it
    delete u_uart_blck;
    delete u_udp_subs;
    delete u_welcome_mdle;
    delete u_uvc_blck;
    delete u_file_mdle;
    delete ui;
}

void MainWindow::on_action_net_triggered()
{
    //open net param win
    u_udp_subs->setWindowTitle("u_udp_subs");
    u_udp_subs->show();
}

void MainWindow::info_blck(quint32 n_type, quint32 n_code, QString s_info, QString s_text)
{
    //set max line
    ui->ui_prot_log->document()->setMaximumBlockCount(1000);
    //printf info
    QString s_code = QString("%1").arg(n_code,4,16,QChar('0')); //code number
    QString s_show = "[0x" + s_code +"]" + s_info + ": " +s_text; //info struct
    if(QString::compare(s_info,"error") == 0)
    {
        switch(n_type) //which console
        {
        case  0: ui->ui_info_log->append(TEXT_COLOR_RED(s_show)); break;
        case  1: ui->ui_prot_log->append(TEXT_COLOR_RED(s_show)); break;
        default: ui->ui_info_log->append(TEXT_COLOR_RED(s_show)); break;
        }
        //qDebug() << QString::compare(s_info,"error");
    }
    else
    {
        switch(n_type)
        {
        case  0: ui->ui_info_log->append(TEXT_COLOR_WHITE(s_show)); break;
        case  1: ui->ui_prot_log->append(TEXT_COLOR_WHITE(s_show)); break;
        default: ui->ui_info_log->append(TEXT_COLOR_WHITE(s_show)); break;
        }
    }


}

void MainWindow::net_spd_driv(float net_spd)
{
    int n_spd = net_spd;
    ui->ui_net_spd->setMaximum(500);
    ui->ui_net_spd->setMinimum(0);
    ui->ui_net_spd->setValue(n_spd);
    QString s_spd = QString("net spd is %1 pkg every second").arg(net_spd);
    info_blck(0,CODE_WELCOME,"info",s_spd);
}


void MainWindow::on_ui_info_log_textChanged()
{
    //move cursor to info end
    ui->ui_info_log->moveCursor(QTextCursor::End);
}


void MainWindow::on_ui_net_clicked()
{
    u_udp_subs->send_udp_spd();

}

void MainWindow::uart_spd_driv(float uart_spd)
{
    int n_spd = uart_spd;
    ui->ui_uart_spd->setMaximum(100);
    ui->ui_uart_spd->setMinimum(0);
    ui->ui_uart_spd->setValue(n_spd);
    QString s_spd = QString("uart spd is %1\% compare with 115200").arg(uart_spd);
    info_blck(0,CODE_WELCOME,"info",s_spd);
}


void MainWindow::on_ui_uart_clicked()
{
    u_uart_blck->uart_open();
}


void MainWindow::on_action_uart_triggered()
{
    u_uart_blck->setWindowTitle("u_uart_blck");
    u_uart_blck->show();
}


void MainWindow::on_ui_prot_log_textChanged()
{
    //move cursor to info end
    ui->ui_prot_log->moveCursor(QTextCursor::End);
}


void MainWindow::on_ui_uvc_clicked()
{
    int spd = u_uvc_blck->get_camera_spd();
    ui->ui_uvc_spd->setMaximum(1920*1280);
    ui->ui_uvc_spd->setMinimum(0);
    ui->ui_uvc_spd->setValue(spd);
    u_uvc_blck->m_open_camera_stream(1,30);
}

void MainWindow::on_action_uvc_triggered()
{
    u_uvc_blck->m_open_camera_stream(0,0);
    u_uvc_blck->show();
}


void MainWindow::on_action_file_triggered()
{
    u_file_mdle->show();
}


void MainWindow::on_ui_flow_ctrl_clicked()
{
    ui->ui_display->insertTab(1,u_flow_blck,"flow_ctrl");
    //ui->ui_display->setCurrentIndex(1);
    ui->ui_display->setCurrentWidget(u_flow_blck);
}


void MainWindow::on_ui_flow_fpga_clicked()
{
    ui->ui_display->insertTab(2,u_fpga_subs,"fpga_set");
    ui->ui_display->setCurrentWidget(u_fpga_subs);
}


void MainWindow::on_actionbat_triggered()
{
    u_cmd_blck->show();
}

