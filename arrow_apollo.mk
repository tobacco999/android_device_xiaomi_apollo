#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

PRODUCT_NAME := arrow_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T

DEVICE_MAINTAINER := ejbtrd
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo-user 11 RKQ1.200826.002 20.12.25 release-keys"

BUILD_FINGERPRINT := Xiaomi/apollopro_eea/apollo:10/QKQ1.200419.002/V12.0.13.0.QJDEUXM:user/release-keys
