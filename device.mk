#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Overlays -- Override vendor ones
PRODUCT_PACKAGES += \
    FrameworksResCommon \
    FrameworksResTarget \
    DevicesOverlay \
    DevicesAndroidOverlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29

# Kernel modules
NEED_KERNEL_MODULE_VENDOR_OVERLAY := true
KERNEL_MODULES_ORIG := $(LOCAL_PATH)/prebuilt/modules

ifeq ($(NEED_KERNEL_MODULE_VENDOR_OVERLAY),true)
KERNEL_MODULES_DEST := $(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/30/lib/modules
else
KERNEL_MODULES_DEST := $(TARGET_COPY_OUT_VENDOR)/lib/modules
endif

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(KERNEL_MODULES_ORIG)/,$(KERNEL_MODULES_DEST))

# Inherit from vendor blobs
# $(call inherit-product, vendor/xiaomi/apollo/apollo-vendor.mk)