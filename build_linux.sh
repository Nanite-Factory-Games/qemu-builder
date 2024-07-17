#!/bin/bash
set -ex
cd /mnt/src

./configure --target-list=x86_64-softmmu --without-default-features
make -j$(nproc)