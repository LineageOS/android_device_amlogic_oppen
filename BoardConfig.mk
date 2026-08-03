#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/oppen

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := oppen

## DTB
TARGET_DTB_NAME := s4_s905y4_ap222_drm

## Partitions
BOARD_SUPER_PARTITION_SIZE := 1887436800

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_WLAN_DEVICE := realtek
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
WIFI_DRIVER_SOCKET_IFACE := wlan0

## Include the common tree BoardConfig makefile
include device/amlogic/ne-common/BoardConfigCommon.mk

## Include the proprietary BoardConfig makefile
include vendor/amlogic/oppen/BoardConfigVendor.mk
