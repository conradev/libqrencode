include theos/makefiles/common.mk

LIBRARY_NAME = libqrencode
libqrencode_FILES = qrencode.c qrinput.c bitstream.c qrspec.c rscode.c split.c mask.c mqrspec.c mmask.c

internal-stage::
	mkdir -p $(THEOS_STAGING_DIR)/usr/include/libqrencode
	cp -a qrencode.h $(FW_STAGING_DIR)/usr/include/libqrencode/

include $(THEOS_MAKE_PATH)/library.mk
