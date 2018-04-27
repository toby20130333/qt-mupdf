#-------------------------------------------------
#
# Project created by QtCreator 2018-04-27T16:40:32
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = mupdf-qt
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH +=$$PWD/mupdf/include/mupdf-qt  $$PWD/include/mupdf
CONFIG(release, debug|release):{
   LIBS += -L$$PWD/mupdf/Release -llibmupdf -llibthirdparty -lmupdf-qt
}
CONFIG(debug, debug|release):{
   LIBS += -L$$PWD/mupdf/Debug -llibmupdf -llibthirdparty -lmupdf-qt
}

SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h
win32{
    CONFIG += skip_target_version_ext
    RC_LANG = 2052
    QMAKE_TARGET_COMPANY ="http://www.heilqt.com"
    QMAKE_TARGET_COPYRIGHT ="Copyright 2018~2022 Shanghai DDui Data Inc. All Rights Reserved"
    QMAKE_TARGET_DESCRIPTION ="Internal File"
    QMAKE_TARGET_PRODUCT = "Internal Product"
    RC_ICONS = pdf.ico
    VERSION = 0.0.0.1
#    VER = $$system('version.bat')
#    VERSION = $$VER
    #message(local version is:$$VERSION)
    QMAKE_LFLAGS_RELEASE += /MAP
    QMAKE_CFLAGS_RELEASE += /Zi
    QMAKE_LFLAGS_RELEASE += /debug /opt:ref
}

RESOURCES += \
    xxx.qrc
