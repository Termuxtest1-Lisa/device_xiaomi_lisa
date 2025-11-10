#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lisa

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Audio
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := lisa

# Kernel
TARGET_KERNEL_CONFIG += lisa_defconfig

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit MiuiCamera Makefile
-include vendor/xiaomi/miuicamera-$(PRODUCT_DEVICE)/BoardConfig.mk

# Include proprietary files
include vendor/xiaomi/lisa/BoardConfigVendor.mk

# Firmware
-include vendor/xiaomi/firmware-lisa/BoardConfigVendor.mk
