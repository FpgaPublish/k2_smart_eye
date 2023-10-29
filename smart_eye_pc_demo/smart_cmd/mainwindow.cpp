#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    u_cmd_blck = new cmd_blck;
    u_cmd_blck->show();
    u_cmd_blck->setWindowTitle("cmd");
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

