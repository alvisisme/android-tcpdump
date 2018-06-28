#!/bin/bash

# build libpcap
wget http://www.tcpdump.org/release/libpcap-1.8.1.tar.gz
tar xf libpcap-1.8.1.tar.gz
cd libpcap-1.8.1
./configure --host=aarch64-linux --with-pcap=linux ac_cv_linux_vers=2
make
make install
cd ..

# build tcpdump
wget http://www.tcpdump.org/release/tcpdump-4.9.2.tar.gz
tar xf tcpdump-4.9.2.tar.gz
cd tcpdump-4.9.2
./configure --prefix=/home/out --host=aarch64-linux ac_cv_linux_vers=2 --with-crypto=no CFLAGS='-fPIE' LDFLAGS='-fPIE -pie'
make
make install
cd ..

# clean
rm -rf libpcap-1.8.1.tar.gz
rm -rf libpcap-1.8.1
rm -rf tcpdump-4.9.2.tar.gz
rm -rf tcpdump-4.9.2