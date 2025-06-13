#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Mi8953 device
$(call inherit-product, device/xiaomi/Mi8953/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi8953
PRODUCT_NAME := lineage_Mi8953
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MSM8953
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Build Name
BUILD_USERNAME := RenzAlt
BUILD_HOSTNAME := nightcord-at.25

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
