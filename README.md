## ViPER4Android FX

Integrate V4A by completing these three steps:

1.  **Build System:** Add the config to **`device.mk`**:

    ```makefile
    $(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)
    ```

2.  **Audio Effects:** Add these lines to the `<libraries>` block in **`audio_effects.xml`** (`/vendor/etc/` or `/etc/`):

    ```xml
    <library name="v4a_re" path="libv4a_re.so"/>
    <effect name="v4a_standard_re" library="v4a_re" uuid="90380da3-8536-4744-a6a3-5731970e640f"/>
    ```

3.  **SELinux Policy:** Add these rules to your **`audioserver.te`** file:

    ```te
    get_prop(audioserver, vendor_audio_prop) # If Google or MTK device skip line

    allow audioserver unlabeled:file { read write open getattr };
    allow hal_audio_default hal_audio_default:process { execmem };
    ```
