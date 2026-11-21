include $(TOPDIR)/rules.mk

PKG_VERSION:=2021.07
PKG_HASH:=19a99330cff9e19380e9b0f3fdab95104c2db1533d61b8edc18c1da2c578e6d5
PKG_RELEASE:=1

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
  BUILD_TARGET:=coldfire
  BUILD_SUBTARGET:=twr-mcf54418
  UBOOT_IMAGE:=u-boot.bin
endef

define U-Boot/m54418twr_nand_rmii
  NAME:=Freescale TWR-MCF54418 (NAND, RMII)
  BUILD_DEVICES:=twr_mcf54418
  UBOOT_CONFIG:=M54418TWR_nand_rmii
endef

UBOOT_TARGETS := m54418twr_nand_rmii

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/$(UBOOT_IMAGE) $(STAGING_DIR_IMAGE)/uboot-$(BUILD_DEVICES)
endef

$(eval $(call BuildPackage/U-Boot))
