#!/sbin/sh

mount -t auto /dev/block/mmcblk1p1 /external_sd

if [ -d "/external_sd/XZDualRecovery" ]; then
    rm -rf /external_sd/XZDualRecovery
fi

if [ -d "/cache/XZDualRecovery" ]; then
    rm -rf /cache/XZDualRecovery
fi

if [ -f "/system/app/NDRUtils.apk" ]; then
    rm /system/app/NDRUtils.apk
fi	
	
if [ -f "/system/bin/recovery.twrp.cpio.lzma" ]; then
    rm /system/bin/recovery.twrp.cpio.lzma
fi

if [ -f "/system/bin/recovery.twrp.tar" ]; then
    rm /system/bin/recovery.twrp.tar
fi

if [ -f "/system/bin/recovery.cwm.cpio.lzma" ]; then
    rm /system/bin/recovery.cwm.cpio.lzma
fi

if [ -f "/system/bin/recovery.cwm.tar" ]; then
    rm /system/bin/recovery.cwm.tar
fi

if [ -f "/system/bin/recovery.philz.cpio.lzma" ]; then
    rm /system/bin/recovery.philz.cpio.lzma
fi
	
if [ -f "/system/bin/ramdisk.stock.cpio.lzma" ]; then
    rm /system/bin/ramdisk.stock.cpio.lzma
fi

if [ -f "/system/bin/ramdisk.stock.tar" ]; then
    rm /system/bin/ramdisk.stock.tar
fi

if [ -f "/system/bin/charger" ]; then
    rm /system/bin/charger
fi

if [ -f "/system/bin/ric" ]; then
    rm /system/bin/ric
fi

if [ -f "/system/bin/chargemon" -a -f "/system/bin/chargemon.stock" ]; then
    rm /system/bin/chargemon
    mv /system/bin/chargemon.stock /system/bin/chargemon
fi

if [ -f "/system/bin/dualrecovery.sh" ]; then
    rm /system/bin/dualrecovery.sh
fi

exit 0
