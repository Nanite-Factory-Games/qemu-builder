#!/bin/bash
set -ex
cd /qemu

export AR=llvm-ar
export RANLIB=llvm-ranlib

./configure --target-list=aarch64-softmmu \
--cc=clang --cxx=clang++ \
--objcc=clang --host-cc=clang \
--cross-prefix=aarch64-windows-gnu- \
--extra-cflags="--target=aarch64-windows-gnu" \
--extra-ldflags="--target=aarch64-windows-gnu -fuse-ld=lld" \
--disable-gtk --disable-docs --without-default-features \
--disable-guest-agent \
--enable-slirp --enable-fdt --enable-tools --enable-vvfat --enable-qcow1
# Required for x86_64 targets
# --disable-fdt
make -j$(nproc)

mv build/qemu-system-aarch64 /mnt/build/qemu\(aarch64\)-windows-aarch64-pc-windows-gnu.exe
