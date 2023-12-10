#include "hex_cacu.h"
#include "ui_hex_cacu.h"

hex_cacu::hex_cacu(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::hex_cacu)
{
    ui->setupUi(this);
    this->setWindowTitle("hex_cacu");
    setWindowFlags(Qt::WindowStaysOnTopHint);
}

hex_cacu::~hex_cacu()
{
    delete ui;
}

void hex_cacu::on_btn_close_clicked()
{
    this->close();
}

void hex_cacu::update_data_in(quint32 hex, quint32 dec, quint32 bit)
{
    ui->hex_in->setText(QString::number(hex, 16));
    ui->dec_in->setText(QString::number(dec, 10));
    ui->bit_in->setText(QString::number(bit, 2));

    ui->hex_bit->setText(QString::number(hex, 2));
    ui->hex_dec->setText(QString::number(hex, 10));
    ui->dec_hex->setText(QString::number(dec, 16));
    ui->dec_bit->setText(QString::number(dec, 2));
    ui->bit_hex->setText(QString::number(bit, 16));
    ui->bit_dec->setText(QString::number(bit, 10));

}


void hex_cacu::on_btn_update_clicked()
{
    bool ok;
    quint32 hex = ui->hex_in->text().toInt(&ok,16);
    quint32 dec = ui->dec_in->text().toInt(&ok,10);
    quint32 bit = ui->bit_in->text().toInt(&ok,2);

    update_data_in(hex,dec,bit);

}

