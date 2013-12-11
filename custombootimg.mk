LOCAL_PATH := $(call my-dir)

MKIMAGE := device/TCT/Vodafone_875/tools/mkimage

$(PRODUCT_OUT)/boot.img: $(PRODUCT_OUT)/kernel $(INSTALLED_RAMDISK_TARGET) $(MKBOOTIMG) $(MINIGZIP) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Boot image: $@")
	$(hide) $(MKIMAGE) $(PRODUCT_OUT)/kernel KERNEL > $(PRODUCT_OUT)/kernel.bin
	$(hide) $(MKIMAGE) $(PRODUCT_OUT)/ramdisk.img RECOVERY > $(PRODUCT_OUT)/ramdisk.bin
	$(hide) $(MKBOOTIMG) --kernel $(PRODUCT_OUT)/kernel.bin --ramdisk $(PRODUCT_OUT)/ramdisk.bin -o $@
	$(hide) $(call assert-max-image-size, $@, $(BOARD_BOOTIMAGE_PARTITION_SIZE), raw)

$(PRODUCT_OUT)/recovery.img: $(MKBOOTIMG) $(recovery_ramdisk) $(recovery_kernel)
	$(call pretty,"Recovery image: $@")
	$(hide) $(MKIMAGE) $(PRODUCT_OUT)/kernel KERNEL > $(PRODUCT_OUT)/kernel.bin
	$(hide) $(MKIMAGE) $(PRODUCT_OUT)/ramdisk-recovery.img RECOVERY > $(PRODUCT_OUT)/ramdisk-recovery.bin
	$(hide) $(MKBOOTIMG) --kernel $(PRODUCT_OUT)/kernel.bin --ramdisk $(PRODUCT_OUT)/ramdisk-recovery.bin -o $@
	$(hide) $(call assert-max-image-size, $@, $(BOARD_RECOVERYIMAGE_PARTITION_SIZE), raw)