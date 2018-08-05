#!/bin/bash

git submodule update --init --recursive

sudo apt-get install cmake libsdl2-dev libzip-dev

cd ffmpeg
./linux_arm.sh

cd ..
rm -rf CMakeCache.txt CMakeFiles
cmake -DCMAKE_TOOLCHAIN_FILE=cmake/Toolchains/generic.armv7.cmake
make clean
make

