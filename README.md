To initialize your local repository use
---------------------------------------

    git clone https://github.com/Harukaa428/android_build_manifest.git -b PixelOS .repo/local_manifests
    

Then to sync up:
----------------

    repo sync --force-sync -j8 --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken
