$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/j3popltespr/j3popltespr-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/j3popltespr/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/j3popltespr/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_j3popltespr
PRODUCT_DEVICE := j3popltespr

#	Boot file attempt 1

#PRODUCT_PACKAGES += \
 #   fstab.qcom \
  ##  initlogo.rle \
    #init.bt.rc \
#    init.qcom.rc \
 #   init.qcom.usb.rc \
  #  init.target.rc \
   # ueventd.rc \
    #init.zygote32.rc
#or

PRODUCT_COPY_FILES += \
    device/samsung/j3popltespr/files/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/samsung/j3popltespr/files/init.qcom.sensors.sh:root/init.qcom.sensors.sh \
    device/samsung/j3popltespr/files/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    device/samsung/j3popltespr/files/init.qcom.sh:root/init.recovery.usb.rc \
    device/samsung/j3popltespr/files/init.qcom.usb.sh:root/init.recovery.usb.rc \
    device/samsung/j3popltespr/files/init.qcom.sh:root/init.qcom.sh \
    device/samsung/j3popltespr/files/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/samsung/j3popltespr/files/init.recovery.service.rc:root/init.recovery.service.usb.rc
