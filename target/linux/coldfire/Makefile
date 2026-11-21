# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2026 OpenWrt.org

include $(TOPDIR)/rules.mk

ARCH:=m68k
BOARD:=coldfire
BOARDNAME:=Freescale ColdFire
FEATURES:=squashfs ubifs nand
CPU_TYPE:=54418
SUBTARGETS:=twr-mcf54418

KERNEL_PATCHVER:=6.6
KERNELNAME:=vmlinux

define Target/Description
	Support for Freescale ColdFire MCF5441x boards
endef

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += kmod-mtd-rw

$(eval $(call BuildTarget))
