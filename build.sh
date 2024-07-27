#!/bin/bash

set -e
#Credit to Harukaa428 for the initial script 

# Initialize repo with specified manifest
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs
crave set --projectID 82

crave run --no-patch -- "wget -O a.sh https://raw.githubusercontent.com/Harukaa428/android_build_manifest/PixelOS/a.sh && chmod +x a.sh && ./a.sh" 

# Clean up
rm -rf vayu/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img

# upload
git clone https://github.com/Harukaa428/releases
rm -rf *ota*.zip
mv *.zip releases/
cd releases
bash release.sh
