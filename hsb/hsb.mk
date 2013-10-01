# Superclass
include device/intel/haswell/haswell.mk

PRODUCT_NAME := hsb
PRODUCT_DEVICE := hsb
PRODUCT_MODEL := Harris Beach FFRD

LOCAL_PATH := device/intel/haswell/hsb

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.$(TARGET_PRODUCT).rc \
	$(LOCAL_PATH)/init.recovery.rc:root/init.recovery.$(TARGET_PRODUCT).rc

$(call inherit-mixin, gms, false)
$(call inherit-mixin, houdini, true)
$(call inherit-mixin, boot-arch, efi)
$(call inherit-mixin, graphics, mesa)
$(call inherit-mixin, ethernet, static)
$(call inherit-mixin, storage, sdcard)
