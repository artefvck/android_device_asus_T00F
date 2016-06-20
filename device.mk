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

PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

#overlay
DEVICE_PACKAGE_OVERLAYS := \
    device/asus/T00F/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Dalvik
PRODUCT_PROPERTY_OVERRIDES +=  \
    ro.dalvik.vm.isa.arm=x86 \
    dalvik.vm.implicit_checks=none


PRODUCT_PROPERTY_OVERRIDES += \
    ro.spid.gps.tty=ttyMFD3

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

# media
PRODUCT_COPY_FILES += \
    device/asus/T00F/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/asus/T00F/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/asus/T00F/media/wrs_omxil_components.list:system/etc/wrs_omxil_components.list \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# audio
PRODUCT_COPY_FILES += \
    device/asus/T00F/audio/asound.conf:system/etc/asound.conf \
    device/asus/T00F/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/asus/T00F/audio/route_criteria.conf:system/etc/route_criteria.conf

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    lib_driver_cmd_bcmdhd \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/asus/T00F/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# gps
PRODUCT_COPY_FILES += \
    device/asus/T00F/configs/gps.conf:system/etc/gps.conf \
    device/asus/T00F/configs/gpsconfig_HULA.xml:system/etc/gpsconfig_HULA.xml \
    device/asus/T00F/configs/gpsconfig_NoHULA.xml:system/etc/gpsconfig_NoHULA.xml \
    device/asus/T00F/configs/libgps.conf:system/etc/libgps.conf

PRODUCT_COPY_FILES += \
    device/asus/T00F/configs/sensor_hal_config_default.xml:system/etc/sensor_hal_config_default.xml \
    device/asus/T00F/configs/sensor_hal_config_general_default.xml:system/etc/sensor_hal_config_general_default.xml \
    device/asus/T00F/configs/sensor_hal_config_general_scale-pr1.xml:system/etc/sensor_hal_config_general_scale-pr1.xml \
    device/asus/T00F/configs/sensor_hal_config_scale-pr1.xml:system/etc/sensor_hal_config_scale-pr1.xml \
    device/asus/T00F/configs/thermal_sensor_config.xml:system/etc/thermal_sensor_config.xml \
    device/asus/T00F/configs/thermal_sensor_config_a500cg.xml:system/etc/thermal_sensor_config_a500cg.xml \
    device/asus/T00F/configs/thermal_sensor_config_a600cg.xml:system/etc/thermal_sensor_config_a600cg.xml \
    device/asus/T00F/configs/thermal_throttle_config.xml:system/etc/thermal_throttle_config.xml \
    device/asus/T00F/configs/thermal_throttle_config_a500cg.xml:system/etc/thermal_throttle_config_a500cg.xml \
    device/asus/T00F/configs/thermal_throttle_config_a600cg.xml:system/etc/thermal_throttle_config_a600cg.xml

# Key layout files
PRODUCT_COPY_FILES += \
    device/asus/T00F/keylayout/synaptics_dsx.kcm:system/usr/keychars/synaptics_dsx.kcm \
    device/asus/T00F/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    device/asus/T00F/keylayout/cloverview_audio_Intel_MID_Audio_Jack.kl:system/usr/keylayout/cloverview_audio_Intel_MID_Audio_Jack.kl \
    device/asus/T00F/keylayout/ASUS_TransKeyboard.kl:system/usr/keylayout/ASUS_TransKeyboard.kl \
    device/asus/T00F/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/asus/T00F/keylayout/Vendor_0b05_Product_17fc.kl:system/usr/keylayout/Vendor_0b05_Product_17fc.kl \
    device/asus/T00F/keylayout/Vendor_0b05_Product_1803.kl:system/usr/keylayout/Vendor_0b05_Product_1803.kl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Media: SDK and OMX IL components
PRODUCT_PACKAGES += \
    msvdx_bin \
    topaz_bin

# Media: libva
PRODUCT_PACKAGES += \
    libva \
    libva-android \
    libva-tpi \
    vainfo

# Media: libstagefrighthw
PRODUCT_PACKAGES += \
    libstagefrighthw

# libmix
PRODUCT_PACKAGES += \
    libmixvbp_mpeg4 \
    libmixvbp_h264 \
    libmixvbp_h264secure \
    libmixvbp_vc1 \
    libva_videodecoder \
    libva_videoencoder

PRODUCT_PACKAGES += \
    libwrs_omxil_common \
    libwrs_omxil_core_pvwrapped \
    libOMXVideoDecoderH263 \
    libOMXVideoDecoderMPEG4 \
    libOMXVideoEncoderAVC \
    libOMXVideoDecoderWMV \
    libOMXVideoEncoderH263 \
    libOMXVideoEncoderMPEG4

$(call inherit-product-if-exists, vendor/asus/T00F/device-vendor.mk)
