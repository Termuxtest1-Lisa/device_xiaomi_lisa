#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common Alphadroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lisa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2109119DG
PRODUCT_NAME := alpha_lisa

PRODUCT_HOTWORD_BUILD := true
# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
# Build Config
TARGET_BUILD_PACKAGE := 3
TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false
# Maintainer
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := Termux

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lisa_global-user 14 UKQ1.240624.001 OS2.0.8.0.UKOMIXM release-keys" \
    BuildFingerprint=Xiaomi/lisa_global/lisa:14/UKQ1.240624.001/OS2.0.8.0.UKOMIXM:user/release-keys \
    DeviceProduct=lisa \
    SystemName=lisa_global
