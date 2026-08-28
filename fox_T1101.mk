#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit 64-bit target configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit device setup
$(call inherit-product, device/tecno/T1101/device.mk)

# Inherit OrangeFox common flags (if building in OFRP source tree)
-include vendor/fox/config/common.mk

PRODUCT_NAME := fox_T1101
PRODUCT_DEVICE := T1101
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Tecno T1101
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

# Security & Fingerprint Overrides
BUILD_FINGERPRINT := TECNO/TSSI/T1101:14/UP1A.231005.007/260410V971:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=T1101 \
    PRODUCT_NAME=T1101 \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_tecno_dolby-user 14 UP1A.231005.007 987287 release-keys"

# OrangeFox Flags
FOX_MAINTAINER_PATCH_VERSION := 1
FOX_BUILD_TYPE := Unofficially
OF_KEEP_FORCED_ENCRYPTION := true
OF_DISABLE_MIUI_SPECIFIC_FEATURES := true
export FOX_VIRTUAL_AB_DEVICE := 1

