COMPONENT_OWNBUILDTARGET := true
COMPONENT_OWNCLEANTARGET := true
OPENTX_SRCDIR := ../../../../../..
COMPONENT_ADD_INCLUDEDIRS := $(OPENTX_SRCDIR)/ $(OPENTX_SRCDIR)/targets/esp-wroom-32 \
$(OPENTX_SRCDIR)/gui $(OPENTX_SRCDIR)/gui/128x64 build/radio/src
CPPFLAGS += -DAUDIO -DAUTOSOURCE -DAUTOSWITCH -DCORRECT_NEGATIVE_SHIFTS -DCPUESP32 -DCURVES -DDBLKEYS -DEEPROM -DEEPROM_RLC -DEEPROM_VARIANT=0 -DFLAVOUR=\"esp_wroom_32\" -DFLIGHT_MODES -DFONT="" -DGUI -DGVARS -DHELI -DLCD_SPI -DOVERRIDE_CHANNEL_FUNCTION -DPCBESP_WROOM_32 -DPPM_CENTER_ADJUSTABLE -DPPM_UNIT_PERCENT_PREC1 -DROTARY_ENCODERS=1 -DSPLASH -DTRACE_SIMPGMSPACE -DTRANSLATIONS=\"EN\" -DTRANSLATIONS_EN

build:
	echo Building $(COMPONENT_LIBRARY)
	cd $(COMPONENT_PATH)/build ; \
	mingw32-make firmware ;\
	cp $(COMPONENT_PATH)/build/radio/src/libfirmware.a ${COMPONENT_BUILD_DIR}/$(COMPONENT_LIBRARY)
	
clean: