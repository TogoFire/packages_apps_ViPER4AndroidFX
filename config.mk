BUILD_PATH := packages/apps/ViPER4AndroidFX

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(BUILD_PATH)/vendor,vendor)

PRODUCT_PACKAGES += \
    ViPER4AndroidFX

# Time to relax
RELAX_USES_LIBRARY_CHECK := true
