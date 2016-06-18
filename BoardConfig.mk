#
# Copyright 2014 The Android Open-Source Project
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

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := x86
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_BOARD_PLATFORM := clovertrail
TARGET_BOOTLOADER_BOARD_NAME := clovertrail
TARGET_CPU_VARIANT := x86

# Specific headers
TARGET_BOARD_KERNEL_HEADERS := device/asus/T00F/kernel-headers
TARGET_SPECIFIC_HEADER_PATH := device/asus/T00F/include

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/asus/T00F
TARGET_KERNEL_ARCH := x86
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_KERNEL_CONFIG := cyanogenmod_T00F_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-

# Kernel cmdline
BOARD_KERNEL_CMDLINE := init=/init pci=noearly earlyprintk=nologger loglevel=0 kmemleak=off androidboot.bootmedia=sdcard androidboot.hardware=redhookbay watchdog.watchdog_thresh=60 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on vmalloc=172M slub_max_order=2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# OTA Packaging / Bootimg creation
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_MKBOOTIMG := pack_intel
BOARD_CUSTOM_BOOTIMG_MK := device/asus/T00F/mkbootimg.mk
NEED_KERNEL_MODULE_ROOT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/asus/T00F/bluetooth

# Recovery
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_FSTAB := device/asus/T00F/rootdir/etc/fstab.redhookbay
TARGET_USERIMAGES_USE_EXT4 := true

# rootdir
TARGET_PROVIDES_INIT_RC := true

# Adb
BOARD_FUNCTIONFS_HAS_SS_COUNT := true

# Init
TARGET_IGNORE_RO_BOOT_SERIALNO := true

# Opengles
COMMON_GLOBAL_CFLAGS += -DWORKAROUND_BUG_10194508
BOARD_EGL_CFG := device/asus/T00F/configs/egl.cfg

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.opengles.version = 131072

# enabled to carry out all drawing operations performed on a View's canvas with GPU for 2D rendering pipeline.
USE_OPENGL_RENDERER := true

# Disable an optimization that causes rendering issues for us
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Wifi
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER        := NL80211
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcm43362/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP    := "/system/etc/firmware/fw_bcmdhd_43362_apsta.bin"
WIFI_DRIVER_FW_PATH_STA   := "/system/etc/firmware/fw_bcmdhd_43362.bin"
WIFI_DRIVER_MODULE_ARG := "iface_name=wlan0 firmware_path=/system/etc/firmware/fw_bcmdhd_43362.bin"

# Use the non-open-source parts, if they're present
-include vendor/asus/T00F/BoardConfigVendor.mk
