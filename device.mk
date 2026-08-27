#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Enable Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# API Level
PRODUCT_SHIPPING_API_LEVEL := 31

# Fastbootd & Basic Recovery Packages
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Rootdir & Ramdisk Copies
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6789:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.mt6789 \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6789.rc:recovery/root/init.recovery.mt6789.rc

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
