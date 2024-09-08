# Sync
/opt/crave/resync.sh

rm -rf vendor/aosp/signing/keys
git clone https://github.com/rktdnt/p3 -b pos vendor/aosp/signing/keys

# Tree
rm -rf */xiaomi
git clone --depth=1 https://github.com/PixelOS-Devices/device_xiaomi_vayu -b fourteen
git clone --depth=1 https://github.com/PixelOS-Devices/vendor_xiaomi_vayu -b fourteen 
git clone --depth=1 https://github.com/PixelOS-Devices/kernel_xiaomi_vayu -b fourteen
git clone --depth=1 https://github.com/PixelOS-AOSP/hardware_xiaomi -b fourteen 

# Set up build environment
 export BUILD_USERNAME=Moonlxght0909 
 export BUILD_HOSTNAME=crave 
 source build/envsetup.sh 
 
# Build the ROM
lunch aosp_vayu-ap2a-user && make installclean && mka bacon
