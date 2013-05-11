$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)

$(call inherit-product-if-exists, vendor/lge/e400/e400-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e400/overlay

PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.e0.rc:root/init.e0.rc \
    $(LOCAL_PATH)/init.e0.usb.rc:root/init.e0.usb.rc \
    $(LOCAL_PATH)/ueventd.e0.rc:root/ueventd.e0.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/configs/e0_keypad.kl:system/usr/keylayout/e0_keypad.kl \
    $(LOCAL_PATH)/configs/touch_mcs8000.idc:system/usr/idc/touch_mcs8000.idc \
    $(LOCAL_PATH)/configs/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.idc \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/configs/AudioFilter.csv:system/etc/AudioFilter.csv

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# HW HALS
PRODUCT_PACKAGES += \
    gps.e400 \
    power.e400

PRODUCT_PACKAGES += \
    camera.e400

PRODUCT_NAME := full_e400
PRODUCT_DEVICE := e400
PRODUCT_MODEL := LG-E400
