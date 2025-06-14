#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mititanium-common
$(call inherit-product, device/xiaomi/mititanium-common/mititanium.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*.xml,hardware/mititanium-module/audio/Mi8953/mixer_paths/,$(TARGET_COPY_OUT_VENDOR)/etc/) \
    $(call find-copy-subdir-files,*.xml,hardware/mititanium-module/audio/Mi8953/platform_info/,$(TARGET_COPY_OUT_VENDOR)/etc/)

# Input
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,hardware/mititanium-module/keylayout/,$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom 

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/Mi8953/Mi8953-vendor.mk)
