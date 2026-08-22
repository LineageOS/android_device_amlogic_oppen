#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
BOARD_HAVE_BLUETOOTH_RTK_TV := true
include hardware/realtek/rtkbt/rtkbt.mk

PRODUCT_PACKAGES += \
    BluetoothOverlayTarget

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Keylayout (IR)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Vendor_0957_Product_002d.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0957_Product_002d.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0957_Product_0026.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0957_Product_0026.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0957_Product_003f.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0957_Product_003f.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0957_Product_0031.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0957_Product_0031.kl

## Netflix
PRODUCT_PACKAGES += \
    NetflixConfig \
    NetflixConfigOverlayTarget

## Platform
TARGET_AMLOGIC_SOC := s4

## Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

## Wi-Fi
include hardware/realtek/wlan/wlan.mk

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/ne-common/ne.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/amlogic/oppen/oppen-vendor.mk)
