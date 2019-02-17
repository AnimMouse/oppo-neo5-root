#!/sbin/sh

if [ ! -f "/system/bin/app_process64_original" ]
then
  mv /system/bin/app_process64 /system/bin/app_process64_original
else
  rm /system/bin/app_process64
fi
ln -s /system/xbin/daemonsu /system/bin/app_process64
if [ ! -f "/system/bin/app_process_init" ]
then
  cp /system/bin/app_process64_original /system/bin/app_process_init
fi
