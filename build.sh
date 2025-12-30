#!/usr/bin/env bash
# Fetch the latest version of the library
fetch() {
if [ -d "vulkan" ]; then return; fi
URL="https://github.com/KhronosGroup/Vulkan-Headers/archive/refs/heads/main.zip"
ZIP="main.zip"
DIR="Vulkan-Headers-main"
mkdir -p .build
cd .build

# Download the release
if [ ! -f "$ZIP" ]; then
  echo "Downloading $ZIP from $URL ..."
  curl -L "$URL" -o "$ZIP"
  echo ""
fi

# Unzip the release
if [ ! -d "$DIR" ]; then
  echo "Unzipping $ZIP to .build/$DIR ..."
  cp "$ZIP" "$ZIP.bak"
  unzip -q "$ZIP"
  rm "$ZIP"
  mv "$ZIP.bak" "$ZIP"
  echo ""
fi
cd ..

# Copy the libs to the package directory
echo "Copying libs to vulkan/ and vk_video/ ..."
rm -rf vulkan vk_video
mkdir -p vulkan vk_video
cp -rf ".build/$DIR/include/vulkan"/*   vulkan/
cp -rf ".build/$DIR/include/vk_video"/* vk_video/
echo ""
}


# Test the project
test() {
echo "No tests available for vulkan.c"
# echo "Running 01-vector_addition.c ..."
# clang -I. -o 01.exe examples/01-vector_addition.c        && ./01.exe && echo -e "\n"
}


# Main script
if [[ "$1" == "test" ]]; then test
elif [[ "$1" == "fetch" ]]; then fetch
else echo "Usage: $0 {fetch|test}"; fi
