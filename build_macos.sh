#!/bin/bash
set -ex

cd /mnt/src

echo $PATH

echo $OSX_VERSION_MIN

PKG_CONFIG=/osxcross/bin/x86_64-apple-darwin23.6-pkg-config ./configure --target-list=x86_64-softmmu --cross-prefix=x86_64-apple-darwin23.6- --disable-werror --disable-gtk --cxx=clang++ --cc=clang
make -j$(nproc)
