vim:ft=markdown

# TWRP for Allwinner B300 Tolino devices (Tolino Vision 6, Tolino Shine 4 and Tolino Epos 3)
### State
TWRP builds and is fully functional (hopefully).

### Test without installation
Not possible, `fastboot boot recovery.img` is not working on this device :(

## How to Install
### Enable adb on device
For tolino firmware version 16.x.y "search" for `112358132fb`.

NOTE: See instructions for "Enable Debug-Menu Settings" here https://gist.github.com/hasezoey/d16ba0f980f00cd2193132afe4714c7c?permalink_comment_id=4672374

Verify that `adb` is enabled by typing in your terminal:

`adb devices`

There should be a bunch of numbers (the serial number) and the name of the device in the output.

### Download TWRP
1. Download `twrp-vision6.img`, `twrp-shine4.img` or `twrp-epos3.img` from the "releases" link on this page.

2. Rename downloaded file to `twrp.img`

### Enter Fastboot Mode on Device

1. In your terminal type:

`adb reboot bootloader`

2. Device will appear to be off. Verify that it is in fastboot mode by typing:

`fastboot devices`

 Output should be something like:

`Android Fastboot       Android Fastboot`

### Installation

1. Open your terminal in the directory where you downloaded `twrp.img` and type:

`fastboot flash recovery twrp.img`

2. This should take 5-10 seconds. Afterwards reboot into regular system by typing:

`fastboot reboot`

NB: `fastboot reboot recovery` doesn't seem to be working. So we'll reboot into regular android and then go into recovery from there.

### Entering recovery (TWRP)

Type the following to boot into TWRP:

`adb reboot recovery`

You're done!

## Bonus: Alternative Theme

Download `theme-material-light.zip` from `releases`, rename it to `ui.zip` and put it in `/sdcard/TWRP/theme` (create the directory if it doesn't exist).

## Building TWRP (only if you want to do your own build of TWRP)

1. `repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.1`
2. `repo sync -n -j 1 && repo sync -l -j 4`
3. `clone this repo to twrp-8.1/device/tolino`
4. apply patches from `twrp-8.1/device/tolino/patches` directory
5. open terminal in `twrp-8.1` directory;
6. `export LC_ALL=C`
7. `. build/envsetup.sh`
8. `lunch omni_vision6-userdebug` for tolino vision 6, `lunch omni_shine4-userdebug` for tolino shine 4 or `lunch omni_epos3-userdebug` for tolino epos 3
9. `mka recoveryimage`

if everything is successful you should find built recovery at path `twrp-8.1/out/target/product/vision6/recovery.img` or `twrp-8.1/out/target/product/shine4/recovery.img` or `twrp-8.1/out/target/product/epos3/recovery.img`

## Credits
Thanks to [Ryogo-X](https://github.com/Ryogo-X) for Nook Glowlight 4 twrp port on which this is heavily based: https://github.com/Ryogo-X/nook_gentoo_twrp.git   

Thanks to [Morxi](https://github.com/Morxi) for twrp base: https://github.com/Morxi/twrp_devices_allwinner_b300  

Thanks to [NiLuJe](https://github.com/NiLuJe) for [FBInk](https://github.com/NiLuJe/FBInk)
