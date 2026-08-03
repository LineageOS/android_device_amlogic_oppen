#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/oppen

## Bluetooth
BOARD_HAVE_BLUETOOTH := true

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := oppen

## DTB
TARGET_DTB_NAME := s4_s905y4_ap222_drm

## Partitions
BOARD_SUPER_PARTITION_SIZE := 1887436800

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_WLAN_DEVICE := rtl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WPA_SUPPLICANT_VERSION := VER_0_8_X

## Include the common tree BoardConfig makefile
include device/amlogic/ne-common/BoardConfigCommon.mk

## Include the proprietary BoardConfig makefile
include vendor/amlogic/oppen/BoardConfigVendor.mk
