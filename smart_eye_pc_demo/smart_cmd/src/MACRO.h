#ifndef MACRO_H
#define MACRO_H

#include <QMetaType>

//add macro
#define ERR_NO_ERR 0
#define ERR_TYPE_MATCH 1
#define ERR_NULL_VARIABLE 2

//add code value
#define CODE_BMP_FILE 1

//add struct
struct SUdpPck{
    quint32 pck_code;
    quint32 pck_len ;  //height
    quint32 pck_wid ;  //width
    char dat_val[960]; //data
    quint32   chk_xor; //xor
};
Q_DECLARE_METATYPE(SUdpPck)

#endif // MACRO_H