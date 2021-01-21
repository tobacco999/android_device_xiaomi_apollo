#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/apollo

TARGET_USES_PREBUILT_KERNEL := true

# Assert
TARGET_OTA_ASSERT_DEVICE := apollo,apollopro

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
ifeq ($(TARGET_USES_PREBUILT_KERNEL), true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
else
TARGET_KERNEL_CONFIG := vendor/apollo_defconfig
endif

# Key for InputDispatcher to skip
TARGET_INPUTDISPATCHER_SKIP_EVENT_KEY := 97

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# inherit from the proprietary version
# -include vendor/xiaomi/apollo/BoardConfigVendor.mk
