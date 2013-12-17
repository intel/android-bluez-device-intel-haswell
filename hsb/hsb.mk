# Superclass
include device/intel/haswell/haswell.mk

PRODUCT_NAME := hsb
PRODUCT_DEVICE := hsb
PRODUCT_MODEL := Harris Beach FFRD

LOCAL_PATH := device/intel/haswell/hsb

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.$(TARGET_PRODUCT).rc \
	$(LOCAL_PATH)/init.recovery.rc:root/init.recovery.$(TARGET_PRODUCT).rc

# Releasetools extensions for updating EFI System Partition and
# userfastboot (if present). Product teams will need to copy this
# file and make their own changes to it if they have additional
# OTA tasks; there currently can only be one of these.
TARGET_RELEASETOOLS_EXTENSIONS := device/intel/common/releasetools/releasetools-generic-efi.py

$(call inherit-mixin, gms, true)
$(call inherit-mixin, houdini, true)
$(call inherit-mixin, boot-arch, efi)
$(call inherit-mixin, display-density, medium)
$(call inherit-mixin, graphics, ufo)
$(call inherit-mixin, ethernet, static)
$(call inherit-mixin, storage, 1xSD_2xUSB)
$(call inherit-mixin, audio, hsw_alc282)
$(call inherit-mixin, power, i2c)
$(call inherit-mixin, video, ufo)
$(call inherit-mixin, wifi, intel-compat)
$(call inherit-mixin, liblights, intel)
$(call inherit-mixin, navigationbar, true)
$(call inherit-mixin, bluetooth, intel)
$(call inherit-mixin, camera-usb, uvc)
$(call inherit-mixin, security, mei)
$(call inherit-mixin, sensors, hid_sensorhub)
$(call inherit-mixin, device-type, tablet)
$(call inherit-mixin, thermals, thermal-daemon)
