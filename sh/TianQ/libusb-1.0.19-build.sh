#!/bin/bash
./configure \
CC=arm-linux-gcc \
CXX=arm-linux-g++ \
--host=arm-linux \
--prefix=/opt/embedsky/libusb-arm-1.0.19 \
--disable-udev
