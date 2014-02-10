## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/taurus/full_taurus.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := taurus
PRODUCT_NAME := cm_taurus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 2A
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=taurus BUILD_FINGERPRINT=Xiaomi/taurus/taurus:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="taurus-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=JDQ39E

# Enable Torch
PRODUCT_PACKAGES += Torch
