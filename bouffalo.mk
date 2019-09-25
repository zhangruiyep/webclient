# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += inc
							 
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=  

## This component's src 
#COMPONENT_SRCS :=
#COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := src

ifeq ($(CONFIG_WEBCLIENT_TEST_CMD),1)
COMPONENT_SRCDIRS += samples
endif

##
CPPFLAGS += -DWEBCLIENT_USING_MBED_TLS