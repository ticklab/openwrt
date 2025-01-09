# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2024 Weijie Gao <hackpascal@gmail.com>

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

DEVICE_VARS += UBOOT_DEVICE_NAME

define Build/Compile
        $(CP) $(LINUX_DIR)/COPYING $(KDIR)/COPYING.linux
endef

### Image scripts ###
define Build/boot-common
	# This creates a new folder copies the dtb 
	# and the kernel image (as Image)
	rm -fR $@.boot
	mkdir -p $@.boot

	$(CP) $(DTS_DIR)/$(DEVICE_DTS).dtb $@.boot/dtb
	$(CP) -rL $(LINUX_DIR)/arch/loongarch/boot/uImage $@.boot/uImage
endef

define Build/boot-image
	# Creates the final SD/eMMC images, 
	# combining boot partition, root partition.

	PADDING=1 $(SCRIPT_DIR)/gen_image_generic.sh \
		$@ \
		$(CONFIG_TARGET_KERNEL_PARTSIZE) $@.boot \
		$(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS) \
		32768

endef

define Device/Default
  PROFILES := Default
  KERNEL_NAME := vmlinux
  KERNEL := kernel-bin
  IMAGES := sdcard.img.gz
  DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
endef

include $(SUBTARGET).mk

$(eval $(call BuildImage))
