#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/samurai/device.mk)

# Inherit some common DerpFest stuff.
# $(call inherit-product, vendor/derp/config/common_full_phone.mk)
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# GMS
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)

# Rom stuffs

EVOLUTION_BUILDTYPE := UNOFFICIAL
EVOLUTION_MAINTAINER := SpeedoWBT

EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := true
# WITH_GAPPS := false

# TEST EVOX base Pixel
TARGET_USES_MINI_GAPPS := true
TARGET_SUPPORTS_TOUCHGESTURES := true

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := realme
PRODUCT_DEVICE := samurai
PRODUCT_MANUFACTURER := realme
PRODUCT_MODEL := samurai
PRODUCT_NAME := samurai

PRODUCT_SYSTEM_MODEL := samurai
PRODUCT_SYSTEM_NAME := RMX1931
PRODUCT_SYSTEM_DEVICE := RMX1931

BUILD_FINGERPRINT := "realme/RMX1931/RMX1931L1:11/RKQ1.200928.002/1625457120608:user/release-keys"

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1931-user 11 RKQ1.200928.002 1625457120608 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oppo
