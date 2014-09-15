#############################################################
#
# python-smmap
#
#############################################################

PYTHON_SMMAP_VERSION = v0.2
PYTHON_SMMAP_SITE    = $(call github,notti,smmap,$(PYTHON_SMMAP_VERSION))
PYTHON_SMMAP_LICENSE = PYTHON SOFTWARE FOUNDATION LICENSE VERSION 2
PYTHON_SMMAP_LICENSE_FILES = LICENSE
PYTHON_SMMAP_SETUP_TYPE = distutils

$(eval $(python-package))
