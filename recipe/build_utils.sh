#!/bin/sh

set -e

cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
  -DCMAKE_PREFIX_PATH:PATH=$PREFIX \
  -DCMAKE_BUILD_TYPE:STRING=Release \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DBUILD_SHARED_LIBS=ON \
  -S src/trajopt_utils \
  -B build_utils_dir

cmake --build build_utils_dir --config Release -- -j$CPU_COUNT
cmake --build build_utils_dir --config Release --target install
