#ifndef ONCE_BLCK_H
#define ONCE_BLCK_H

#include <QWidget>
#include "../MACRO.h"
#include "../cmd_blck/cmd_blck.h"

#include <QGraphicsScene>
namespace Ui {
class once_blck;
}

class once_blck : public QWidget
{
    Q_OBJECT

public:
    explicit once_blck(QWidget *parent = nullptr);
    ~once_blck();

private slots:
    void on_solve_start_clicked();

    void on_solve_close_clicked();

private:
    Ui::once_blck *ui;
public slots:
    //update file path
    void update_file_path(QList<QString>);
    void run_bat_script(int,QString);
private:
    QString cmd_fifo_path;
    QString cmd_type_path;
    QString cmd_para_path;
    //run cmd
    cmd_blck *u_cmd_blck;
    //scene
    QGraphicsScene scene_in;
    QGraphicsScene scene_out;
};

#endif // ONCE_BLCK_H
