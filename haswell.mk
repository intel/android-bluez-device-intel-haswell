# Superclass
include device/intel/common/common.mk

LOCAL_PATH := device/intel/haswell

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.haswell.rc:root/init.haswell.rc \
	$(LOCAL_PATH)/init.recovery.haswell.rc:root/init.recovery.haswell.rc \
	$(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

$(call inherit-mixin, cpu-arch, hsw)

