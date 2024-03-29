#!/bin/sh

set -e

cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
  -DCMAKE_PREFIX_PATH:PATH=$PREFIX \
  -DCMAKE_BUILD_TYPE:STRING=Release \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DBUILD_SHARED_LIBS=ON \
  -DTESSERACT_BUILD_EXAMPLES=OFF \
  -DTESSERACT_BUILD_TRAJOPT_IFOPT=OFF \
  -DNO_OPENCL=ON \
  $SUBPKG_CMAKE_ARGS $SUBPKG_CMAKE_ARGS_UNIX \
  -S $SUBPKG_SRC_DIR \
  -B $SUBPKG_BUILD_DIR

cmake --build $SUBPKG_BUILD_DIR --config Release -- -j$CPU_COUNT
cmake --build $SUBPKG_BUILD_DIR --config Release --target install

cd $SUBPKG_BUILD_DIR
ctest --output-on-failure
