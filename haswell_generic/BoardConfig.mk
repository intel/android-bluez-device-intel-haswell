include device/intel/haswell/BoardConfig.mk

TARGET_USE_MOKMANAGER := true

# Note, Iago installer also sets androidboot.disk via bootloader
# config, if Iago not used you will need to add
# androidboot.disk=pci0000:00/0000:00:1f.2
BOARD_KERNEL_CMDLINE += \
		androidboot.sdcard=sdb1

# Pulls in additional Makefiles relevant to blob-release
-include vendor/intel/haswell/BoardConfigVendor.mk
