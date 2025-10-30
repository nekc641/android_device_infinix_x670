# device.mk for Infinix X670 ROM
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/infinix/x670

# Inherit base full product (telephony enabled)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Copy prebuilt kernel + DTB
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/kernel:kernel \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img

# Device properties
PRODUCT_DEVICE := x670
PRODUCT_NAME := lineage_x670
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X670
PRODUCT_MANUFACTURER := Infinix

# Enable A/B OTA updates
AB_OTA_UPDATER := true


