/********************************************************************************
** Form generated from reading UI file 'once_blck.ui'
**
** Created by: Qt User Interface Compiler version 5.12.11
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ONCE_BLCK_H
#define UI_ONCE_BLCK_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_once_blck
{
public:
    QVBoxLayout *verticalLayout_4;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_2;
    QLineEdit *file_in;
    QGraphicsView *imag_in;
    QVBoxLayout *verticalLayout_3;
    QSpacerItem *verticalSpacer;
    QSpinBox *delay_cnt;
    QSpacerItem *verticalSpacer_2;
    QVBoxLayout *verticalLayout;
    QLineEdit *file_out;
    QGraphicsView *imag_out;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *solve_start;
    QPushButton *solve_close;

    void setupUi(QWidget *once_blck)
    {
        if (once_blck->objectName().isEmpty())
            once_blck->setObjectName(QString::fromUtf8("once_blck"));
        once_blck->resize(745, 535);
        verticalLayout_4 = new QVBoxLayout(once_blck);
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        file_in = new QLineEdit(once_blck);
        file_in->setObjectName(QString::fromUtf8("file_in"));

        verticalLayout_2->addWidget(file_in);

        imag_in = new QGraphicsView(once_blck);
        imag_in->setObjectName(QString::fromUtf8("imag_in"));

        verticalLayout_2->addWidget(imag_in);

        verticalLayout_2->setStretch(0, 7);

        horizontalLayout->addLayout(verticalLayout_2);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer);

        delay_cnt = new QSpinBox(once_blck);
        delay_cnt->setObjectName(QString::fromUtf8("delay_cnt"));

        verticalLayout_3->addWidget(delay_cnt);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer_2);


        horizontalLayout->addLayout(verticalLayout_3);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        file_out = new QLineEdit(once_blck);
        file_out->setObjectName(QString::fromUtf8("file_out"));

        verticalLayout->addWidget(file_out);

        imag_out = new QGraphicsView(once_blck);
        imag_out->setObjectName(QString::fromUtf8("imag_out"));

        verticalLayout->addWidget(imag_out);


        horizontalLayout->addLayout(verticalLayout);

        horizontalLayout->setStretch(0, 16);
        horizontalLayout->setStretch(1, 1);
        horizontalLayout->setStretch(2, 16);

        verticalLayout_4->addLayout(horizontalLayout);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        solve_start = new QPushButton(once_blck);
        solve_start->setObjectName(QString::fromUtf8("solve_start"));

        horizontalLayout_2->addWidget(solve_start);

        solve_close = new QPushButton(once_blck);
        solve_close->setObjectName(QString::fromUtf8("solve_close"));

        horizontalLayout_2->addWidget(solve_close);


        verticalLayout_4->addLayout(horizontalLayout_2);

        verticalLayout_4->setStretch(0, 7);
        verticalLayout_4->setStretch(1, 1);

        retranslateUi(once_blck);

        QMetaObject::connectSlotsByName(once_blck);
    } // setupUi

    void retranslateUi(QWidget *once_blck)
    {
        once_blck->setWindowTitle(QApplication::translate("once_blck", "Form", nullptr));
        solve_start->setText(QApplication::translate("once_blck", "\345\244\204\347\220\206", nullptr));
        solve_close->setText(QApplication::translate("once_blck", "\345\205\263\351\227\255", nullptr));
    } // retranslateUi

};

namespace Ui {
    class once_blck: public Ui_once_blck {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ONCE_BLCK_H
