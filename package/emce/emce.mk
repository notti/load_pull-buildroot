################################################################################
#
# ktap
#
################################################################################

EMCE_VERSION = v1.0
EMCE_SITE = $(call github,notti,bak-software,$(EMCE_VERSION))
EMCE_SOURCE = $(EMCE_VERSION).tar.gz
EMCE_LICENSE = GPLv2
EMCE_LICENSE_FILES = LICENSE-GPL

EMCE_DEPENDENCIES = linux

define EMCE_BUILD_CMDS
	$(MAKE) -C $(@D)/linux $(LINUX_MAKE_FLAGS) KERNEL_SRC=$(LINUX_DIR) KVERSION=$(LINUX_VERSION_PROBED) modules
endef

define EMCE_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D)/linux $(LINUX_MAKE_FLAGS) KERNEL_SRC=$(LINUX_DIR) KVERSION=$(LINUX_VERSION_PROBED) modules_install
	$(INSTALL) -d $(TARGET_DIR)/opt
	cp -r $(@D)/ui $(TARGET_DIR)/opt/emce
	$(INSTALL) -D -m 755 $(BR2_EXTERNAL)/package/emce/S99ui $(TARGET_DIR)/etc/init.d/S99ui
endef

$(eval $(generic-package))
