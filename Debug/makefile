################################################################################
# Automatically-generated file. Do not edit!
################################################################################

CG_TOOL_ROOT := /home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12

GEN_OPTS__FLAG := --cmd_file="configPkg/compiler.opt" 
GEN_CMDS__FLAG := -l"configPkg/linker.cmd" 

ORDERED_OBJS += \
"./GPIO_evmAM572x_board.obj" \
"./Server.obj" \
"./app.obj" \
"./ipcMain.obj" \
"./main.obj" \
$(GEN_CMDS__FLAG) \
-lti.board.ae66 \
-llibc.a \

-include ../makefile.init

RM := rm -rf
RMDIR := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
rtos_template_app_am572x_c66.out 

EXE_OUTPUTS__QUOTED += \
"rtos_template_app_am572x_c66.out" 


# All Target
all: $(OBJS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "rtos_template_app_am572x_c66.out"

# Tool invocations
rtos_template_app_am572x_c66.out: $(OBJS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C6000 Linker'
	"/home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6600 --define=am5728 --define=core1 --define=C66X --define=SOC_AM572x --define=evmAM572x --define=ti_targets_arm_elf_M4 -g --diag_warning=225 --diag_wrap=off --display_error_number -z -m"rtos_template_app_am572x_c66.map" --heap_size=0x800 --stack_size=0x800 -i"/home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/lib" -i"/home/administrator/processor_sdk_rtos_am57xx_08_01_00_09/pdk_am57xx_1_0_19/packages/ti/board/lib/evmAM572x/c66/release/" -i"/home/administrator/ti/ccs1260/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --reread_libs --define=CORE1=1 --diag_wrap=off --display_error_number --warn_sections --xml_link_info="rtos_template_app_am572x_c66_linkInfo.xml" --rom_model -o "rtos_template_app_am572x_c66.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "GPIO_evmAM572x_board.obj" "Server.obj" "app.obj" "ipcMain.obj" "main.obj" 
	-$(RM) "GPIO_evmAM572x_board.d" "Server.d" "app.d" "ipcMain.d" "main.d" 
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

