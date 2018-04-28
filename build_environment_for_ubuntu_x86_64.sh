#!/bin/bash
if [  `whoami` != "root" ] 
then
echo Please run as root
exit 255
fi
PATH=`pwd`/toolchain/sdcc-binary/opt/sdcc-binary/bin/:`pwd`/toolchain/cc-tool-binary/opt/cc-tool-binary/bin:$PATH
apt-get update && apt-get install libusb-1.0 srecord libboost1.54-all-dev gcc g++ pkg-config make flex bison libncurses-dev build-essential -y 
/bin/bash
