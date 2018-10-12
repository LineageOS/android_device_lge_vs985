#
# Copyright (C) 2014 The CyanogenMod Project
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

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/vs985/vs985-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/lge/g3-common/configs/audio/audio_platform_info_qcwcn.xml:system/vendor/etc/audio_platform_info.xml \
    device/lge/g3-common/configs/audio/mixer_paths_qcwcn.xml:system/vendor/etc/mixer_paths.xml

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# NFC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Radio
PRODUCT_PACKAGES += \
    librmnetctl

# Wifi
PRODUCT_PACKAGES += \
    hostapd_default.conf \
    libwcnss_qmi \
    wcnss_service

# NFC packages
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.msm8974

PRODUCT_COPY_FILES += \
    device/lge/g3-common/wcnss/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lge/g3-common/wcnss/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/g3-common/wcnss/WCNSS_qcom_wlan_nv.bin:system/vendor/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/lge/g3-common/wcnss/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/g3-common/wcnss/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# common g3
$(call inherit-product, device/lge/g3-common/g3.mk)
