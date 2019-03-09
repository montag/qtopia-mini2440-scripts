#!/bin/bash

#tar xfvz konq.tar.gz

cd konq
source /opt/FriendlyARM/mini2440/x86-qtopia/qtopia-2.2.0-FriendlyARM/setQpeEnv
CC=arm-linux-gcc CXX=arm-linux-g++ LDFLAGS=-ldl CROSS_COMPILE=1 ./configure --enable-embedded --enable-qt-embedded --enable-qpe --disable-debug --enable-static --disable-shared --disable-mt --without-ssl --with-qt-dir=$QTDIR --with-qt-includes=$QTDIR/include --with-qt-libraries=$QPEDIR/lib --with-qtopia-dir=$QPEDIR --with-gui=qpe --host=arm-linux --target=arm-linux

./configure --enable-embedded --enable-qt-embedded --enable-qpe --disable-debug --enable-static --disable-shared --disable-mt --without-ssl --with-qt-dir=$QTDIR --with-qt-includes=$QTDIR/include --with-qt-libraries=$QPEDIR/lib --with-qtopia-dir=$QPEDIR --with-gui=qpe
make
strip --strip-all konq-embed/src/konqueror

cd ..

cp konq/konq-embed/src/konqueror qtopia-2.2.0-FriendlyARM/qtopia/image/opt/Qtopia/bin/
mkdir -p qtopia-2.2.0-FriendlyARM/qtopia/image/opt/Qtopia/pics/konqueror
cp konq/konq-embed/src/konqueror.png qtopia-2.2.0-FriendlyARM/qtopia/image/opt/Qtopia/pics/konqueror

mkdir -p qtopia-2.2.0-FriendlyARM/qtopia/image/opt/kde/share/apps/khtml/css
mkdir -p qtopia-2.2.0-FriendlyARM/qtopia/image/opt/kde/share/config
cp konq/konq-embed/kdesrc/khtml/css/html4.css qtopia-2.2.0-FriendlyARM/qtopia/image/opt/kde/share/apps/khtml/css
cp konq/konq-embed/kdesrc/kdecore/charsets qtopia-2.2.0-FriendlyARM/qtopia/image/opt/kde/share/config

cp konq/konq-embed/src/konqueror.desktop qtopia-2.2.0-FriendlyARM/qtopia/image/opt/Qtopia/apps/Applications

