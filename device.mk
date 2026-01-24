
# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# A/B
ENABLE_VIRTUAL_AB := true
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
	init_boot \
    boot \
    dtbo \
    system \
    system_ext \
    product \
    vendor \
    vendor_boot \
    odm \
    vbmeta \
    vbmeta_system \
    system_dlkm \
    vendor_dlkm

AB_OTA_PARTITIONS += \
    my_bigball \
    my_carrier \
    my_company \
    my_engineering \
    my_heytap \
    my_manifest \
    my_preload \
    my_product \
    my_region \
    my_stock



# Fastboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# Recovery libs
TARGET_RECOVERY_DEVICE_MODULES += \
    libion 

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# Platform 
PLATFORM_VERSION := 99.87.36
PLATFORM_SECURITY_PATCH := 2028-11-01
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

TARGET_VENDOR_PROP += device/oneplus/caihong/vendor.prop
