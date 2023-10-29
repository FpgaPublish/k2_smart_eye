#ifndef DUDPDRIV_H
#define DUDPDRIV_H

#include <QDialog>
#include <QUdpSocket>
namespace Ui {
class DUdpDriv;
}

class DUdpDriv : public QDialog
{
    Q_OBJECT

public:
    explicit DUdpDriv(QWidget *parent = nullptr);
    ~DUdpDriv();

private slots:
    void on_ui_send_act_clicked();
    void on_udp_recv_act_ready();

private:
    Ui::DUdpDriv *ui;
    QUdpSocket *udp;
};

#endif // DUDPDRIV_H
