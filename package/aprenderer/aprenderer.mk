################################################################################
#
# aprenderer
#
################################################################################

APRENDERER_SITE = http://albumplayer.ru/linux
APRENDERER_SOURCE = aprenderer-arm32.tar.gz

define APRENDERER_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/aprenderer/
	cp -r $(@D)/* -t $(TARGET_DIR)/usr/aprenderer/
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL_PURE_PATH)/package/aprenderer/S90aprenderer  $(TARGET_DIR)/etc/rc.pure/S90aprenderer
endef

$(eval $(generic-package))

