#!/bin/bash

#rm -fr konq

#tar xfvz konq.tar.gz

cd konq
source /opt/FriendlyARM/mini2440/arm-qtopia/qtopia-2.2.0-FriendlyARM/setQpeEnv
CC=arm-linux-gcc CXX=arm-linux-g++ LDFLAGS=-ldl CROSS_COMPILE=1 ./configure --enable-embedded --enable-qt-embedded --enable-qpe --disable-debug --enable-static --disable-shared --disable-mt --without-ssl --with-qt-dir=$QTDIR --with-qt-includes=$QTDIR/include --with-qt-libraries=$QPEDIR/lib --with-qtopia-dir=$QPEDIR --with-gui=qpe --host=arm-linux --target=arm-linux

make
arm-linux-strip --strip-all konq-embed/src/konqueror