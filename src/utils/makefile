vpath % /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages/ti/sdo/
vpath %.c /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core/packages/

XOPTS = -I"/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core/packages/" -Dxdc_target_types__=/home/administrator/ti/bios_6_76_03_01/packages/ti/targets/elf/std.h -Dxdc_target_name__=C66

CCOPTS = -mv6600 --abi=eabi -q -mi10 -mo -pdr -pden -pds=238 -pds=880 -pds1110  --program_level_compile -g  -Dti_sysbios_family_c64p_Exception_enableExternalMPC__D=FALSE -Dti_sysbios_family_c64p_Exception_enablePrint__D=TRUE -Dti_sysbios_knl_Clock_stopCheckNext__D=FALSE -Dti_sysbios_hal_Core_numCores__D=1 -Dti_sysbios_knl_Task_minimizeLatency__D=FALSE

XDC_ROOT  = /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core/packages/

IPC_ROOT = /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages/ti/sdo/

BUILD_DEFS = 

SYSBIOS_INC  = -I"/home/administrator/ti/bios_6_76_03_01/packages"

IPC_INC    = -I"/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages"

UTILS_INC    = -I"/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages"

CC = /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x -c $(CCOPTS) -I /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include
ASM = /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x -c $(CCOPTS) -I /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include
AR = /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/ar6x rq

DEL = rm -f
CP = cp -f
MKDIR = mkdir -p

define RM
	$(if $(wildcard $1),$(DEL) $1,:)
endef

define ASSEMBLE
	@echo asme66 $< ...
	@$(ASM) $(BUILD_DEFS) $(XOPTS) $(UTILS_INC) $<
endef


all: utils.ae66


UTILS.obj: utils/UTILS.c utils/NameServer.c utils/NameServerRemoteNull.c utils/MultiProc.c utils/List.c makefile
	@-$(call RM, $@)
	@echo cle66 $< ...
	@$(CC) $(BUILD_DEFS) $(XOPTS) $(SYSBIOS_INC) \
	$(IPC_INC) $(UTILS_INC) \
	$(IPC_ROOT)utils/UTILS.c \
	$(IPC_ROOT)utils/NameServer.c \
	$(IPC_ROOT)utils/NameServerRemoteNull.c \
	$(IPC_ROOT)utils/MultiProc.c \
	$(IPC_ROOT)utils/List.c \

utils.ae66: UTILS.obj 
	@-$(call RM, $@)
	@echo are66 $^ ...
	@$(AR) $@ $^


clean:
	@-$(call RM, utils.ae66)
	@-$(call RM, UTILS.obj)
