## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Celkon A98

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/celkon/A98/device_A98.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

PRODUCT_NAME := cm_A98
PRODUCT_DEVICE := A98
PRODUCT_MODEL := Celkon A98
PRODUCT_RELEASE_NAME := A98
PRODUCT_BRAND := Celkon
PRODUCT_MANUFACTURER := Celkon 


