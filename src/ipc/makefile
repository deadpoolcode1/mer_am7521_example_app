vpath % /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages/
vpath %.c /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core/packages/

XOPTS = -I"/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core/packages/" -Dxdc_target_types__=/home/administrator/ti/bios_6_76_03_01/packages/ti/targets/elf/std.h -Dxdc_target_name__=C66

CCOPTS = -mv6600 --abi=eabi -q --opt_for_speed=2 -mi10 -mo -pdr -pden -pds=238 -pds=880 -pds1110 --mem_model:const=data --mem_model:data=far  --program_level_compile -g 

IPC_ROOT = /home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages/

BUILD_DEFS =  -Dti_sdo_ipc_MessageQ_traceFlag__D=FALSE -DVAYU -DDSP -DRPMSG_NS_2_0 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_videoProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_hostProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_vpssProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_dspProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_ducatiCtrlBaseAddr__D=1073745920 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_mailboxBaseAddr__D=1208778752

INCS = -I/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages -I/home/administrator/ti/bios_6_76_03_01/packages -I/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/pdk_am57xx_1_0_19/packages

CC = /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x -c $(CCOPTS) --output_file=$@ -I /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include
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
	@$(ASM) $(BUILD_DEFS) $(XOPTS) $(INCS) $<
endef


all: ipc.ae66


Ipc.obj: ti/sdo/utils/NameServer.c ti/sdo/utils/NameServerRemoteNull.c ti/sdo/utils/MultiProc.c ti/sdo/utils/List.c ti/sdo/ipc/GateMP.c ti/sdo/ipc/MessageQ.c ti/sdo/ipc/SharedRegion.c ti/sdo/ipc/Ipc.c ti/sdo/ipc/Notify.c ti/ipc/transports/TransportRpmsg.c ti/ipc/transports/TransportRpmsgSetup.c ti/ipc/namesrv/NameServerRemoteRpmsg.c ti/ipc/remoteproc/Resource.c ti/sdo/ipc/notifyDrivers/NotifyDriverShm.c ti/sdo/ipc/family/vayu/NotifySetup.c ti/sdo/ipc/family/vayu/InterruptDsp.c ti/sdo/ipc/gates/GateHWSpinlock.c ti/sdo/ipc/gates/GatePeterson.c ti/sdo/ipc/gates/GateMPSupportNull.c ti/sdo/ipc/heaps/HeapMemMP.c ti/ipc/ipcmgr/IpcMgr.c ti/ipc/family/vayu/VirtQueue.c ti/ipc/rpmsg/NameMap.c ti/ipc/rpmsg/RPMessage.c makefile
	@-$(call RM, $@)
	@echo cle66 $< ...
	@$(CC) $(BUILD_DEFS) $(XOPTS) $(INCS) \
	$(IPC_ROOT)ti/sdo/utils/NameServer.c \
	$(IPC_ROOT)ti/sdo/utils/NameServerRemoteNull.c \
	$(IPC_ROOT)ti/sdo/utils/MultiProc.c \
	$(IPC_ROOT)ti/sdo/utils/List.c \
	$(IPC_ROOT)ti/sdo/ipc/GateMP.c \
	$(IPC_ROOT)ti/sdo/ipc/MessageQ.c \
	$(IPC_ROOT)ti/sdo/ipc/SharedRegion.c \
	$(IPC_ROOT)ti/sdo/ipc/Ipc.c \
	$(IPC_ROOT)ti/sdo/ipc/Notify.c \
	$(IPC_ROOT)ti/ipc/transports/TransportRpmsg.c \
	$(IPC_ROOT)ti/ipc/transports/TransportRpmsgSetup.c \
	$(IPC_ROOT)ti/ipc/namesrv/NameServerRemoteRpmsg.c \
	$(IPC_ROOT)ti/ipc/remoteproc/Resource.c \
	$(IPC_ROOT)ti/sdo/ipc/notifyDrivers/NotifyDriverShm.c \
	$(IPC_ROOT)ti/sdo/ipc/family/vayu/NotifySetup.c \
	$(IPC_ROOT)ti/sdo/ipc/family/vayu/InterruptDsp.c \
	$(IPC_ROOT)ti/sdo/ipc/gates/GateHWSpinlock.c \
	$(IPC_ROOT)ti/sdo/ipc/gates/GatePeterson.c \
	$(IPC_ROOT)ti/sdo/ipc/gates/GateMPSupportNull.c \
	$(IPC_ROOT)ti/sdo/ipc/heaps/HeapMemMP.c \
	$(IPC_ROOT)ti/ipc/ipcmgr/IpcMgr.c \
	$(IPC_ROOT)ti/ipc/family/vayu/VirtQueue.c \
	$(IPC_ROOT)ti/ipc/rpmsg/NameMap.c \
	$(IPC_ROOT)ti/ipc/rpmsg/RPMessage.c

ipc.ae66: Ipc.obj 
	@-$(call RM, $@)
	@echo are66 $^ ...
	@$(AR) $@ $^


clean:
	@-$(call RM, ipc.ae66)
	@-$(call RM, Ipc.obj)
