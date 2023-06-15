# ViPER4Android FX
- Add this in **device.mk**: $(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

Add this to your **audio_effects.xml**:

    <library name="v4a_re" path="libv4a_re.so"/>
    <effect name="v4a_standard_re" library="v4a_re" uuid="90380da3-8536-4744-a6a3-5731970e640f"/>

Also you need to address some SELinux denials in **audioserver.te**:

    get_prop(audioserver, vendor_audio_prop)

    allow audioserver unlabeled:file { read write open getattr };
    allow hal_audio_default hal_audio_default:process { execmem };
