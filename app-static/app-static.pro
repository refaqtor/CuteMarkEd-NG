#
# Application Static Libary Project for CuteMarkEd
#
# Github : https://github.com/cloose/CuteMarkEd
#

QT += gui webenginewidgets

TARGET = app-static
TEMPLATE = lib
CONFIG += staticlib
CONFIG += c++11

INCLUDEPATH += $$PWD
#
# MD4C library
#
INCLUDEPATH += $$PWD/../3rdparty/md4c
INCLUDEPATH += $$PWD/../3rdparty/md4c/md4c

SOURCES += \
    snippets/jsonsnippettranslator.cpp \
    snippets/snippetcollection.cpp \
    converter/MD4Cmarkdownconverter.cpp \
    spellchecker/dictionary.cpp \
    converter/revealmarkdownconverter.cpp \
    template/htmltemplate.cpp \
    template/presentationtemplate.cpp \
    themes/jsonthemetranslator.cpp \
    themes/stylemanager.cpp \
    themes/theme.cpp \
    themes/themecollection.cpp \
    completionlistmodel.cpp \
    datalocation.cpp \
    slidelinemapping.cpp \
    viewsynchronizer.cpp \
    revealviewsynchronizer.cpp \
    htmlpreviewcontroller.cpp \
    htmlviewsynchronizer.cpp \
    yamlheaderchecker.cpp \
    $$PWD/../3rdparty/md4c/md4c/md4c.c \
    $$PWD/../3rdparty/md4c/md2html/entity.c \
    $$PWD/../3rdparty/md4c/md2html/render_html.c

HEADERS += \
    snippets/snippet.h \
    snippets/jsonsnippettranslator.h \
    snippets/jsonsnippettranslatorfactory.h \
    snippets/snippetcollection.h \
    converter/markdownconverter.h \
    converter/markdowndocument.h \
    converter/MD4Cmarkdownconverter.h \
    spellchecker/dictionary.h \
    converter/revealmarkdownconverter.h \
    template/template.h \
    template/htmltemplate.h \
    template/presentationtemplate.h \
    themes/jsonthemetranslator.h \
    themes/jsonthemetranslatorfactory.h \
    themes/stylemanager.h \
    themes/theme.h \
    themes/themecollection.h \
    completionlistmodel.h \
    datalocation.h \
    slidelinemapping.h \
    viewsynchronizer.h \
    revealviewsynchronizer.h \
    htmlpreviewcontroller.h \
    htmlviewsynchronizer.h \
    yamlheaderchecker.h \
    $$PWD/../3rdparty/md4c/md4c/md4c.h \
    $$PWD/../3rdparty/md4c/md2html/entity.h \
    $$PWD/../3rdparty/md4c/md2html/render_html.h


#unix:!symbian {
#    maemo5 {
#        target.path = /opt/usr/lib
#    } else {
#        target.path = /usr/lib
#    }
#    INSTALLS += target
#}

##################################################
# Dependencies
##################################################

#
# Add search paths below /usr/local for Mac OSX
#
macx:INCLUDEPATH += /usr/local/include

#
# JSON configuration library
#
INCLUDEPATH += $$PWD/../libs/jsonconfig


#Discount Library
win32:INCLUDEPATH += $$PWD/../3rdparty/discount
