#!/bin/bash
set -ex
cd /qemu

alias python3='/usr/bin/python3.8'
alias pip3='python3 -m pip'

CC=gcc-10
CXX=g++-10


git apply /hwcap-fix.patch

./configure --target-list=$1 --cross-prefix=$2 --without-default-features --static \
--disable-gtk \
--disable-tools --disable-docs \
--disable-vnc --disable-sdl --disable-gtk --disable-opengl --disable-curses \
--disable-virtfs --disable-tpm --disable-libnfs --disable-curl \
--disable-vhost-net --disable-spice --disable-slirp --disable-gcrypt \
--disable-nettle --disable-libssh --disable-gnutls --disable-rdma \
--disable-libusb --disable-usb-redir --disable-brlapi --disable-vde \
--disable-smartcard --disable-xen --disable-glusterfs \
--disable-libpmem --disable-qom-cast-debug --disable-gio \
--disable-modules --disable-seccomp \
--disable-debug-tcg --disable-tcg-interpreter --disable-mpath --disable-linux-aio \
--disable-parallels --disable-qed --disable-vmdk \
--disable-cloop --disable-dmg --disable-vvfat --disable-rbd \
--disable-vhdx --disable-vdi --disable-bochs --disable-rdma --disable-zstd
# Required for x86_64 targets
# --disable-fdt
make V=1 -j$(nproc)


mv build/qemu-system-aarch64 /mnt/build/qemu\(aarch64\)-aarch64-unknown-linux-gnu