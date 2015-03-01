$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/celkon/A98/A98-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/celkon/A98/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Speed up scrolling
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=60

# Default network type.
# 0 => WCDMA preferred, 3 => GSM/AUTO (PRL) preferred
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.2_r5 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory \

# netcmd interface
PRODUCT_PACKAGES += \
    libnetcmdiface

# Misc other modules
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

# Root
PRODUCT_COPY_FILES += \
    device/celkon/A98/root/fstab:root/fstab \
    device/celkon/A98/root/init.mt6575.rc:root/init.mt6575.rc \
    device/celkon/A98/root/init.usb.rc:root/init.usb.rc \
    device/celkon/A98/root/ueventd.mt6575.rc:root/ueventd.mt6575.rc

# Recovery
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,device/celkon/A98/recovery_root,recovery/root)

# System/etc
PRODUCT_COPY_FILES += \
    device/celkon/A98/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/celkon/A98/prebuilt/system/etc/vold.fstab.nand:system/etc/vold.fstab.nand

# System/etc/mddb
PRODUCT_COPY_FILES += \
    device/celkon/A98/prebuilt/system/etc/mddb/BPLGUInfoCustomAppSrcP_MT6575_S01_MAUI_11AMD_W11_50_SP_V29_P2:system/etc/mddb/BPLGUInfoCustomAppSrcP_MT6575_S01_MAUI_11AMD_W11_50_SP_V29_P2

# System/etc/wifi
PRODUCT_COPY_FILES += \
    device/celkon/A98/prebuilt/system/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/celkon/A98/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# System/lib/egl
PRODUCT_COPY_FILES += \
    device/celkon/A98/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg

# System/lib
PRODUCT_COPY_FILES += \
    device/celkon/A98/prebuilt/system/lib/mtk-ril.so:system/lib/mtk-ril.so

# System/lib/modules
PRODUCT_COPY_FILES += \
    device/celkon/A98/prebuilt/system/lib/modules/aed.ko:system/lib/modules/aed.ko \
    device/celkon/A98/prebuilt/system/lib/modules/alps_core.ko:system/lib/modules/alps_core.ko \
    device/celkon/A98/prebuilt/system/lib/modules/ccci.ko:system/lib/modules/ccci.ko \
    device/celkon/A98/prebuilt/system/lib/modules/ccci_plat.ko:system/lib/modules/ccci_plat.ko \
    device/celkon/A98/prebuilt/system/lib/modules/ccmni.ko:system/lib/modules/ccmni.ko \
    device/celkon/A98/prebuilt/system/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/celkon/A98/prebuilt/system/lib/modules/devinfo.ko:system/lib/modules/devinfo.ko \
    device/celkon/A98/prebuilt/system/lib/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mt6575_m4u.ko:system/lib/modules/mt6575_m4u.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mt6575_vcodec_kernel_driver.ko:system/lib/modules/mt6575_vcodec_kernel_driver.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_drvb_75.ko:system/lib/modules/mtk_drvb_75.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_fm_drv.ko:system/lib/modules/mtk_fm_drv.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_fm_priv.ko:system/lib/modules/mtk_fm_priv.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_hif_sdio.ko:system/lib/modules/mtk_hif_sdio.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_hif_sdio_mt6620.ko:system/lib/modules/mtk_hif_sdio_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtklfb.ko:system/lib/modules/mtklfb.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_bt.ko:system/lib/modules/mtk_stp_bt.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_bt_mt6620.ko:system/lib/modules/mtk_stp_bt_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_gps.ko:system/lib/modules/mtk_stp_gps.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_gps_mt6620.ko:system/lib/modules/mtk_stp_gps_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_sdio:system/lib/modules/mtk_stp_sdio \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_sdio_mt6620.ko:system/lib/modules/mtk_stp_sdio_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_uart.ko:system/lib/modules/mtk_stp_uart.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_uart_mt6620.ko:system/lib/modules/mtk_stp_uart_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_wmt.ko:system/lib/modules/mtk_stp_wmt.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_stp_wmt_mt6620.ko:system/lib/modules/mtk_stp_wmt_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_wmt_wifi.ko:system/lib/modules/mtk_wmt_wifi.ko \
    device/celkon/A98/prebuilt/system/lib/modules/mtk_wmt_wifi_mt6620.ko:system/lib/modules/mtk_wmt_wifi_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/p2p.ko:system/lib/modules/p2p.ko \
    device/celkon/A98/prebuilt/system/lib/modules/p2p_mt6620.ko:system/lib/modules/p2p_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/p2p_mt6628.ko:system/lib/modules/p2p_mt6628.ko \
    device/celkon/A98/prebuilt/system/lib/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
    device/celkon/A98/prebuilt/system/lib/modules/sbup.ko:system/lib/modules/sbup.ko \
    device/celkon/A98/prebuilt/system/lib/modules/scsi_tgt.ko:system/lib/modules/scsi_tgt.ko \
    device/celkon/A98/prebuilt/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/celkon/A98/prebuilt/system/lib/modules/sec.ko:system/lib/modules/sec.ko \
    device/celkon/A98/prebuilt/system/lib/modules/wlan.ko:system/lib/modules/wlan.ko \
    device/celkon/A98/prebuilt/system/lib/modules/wlan_mt6620.ko:system/lib/modules/wlan_mt6620.ko \
    device/celkon/A98/prebuilt/system/lib/modules/wlan_mt6628.ko:system/lib/modules/wlan_mt6628.ko \

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_DEVICE := Celkon A98
PRODUCT_NAME := full_A98
PRODUCT_BRAND := Celkon
PRODUCT_MODEL := Celkon A98
PRODUCT_MANUFACTURER := Celkon
PRODUCT_RELEASE_NAME := Celkon A98
