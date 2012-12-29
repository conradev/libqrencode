include theos/makefiles/common.mk

LIBRARY_NAME = libqrencode
libqrencode_CFLAGS = -D MAJOR_VERSION=3 -D MINOR_VERSION=4 -D MICRO_VERSION=1 -D VERSION="\"3.4.1\""
libqrencode_FILES = qrencode.c qrinput.c bitstream.c qrspec.c rscode.c split.c mask.c mqrspec.c mmask.c

after-stage::
	@echo " Staging header files..."
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/usr/include/libqrencode$(ECHO_END)
	$(ECHO_NOTHING)cp -a qrencode.h $(THEOS_STAGING_DIR)/usr/include/libqrencode/$(ECHO_END)

include $(THEOS_MAKE_PATH)/library.mk
