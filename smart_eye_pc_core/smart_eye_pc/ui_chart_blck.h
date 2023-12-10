/********************************************************************************
** Form generated from reading UI file 'chart_blck.ui'
**
** Created by: Qt User Interface Compiler version 5.12.11
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CHART_BLCK_H
#define UI_CHART_BLCK_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_chart_blck
{
public:

    void setupUi(QWidget *chart_blck)
    {
        if (chart_blck->objectName().isEmpty())
            chart_blck->setObjectName(QString::fromUtf8("chart_blck"));
        chart_blck->resize(704, 550);

        retranslateUi(chart_blck);

        QMetaObject::connectSlotsByName(chart_blck);
    } // setupUi

    void retranslateUi(QWidget *chart_blck)
    {
        chart_blck->setWindowTitle(QApplication::translate("chart_blck", "Form", nullptr));
    } // retranslateUi

};

namespace Ui {
    class chart_blck: public Ui_chart_blck {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CHART_BLCK_H
