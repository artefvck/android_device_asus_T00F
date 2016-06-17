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

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

#overlay
DEVICE_PACKAGE_OVERLAYS := \
    device/asus/T00F/overlay

# Dalvik
PRODUCT_PROPERTY_OVERRIDES +=  \
    ro.dalvik.vm.isa.arm=x86 \
    dalvik.vm.implicit_checks=none

# Ramdisk
PRODUCT_PACKAGES += \
       config_init.sh \
       fstab \
       fstab.charger.redhookbay \
       fstab.ramconsole.redhookbay \
       fstab.redhookbay \
       fstab.zram \
       init.a500cg.usb.rc \
       init.a600cg.usb.rc \
       init.avc.rc \
       init.bt.rc \
       init.bt.vendor.rc \
       init.class_main.sh \
       init.common.rc \
       init.compass.rc \
       init.config_init.rc \
       init.debug.rc \
       init.diag.rc \
       init.firmware.rc \
       init.gps.rc \
       init.ksm.rc \
       init.logtool.rc \
       init.modem.rc \
       init.rc \
       init.recovery.redhookbay.rc \
       init.redhookbay.rc \
       init.watchdog.rc \
       init.wifi.rc \
       init.wifi.vendor.rc \
       init.wireless.rc \
       init.zram.rc \
       intel_prop.cfg \
       rfkill_bt.sh \
       ueventd.redhookbay.rc \
       intel_prop \
       thermald

# rootdir
PRODUCT_COPY_FILES += \
       system/core/rootdir/init.rc:root/init.aosp.rc

$(call inherit-product-if-exists, vendor/asus/T00F/device-vendor.mk)
