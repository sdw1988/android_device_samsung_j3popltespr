# Release name
PRODUCT_RELEASE_NAME := j3popltespr

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j3popltespr/device_j3popltespr.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j3popltespr
PRODUCT_NAME := cm_j3popltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j3popltespr
PRODUCT_MANUFACTURER := samsung
