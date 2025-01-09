# SPDX-License-Identifier: GPL-2.0-only

KERNEL_LOADADDR:=0x9000000000200000

define Device/ls2k0300_99_pai_tfcard
  DEVICE_VENDOR := 99Pai
  DEVICE_MODEL := tfcard
  SOC := 2k0300
  IMAGE/sdcard.img.gz := boot-common | boot-image | gzip | append-metadata
  DEVICE_DTS := loongson_$$(SOC)_99_pai_tfcard
endef
TARGET_DEVICES += ls2k0300_99_pai_tfcard

define Device/ls2k0300_99_pai_wifi
  DEVICE_VENDOR := 99Pai
  DEVICE_MODEL := wifi
  SOC := 2k0300
  IMAGE/sdcard.img.gz := boot-common | boot-image | gzip | append-metadata
  DEVICE_DTS := loongson_$$(SOC)_99_pai_wifi
endef
TARGET_DEVICES += ls2k0300_99_pai_wifi