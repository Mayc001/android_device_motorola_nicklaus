#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Specify phone tech before including full_phone

# TODO: add this file.

# Release name
PRODUCT_RELEASE_NAME := nicklaus

# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/nicklaus/device.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1280

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nicklaus
PRODUCT_NAME := lineage_moto_e4_plus
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto E4 Plus
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/Nicklaus/Nicklaus:7.1.1/NMA26.42-113/133:user/release-keys \
    PRIVATE_BUILD_DESC="Nicklaus_retail-user 7.1.1 NMA26.42-11-3 release-keys"

    #PRODUCT_NAME="Moto E4 Plus"

# TODO: what is this?

PRODUCT_GMS_CLIENTID_BASE := android-motorola


# Available languages
PRODUCT_LOCALES := en_US en_GB ru_RU uk_UA tr_TR sk_SK vi_VN fr_FR ar_EG pt_BR

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	ro.crypto.state=unencrypted \
        ro.mount.fs=EXT4 \
	ro.secure=0 \
        ro.adb.secure=0 \
	ro.allow.mock.location=1 \
        ro.debuggable=1 \
	persist.sys.usb.config = mtp,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1

# Bootanimation
TARGET_BOOTANIMATION_NAME := 720
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

PRODUCT_RESTRICT_VENDOR_FILES := false


# Build property overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_UTC_DATE=0
