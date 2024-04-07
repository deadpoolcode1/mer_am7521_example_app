# invoke SourceDir generated makefile for ipc.pe66
ipc.pe66: .libraries,ipc.pe66
.libraries,ipc.pe66: package/cfg/ipc_pe66.xdl
	$(MAKE) -f /home/administrator/workspace_v12/rtos_template_app_am572x_c66/src/makefile.libs

clean::
	$(MAKE) -f /home/administrator/workspace_v12/rtos_template_app_am572x_c66/src/makefile.libs clean

