# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2026 OpenWrt.org

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

KERNEL_LOADADDR := 0x40000000
KERNEL_ENTRY := 0x40001000

include $(SUBTARGET).mk

$(eval $(call BuildImage))
