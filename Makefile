DEBUG = 0
FINALPACKAGE = 1
include $(THEOS)/makefiles/common.mk

ARCHS = armv7 arm64 arm64e
TWEAK_NAME = SmartBatteryPercentage+
SmartBatteryPercentage+_FILES = Tweak.xm
SmartBatteryPercentage+_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
