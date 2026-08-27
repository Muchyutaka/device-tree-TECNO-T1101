#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from T1101 device
$(call inherit-product, device/tecno/T1101/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := T1101
PRODUCT_NAME := lineage_T1101
PRODUCT_BRAND := TECNO
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_tssi_64_armv82_tecno_dolby-user 14 UP1A.231005.007 987287 release-keys" \
    BuildFingerprint=TECNO/TSSI/T1101:14/UP1A.231005.007/260410V971:user/release-keys

# OrangeFox Recovery Configuration
PRODUCT_NAME := fox_T1101
PRODUCT_DEVICE := T1101
PRODUCT_MANUFACTURER := tecno

# OrangeFox Specific Flags
FOX_VERSION := R11.1
FOX_BUILD_TYPE := Unofficially
OF_KEEP_FORCED_ENCRYPTION := true
OF_DISABLE_MIUI_SPECIFIC_FEATURES := true
TARGET_RECOVERY_FSTAB := device/tecno/T1101/recovery.fstab

