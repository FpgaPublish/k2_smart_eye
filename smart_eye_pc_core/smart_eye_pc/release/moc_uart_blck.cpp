/****************************************************************************
** Meta object code from reading C++ file 'uart_blck.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.11)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../src/uart_blck/uart_blck.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'uart_blck.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.11. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_uart_blck_t {
    QByteArrayData data[11];
    char stringdata0[140];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_uart_blck_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_uart_blck_t qt_meta_stringdata_uart_blck = {
    {
QT_MOC_LITERAL(0, 0, 9), // "uart_blck"
QT_MOC_LITERAL(1, 10, 9), // "info_trig"
QT_MOC_LITERAL(2, 20, 0), // ""
QT_MOC_LITERAL(3, 21, 8), // "spd_trig"
QT_MOC_LITERAL(4, 30, 22), // "on_ui_read_par_clicked"
QT_MOC_LITERAL(5, 53, 22), // "on_ui_setx_par_clicked"
QT_MOC_LITERAL(6, 76, 22), // "on_ui_exit_win_clicked"
QT_MOC_LITERAL(7, 99, 13), // "uart_recv_cmd"
QT_MOC_LITERAL(8, 113, 13), // "uart_send_cmd"
QT_MOC_LITERAL(9, 127, 7), // "pns_dat"
QT_MOC_LITERAL(10, 135, 4) // "code"

    },
    "uart_blck\0info_trig\0\0spd_trig\0"
    "on_ui_read_par_clicked\0on_ui_setx_par_clicked\0"
    "on_ui_exit_win_clicked\0uart_recv_cmd\0"
    "uart_send_cmd\0pns_dat\0code"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_uart_blck[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    4,   49,    2, 0x06 /* Public */,
       3,    1,   58,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   61,    2, 0x08 /* Private */,
       5,    0,   62,    2, 0x08 /* Private */,
       6,    0,   63,    2, 0x08 /* Private */,
       7,    0,   64,    2, 0x08 /* Private */,
       8,    2,   65,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::UInt, QMetaType::UInt, QMetaType::QString, QMetaType::QString,    2,    2,    2,    2,
    QMetaType::Void, QMetaType::Float,    2,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString, QMetaType::UInt,    9,   10,

       0        // eod
};

void uart_blck::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<uart_blck *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->info_trig((*reinterpret_cast< quint32(*)>(_a[1])),(*reinterpret_cast< quint32(*)>(_a[2])),(*reinterpret_cast< QString(*)>(_a[3])),(*reinterpret_cast< QString(*)>(_a[4]))); break;
        case 1: _t->spd_trig((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 2: _t->on_ui_read_par_clicked(); break;
        case 3: _t->on_ui_setx_par_clicked(); break;
        case 4: _t->on_ui_exit_win_clicked(); break;
        case 5: _t->uart_recv_cmd(); break;
        case 6: _t->uart_send_cmd((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< quint32(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (uart_blck::*)(quint32 , quint32 , QString , QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&uart_blck::info_trig)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (uart_blck::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&uart_blck::spd_trig)) {
                *result = 1;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject uart_blck::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_uart_blck.data,
    qt_meta_data_uart_blck,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *uart_blck::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *uart_blck::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_uart_blck.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int uart_blck::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void uart_blck::info_trig(quint32 _t1, quint32 _t2, QString _t3, QString _t4)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void uart_blck::spd_trig(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
