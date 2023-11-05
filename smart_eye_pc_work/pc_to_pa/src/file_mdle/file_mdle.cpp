#include "file_mdle.h"
#include "ui_file_mdle.h"
#include <QApplication>
#include <QFile>
#include <QFileInfo>
#include <QDebug>
file_mdle::file_mdle(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::file_mdle)
{
    ui->setupUi(this);
    // --------------------------------------------
    // init ui
    pns_ini = QApplication::applicationDirPath() + "/init_set/file_set.dat";
    ui->ui_file_ini->setText(pns_ini);
    ui->ui_file_ini->setReadOnly(true);
    QFile f(pns_ini);
    QFileInfo fi(pns_ini);

    l_env_path.clear();
    for(int j = 0; j < P_MAX_NUMB; j++)
    {
        l_env_path.append("/");
    }
    //user set read
    if(fi.exists())
    {
        f.open(QIODevice::ReadOnly | QIODevice::Text);

        int i = 0;
        while(!f.atEnd() && i < P_MAX_NUMB)
        {
            QByteArray b_line =  f.readLine();
            QString s_line(b_line);
            s_line.remove("\n");
            l_env_path.replace(i,s_line);
            i ++;
        }
        f.close();
        on_ui_read_set_clicked();
        ui->ui_file_ini_state->setStyleSheet("background-color: rgb(0, 255, 0)");
    }
    else
    {

        ui->ui_file_ini_state->setStyleSheet("background-color: rgb(255,0, 0)");
    }
    ui->ui_file_ini_state->setEnabled(false);
    ui->ui_file_ini_state->setDisabled(true);

    F_SETWIN
}

file_mdle::~file_mdle()
{
    delete ui;
}

void file_mdle::on_ui_write_set_clicked()
{
    l_env_path.replace(P_VIDEO_FIFO, ui->ui_dir_camera->text());
    l_env_path.replace(P_LOG_FILE, ui->ui_log_file->text());
    l_env_path.replace(P_FPGA_FILE, ui->ui_fpga_file->text());
    l_env_path.replace(P_CMD_PATH, ui->ui_cmd_file->text());
    l_env_path.replace(P_CMD_DATA, ui->ui_cmd_data->text());



    QFile f(pns_ini);
    f.open(QIODevice::WriteOnly | QIODevice::Text);
    QTextStream f_out(&f);
    f.seek(0);
    for(int i = 0; i < P_MAX_NUMB; i++)
    {
        f_out << l_env_path[i] << "\n";
    }
    f.close();
    emit update_trig(l_env_path);
}


void file_mdle::on_ui_read_set_clicked()
{
    ui->ui_dir_camera->setText(l_env_path[P_VIDEO_FIFO]);
    ui->ui_log_file->setText(l_env_path[P_LOG_FILE]);
    ui->ui_fpga_file->setText(l_env_path[P_FPGA_FILE]);
    ui->ui_cmd_file->setText(l_env_path[P_CMD_PATH]);
    ui->ui_cmd_data->setText(l_env_path[P_CMD_DATA]);

}

QList<QString> file_mdle::m_get_path()
{
    emit update_trig(l_env_path);
    return l_env_path;
}


void file_mdle::on_pushButton_clicked()
{
    close();
}

