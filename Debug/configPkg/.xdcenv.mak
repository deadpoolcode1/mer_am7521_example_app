#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /home/administrator/ti/bios_6_76_03_01/packages;/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/pdk_am57xx_1_0_19/packages;/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages
override XDCROOT = /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /home/administrator/ti/bios_6_76_03_01/packages;/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/pdk_am57xx_1_0_19/packages;/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages;/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core/packages;..
HOSTOS = Linux
endif
