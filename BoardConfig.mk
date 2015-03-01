#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/celkon/A98/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := mt6575
TARGET_BOOTLOADER_BOARD_NAME := mt6575

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Wifi related defines
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/
WIFI_DRIVER_MODULE_NAME := wlan

#BOARD_PROVIDES_LIBRIL := true
BOARD_HAVE_BLUETOOTH := true

#EGL configuration
BOARD_EGL_CFG := device/celkon/A98/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true

BOARD_CUSTOM_BOOTIMG_MK := device/celkon/A98/custombootimg.mk

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# partition info's in offsets 
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x12800000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x01e00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x9c20000
BOARD_NAND_PAGE_SIZE := 2048 
BOARD_FLASH_BLOCK_SIZE := 131072

# kernel
TARGET_PREBUILT_KERNEL := device/celkon/A98/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
TRGET_PREBUILT_RECOVERY_KERNEL := device/celkon/A98/kernel
#TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
##BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/Celkon/A98/recovery/recovery_keys.c
#BOARD_HAS_NO_MISC_PARTITION := true
#BOARD_USES_RECOVERY_CHARGEMODE := false
#BOARD_UMS_LUNFILE := /sys/devices/platform/mt_usb/gadget/lun%d/file

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

# Screens dimension
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true

