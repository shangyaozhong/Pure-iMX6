################################################################################
#
# naa
#
################################################################################

define NAA_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL_PURE_PATH)/package/naa/networkaudiod  $(TARGET_DIR)/usr/sbin/networkaudiod
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL_PURE_PATH)/package/naa/S90naa  $(TARGET_DIR)/etc/rc.pure/S90naa
endef

$(eval $(generic-package))
