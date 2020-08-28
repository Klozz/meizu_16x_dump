#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:86d8e042fb5af69fde7e1b2e48d0a07825fee366; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:9ddba7859a0ab3584c18a7408d07b31ead363854 EMMC:/dev/block/bootdevice/by-name/recovery 86d8e042fb5af69fde7e1b2e48d0a07825fee366 67108864 9ddba7859a0ab3584c18a7408d07b31ead363854:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
