#!/bin/bash
set -ex
cd /mnt/src

./configure --target-list=x86_64-softmmu --disable-gtk  --extra-cflags=" -I/usr/x86_64-w64-mingw32/lib" --extra-ldflags="-L/usr/x86_64-w64-mingw32/lib"
make -j$(nproc)