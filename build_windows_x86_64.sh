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
ls build
cp build/qemu-system-x86_64.exe /mnt/build/qemu\(x86_64\)-windows-x86_64-pc-windows-gnu.exe
cp build/qemu-bundle/qemu/libslirp-0.dll /mnt/build/
cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/libwinpthread-1.dll /mnt/build
cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/libglib-2.0-0.dll /mnt/build
cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/zlib1.dll /mnt/build
cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/libintl-8.dll /mnt/build
cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/libpcre2-8-0.dll /mnt/build
cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/iconv.dll /mnt/build

