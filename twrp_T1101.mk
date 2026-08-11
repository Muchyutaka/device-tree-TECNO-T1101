#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from T1101 device
$(call inherit-product, device/tecno/T1101/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_T1101
PRODUCT_DEVICE := T1101
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO T1101
PRODUCT_MANUFACTURER := tecno
PRODUCT_GMS_CLIENTID_BASE := android-tecno
