# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit Slim common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/sony/honami/full_honami.mk)

# Release name
PRODUCT_RELEASE_NAME := honami

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := honami
PRODUCT_NAME := slim_honami
PRODUCT_BRAND := Xperia
PRODUCT_MODEL := Z1
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/C6903/C6903:5.0.2/14.5.A.0.270/3750474323:user/release-keys PRIVATE_BUILD_DESC="C6903-user 5.0.2 14.5.A.0.270 3750474323 release-keys"
