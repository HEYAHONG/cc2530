#!/bin/bash
echo Installing sdcc
apt-get install sdcc make  -y
echo Installing cc-tool
apt-get install libusb-1.0 libboost-all-dev gcc build-essential -y 
cd toolchain/cc-tool
./configure
make && make install

