#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from T1101 device
$(call inherit-product, device/tecno/T1101/device.mk)

PRODUCT_DEVICE := T1101
PRODUCT_NAME := omni_T1101
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO T1101
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_t1101_m1101-user 12 SP1A.210812.016 987287 release-keys"

BUILD_FINGERPRINT := TECNO/T1101-OP/T1101:12/SP1A.210812.016/260410V931:user/release-keys
