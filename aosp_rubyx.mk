#
# SPDX-FileCopyrightText: 2023-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rubyx/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_rubyx
PRODUCT_DEVICE := rubyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby

PRODUCT_SYSTEM_NAME := ruby_global
PRODUCT_SYSTEM_DEVICE := ruby

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ruby-user 14 UP1A.231005.007 V816.0.4.0.UMOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/ruby_global/ruby:14/UP1A.231005.007/V816.0.4.0.UMOMIXM:user/release-keys
