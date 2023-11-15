#include "cmd_blck.h"
#include "ui_cmd_blck.h"
#include <QFileDialog>
#include <QProcess>
#include <QFileInfo>
#include <QApplication>
cmd_blck::cmd_blck(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::cmd_blck)
{
    ui->setupUi(this);

    QString bat_ini = QApplication::applicationDirPath() + "/user_bat/hello_world.bat";
    ui->bat_path->setText(bat_ini);
}

cmd_blck::~cmd_blck()
{
    delete ui;
}

void cmd_blck::on_bat_sel_clicked()
{
    QString pns_bat = QFileDialog::getOpenFileName(this,
                                     "Please choose an bat file",
                                     "",
                                     "Image Files(*.bat);;All(*.*)");
    if (pns_bat.isEmpty()) {
        return;
    }
    else {
        ui->bat_path->setText(pns_bat);
    }
}


void cmd_blck::on_bat_run_clicked()
{
    ui->cmd_info->clear();
    static QProcess *cmd = new QProcess;
    cmd->start("cmd");
    cmd->waitForStarted();
    QString pns_bat = ui->bat_path->text();
    QFileInfo info_bat = QFileInfo(pns_bat);
    QString p_bat = info_bat.absolutePath();
    QString n_bat = info_bat.baseName();
    //QString s_bat = info_bat.suffix();
    QString cmd_wr = "cd " + p_bat + " && start " + n_bat + "\n";
    QByteArray cmd_by = cmd_wr.toLatin1();
    ui->cmd_info->appendPlainText(cmd_by);
    cmd->write(cmd_by);
    cmd->waitForFinished(1000);
    QByteArray qbt = cmd->readAllStandardOutput();
    QString msg = QString::fromLocal8Bit(qbt);
    ui->cmd_info->appendPlainText(msg);
    cmd->kill();
}

void cmd_blck::run_bat_script(QString pns_bat)
{
    ui->bat_path->setText(pns_bat);
    on_bat_run_clicked();
}

