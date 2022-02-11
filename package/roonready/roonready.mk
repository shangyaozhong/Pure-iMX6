################################################################################
#
# roonready
#
################################################################################

define ROONREADY_INSTALL_TARGET_CMDS
	cp -r $(BR2_EXTERNAL_PURE_PATH)/package/roonready/RoonReady  $(TARGET_DIR)/opt/
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL_PURE_PATH)/package/roonready/S90roonready  $(TARGET_DIR)/etc/rc.pure/S90roonready
	$(INSTALL) -D -m 0644 $(BR2_EXTERNAL_PURE_PATH)/package/roonready/raat.conf  $(TARGET_DIR)/etc/raat.conf
endef

$(eval $(generic-package))
