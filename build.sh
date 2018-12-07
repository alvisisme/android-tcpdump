#!/bin/bash

CWD=$PWD
mkdir -p $CWD/build
LIBPCAP_VERSION=1.9.0
TCPDUMP_VERSION=4.9.2

# build libpcap
cd $CWD/build
if [ ! -f libpcap-$LIBPCAP_VERSION.tar.gz ];then
wget http://www.tcpdump.org/release/libpcap-$LIBPCAP_VERSION.tar.gz
fi
if [ -d libpcap-$LIBPCAP_VERSION ];then
rm -rf libpcap-$LIBPCAP_VERSION
fi
tar xf libpcap-$LIBPCAP_VERSION.tar.gz
cd libpcap-$LIBPCAP_VERSION
./configure --host=aarch64-linux --with-pcap=linux ac_cv_linux_vers=2
make
make install
cd $CWD

# build tcpdump
cd $CWD/build
if [ ! -f tcpdump-$TCPDUMP_VERSION.tar.gz ];then
wget http://www.tcpdump.org/release/tcpdump-$TCPDUMP_VERSION.tar.gz
fi
if [ -d tcpdump-$TCPDUMP_VERSION ];then
rm -rf build/tcpdump-$TCPDUMP_VERSION
fi
tar xf tcpdump-$TCPDUMP_VERSION.tar.gz
cd tcpdump-$TCPDUMP_VERSION
./configure --prefix=$CWD/build/ --host=aarch64-linux ac_cv_linux_vers=2 --with-crypto=no CFLAGS='-fPIE' LDFLAGS='-fPIE -pie'
make
make install
cd $CWD