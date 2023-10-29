#ifndef CMD_BLCK_H
#define CMD_BLCK_H

#include <QWidget>

namespace Ui {
class cmd_blck;
}

class cmd_blck : public QWidget
{
    Q_OBJECT

public:
    explicit cmd_blck(QWidget *parent = nullptr);
    ~cmd_blck();

private slots:
    void on_bat_sel_clicked();

    void on_bat_run_clicked();

private:
    Ui::cmd_blck *ui;
};

#endif // CMD_BLCK_H
