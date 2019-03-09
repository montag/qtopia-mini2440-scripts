#!/bin/bash

#rm -fr qtopia-2.2.0-FriendlyARM
#tar xfvz qtopia-2.2.0.tar.gz

cd qtopia-2.2.0-FriendlyARM
echo yes | ./configure -qte '-embedded -no-xft -qconfig qpe -depths 16,32 -system-jpeg -qt-zlib -qt-libpng -gif -no-g++-exceptions -no-qvfb -xplatform linux-arm-g++ -tslib' -qpe 'edition pda -displaysize 240x320 -fontfamilies "helvetica fixed micro smallsmooth smoothtimes unifont" -xplatform linux-arm-g++ -luuid' -qt2 '-no-opengl -no-xft' -dqt '-no-xft -thread'

make && make install

/opt/FriendlyARM/mini2440/arm-qtopia/build-all:
#!/bin/bash

./build
./build-konq
./mktarget


/opt/FriendlyARM/mini2440/arm-qtopia/build-konq:
#!/bin/bash

#rm -fr konq

#tar xfvz konq.tar.gz

cd konq
source /opt/FriendlyARM/mini2440/arm-qtopia/qtopia-2.2.0-FriendlyARM/setQpeEnv
CC=arm-linux-gcc CXX=arm-linux-g++ LDFLAGS=-ldl CROSS_COMPILE=1 ./configure --enable-embedded --enable-qt-embedded --enable-qpe --disable-debug --enable-static --disable-shared --disable-mt --without-ssl --with-qt-dir=$QTDIR --with-qt-includes=$QTDIR/include --with-qt-libraries=$QPEDIR/lib --with-qtopia-dir=$QPEDIR --with-gui=qpe --host=arm-linux --target=arm-linux

make
arm-linux-strip --strip-all konq-embed/src/konqueror