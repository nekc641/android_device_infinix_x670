#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X670 device
$(call inherit-product, device/infinix/X670/device.mk)

PRODUCT_DEVICE := X670
PRODUCT_NAME := omni_X670
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X670
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_X670-eng 16.1.0 SP2A.220405.004 eng.eko.20240309.105328 test-keys"

BUILD_FINGERPRINT := Infinix/twrp_X670/X670:16.1.0/SP2A.220405.004/eko03091052:eng/test-keys
