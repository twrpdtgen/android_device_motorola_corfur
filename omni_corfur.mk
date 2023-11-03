#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from corfur device
$(call inherit-product, device/motorola/corfur/device.mk)

PRODUCT_DEVICE := corfur
PRODUCT_NAME := omni_corfur
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g71 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="corfur_g-user 12 S2RUBS32.51-15-9-11 dd8d5-e81484 release-keys"

BUILD_FINGERPRINT := motorola/corfur_g/corfur:12/S2RUBS32.51-15-9-11/dd8d5-e81484:user/release-keys
