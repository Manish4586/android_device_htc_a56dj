$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/a56dj/overlay

# Configs
PRODUCT_COPY_FILES += \
    device/htc/a56dj/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/a56dj/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/htc/a56dj/prebuilt/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Common specific options
BOARD_HAS_QCOM_WCNSS := false
BOARD_HAS_NFC := false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=10 \
    ro.sf.lcd_density=320

PRODUCT_PACKAGES += hwaddrs
BOARD_HAS_NFC := false

$(call inherit-product, vendor/lge/jagnm/jagnm-vendor.mk)

