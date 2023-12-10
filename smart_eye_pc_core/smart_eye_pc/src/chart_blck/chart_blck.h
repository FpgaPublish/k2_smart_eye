#ifndef CHART_BLCK_H
#define CHART_BLCK_H

#include <QWidget>

namespace Ui {
class chart_blck;
}

class chart_blck : public QWidget
{
    Q_OBJECT

public:
    explicit chart_blck(QWidget *parent = nullptr);
    ~chart_blck();

private:
    Ui::chart_blck *ui;
private:

};

#endif // CHART_BLCK_H
