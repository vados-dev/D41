#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/sprd/D41

# Enable virtual A/B OTA
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

TARGET_RECOVERY_DEVICE_MODULES += \
    vold \
    vdc \
    uncrypt \
    wait_for_keymaster

RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_EXECUTABLES)/vold \
    $(TARGET_OUT_EXECUTABLES)/wait_for_keymaster
                      
# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster3 \
    libpuresoftkeymasterdevice \

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-service \
    android.hardware.health@1.0-impl

# Fastbootd and fastboot HAL
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-unisoc.service \
    libkeymaster3 \
    libsoftkeymasterdevice \
    libpuresoftkeymasterdevice \
    wait_for_keymaster

#Add for android  gatekeeper HDIL
#DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/manifest_gatekeeper.xml
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl \
    gatekeeperd \
    libgatekeeper \
    gatekeeper.default

PRODUCT_PACKAGES += \
    libkeystore  

PRODUCT_PACKAGES += \
    libtrusty \
    libf2fs_sparseblock \
    libdiskconfig \
    libteeproduction

PRODUCT_PACKAGES += \
    sprdstorageproxyd \
    rpmbserver \
    uncrypt \
    vold \
    vdc

#ifneq ($(BOARD_TEE_LOW_MEM),true)
PRODUCT_PACKAGES += \
    tsupplicant
#endif

#add for check keymaster & widevine keybox lib
PRODUCT_PACKAGES += libcheckkeybox

RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_EXECUTABLES)/wait_for_keymaster

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster3.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

