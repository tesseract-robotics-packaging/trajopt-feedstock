#!/bin/sh

set -e

mkdir -p src
tar xf source.tar.gz --strip-components=1 -C src

for p in trajopt_common trajopt_sco trajopt_ifopt trajopt; do

  cmake -GNinja \
    -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
    -DCMAKE_PREFIX_PATH:PATH=$PREFIX \
    -DCMAKE_BUILD_TYPE:STRING=Release \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DBUILD_SHARED_LIBS=ON \
    -DTESSERACT_ENABLE_TESTING=OFF \
    -DTESSERACT_ENABLE_EXAMPLES=OFF \
    -DCMAKE_VERBOSE_MAKEFILE=ON \
    -S src/$p \
    -B build_dir/$p

  cmake --build build_dir/$p --config Release -- -j$CPU_COUNT
  cmake --build build_dir/$p --config Release --target install

done
