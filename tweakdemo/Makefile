export SDKVERSION = 10.2.1
export ARCHS = armv7 arm64
export TARGET = iphone:clang:12.2:9.0
export THEOS_DEVICE_IP = 127.0.0.1 -p 1025

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TweakDemo
TweakDemo_FILES = Tweak.xm
TweakDemo_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
