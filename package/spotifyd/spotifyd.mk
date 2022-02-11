################################################################################
#
# spotifyd
#
################################################################################

SPOTIFYD_VERSION = 0.3.3
SPOTIFYD_SOURCE = spotifyd-linux-armhf-slim.tar.gz
SPOTIFYD_SITE = https://github.com/Spotifyd/spotifyd/releases/download/v$(SPOTIFYD_VERSION)
SPOTIFYD_STRIP_COMPONENTS=0

define SPOTIFYD_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/spotifyd $(TARGET_DIR)/sbin/spotifyd
        $(INSTALL) -D -m 0755 $(BR2_EXTERNAL_PURE_PATH)/package/spotifyd/S90spotify  $(TARGET_DIR)/etc/rc.pure/S90spotify
endef

$(eval $(generic-package))
