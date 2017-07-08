#!/bin/bash

BUILDDIR=$1
BUILD_TARGET=$2
PROJDIR="build_$(date +%s)"

if [ -z $BUILDDIR ]; then
    BUILDDIR="/tmp"
fi
if [ -z $BUILD_TARGET ]; then
    BUILD_TARGET="core-image-minimal"
fi

# Make it possible to start container in DEV MODE (spawn an interactive shell)
if [ x$BUILDDIR = x"bash" ]; then
    bash
else
    mkdir -p $BUILDDIR
    cd $BUILDDIR
    . /home/yoctobuilder/git/poky/oe-init-build-env $PROJDIR
    bitbake $BUILD_TARGET
fi
