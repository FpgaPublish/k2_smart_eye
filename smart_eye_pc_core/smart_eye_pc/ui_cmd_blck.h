/********************************************************************************
** Form generated from reading UI file 'cmd_blck.ui'
**
** Created by: Qt User Interface Compiler version 5.12.11
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CMD_BLCK_H
#define UI_CMD_BLCK_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPlainTextEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_cmd_blck
{
public:
    QVBoxLayout *verticalLayout;
    QSpacerItem *verticalSpacer_2;
    QHBoxLayout *horizontalLayout;
    QLineEdit *bat_path;
    QPushButton *bat_sel;
    QPushButton *bat_run;
    QPlainTextEdit *cmd_info;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *cmd_blck)
    {
        if (cmd_blck->objectName().isEmpty())
            cmd_blck->setObjectName(QString::fromUtf8("cmd_blck"));
        cmd_blck->resize(584, 462);
        verticalLayout = new QVBoxLayout(cmd_blck);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        bat_path = new QLineEdit(cmd_blck);
        bat_path->setObjectName(QString::fromUtf8("bat_path"));

        horizontalLayout->addWidget(bat_path);

        bat_sel = new QPushButton(cmd_blck);
        bat_sel->setObjectName(QString::fromUtf8("bat_sel"));

        horizontalLayout->addWidget(bat_sel);

        bat_run = new QPushButton(cmd_blck);
        bat_run->setObjectName(QString::fromUtf8("bat_run"));

        horizontalLayout->addWidget(bat_run);


        verticalLayout->addLayout(horizontalLayout);

        cmd_info = new QPlainTextEdit(cmd_blck);
        cmd_info->setObjectName(QString::fromUtf8("cmd_info"));

        verticalLayout->addWidget(cmd_info);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);


        retranslateUi(cmd_blck);

        QMetaObject::connectSlotsByName(cmd_blck);
    } // setupUi

    void retranslateUi(QWidget *cmd_blck)
    {
        cmd_blck->setWindowTitle(QApplication::translate("cmd_blck", "Form", nullptr));
        bat_sel->setText(QApplication::translate("cmd_blck", "...", nullptr));
        bat_run->setText(QApplication::translate("cmd_blck", "\350\277\220\350\241\214", nullptr));
    } // retranslateUi

};

namespace Ui {
    class cmd_blck: public Ui_cmd_blck {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CMD_BLCK_H
