#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_RELEASE:=$(AUTORELEASE)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitee.com/mixstage/loongson-uboot.git
PKG_SOURCE_DATE:=2025-01-19
PKG_SOURCE_VERSION:=5bc24b1b01c4c039739f195854f09a1e32f49a71
PKG_MIRROR_HASH:=25c7ae93584c1c8f26992feadf4e20c0b89320a5775fe35285aaab5f01cb49fc

PKG_MAINTAINER:=Han Pengfei <pengphei@foxmail.com>

UBOOT_USE_BINMAN:=1
UBOOT_USE_INTREE_DTC:=1

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
  BUILD_TARGET:=loongarch64
  UENV:=default
  HIDDEN:=1
endef


# LS2K0300 boards

define U-Boot/ls2k300/Default
  BUILD_SUBTARGET:=ls2k300
endef

define U-Boot/loongson_2k0300
  $(U-Boot/ls2k300/Default)
  NAME:=Loongson 2k0300
  BUILD_DEVICES:= \
    ls2k0300_99_pai_tfcard \
    ls2k0300_99_pai_wifi
endef

UBOOT_TARGETS := \
  loongson_2k0300

UBOOT_CONFIGURE_VARS += USE_PRIVATE_LIBGCC=yes

UBOOT_CUSTOMIZE_CONFIG := \
	--disable TOOLS_MKEFICAPSULE \
	--set-str MKIMAGE_DTC_PATH $(PKG_BUILD_DIR)/scripts/dtc/dtc

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/u-boot-spl-gz.bin $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-u-boot-loongson.bin
endef

define Package/u-boot/install/default
endef

$(eval $(call BuildPackage/U-Boot))
