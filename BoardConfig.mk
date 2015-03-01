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
BOARD_EGL_CFG := device/celkon/A98/egl.cfg
USE_OPENGL_RENDERER := true

BOARD_CUSTOM_BOOTIMG_MK := device/celkon/A98/custombootimg.mk

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# partition info's in offsets 
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 310378496 
BOARD_CACHEIMAGE_PARTITION_SIZE := 31457280
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# kernel
TARGET_PREBUILT_KERNEL := device/celkon/A98/kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x10000000

# recovery
TARGET_RECOVERY_FSTAB := device/celkon/A98/root/fstab.mt6575
TARGET_PREBUILT_RECOVERY_KERNEL := device/celkon/A98/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

#BOARD_USES_RECOVERY_CHARGEMODE := false
#BOARD_UMS_LUNFILE := /sys/devices/platform/mt_usb/gadget/lun%d/file
##BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/Celkon/A98/recovery/recovery_keys.c
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file
# allow more than one lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

# Screens dimension
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true

