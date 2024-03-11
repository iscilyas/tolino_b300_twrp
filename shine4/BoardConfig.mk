#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/tolino/shine4

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABILIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)
TARGET_CPU_VARIANT := cortex-a7

# Assert
TARGET_OTA_ASSERT_DEVICE := tolino

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 21409792 # This is the maximum known partition size, but it can be higher, so we just omit it
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor
#BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

# Kernel
BOARD_KERNEL_CMDLINE := selinux=1 androidboot.selinux=permissive buildvariant=user
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_KERNEL_OFFSET := 0x8000
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm

# Platform
TARGET_BOARD_PLATFORM := virgo
TARGET_BOOTLOADER_BOARD_NAME := exdroid
DEVICE_RESOLUTION := 1448x1072
TARGET_SCREEN_HEIGHT := 1448
TARGET_SCREEN_WIDTH := 1072

# Screen
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_DEFAULT_BRIGHTNESS := 25
TW_ROTATION := 270

# Touch
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
#TW_IGNORE_MAJOR_AXIS_0 := true
TW_NO_HAPTICS := true

# EINK
TW_AW_EINK := true
TW_AW_EINK_A2 := true

#THEME
TW_THEME := portrait_hdpi
TW_CUSTOM_THEME := $(if $(wildcard $(DEVICE_PATH)/theme),$(DEVICE_PATH)/theme)

#MISC
TW_EXCLUDE_SUPERSU := true
