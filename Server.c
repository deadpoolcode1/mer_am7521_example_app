#include <xdc/std.h>
#include <xdc/runtime/Assert.h>
#include <xdc/runtime/Diags.h>
#include <xdc/runtime/Log.h>
#include <xdc/runtime/Registry.h>
#include <stdio.h>
#include <ti/ipc/MessageQ.h>
#include <ti/ipc/MultiProc.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include "shared/AppCommon.h"
#include "Server.h"

#define Registry_CURDESC Test__Desc
#define MODULE_NAME "Server"

typedef struct {
    UInt16 hostProcId;
    MessageQ_Handle slaveQue;  // Queue for receiving messages
    MessageQ_Handle masterQue; // Queue for sending messages
} Server_Module;

Registry_Desc Registry_CURDESC;
static Server_Module Module;

Void Server_init(Void) {
    Registry_Result result;
    result = Registry_addModule(&Registry_CURDESC, MODULE_NAME);
    Assert_isTrue(result == Registry_SUCCESS, (Assert_Id)NULL);
    Module.hostProcId = MultiProc_getId("HOST");
}

Int Server_create() {
    Int status = 0;
    MessageQ_Params msgqParams;
    char slaveMsgqName[32];
    char masterMsgqName[32];

    Diags_setMask(MODULE_NAME"+EXF");

    // Initialize MessageQ parameters
    MessageQ_Params_init(&msgqParams);

    // Create slave queue for incoming messages
    sprintf(slaveMsgqName, App_SlaveMsgQueName, MultiProc_getName(MultiProc_self()));
    Module.slaveQue = MessageQ_create(slaveMsgqName, &msgqParams);
    if (Module.slaveQue == NULL) {
        Log_error0("Failed to create slave message queue");
        status = -1;
    }

    // Create master queue for outgoing messages
    sprintf(masterMsgqName, App_MasterMsgQueName, MultiProc_getName(MultiProc_self()));
    Module.masterQue = MessageQ_create(masterMsgqName, &msgqParams);
    if (Module.masterQue == NULL) {
        Log_error0("Failed to create master message queue");
        status = -1;
    }

    Log_print0(Diags_INFO, "Server_create: server queues are ready");
    return status;
}

Int Server_exec() {
    Int status;
    Bool running = TRUE;
    App_Msg *msg;
    MessageQ_QueueId queId;

    while (running) {
        // Receive message
        status = MessageQ_get(Module.slaveQue, (MessageQ_Msg *)&msg, MessageQ_FOREVER);
        if (status < 0) {
            Log_error1("Failed to receive message: %d", status);
            continue;
        }

        // Process command
        if (msg->cmd == App_CMD_SHUTDOWN) {
            running = FALSE;
        } else {
            Log_print1(Diags_INFO, "Server_exec: processed cmd=0x%x", msg->cmd);
            // Send response or forward message
            queId = MessageQ_getReplyQueue(msg);
            status = MessageQ_put(queId, (MessageQ_Msg)msg);
            if (status < 0) {
                Log_error1("Failed to send message: %d", status);
            }
        }
    }
    return status;
}

Int Server_delete() {
    Int status = MessageQ_delete(&Module.slaveQue);
    if (status < 0) {
        Log_error1("Server_delete: Failed to delete slave queue: %d", status);
    }
    status = MessageQ_delete(&Module.masterQue);
    if (status < 0) {
        Log_error1("Server_delete: Failed to delete master queue: %d", status);
    }
    Diags_setMask(MODULE_NAME"-EXF");
    return status;
}

Void Server_exit(Void) {
    // Cleanup logic if necessary
}
