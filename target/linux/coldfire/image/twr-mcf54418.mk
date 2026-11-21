define Device/Default
  PROFILES := Default
  KERNEL_NAME := vmlinux
  KERNEL := kernel-bin | gzip | uImage gzip
endef

define Device/twr_mcf54418
  DEVICE_VENDOR := Freescale
  DEVICE_MODEL := TWR-MCF54418
  DEVICE_PACKAGES := kmod-mtd-rw
  SUPPORTED_DEVICES := twr_mcf54418
  IMAGES := factory.bin sysupgrade.bin
  IMAGE/factory.bin := append-uboot | pad-to 1M | append-kernel | pad-to 8192k | append-ubi
  IMAGE/sysupgrade.bin := append-kernel | pad-to 7168k | append-ubi | append-metadata | check-size
  ARTIFACTS := u-boot.bin
  ARTIFACT/u-boot.bin := append-uboot
  KERNEL_SIZE := 7168k
  IMAGE_SIZE := 248m
  NAND_SIZE := 256m
  PAGESIZE := 2048
  BLOCKSIZE := 128k
  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
endef

TARGET_DEVICES += twr_mcf54418
