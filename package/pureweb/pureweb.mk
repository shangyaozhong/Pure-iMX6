################################################################################
#
# pureweb
#
################################################################################

define PUREWEB_INSTALL_TARGET_CMDS
	cp -r $(BR2_EXTERNAL_PURE_PATH)/package/pureweb/www $(TARGET_DIR)/var/
endef

$(eval $(generic-package))
