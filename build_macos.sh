#!/bin/bash
set -ex
cd ./qemu

./configure --target-list=x86_64-softmmu --cross-prefix=x86_64-apple-darwin- --cc=/usr/bin/clang --host-cc=/usr/bin/clang
# ./configure --target-list=x86_64-softmmu --disable-werror --disable-gtk
make -j$(sysctl -n hw.physicalcpu)
