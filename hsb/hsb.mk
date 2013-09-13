# Superclass
include device/intel/haswell/haswell.mk

PRODUCT_NAME := hsb
PRODUCT_DEVICE := hsb

LOCAL_PATH := device/intel/haswell/hsb

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.$(TARGET_PRODUCT).rc:root/init.$(TARGET_PRODUCT).rc \

$(call inherit-mixin, gms, true)
$(call inherit-mixin, houdini, true)
$(call inherit-mixin, boot-arch, efi)
$(call inherit-mixin, graphics, mesa)
$(call inherit-mixin, ethernet, static)

