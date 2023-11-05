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
    //init cmd
    cmd_type_path  = QApplication::applicationDirPath() + "/user_bat/";
    ui->cmd_type->insertItem(0,"hello_world.bat");
    //init data src
    QString p_init = QApplication::applicationDirPath() + "/camera_fifo/30.bmp";
    ui->file_in->setText(p_init);
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
    QString pns_in   = cmd_fifo_path + "once_in.bmp";
    //delete last in
    QFile f_in(pns_in);
    //qDebug() << pns_in;
    if(f_in.exists())
    {
        f_in.remove();
    }
    QImage img;
    if(img.load(ui->file_in->text()))
    {
        img.save(pns_in);

    }
    //show in
    QPixmap pix(QPixmap::fromImage(img));
    scene_in.addPixmap(pix);
    ui->imag_in->setScene(&scene_in);
    //u_cmd_blck->show();
    //delete last result
    QString pns_out  = cmd_fifo_path + "once_in_out.bmp";
    QFile f_out(pns_out);
    if(f_out.exists())
    {
        f_out.remove();
    }
    // run cmd
    QString cmd_run = cmd_type_path + ui->cmd_type->currentText();
    qDebug() << cmd_run;
    u_cmd_blck->run_bat_script(cmd_run);
    //update param
    QFile f_param(cmd_para_path);
    f_param.open(QIODevice::WriteOnly | QIODevice::Text);
    //QDataStream s_param(&f_param);
    //s_param << cmd_fifo_path;
    //qDebug() << cmd_fifo_path;
    f_param.write(cmd_fifo_path.toUtf8());
    f_param.close();

    //wait bat over
    ui->delay_cnt->setValue(0);
    ui->delay_cnt->setMaximum(100000);
    QTime nb_delay = QTime::currentTime().addMSecs(20000);
    int i = 0;
    while( QTime::currentTime() < nb_delay
        && f_out.exists() == 0)
    {
        ui->delay_cnt->setValue(i / 10);
        i++;
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
    }

    //read result
    ui->file_out->setText(pns_out);
    QImage img2;
    if(f_out.exists())
    {
        qDebug() << img2.load(ui->file_out->text());
        QPixmap pix_out(QPixmap::fromImage(img2));
        scene_out.addPixmap(pix_out);
        ui->imag_out->setScene(&scene_out);
    } else {
        ui->file_out->setText("error solve in 20s");
    }

}

void once_blck::update_file_path(QList<QString> l_file)
{
    cmd_type_path   = l_file[P_CMD_PATH];
    cmd_fifo_path   = l_file[P_CMD_DATA];

}


void once_blck::on_solve_close_clicked()
{
    this->close();
}

