$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/k2_cl/k2_cl.mk)

# Device naming
PRODUCT_DEVICE := k2_cl
PRODUCT_NAME := cm_k2_cl
PRODUCT_BRAND := htc
PRODUCT_MODEL := One SV
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_k2_cl BUILD_FINGERPRINT=boost/htc/k2_cl:4.1.2/JZO54K/573038:user/user-debug PRIVATE_BUILD_DESC="4.1.2 JZO54K 573038 user-debug"

# Release name
PRODUCT_RELEASE_NAME := k2_cl

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

-include vendor/cm/config/common_versions.mk
