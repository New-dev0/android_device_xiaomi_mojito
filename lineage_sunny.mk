#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sunny device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# GApps
BUILD_GAPPS := false

# MicroG
BUILD_MICROG := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_sunny
PRODUCT_DEVICE := sunny
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7AG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := sunny

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "Redmi/sunny_global/sunny:12/RKQ1.210614.002/V14.0.3.0.SKGMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sunny_global-user 12 RKQ1.210614.002 V14.0.3.0.SKGMIXM release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
