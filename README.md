# QEMU Builder

## Build all
To attempt to build all platforms, run `./build.sh`.
Right now this will only build for MacOS since i'm debugging issues with it.

This project is meant to provide the statically linked binaries for qemu
for the following platforms:

 - Windows x86_64
 - Windows ARM(WIP)
 - Linux x86_64
 - Linux ARM(WIP)
 - Apple x86_64(WIP)
 - Apple ARM(WIP)

## Building Apple

Apple can only be built one of 2 ways:
 - Native compile
 - Cross compile

The native compile requires being built on an apple machine,
wheras the cross compile can be run on linux so long as the apple
sdk is coppied. We use SDK's coppied from the apple cdn to do this,
rather than having to get the SDK's manually from a mac.
