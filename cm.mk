## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e400/e400.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL3
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e400

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=e0_tmo_eu BUILD_FINGERPRINT=lge/e0_tmo_eur/e0:2.3.6/GRK39F/V10c-MAR-28-2012.2ED8A66C75:user/release-keys PRIVATE_BUILD_DESC="e0_tmo_eur-user 2.3.6 GRK39F 2ED8A66C75 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e400
PRODUCT_NAME := cm_e400
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E400
PRODUCT_MANUFACTURER := LGE

# Enable Torch
#PRODUCT_PACKAGES += Torch
