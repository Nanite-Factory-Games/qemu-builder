#!/bin/bash
set -ex

./configure --target-list=x86_64-softmmu --cross-prefix=x86_64-apple-darwin23.6- --disable-werror --disable-gtk
make -j$(nproc)
