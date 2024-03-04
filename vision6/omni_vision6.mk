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

# Inherit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vision6
PRODUCT_NAME := omni_vision6
PRODUCT_BRAND := RakutenKobo
PRODUCT_MODEL := tolino vision 6
PRODUCT_MANUFACTURER := Rakuten Kobo Inc.

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb


PLATFORM_VERSION := 8.1
