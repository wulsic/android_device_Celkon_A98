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

# telephony
#BOARD_RIL_CLASS := ../../../device/celkon/A98/ril/

#nvram permission fix
#TARGET_SPECIFIC_HEADER_PATH := device/celkon/A98/include

#BOARD_PROVIDES_LIBRIL := true
BOARD_HAVE_BLUETOOTH := true

# HWComposer
BOARD_NEEDS_OLD_HWC_API := true
BOARD_USES_HWCOMPOSER := true
BOARD_USES_FIMGAPI := true

# Hardware rendering
BOARD_USES_HW_MEDIARECORDER := true
BOARD_USES_HW_MEDIAPLUGINS := true
BOARD_USE_SCREENCAP := true
BOARD_EGL_CFG := device/celkon/A98/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
TARGET_USES_GL_VENDOR_EXTENSIONS := true
USE_OPENGL_RENDERER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_USES_ION := true
MAX_EGL_CACHE_KEY_SIZE := 4096
MAX_EGL_CACHE_SIZE := 2146304
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
HWUI_COMPILE_FOR_PERF := true
OVERRIDE_RS_DRIVER := libRSDriverArm_rhea.so
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DREFBASE_JB_MR1_COMPAT_SYMBOLS

# Screens dimension
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# partition info's in offsets 
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 310378496 
BOARD_CACHEIMAGE_PARTITION_SIZE := 31457280
BOARD_USERDATAIMAGE_PARTITION_SIZE := 163708928
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true

# kernel
BOARD_CUSTOM_BOOTIMG_MK := device/celkon/A98/custombootimg.mk
TARGET_PREBUILT_KERNEL := device/celkon/A98/kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x10000000

# recovery
TARGET_RECOVERY_FSTAB := device/celkon/A98/root/fstab.mt6575
TARGET_PREBUILT_RECOVERY_KERNEL := device/celkon/A98/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_565"
TARGET_DEFAULT_EXTERNAL_STORAGE := true
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true

#BOARD_USES_RECOVERY_CHARGEMODE := false
#BOARD_UMS_LUNFILE := /sys/devices/platform/mt_usb/gadget/lun%d/file
##BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/Celkon/A98/recovery/recovery_keys.c
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

# allow more than one lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

