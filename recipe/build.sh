#!/bin/bash

mkdir build_release
cd build_release

cmake ${CMAKE_ARGS} \
    -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${PREFIX}" \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DBUILD_DOCS=0 \
    -DBUILD_EXAMPLES=0 \
    -DBUILD_TESTS=0 \
    -DOPENCL_DIST_DIR="${PREFIX}" \
    "${SRC_DIR}"

make -j${CPU_COUNT}
make install
