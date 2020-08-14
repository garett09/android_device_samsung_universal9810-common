# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2021 The LineageOS Project

# Device specific property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.arch=exynos9810 \
    persist.demo.hdmirotationlock=false \
    dev.usbsetting.embedded=on \
    aaudio.mmap_policy=2 \
    aaudio.mmap_exclusive_policy=2 \
    aaudio.hw_burst_min_usec=2000 \
    af.fast_track_multiplier=1 \
    ro.config.num_speaker=1 \
    ro.config.num_mic=2 \
    ro.config.num_proximity=0 \
    ro.config.speaker_amp=1 \
    ro.config.bluetooth=external \
    ro.config.fmradio=external \
    ro.config.usb_by_primary=no \
    ro.config.a2dp_by_primary=no \
    ro.opengles.version=196610 \
    debug.slsi_platform=1 \
    debug.hwc.winupdate=1 \
    debug.sf.disable_backpressure=1 \
    ro.vendor.ddk.set.afbc=1 \
    ro.em.version=20 \
    ro.security.cass.feature=1 \
    ro.hdcp2.rx=tz \
    keyguard.no_require_sim=true \
    security.ASKS.policy_version=00000000 \
    security.ASKS.version=0 \
    security.ASKS.time_value=00000000 \
    security.ASKS.rufs_enable=true \
    security.ADP.version=0 \
    security.ADP.policy_version=00000000 \
    ro.security.fips.ux=Enabled \
    ro.security.fips_bssl.ver=1.4 \
    ro.security.fips_fmp.ver=1.4 \
    ro.security.fips_skc.ver=1.9 \
    ro.security.fips_scrypto.ver=2.2 \
    ro.error.receiver.default=com.samsung.receiver.error \
    security.securehw.available=false \
    security.securenvm.available=false \
    dalvik.vm.lockprof.threshold=500 \
    ro.carrier=unknown \
    vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so \
    vendor.sec.rild.libpath2=/vendor/lib64/libsec-ril-dsds.so \
    security.mdf.result=None \
    security.mdf=None \
    ro.security.mdf.ux=Enabled \
    ro.security.mdf.ver=3.1 \
    ro.security.wlan.ver=1.0 \
    ro.security.wlan.release=2 \
    ro.security.mdf.release=5 \
    ro.vendor.build.version.sehi=2901 \
    ro.sf.lcd_density=480 \
    ro.sf.init.lcd_density=640 \
    ro.build.scafe.version=2020A \
    ro.config.ringtone=Over_the_Horizon.ogg \
    ro.config.notification_sound=Skyline.ogg \
    ro.config.alarm_alert=Morning_Glory.ogg \
    ro.config.media_sound=Media_preview_Touch_the_light.ogg \
    ro.config.ringtone_2=Basic_Bell.ogg \
    ro.config.notification_sound_2=S_Charming_Bell.ogg \
    ro.security.vpnpp.ver=2.1 \
    ro.security.vpnpp.release=3.0 \
    ro.hardware.keystore=mdfpp \
    ro.security.keystore.keytype=sak,gak \
    ro.frp.pst=/dev/block/persistent \
    sys.config.activelaunch_enable=true \
    ro.config.dha_cached_min=6 \
    ro.config.dha_cached_max=19 \
    ro.cfg.dha_cached_max=24 \
    ro.config.dha_empty_min=8 \
    ro.config.dha_empty_init=24 \
    ro.config.dha_empty_max=24 \
    ro.cfg.dha_empty_max=30 \
    ro.cfg.dha_empty_init=30 \
    ro.config.dha_lmk_scale=1.0 \
    ro.config.fall_prevent_enable=true \
    ro.config.dha_pwhitelist_enable=1 \
    ro.config.dha_pwhl_key=512 \
    ro.config.fha_enable=true \
    ro.cfg.enable_userspace_lmk=true \
    ro.cfg.kill_heaviest_task=true \
    ro.cfg.custom_tm_limit=1000 \
    ro.config.upgrade_pressure=55 \
    ro.cfg.upgrade_pressure=80 \
    ro.config.custom_sw_limit=200 \
    ro.cfg.custom_sw_limit=300 \
    ro.cfg.enable_reentry_lmk=true \
    ro.config.max_snapshot_num=3 \
    persist.sys.tcpOptimizer.on=1 \
    ro.config.systemaudiodebug=abox&codecdsp \
    ro.gfx.driver.0=com.samsung.gpudriver.S9MaliG72_90 \
    ro.hardware.egl=mali \
    ro.zygote.disable_gl_preload=true \
    ro.config.vc_call_vol_steps=5

# Surfaceflinger
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.latch_unsignaled=1

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=9,9

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bluetooth.a2dp_offload.supported=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    vendor.audio.feature.a2dp_offload.enable=false

# Process pool
PRODUCT_PRODUCT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

# Tones
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg \
    ro.config.vc_call_vol_steps=7

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true
