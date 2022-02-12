#!/bin/bash
##########################################################
# Custom Buildroot linux image Pure (http://puredsd.ru/) #
##########################################################

git clone git://git.buildroot.net/buildroot 
cd buildroot
make BR2_EXTERNAL=../ pure_defconfig
rm -r package/ffmpeg ; cp -r ../board/pure/backports/ffmpeg package/

CPUN=`getconf _NPROCESSORS_ONLN`
make -j$CPUN

