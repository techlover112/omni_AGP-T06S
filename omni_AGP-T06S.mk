$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/AGP-T06S/AGP-T06S/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := AGP-T06S
PRODUCT_NAME := omni_AGP-T06S
PRODUCT_BRAND := AGP-T06S
PRODUCT_MODEL := AGP-T06S
PRODUCT_MANUFACTURER := AGP-T06S

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="T03S/T03S/T03S:8.1.0/O11019/1609328566:user/release-keys" \
    PRIVATE_BUILD_DESC="full_k53v1_64_bsp-user 8.1.0 O11019 1665945754 release-keys"
