cd /mnt/src

# Build windows x64
./configure --cross-prefix=x86_64-w64-mingw32-  --target-list=x86_64-softmmu --disable-gtk  --extra-cflags=" -I/usr/x86_64-w64-mingw32/lib" --extra-ldflags="-L/usr/x86_64-w64-mingw32/lib"
make -j$(nproc)
mv ./build/qemu-system-x86_64.exe /mnt/build/qemu-x86_64-pc-windows-gnu.exe