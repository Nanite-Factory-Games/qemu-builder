#!/bin/bash
set -ex
cd /qemu

export LD_LIBRARY_PATH=/usr/x86_64-w64-mingw32/sys-root/mingw/lib
./configure --cross-prefix=x86_64-w64-mingw32- --target-list=x86_64-softmmu --disable-gtk --static \
--disable-gtk --disable-docs --without-default-features \
--disable-guest-agent \
--enable-slirp --enable-fdt --enable-tools --enable-vvfat --enable-qcow1

# Required for x86_64 targets
# --disable-fdt
make -j$(nproc)

mv build/qemu-system-x86_64.exe /mnt/build/qemu\(x86_64\)-windows-x86_64-pc-windows-gnu.exe
ls build