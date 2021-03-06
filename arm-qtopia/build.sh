#!/bin/bash

#rm -fr qtopia-2.2.0-FriendlyARM
#tar xfvz qtopia-2.2.0.tar.gz

cd qtopia-2.2.0-FriendlyARM
echo yes | ./configure -qte '-embedded -no-xft -qconfig qpe -depths 16,32 -system-jpeg -qt-zlib -qt-libpng -gif -no-g++-exceptions -no-qvfb -xplatform linux-arm-g++ -tslib' -qpe 'edition pda -displaysize 240x320 -fontfamilies "helvetica fixed micro smallsmooth smoothtimes unifont" -xplatform linux-arm-g++ -luuid' -qt2 '-no-opengl -no-xft' -dqt '-no-xft -thread'

make && make install