/****************************************************************************
** Meta object code from reading C++ file 'fpga_subs.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.11)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../src/fpga_subs/fpga_subs.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QList>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'fpga_subs.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.11. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_fpga_subs_t {
    QByteArrayData data[17];
    char stringdata0[194];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_fpga_subs_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_fpga_subs_t qt_meta_stringdata_fpga_subs = {
    {
QT_MOC_LITERAL(0, 0, 9), // "fpga_subs"
QT_MOC_LITERAL(1, 10, 9), // "info_trig"
QT_MOC_LITERAL(2, 20, 0), // ""
QT_MOC_LITERAL(3, 21, 8), // "udp_trig"
QT_MOC_LITERAL(4, 30, 9), // "uart_trig"
QT_MOC_LITERAL(5, 40, 8), // "hex_trig"
QT_MOC_LITERAL(6, 49, 3), // "hex"
QT_MOC_LITERAL(7, 53, 3), // "dec"
QT_MOC_LITERAL(8, 57, 3), // "bit"
QT_MOC_LITERAL(9, 61, 16), // "update_file_path"
QT_MOC_LITERAL(10, 78, 14), // "QList<QString>"
QT_MOC_LITERAL(11, 93, 22), // "on_ui_rd_param_clicked"
QT_MOC_LITERAL(12, 116, 22), // "on_ui_wr_param_clicked"
QT_MOC_LITERAL(13, 139, 19), // "on_ui_close_clicked"
QT_MOC_LITERAL(14, 159, 23), // "on_ui_table_cellClicked"
QT_MOC_LITERAL(15, 183, 3), // "row"
QT_MOC_LITERAL(16, 187, 6) // "column"

    },
    "fpga_subs\0info_trig\0\0udp_trig\0uart_trig\0"
    "hex_trig\0hex\0dec\0bit\0update_file_path\0"
    "QList<QString>\0on_ui_rd_param_clicked\0"
    "on_ui_wr_param_clicked\0on_ui_close_clicked\0"
    "on_ui_table_cellClicked\0row\0column"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_fpga_subs[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    4,   59,    2, 0x06 /* Public */,
       3,    2,   68,    2, 0x06 /* Public */,
       4,    2,   73,    2, 0x06 /* Public */,
       5,    3,   78,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       9,    1,   85,    2, 0x0a /* Public */,
      11,    0,   88,    2, 0x08 /* Private */,
      12,    0,   89,    2, 0x08 /* Private */,
      13,    0,   90,    2, 0x08 /* Private */,
      14,    2,   91,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::UInt, QMetaType::UInt, QMetaType::QString, QMetaType::QString,    2,    2,    2,    2,
    QMetaType::Void, QMetaType::QString, QMetaType::UInt,    2,    2,
    QMetaType::Void, QMetaType::QString, QMetaType::UInt,    2,    2,
    QMetaType::Void, QMetaType::UInt, QMetaType::UInt, QMetaType::UInt,    6,    7,    8,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 10,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   15,   16,

       0        // eod
};

void fpga_subs::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<fpga_subs *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->info_trig((*reinterpret_cast< quint32(*)>(_a[1])),(*reinterpret_cast< quint32(*)>(_a[2])),(*reinterpret_cast< QString(*)>(_a[3])),(*reinterpret_cast< QString(*)>(_a[4]))); break;
        case 1: _t->udp_trig((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< quint32(*)>(_a[2]))); break;
        case 2: _t->uart_trig((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< quint32(*)>(_a[2]))); break;
        case 3: _t->hex_trig((*reinterpret_cast< quint32(*)>(_a[1])),(*reinterpret_cast< quint32(*)>(_a[2])),(*reinterpret_cast< quint32(*)>(_a[3]))); break;
        case 4: _t->update_file_path((*reinterpret_cast< QList<QString>(*)>(_a[1]))); break;
        case 5: _t->on_ui_rd_param_clicked(); break;
        case 6: _t->on_ui_wr_param_clicked(); break;
        case 7: _t->on_ui_close_clicked(); break;
        case 8: _t->on_ui_table_cellClicked((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 4:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QList<QString> >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (fpga_subs::*)(quint32 , quint32 , QString , QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&fpga_subs::info_trig)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (fpga_subs::*)(QString , quint32 );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&fpga_subs::udp_trig)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (fpga_subs::*)(QString , quint32 );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&fpga_subs::uart_trig)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (fpga_subs::*)(quint32 , quint32 , quint32 );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&fpga_subs::hex_trig)) {
                *result = 3;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject fpga_subs::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_fpga_subs.data,
    qt_meta_data_fpga_subs,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *fpga_subs::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *fpga_subs::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_fpga_subs.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int fpga_subs::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    }
    return _id;
}

// SIGNAL 0
void fpga_subs::info_trig(quint32 _t1, quint32 _t2, QString _t3, QString _t4)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void fpga_subs::udp_trig(QString _t1, quint32 _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void fpga_subs::uart_trig(QString _t1, quint32 _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void fpga_subs::hex_trig(quint32 _t1, quint32 _t2, quint32 _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
