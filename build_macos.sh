#!/bin/bash
set -ex
cd ./qemu


./configure --target-list=x86_64-softmmu --disable-werror --disable-gtk
make -j$(sysctl -n hw.physicalcpu)
