#############################################################
#
# python-zope-interface
#
#############################################################

PYTHON_ZOPE_INTERFACE_VERSION = 4.1.1
PYTHON_ZOPE_INTERFACE_SOURCE  = zope.interface-$(PYTHON_ZOPE_INTERFACE_VERSION).tar.gz
PYTHON_ZOPE_INTERFACE_SITE    = http://pypi.python.org/packages/source/z/zope.interface/
PYTHON_ZOPE_INTERFACE_LICENSE = Zope Public License (ZPL) Version 2.1
PYTHON_ZOPE_INTERFACE_LICENSE_FILES = LICENSE.txt
PYTHON_ZOPE_INTERFACE_SETUP_TYPE = distutils

$(eval $(python-package))
