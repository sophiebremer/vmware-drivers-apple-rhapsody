#!/usr/bin/env bash

echo "Creating vm-drivers.iso..."

rm -fr vm-drivers vm-drivers.iso vm-drivers.tar

tar -c \
 --directory Display \
 --file vm-drivers.tar \
 --format ustar \
 --no-acls \
 VMWareFB.config

tar -r \
 --directory Mouse \
 --file vm-drivers.tar \
 --format ustar \
 --no-acls \
 VMMouse.config

tar -r \
  --directory Network \
  --file vm-drivers.tar \
  --format ustar \
  --no-acls \
  VMXNet.config

tar -r \
 --directory Sound \
 --file vm-drivers.tar \
 --format ustar \
 --no-acls \
 SoundBlaster16PCI.config

mkdir -p vm-drivers

cp -r \
 LICENSE.md \
 install.command \
 README.md \
 vm-drivers.tar \
 vm-drivers/

rm vm-drivers.tar

hdiutil makehybrid \
 -hfs \
 -iso \
 -joliet \
 -o vm-drivers.iso \
 -ov \
 vm-drivers

rm -fr vm-drivers

echo "Done."
