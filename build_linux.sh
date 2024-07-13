cd /mnt/src

# Build for linux x64
./configure --target-list=x86_64-softmmu --without-default-features
make -j$(nproc)
mv ./build/qemu-system-x86_64 /mnt/build/qemu-x86_64-unknown-linux-gnu