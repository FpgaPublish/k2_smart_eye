#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "./src/cmd_blck/cmd_blck.h"
QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    //cmd block
    cmd_blck *u_cmd_blck;
private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
