#!/bin/sh
EXEC_PATH=$(pwd)
EXEC_DIR="$(dirname $0)"
PACKER_PATH="$EXEC_DIR/build/birb2d/utils/asset-packer/birb-asset-packer"

build() {
	echo "Compiling..."

	BUILD_DIR="$EXEC_DIR/build"
	mkdir -p "$BUILD_DIR"
	cd "$BUILD_DIR"
	cmake .. "$1"
	make -j$(nproc)
}

# Make sure that the asset packer has been built
[ -d "$EXEC_DIR/build" ] && [ -f "$PACKER_PATH" ] || build -DUTILS=on

# Create a temporary directory to zip
TEMP_DIR=$(mktemp -d)
echo "Temp directory: $TEMP_DIR"

# Copy everything to the temporary directory
cp -r $EXEC_DIR/res/* $TEMP_DIR/
cp -r "$EXEC_DIR/birb2d/birb2d_res" $TEMP_DIR/

# Zip everything
cd $TEMP_DIR
zip -9 -r res.zip ./*
cd $EXEC_PATH

# Remove any existing headers
[ -f "$EXEC_DIR/include/AssetBundle.hpp" ] && rm -v "$EXEC_DIR/include/AssetBundle.hpp"

# Generate the header
echo "Generating the asset bundle"
${PACKER_PATH} "$TEMP_DIR/res.zip" "$EXEC_DIR/include"

# Compile with the asset bundle enabled
echo "Recompiling everything with the asset bundle enabled"
build -DBUNDLED_ASSETS=on

# Remove the temporary directory
echo "Cleaning up"
rm -r $TEMP_DIR
