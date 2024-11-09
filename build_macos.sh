#!/bin/bash
set -ex

git clone -b stable-8.2 https://github.com/qemu/qemu.git

cd ./qemu

./configure --target-list=x86_64-softmmu --without-default-features \
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
--disable-cloop --disable-dmg --disable-rbd \
--disable-vhdx --disable-vdi --disable-bochs --disable-rdma --disable-zstd 

make -j$(sysctl -n hw.physicalcpu)
