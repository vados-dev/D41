#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := Eplutus D41

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
#$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from sp9832e_1h10_go device
$(call inherit-product, device/sprd/D41/device.mk)

# Platform
TARGET_BOARD_PLATFORM := sp9832e

PRODUCT_DEVICE := D41
PRODUCT_NAME := omni_D41
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := sl8541e_cus_gofu
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=sl8541e_cus_go \
    PRODUCT_NAME=sl8541e_cus_gofu_osea \
    PRIVATE_BUILD_DESC="sp9832e_1h10_native-user 8.1.0 OPM2.171019.012 52215 release-keys"

BUILD_FINGERPRINT := SPRD/sp9832e_1h10_native/sp9832e_1h10:8.1.0/OPM2.171019.012/52215:user/release-keys
PLATFORM_SECURITY_PATCH := 2018-09-05
