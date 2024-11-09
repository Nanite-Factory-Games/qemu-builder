#!/bin/bash
set -ex
cd /qemu

export LD_LIBRARY_PATH=/usr/x86_64-w64-mingw32/sys-root/mingw/lib
./configure --cross-prefix=x86_64-w64-mingw32- --target-list=x86_64-softmmu --disable-gtk --static \
--disable-gtk \
--disable-tools --disable-docs \
--disable-vnc --disable-sdl --disable-gtk --disable-opengl --disable-curses \
--disable-virtfs --disable-tpm --disable-libnfs --disable-curl \
--disable-vhost-net --disable-spice --disable-pie --disable-gcrypt \
--disable-nettle --disable-libssh --disable-gnutls --disable-rdma \
--disable-libusb --disable-usb-redir --disable-brlapi --disable-vde \
--disable-smartcard --disable-xen --disable-glusterfs \
--disable-libpmem --disable-qom-cast-debug --disable-gio \
--disable-modules --disable-seccomp \
--disable-debug-tcg --disable-tcg-interpreter --disable-mpath --disable-linux-aio \
--disable-parallels --disable-qed --disable-vmdk \
--disable-cloop --disable-dmg --disable-rbd \
--disable-vhdx --disable-vdi --disable-bochs --disable-rdma --disable-zstd
# Required for x86_64 targets
# --disable-fdt
make -j$(nproc)

ls
mv build/qemu-system-x86_64.exe /mnt/build/qemu\(x86_64\)-windows-x86_64-pc-windows-gnu.exe