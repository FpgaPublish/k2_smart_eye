#include "once_blck.h"
#include "ui_once_blck.h"

#include <QTime>
#include <QFile>
#include <QDataStream>
#include <QDebug>
#include <QApplication>
once_blck::once_blck(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::once_blck)
{
    ui->setupUi(this);
    //init
    QString p_init = QApplication::applicationDirPath() + "/camera_fifo/30.bmp";
    cmd_type_path  = QApplication::applicationDirPath() + "/user_bat/hello_world.bat";
    ui->file_in->setText(p_init);
    QImage img(p_init);
    //
    //ui->imag_in->setPixmap(QPixmap::fromImage(img));
    QPixmap pix(QPixmap::fromImage(img));
    scene_in.addPixmap(pix);
    ui->imag_in->setScene(&scene_in);
    //init cmd
    u_cmd_blck = new cmd_blck;
    cmd_para_path = QApplication::applicationDirPath() + "/user_bat/param.ini";


}

once_blck::~once_blck()
{
    delete ui;
}

void once_blck::on_solve_start_clicked()
{
    QString pns_in   = cmd_fifo_path + "/once_in.bmp";
    QImage img;
    if(img.load(ui->file_in->text()))
    {
        img.save(pns_in);
    }
    //show in
    QPixmap pix(QPixmap::fromImage(img));
    scene_in.addPixmap(pix);
    ui->imag_in->setScene(&scene_in);
    u_cmd_blck->run_bat_script(cmd_type_path);
    //delete last result
    QString pns_out  = cmd_fifo_path + "/once_in_out.bmp";
    //update param
    QFile f_param(cmd_para_path);
    f_param.open(QIODevice::WriteOnly);
    QDataStream s_param(&f_param);
    s_param << cmd_fifo_path;
    f_param.close();
    //wait sovle
    QFile f_in(pns_out);
    f_in.remove();
    //wait bat over
    ui->delay_cnt->setValue(0);
    ui->delay_cnt->setMaximum(100000);
    QTime nb_delay = QTime::currentTime().addMSecs(20000);
    int i = 0;
    while( QTime::currentTime() < nb_delay
        || f_in.exists())
    {
        ui->delay_cnt->setValue(i / 10);
        i++;
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
    }
    //read result
    ui->file_out->setText(pns_out);
    if(img.load(ui->file_out->text()))
    {
        QPixmap pix(QPixmap::fromImage(img));
        scene_out.addPixmap(pix);
        ui->imag_out->setScene(&scene_out);
    } else {
        ui->file_out->setText("error solve in 20s");
    }

}

void once_blck::update_file_path(QList<QString> l_file)
{
    cmd_fifo_path   = l_file[P_CMD_PATH];
}


void once_blck::on_solve_close_clicked()
{
    this->close();
}

