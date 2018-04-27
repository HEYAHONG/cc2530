#!/bin/bash
if [  `whoami` != "root" ] 
then
echo Please run as root
exit 255
fi
workdir=`pwd`
echo Installing build tools
apt-get install libusb-1.0 srecord libboost-all-dev gcc g++ pkg-config make flex bison libncurses5-dev build-essential -y 
echo Installing sdcc
apt-get remove sdcc -y
cd $workdir/toolchain/sdcc
./configure --disable-z80-port --disable-z180-port --disable-r2k-port --disable-r3ka-port --disable-gbz80-port  --disable-avr-port --disable-ds400-port  --disable-ds390-port --disable-hc08-port --disable-s08-port  --disable-pic-port --disable-pic14-port --disable-pic16-port  --disable-stm8-port  --disable-tlcs90-port
make && make install
make clean
make distclean
echo Installing cc-tool
cd $workdir/toolchain/cc-tool
./configure
make && make install
make clean
make distclean
