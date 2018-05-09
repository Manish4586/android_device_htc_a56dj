# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := HTC Desire 10 Life Style
PRODUCT_NAME := lineage_a56dj
PRODUCT_MANUFACTURER := htc
PRODUCT_MODEL := Desire 10 Life Style

$(call inherit-product, device/htc/a56dj/full_a56dj.mk)
