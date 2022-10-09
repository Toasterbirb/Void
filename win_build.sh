#!/bin/sh

BUILD_DIR="./build"
APP_NAME=void

# Delete any existing build directories
[ -d "$BUILD_DIR" ] && rm -rv "$BUILD_DIR"

# Create a fresh build directory and move into it
mkdir -pv "$BUILD_DIR"
cd "$BUILD_DIR"

cmake .. -DRELEASE=on -DWINDOWS=on -DTESTS=off -DUTILS=off -DSTATIC_SDL=on -DCMAKE_SYSTEM_NAME=Windows -DCMAKE_C_COMPILER=x86_64-w64-mingw32-gcc -DCMAKE_CXX_COMPILER=x86_64-w64-mingw32-g++ -DCMAKE_C_FLAGS="-fstack-protector -static" -DCMAKE_CXX_FLAGS="-fstack-protector -static -static-libstdc++" -DMINGW=TRUE

# Compile
make -j$(nproc)

# Move the binary and resources
mkdir ${APP_NAME}-win
cp ./${APP_NAME}.exe ./${APP_NAME}-win/
cp -r ./res ./${APP_NAME}-win/

zip -r ./${APP_NAME}-win.zip ./${APP_NAME}-win/
