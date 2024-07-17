#!/bin/bash
set -ex
cd ./qemu


# ./configure --target-list=x86_64-softmmu --cc="clang" --cxx="clang++" || cat /Users/runner/work/qemu-builder/qemu-builder/qemu/build/meson-logs/meson-log.txt

# ./configure --target-list=x86_64-softmmu --cc=/usr/bin/clang --host-cc=/usr/bin/clang --ar=/usr/bin/ar --ranlib=/usr/bin/ranlib --strip=/usr/bin/strip --prefix=/usr/local
# ./configure --target-list=x86_64-softmmu --cross-prefix=x86_64-apple-darwin- --cc=/usr/bin/clang --host-cc=/usr/bin/clang
./configure --target-list=x86_64-softmmu --disable-werror --disable-gtk
make -j$(sysctl -n hw.physicalcpu)
