################################################################################
#
# ktap
#
################################################################################

EMCE_VERSION = v0.2
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
endef

$(eval $(generic-package))
