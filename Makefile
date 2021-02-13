export THEOS_DEVICE_IP=192.168.0.109
export THEOS_DEVICE_PORT=22
TARGET := iphone:clang:latest:9.0
INSTALL_TARGET_PROCESSES = ting


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tingff

tingff_FILES = Tweak.x a.x
tingff_CFLAGS = -fobjc-arc -I./3rd/SagaAFNet -I./3rd/SagaZip
tingff_LDFLAGS = -L./3rd/SagaAFNet -lafnet_static -L./3rd/SagaZip -lSagaZip


include $(THEOS_MAKE_PATH)/tweak.mk
