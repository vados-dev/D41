#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/sprd/D41

# Enable virtual A/B OTA
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# Ramdisk
PRODUCT_PACKAGES += \
    zram.sh
                      
# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster3 \
    libpuresoftkeymasterdevice \
    wait_for_keymaster

RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_EXECUTABLES)/wait_for_keymaster

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster3.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

