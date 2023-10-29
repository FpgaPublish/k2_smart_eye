#include "mainwindow.h"

#include <QApplication>
#include "./src/MACRO.h"
#include <QStyleFactory>
#include <QFile>
#include <QTextStream>
#include <QDir>
#include <QDebug>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    //set dark
    qApp->setStyle(QStyleFactory::create("Fusion"));
    QPalette palette;
    palette.setColor(QPalette::Window, QColor(53, 53, 53));
    palette.setColor(QPalette::WindowText, Qt::white);
    palette.setColor(QPalette::Base, QColor(15, 15, 15));
    palette.setColor(QPalette::AlternateBase, QColor(53, 53, 53));
    palette.setColor(QPalette::ToolTipBase, Qt::white);
    palette.setColor(QPalette::ToolTipText, Qt::white);
    palette.setColor(QPalette::Text, Qt::white);
    palette.setColor(QPalette::Button, QColor(53, 53, 53));
    palette.setColor(QPalette::ButtonText, Qt::white);
    palette.setColor(QPalette::BrightText, Qt::red);
    //palette.setColor(QPalette::Highlight, QColor(142, 45, 197).lighter()); //紫色
    palette.setColor(QPalette::Highlight, QColor(161, 65, 13).lighter());//橙色
    palette.setColor(QPalette::HighlightedText, Qt::black);
    qApp->setPalette(palette);
    //
    qRegisterMetaType<SUdpPck>("SUdpPck");
    //argument solve

    QString pns_ini = QApplication::applicationDirPath() + "/init_set/cmd_arg.dat";
    qDebug() << pns_ini;
    QFile f(pns_ini);
    f.open(QIODevice::WriteOnly | QIODevice::Text);
    QTextStream f_str(&f);
    for(int i  = 0; i < argc; i++)
    {
        qDebug() << argv[i];
        f_str << argv[i] << "\n";
    }
    f.close();

    return a.exec();
}
