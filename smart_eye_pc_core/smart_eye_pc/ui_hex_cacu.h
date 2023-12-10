/********************************************************************************
** Form generated from reading UI file 'hex_cacu.ui'
**
** Created by: Qt User Interface Compiler version 5.12.11
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_HEX_CACU_H
#define UI_HEX_CACU_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_hex_cacu
{
public:
    QVBoxLayout *verticalLayout;
    QGridLayout *gridLayout;
    QLineEdit *hex_dec;
    QLabel *label_5;
    QLineEdit *dec_in;
    QLineEdit *dec_hex;
    QLineEdit *hex_in;
    QLineEdit *bit_dec;
    QLineEdit *hex_bit;
    QLineEdit *bit_hex;
    QLabel *label_2;
    QLabel *label_6;
    QLineEdit *dec_bit;
    QLabel *label_7;
    QLabel *label;
    QLabel *label_3;
    QLineEdit *bit_in;
    QLabel *label_4;
    QLabel *label_8;
    QLabel *label_9;
    QHBoxLayout *horizontalLayout;
    QPushButton *btn_update;
    QPushButton *btn_close;

    void setupUi(QDialog *hex_cacu)
    {
        if (hex_cacu->objectName().isEmpty())
            hex_cacu->setObjectName(QString::fromUtf8("hex_cacu"));
        hex_cacu->resize(640, 420);
        verticalLayout = new QVBoxLayout(hex_cacu);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        hex_dec = new QLineEdit(hex_cacu);
        hex_dec->setObjectName(QString::fromUtf8("hex_dec"));
        hex_dec->setReadOnly(true);

        gridLayout->addWidget(hex_dec, 1, 1, 1, 1);

        label_5 = new QLabel(hex_cacu);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        gridLayout->addWidget(label_5, 2, 4, 1, 1);

        dec_in = new QLineEdit(hex_cacu);
        dec_in->setObjectName(QString::fromUtf8("dec_in"));

        gridLayout->addWidget(dec_in, 0, 3, 1, 1);

        dec_hex = new QLineEdit(hex_cacu);
        dec_hex->setObjectName(QString::fromUtf8("dec_hex"));
        dec_hex->setReadOnly(true);

        gridLayout->addWidget(dec_hex, 1, 3, 1, 1);

        hex_in = new QLineEdit(hex_cacu);
        hex_in->setObjectName(QString::fromUtf8("hex_in"));

        gridLayout->addWidget(hex_in, 0, 1, 1, 1);

        bit_dec = new QLineEdit(hex_cacu);
        bit_dec->setObjectName(QString::fromUtf8("bit_dec"));
        bit_dec->setReadOnly(true);

        gridLayout->addWidget(bit_dec, 2, 5, 1, 1);

        hex_bit = new QLineEdit(hex_cacu);
        hex_bit->setObjectName(QString::fromUtf8("hex_bit"));
        hex_bit->setReadOnly(true);

        gridLayout->addWidget(hex_bit, 2, 1, 1, 1);

        bit_hex = new QLineEdit(hex_cacu);
        bit_hex->setObjectName(QString::fromUtf8("bit_hex"));
        bit_hex->setReadOnly(true);

        gridLayout->addWidget(bit_hex, 1, 5, 1, 1);

        label_2 = new QLabel(hex_cacu);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        gridLayout->addWidget(label_2, 0, 2, 1, 1);

        label_6 = new QLabel(hex_cacu);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        gridLayout->addWidget(label_6, 1, 2, 1, 1);

        dec_bit = new QLineEdit(hex_cacu);
        dec_bit->setObjectName(QString::fromUtf8("dec_bit"));
        dec_bit->setReadOnly(true);

        gridLayout->addWidget(dec_bit, 2, 3, 1, 1);

        label_7 = new QLabel(hex_cacu);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout->addWidget(label_7, 1, 4, 1, 1);

        label = new QLabel(hex_cacu);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        label_3 = new QLabel(hex_cacu);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout->addWidget(label_3, 0, 4, 1, 1);

        bit_in = new QLineEdit(hex_cacu);
        bit_in->setObjectName(QString::fromUtf8("bit_in"));

        gridLayout->addWidget(bit_in, 0, 5, 1, 1);

        label_4 = new QLabel(hex_cacu);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout->addWidget(label_4, 1, 0, 1, 1);

        label_8 = new QLabel(hex_cacu);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        gridLayout->addWidget(label_8, 2, 0, 1, 1);

        label_9 = new QLabel(hex_cacu);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        gridLayout->addWidget(label_9, 2, 2, 1, 1);


        verticalLayout->addLayout(gridLayout);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        btn_update = new QPushButton(hex_cacu);
        btn_update->setObjectName(QString::fromUtf8("btn_update"));

        horizontalLayout->addWidget(btn_update);

        btn_close = new QPushButton(hex_cacu);
        btn_close->setObjectName(QString::fromUtf8("btn_close"));

        horizontalLayout->addWidget(btn_close);

        horizontalLayout->setStretch(0, 1);
        horizontalLayout->setStretch(1, 1);

        verticalLayout->addLayout(horizontalLayout);

        verticalLayout->setStretch(0, 4);
        verticalLayout->setStretch(1, 1);

        retranslateUi(hex_cacu);

        QMetaObject::connectSlotsByName(hex_cacu);
    } // setupUi

    void retranslateUi(QDialog *hex_cacu)
    {
        hex_cacu->setWindowTitle(QApplication::translate("hex_cacu", "Dialog", nullptr));
        label_5->setText(QApplication::translate("hex_cacu", "DEC", nullptr));
        dec_in->setText(QApplication::translate("hex_cacu", "16", nullptr));
        hex_in->setText(QApplication::translate("hex_cacu", "1", nullptr));
        label_2->setText(QApplication::translate("hex_cacu", "DEC", nullptr));
        label_6->setText(QApplication::translate("hex_cacu", "HEX", nullptr));
        label_7->setText(QApplication::translate("hex_cacu", "HEX", nullptr));
        label->setText(QApplication::translate("hex_cacu", "HEX", nullptr));
        label_3->setText(QApplication::translate("hex_cacu", "BIT", nullptr));
        bit_in->setText(QApplication::translate("hex_cacu", "10000", nullptr));
        label_4->setText(QApplication::translate("hex_cacu", "DEC", nullptr));
        label_8->setText(QApplication::translate("hex_cacu", "BIT", nullptr));
        label_9->setText(QApplication::translate("hex_cacu", "BIT", nullptr));
        btn_update->setText(QApplication::translate("hex_cacu", "\346\233\264\346\226\260", nullptr));
        btn_close->setText(QApplication::translate("hex_cacu", "\345\205\263\351\227\255", nullptr));
    } // retranslateUi

};

namespace Ui {
    class hex_cacu: public Ui_hex_cacu {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_HEX_CACU_H
