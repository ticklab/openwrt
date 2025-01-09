# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2024 Weijie Gao <hackpascal@gmail.com>

include $(TOPDIR)/rules.mk

ARCH:=loongarch64
BOARD:=loongarch64
BOARDNAME:=Loongson LoongArch
FEATURES:=display ext4 boot-part rootfs-part rtc usb
SUBTARGETS:=generic ls2k300

KERNEL_PATCHVER:=6.6

KERNELNAME:=vmlinuz.efi dtbs

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += \
	partx-utils blkid e2fsprogs

$(eval $(call BuildTarget))
