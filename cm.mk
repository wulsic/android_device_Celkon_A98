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

# Do not try to parse ro.build.description or .fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=A98mw TARGET_DEVICE=A98 BUILD_FINGERPRINT=Celkon/A98/A98:4.0.4/IMM76D/1361321972:user/release-keys PRIVATE_BUILD_DESC="A98mw-user 4.0.4 JZO54K 1361321972 release-keys"
