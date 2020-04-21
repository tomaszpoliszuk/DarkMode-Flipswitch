#INSTALL_TARGET_PROCESSES = SpringBoard
FINAL_PACKAGE = 1
DEBUG = 0

PACKAGE_VERSION=0.1

ARCHS = arm64 arm64e
#SDKVERSION = 13.0
#TARGET = iphone:clang::13.0
TARGET = iphone:clang::13.0:13.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DarkMode
$(BUNDLE_NAME)_FILES = Switch.xm
$(BUNDLE_NAME)_LIBRARIES = Accessibility flipswitch
$(BUNDLE_NAME)_INSTALL_PATH = /Library/Switches
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc -Iheaders

include $(THEOS_MAKE_PATH)/bundle.mk
