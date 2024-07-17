set -ex
rm -rf ./build
# # Build Linux
# docker build -t qemu-builder-linux -f Dockerfile_linux .
# docker run --rm -v $(realpath ./qemu):/mnt/src -v $(realpath ./build):/mnt/build --name qemu-builder-linux "qemu-builder-linux"

# # Build Windows
# docker build -t qemu-builder-windows -f Dockerfile_windows .
# docker run --rm -v $(realpath ./qemu):/mnt/src -v $(realpath ./build):/mnt/build --name qemu-builder-windows "qemu-builder-windows"

# Build Macos
docker build -t qemu-builder-macos -f Dockerfile_macos .
docker run --rm -v $(realpath ./qemu):/mnt/src -v $(realpath ./build):/mnt/build --name qemu-builder-macos "qemu-builder-macos"
