#!/bin/bash
# This script is for vm-divers.iso.

install(){
    local cwd=`pwd`
    mkdir /tmp/vm-drivers
    cp $cwd/vm-drivers.tar /tmp/vm-drivers
    cd /tmp/vm-drivers
    gnutar -x -f vm-drivers.tar
    mv *.config /private/Devices
    cd $cwd
    rm -fr /tmp/vm-drivers
}

echo "Installing VMware drivers..."

install

echo "Done."
