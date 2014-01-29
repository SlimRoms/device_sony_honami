# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/sony/honami/full_honami.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit Slim common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Release name
PRODUCT_RELEASE_NAME := honami

# Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_honami
PRODUCT_DEVICE := honami

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903 BUILD_FINGERPRINT=Sony/C6903/C6903:4.3/14.2.A.0.290/eng.hudsonslave:user/release-keys PRIVATE_BUILD_DESC="C6903-user 4.3 RHINE-1.1-131125-1201 eng.hudsonslave test-keys"
