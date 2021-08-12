#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/asus/X01AD

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_NAME := havoc_X01AD
PRODUCT_DEVICE := X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max M2
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X01AD \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8953_64-user 10 WW_Phone-202005071625 17.2018.2004.31-20200507 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/WW_X01AD/ASUS_X01A_1:10/WW_Phone-202005071625/17.2018.2004.31-20200507:user/release-keys"	
