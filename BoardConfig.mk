include device/lge/msm7x27a-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/lge/400/BoardConfigVendor.mk
TARGET_BOOTLOADER_BOARD_NAME := e400

BOARD_KERNEL_CMDLINE := androidboot.hardware=e0 lge.signed_image=false

TARGET_KERNEL_SOURCE := kernel/lge/e400
TARGET_KERNEL_CONFIG := cyanogenmod_e0_defconfig
#TARGET_PREBUILT_KERNEL := device/lge/e610/kernel

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e400

#BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e400/recovery/graphics.c
