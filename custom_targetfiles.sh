#/bin/bash

TARGET_DIR=out/merged_target_files

rm -rf $TARGET_DIR/SYSTEM/framework/hydrogen-framework-res.apk

cp -f overlay/firmware-update/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/sbl1.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/static_nvbk.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/recovery.img $TARGET_DIR/BOOTABLE_IMAGES/

sed -i 's#qemu.sf.lcd_density#persist.sys.density#g' $TARGET_DIR/SYSTEM/lib/libsurfaceflinger.so
