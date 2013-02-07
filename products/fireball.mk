# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/htc/fireball/full_fireball.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/aokp/configs/vzw.mk)

PRODUCT_PACKAGE_OVERLAYS += device/htc/fireball/overlay

# Setup device specific product configuration.
PRODUCT_NAME := aokp_fireball
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := fireball
PRODUCT_MODEL := Incredible 4G LTE
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=fireball TARGET_DEVICE=fireball BUILD_FINGERPRINT="Verizon/fireball/fireball:4.1.1/JRO03L/I535VRBLK3:user/release-keys" PRIVATE_BUILD_DESC="fireball-user 4.1.1 JRO03L I535VRBLK3 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
