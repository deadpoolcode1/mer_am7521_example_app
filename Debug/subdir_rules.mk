################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"/home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --include_path="/home/administrator/workspace_v12/rtos_template_app_am572x_c66" --include_path="/home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=am5728 --define=core1 --define=C66X --define=SOC_AM572x --define=evmAM572x --define=ti_targets_arm_elf_M4 -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

build-657159761:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-657159761-inproc

build-657159761-inproc: ../ipc.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/xdctools_3_55_02_22_core/xs" --xdcpath="/home/administrator/ti/bios_6_76_03_01/packages;/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/pdk_am57xx_1_0_19/packages;/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/ipc_3_50_04_08/packages;" xdc.tools.configuro -o configPkg -t ti.targets.elf.C66 -p ti.platforms.evmDRA7XX:dsp1 -r debug -b "/home/administrator/workspace_v12/rtos_template_app_am572x_c66/shared/config.bld" -c "/home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: /home/administrator/workspace_v12/rtos_template_app_am572x_c66/shared/config.bld
configPkg/linker.cmd: build-657159761 ../ipc.cfg /home/administrator/workspace_v12/rtos_template_app_am572x_c66/shared/config.bld
configPkg/compiler.opt: build-657159761 /home/administrator/workspace_v12/rtos_template_app_am572x_c66/shared/config.bld
configPkg: build-657159761 /home/administrator/workspace_v12/rtos_template_app_am572x_c66/shared/config.bld


