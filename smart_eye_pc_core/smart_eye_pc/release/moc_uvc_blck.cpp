/****************************************************************************
** Meta object code from reading C++ file 'uvc_blck.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.11)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../src/uvc_blck/uvc_blck.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QList>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'uvc_blck.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.11. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_uvc_blck_t {
    QByteArrayData data[19];
    char stringdata0[280];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_uvc_blck_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_uvc_blck_t qt_meta_stringdata_uvc_blck = {
    {
QT_MOC_LITERAL(0, 0, 8), // "uvc_blck"
QT_MOC_LITERAL(1, 9, 9), // "info_trig"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 8), // "bmp_trig"
QT_MOC_LITERAL(4, 29, 12), // "run_bat_trig"
QT_MOC_LITERAL(5, 42, 14), // "save_imag_trig"
QT_MOC_LITERAL(6, 57, 18), // "on_ui_read_clicked"
QT_MOC_LITERAL(7, 76, 19), // "on_ui_write_clicked"
QT_MOC_LITERAL(8, 96, 16), // "update_file_path"
QT_MOC_LITERAL(9, 113, 14), // "QList<QString>"
QT_MOC_LITERAL(10, 128, 16), // "recv_video_frame"
QT_MOC_LITERAL(11, 145, 11), // "QVideoFrame"
QT_MOC_LITERAL(12, 157, 19), // "on_ui_close_clicked"
QT_MOC_LITERAL(13, 177, 40), // "on_ui_display_customContextMe..."
QT_MOC_LITERAL(14, 218, 3), // "pos"
QT_MOC_LITERAL(15, 222, 13), // "run_bat_start"
QT_MOC_LITERAL(16, 236, 18), // "image_capture_save"
QT_MOC_LITERAL(17, 255, 12), // "wait_signals"
QT_MOC_LITERAL(18, 268, 11) // "millisecond"

    },
    "uvc_blck\0info_trig\0\0bmp_trig\0run_bat_trig\0"
    "save_imag_trig\0on_ui_read_clicked\0"
    "on_ui_write_clicked\0update_file_path\0"
    "QList<QString>\0recv_video_frame\0"
    "QVideoFrame\0on_ui_close_clicked\0"
    "on_ui_display_customContextMenuRequested\0"
    "pos\0run_bat_start\0image_capture_save\0"
    "wait_signals\0millisecond"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_uvc_blck[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    4,   79,    2, 0x06 /* Public */,
       3,    1,   88,    2, 0x06 /* Public */,
       4,    2,   91,    2, 0x06 /* Public */,
       5,    0,   96,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    0,   97,    2, 0x08 /* Private */,
       7,    0,   98,    2, 0x08 /* Private */,
       8,    1,   99,    2, 0x0a /* Public */,
      10,    1,  102,    2, 0x08 /* Private */,
      12,    0,  105,    2, 0x08 /* Private */,
      13,    1,  106,    2, 0x08 /* Private */,
      15,    0,  109,    2, 0x08 /* Private */,
      16,    2,  110,    2, 0x08 /* Private */,
      17,    1,  115,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::UInt, QMetaType::UInt, QMetaType::QString, QMetaType::QString,    2,    2,    2,    2,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void, QMetaType::Int, QMetaType::QString,    2,    2,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 9,    2,
    QMetaType::Void, 0x80000000 | 11,    2,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QPoint,   14,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::QImage,    2,    2,
    QMetaType::Bool, QMetaType::UInt,   18,

       0        // eod
};

void uvc_blck::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<uvc_blck *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->info_trig((*reinterpret_cast< quint32(*)>(_a[1])),(*reinterpret_cast< quint32(*)>(_a[2])),(*reinterpret_cast< QString(*)>(_a[3])),(*reinterpret_cast< QString(*)>(_a[4]))); break;
        case 1: _t->bmp_trig((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->run_bat_trig((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 3: _t->save_imag_trig(); break;
        case 4: _t->on_ui_read_clicked(); break;
        case 5: _t->on_ui_write_clicked(); break;
        case 6: _t->update_file_path((*reinterpret_cast< QList<QString>(*)>(_a[1]))); break;
        case 7: _t->recv_video_frame((*reinterpret_cast< QVideoFrame(*)>(_a[1]))); break;
        case 8: _t->on_ui_close_clicked(); break;
        case 9: _t->on_ui_display_customContextMenuRequested((*reinterpret_cast< const QPoint(*)>(_a[1]))); break;
        case 10: _t->run_bat_start(); break;
        case 11: _t->image_capture_save((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QImage(*)>(_a[2]))); break;
        case 12: { bool _r = _t->wait_signals((*reinterpret_cast< const uint(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 6:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QList<QString> >(); break;
            }
            break;
        case 7:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QVideoFrame >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (uvc_blck::*)(quint32 , quint32 , QString , QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&uvc_blck::info_trig)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (uvc_blck::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&uvc_blck::bmp_trig)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (uvc_blck::*)(int , QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&uvc_blck::run_bat_trig)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (uvc_blck::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&uvc_blck::save_imag_trig)) {
                *result = 3;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject uvc_blck::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_uvc_blck.data,
    qt_meta_data_uvc_blck,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *uvc_blck::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *uvc_blck::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_uvc_blck.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int uvc_blck::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    }
    return _id;
}

// SIGNAL 0
void uvc_blck::info_trig(quint32 _t1, quint32 _t2, QString _t3, QString _t4)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void uvc_blck::bmp_trig(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void uvc_blck::run_bat_trig(int _t1, QString _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void uvc_blck::save_imag_trig()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
