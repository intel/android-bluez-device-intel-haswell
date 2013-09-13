# Superclass
include device/intel/common/common.mk

LOCAL_PATH := device/intel/haswell

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.haswell.rc:root/init.haswell.rc \
	$(LOCAL_PATH)/init.recovery.haswell.rc:root/init.recovery.haswell.rc

$(call inherit-mixin, cpu-arch, hsw)

