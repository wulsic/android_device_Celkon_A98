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
-include vendor/Celkon/A98/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := mt6575
TARGET_BOOTLOADER_BOARD_NAME := mt6575

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
BOARD_EGL_CFG := device/Celkon/A98/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true

BOARD_CUSTOM_BOOTIMG_MK := device/Celkon/A98/custombootimg.mk

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456 #6M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456 #6M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912 #512M
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912 #512M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 535822336 #511M
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/Celkon/A98/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
TRGET_PREBUILT_RECOVERY_KERNEL := device/Celkon/A98/kernel
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

