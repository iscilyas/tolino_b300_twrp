# TWRP for Tolino Vision6
### State
TWRP builds and is fully functional (hopefully).

### Test without installation
Not possible, `fastboot boot <path_to_recovery_image>` is not working on this device :(

### Entering recovery
1) Enable adb on device
2) `adb reboot recovery`
### Installation
1) enter fastboot;
2) in cmd do `fastboot flash recovery <path_to_recovery_image>`

### How to build TWRP
1. `repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.1`
2. `repo sync -n -j 1 && repo sync -l -j 4`
3. `clone this repo to twrp-8.1/device/tolino`
4. apply patches from `twrp-8.1/device/tolino/patches` directory
5. open terminal in `twrp-8.1` directory;
6. `export LC_ALL=C`
7. `. build/envsetup.sh`
8. `lunch omni_vision6-userdebug`
9. `mka recoveryimage`

if everything is successful you should find built recovery at path `twrp-8.1/out/target/product/vision6/recovery.img`

## Credits
Thanks to [Ryogo-X](https://github.com/Ryogo-X) for Nook Glowlight 4 twrp port on which this is heavily based: https://github.com/Ryogo-X/nook_gentoo_twrp.git   

Thanks to [Morxi](https://github.com/Morxi) for twrp base: https://github.com/Morxi/twrp_devices_allwinner_b300  

Thanks to [NiLuJe](https://github.com/NiLuJe) for [FBInk](https://github.com/NiLuJe/FBInk)
