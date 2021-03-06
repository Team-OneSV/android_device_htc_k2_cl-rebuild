# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from S4 common
-include device/htc/s4-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := k2_cl

# Kernel
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01408000
TARGET_KERNEL_CONFIG := k2_cl_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/k2

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/k2_cl/bluetooth

# RIL
BOARD_PROVIDES_LIBRIL := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

#dev:        size     erasesize name
#mmcblk0p23: 000ffa00 00000200 "misc"
#mmcblk0p22: 00fffe00 00000200 "recovery"
#mmcblk0p21: 01000000 00000200 "boot"
#mmcblk0p35: 4dfffc00 00000200 "system"
#mmcblk0p30: 00140200 00000200 "local"
#mmcblk0p36: 0dfffe00 00000200 "cache"
#mmcblk0p37: 89fffe00 00000200 "userdata"
#mmcblk0p26: 01400000 00000200 "devlog"
#mmcblk0p28: 00040000 00000200 "pdata"
#mmcblk0p38: 27be00000 00000200 "fat"
#mmcblk0p31: 00010000 00000200 "extra"
#mmcblk0p17: 02d00000 00000200 "radio"
#mmcblk0p18: 00a00000 00000200 "adsp"
#mmcblk0p16: 00100000 00000200 "dsps"
#mmcblk0p19: 00500000 00000200 "wcnss"
#mmcblk0p20: 007ffa00 00000200 "radio_config"
#mmcblk0p24: 00400000 00000200 "modem_st1"
#mmcblk0p25: 00400000 00000200 "modem_st2"
#mmcblk0p32: 00040000 00000200 "skylink"
#mmcblk0p33: 00040000 00000200 "cdma_record"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1426062336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1241513472
BOARD_FLASH_BLOCK_SIZE := 512

# SElinux
BOARD_SEPOLICY_DIRS := \
    device/htc/k2_cl/sepolicy

BOARD_SEPOLICY_UNION := \
    file_contexts \
    property_contexts \
    te_macros \
    bluetooth_loader.te \
    bridge.te \
    camera.te \
    conn_init.te \
    device.te \
    dhcp.te \
    domain.te \
    drmserver.te \
    file.te \
    kickstart.te \
    init.te \
    mediaserver.te \
    mpdecision.te \
    netmgrd.te \
    property.te \
    qmux.te \
    restorecon.te \
    rild.te \
    rmt.te \
    sensors.te \
    surfaceflinger.te \
    system.te \
    tee.te \
    thermald.te \
    ueventd.te \
    wpa_supplicant.te \
    zygote.te

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 38

# Recovery
TARGET_RECOVERY_FSTAB := device/htc/k2_cl/rootdir/etc/fstab.qcom

# TWRP
#DEVICE_RESOLUTION := 480x800
#TW_FLASH_FROM_STORAGE := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TW_INTERNAL_STORAGE_PATH := "/sdcard"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_INCLUDE_DUMLOCK := true
#TW_INCLUDE_JB_CRYPTO := true
