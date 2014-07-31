# Superclass
include device/intel/haswell/haswell.mk

PRODUCT_NAME := haswell_generic
PRODUCT_DEVICE := haswell_generic
PRODUCT_MODEL := bigcore platform

LOCAL_PATH := device/intel/haswell/haswell_generic

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.$(TARGET_PRODUCT).rc \
	$(LOCAL_PATH)/init.recovery.rc:root/init.recovery.$(TARGET_PRODUCT).rc \
	$(LOCAL_PATH)/camera_haswell_generic.xml:system/etc/camera_haswell_generic.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	#HSB platform supports only front facing camera.
        #frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

# Enable Camera Launcher app support.
INTEL_USE_CAMERA_LAUNCHER := true

RS_VECTORIZER_DISABLED := true

# Releasetools extensions for updating EFI System Partition and
# userfastboot (if present). Product teams will need to copy this
# file and make their own changes to it if they have additional
# OTA tasks; there currently can only be one of these.
TARGET_RELEASETOOLS_EXTENSIONS := device/intel/common/releasetools/releasetools-generic-efi.py

$(call inherit-mixin, boot-arch, efi)
$(call inherit-mixin, display-density, tv)
$(call inherit-mixin, product-aapt, tvdpi_1920X1080)
$(call inherit-mixin, graphics, ufo)
$(call inherit-mixin, ethernet, configurable)
$(call inherit-mixin, storage, 1xSD_2xUSB)
$(call inherit-mixin, audio, hsw_alc282)
$(call inherit-mixin, power, i2c)
$(call inherit-mixin, video, ufo)
$(call inherit-mixin, wifi, intel-compat)
$(call inherit-mixin, liblights, intel)
$(call inherit-mixin, navigationbar, true)
$(call inherit-mixin, bluetooth, bluez)
$(call inherit-mixin, camera-usb, uvc)
$(call inherit-mixin, security, mei)
$(call inherit-mixin, selinux, enforcing)
$(call inherit-mixin, sensors, hid_sensorhub)
$(call inherit-mixin, device-type, clamshell)
$(call inherit-mixin, thermals, thermal-daemon)
$(call inherit-mixin, sata_power, min_power)
