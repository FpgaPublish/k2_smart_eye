#ifndef HEX_CACU_H
#define HEX_CACU_H

#include <QDialog>

namespace Ui {
class hex_cacu;
}

class hex_cacu : public QDialog
{
    Q_OBJECT

public:
    explicit hex_cacu(QWidget *parent = nullptr);
    ~hex_cacu();

private slots:
    void on_btn_close_clicked();

    void on_btn_update_clicked();

private:
    Ui::hex_cacu *ui;
public slots:
    void update_data_in(quint32 hex,quint32 dec,quint32 bit);

};

#endif // HEX_CACU_H
