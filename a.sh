# Sync
/opt/crave/resync.sh

rm -rf vendor/aosp/signing/keys
git clone https://github.com/rktdnt/p3 -b pos vendor/aosp/signing/keys

#rm -rf vendor/derp/signing/keys
#git clone https://github.com/rktdnt/p3 -b pos vendor/derp/signing/keys

# Tree
rm -rf */xiaomi
git clone --depth=1 https://github.com/Harukaa428/device_xiaomi_vayu -b 14-derp
git clone --depth=1 https://github.com/bagaskara815/vendor_xiaomi_vayu -b 14-derp
git clone --depth=1 https://github.com/bagaskara815/kernel_xiaomi_vayu -b lineage-20
git clone --depth=1 https://github.com/PixelOS-AOSP/hardware_xiaomi -b fourteen 
git clone --depth=1 https://gitlab.com/crdroidandroid/proprietary_vendor_xiaomi_miuicamera -b 14.0

# Set up build environment
 export BUILD_USERNAME=Moonlxght0909 
 export BUILD_HOSTNAME=crave 
 source build/envsetup.sh && 
 
# Build the ROM
lunch aosp_vayu-ap2a-user && make installclean && mka bacon
