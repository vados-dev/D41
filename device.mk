#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/sprd/D41

#PRODUCT_COPY_FILES := \
#    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Split selinux policy
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Support for the O-MR1 devices
PRODUCT_COPY_FILES += \
    build/make/target/product/vndk/init.gsi.rc:system/etc/init/init.gsi.rc \
    build/make/target/product/vndk/init.vndk-27.rc:system/etc/init/gsi/init.vndk-27.rc

# Name space configuration file for non-enforcing VNDK
PRODUCT_PACKAGES += \
    ld.config.vndk_lite.txt

# Support addtional O-MR1 vendor interface
PRODUCT_EXTRA_VNDK_VERSIONS := 27

# TODO(b/78308559): includes vr_hwc into GSI before vr_hwc move to vendor
#PRODUCT_PACKAGES += \
#    vr_hwc

#PRODUCT_PACKAGES += \
#    sf_trusty.elf

# Enable virtual A/B OTA
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

#TARGET_RECOVERY_DEVICE_MODULES += \
#    wait_for_keymaster

#RECOVERY_BINARY_SOURCE_FILES += \
#    $(TARGET_OUT_EXECUTABLES)/wait_for_keymaster

#RECOVERY_LIBRARY_SOURCE_FILES += \
#    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster3.so \
#    $(TARGET_OUT_SHARED_LIBRARIES)/libsoftkeymasterdevice.so
#    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so


# Health HAL
#PRODUCT_PACKAGES += \
#    android.hardware.health@1.0-service \
#    android.hardware.health@1.0-impl

# Fastbootd and fastboot HAL
#PRODUCT_PACKAGES += \
#    fastbootd \
#    android.hardware.fastboot@1.0-impl \
#    android.hardware.fastboot@1.0-impl-mock \
#    android.hardware.fastboot@1.0-impl-mock.recovery

# Keymaster HAL
#PRODUCT_PACKAGES += \
#    wait_for_keymaster
#    android.hardware.keymaster@3.0-unisoc.service \
#    libkeymaster3 \
#    libsoftkeymasterdevice \
#    libpuresoftkeymasterdevice


#Add for android  gatekeeper HDIL
#DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/manifest_gatekeeper.xml
#PRODUCT_PACKAGES += \
#    android.hardware.gatekeeper@1.0-service \
#    android.hardware.gatekeeper@1.0-impl \
#    gatekeeperd \
#    libgatekeeper \
#    gatekeeper.default

#PRODUCT_PACKAGES += \
#    libkeystore

#PRODUCT_PACKAGES += \
#    libtrusty \
#    libf2fs_sparseblock \
#    libdiskconfig \
#    libteeproduction

PRODUCT_PACKAGES += \
    sprdstorageproxyd \
#    rpmbserver \
    uncrypt \
    vold \
    vdc

#ifneq ($(BOARD_TEE_LOW_MEM),true)
#PRODUCT_PACKAGES += \
#    tsupplicant
#endif

#add for check keymaster & widevine keybox lib
#PRODUCT_PACKAGES += libcheckkeybox
