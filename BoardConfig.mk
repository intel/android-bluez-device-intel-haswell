# Common BoardConfig options for any device that has
# a Haswell SoC

include device/intel/common/BoardConfig.mk

TARGET_BOARD_PLATFORM := haswell

ifeq ($(ANDROID_CONSOLE),usb)
BOARD_CONSOLE_DEVICE := ttyUSB0,115200n8
else ifeq ($(ANDROID_CONSOLE),serial)
BOARD_CONSOLE_DEVICE := ttyS0,115200n8
else
BOARD_CONSOLE_DEVICE := tty0
endif

BOARD_KERNEL_CMDLINE += console=$(BOARD_CONSOLE_DEVICE)

TARGET_KERNEL_SOURCE := linux/kernel-uefi
TARGET_KERNEL_CONFIG := $(TARGET_KERNEL_ARCH)_bigcore_android_defconfig

# Defines Intel library for GPU accelerated Renderscript:
OVERRIDE_RS_DRIVER := libRSDriver_intel7.so

# Allow HWC to preform a final CSC on virtual displays
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

