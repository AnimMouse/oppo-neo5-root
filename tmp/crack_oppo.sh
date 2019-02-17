#!/sbin/sh

if [ -f "/system/etc/security/pl.fs" ]
then
  cp /system/etc/security/pl.fs /system/etc/security/pl.fs.bak
  cat /system/etc/security/pl.fs.bak /tmp/patch > /system/etc/security/pl.fs
fi

#if [ -f "/system/etc/security/ck.fs" ]
#then
#  cp /system/etc/security/ck.fs /system/etc/security/ck.fs.bak
#  busybox find /system -type f -o -type l | busybox xargs busybox ls -l --color=never | busybox grep -Ev 'sysmd5.zip|sd_after|ck.fs|install-recovery.sh|install_recovery.sh|recovery-from-boot.p' | busybox awk '{print $9,$5}' | busybox sort | busybox md5sum | busybox cut -b 1-32 > /system/etc/security/ck.fs
#fi
