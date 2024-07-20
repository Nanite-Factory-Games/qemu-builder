#!/bin/bash
set -ex
cd /mnt/src

./configure --target-list=x86_64-softmmu --cross-prefix=aarch64-linux-gnu- --without-default-features
make -j$(nproc)