#!/bin/bash

BUILDDIR=$1
BUILD_TARGET=$2
PROJDIR="build_$(date +%s)"

if [ -z $BUILDDIR ]; then
    BUILDDIR="/tmp"
    echo $BUILDDIR
fi
if [ -z $BUILD_TARGET ]; then
    BUILD_TARGET="core-image-minimal"
    echo $BUILD_TARGET
fi

mkdir -p $BUILDDIR
cd $BUILDDIR
. /home/yoctobuilder/git/poky/oe-init-build-env $PROJDIR
bitbake $BUILD_TARGET
