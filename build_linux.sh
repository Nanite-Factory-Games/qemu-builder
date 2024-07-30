#!/bin/bash
set -ex
cd /mnt/src

./configure --static --target-list=x86_64-softmmu --without-default-features
make -j$(nproc)