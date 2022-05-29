#!/usr/bin/bash
export CCACHE_DIR="/build/ccache"

cp -r /src/* -r /build
cd /build
./build-toolchain.sh
cd install
COMMIT_HASH=$(bin/clang --version | grep -Po '([a-f0-9]{40})')
XZ_OPT="-9 -T0" tar cJf clang-$COMMIT_HASH.tar.xz .
mkdir -p /src/install
mv clang-$COMMIT_HASH.tar.xz /src/install
