#ifndef ONCE_BLCK_H
#define ONCE_BLCK_H

#include <QWidget>

namespace Ui {
class once_blck;
}

class once_blck : public QWidget
{
    Q_OBJECT

public:
    explicit once_blck(QWidget *parent = nullptr);
    ~once_blck();

private:
    Ui::once_blck *ui;
};

#endif // ONCE_BLCK_H
