#ifndef AppCommon__include
#define AppCommon__include
#if defined (__cplusplus)
extern "C" {
#endif

#define App_CMD_MASK            0xFF000000
#define App_CMD_NOP             0x00000000
#define App_CMD_SHUTDOWN        0x02000000

typedef struct {
    MessageQ_MsgHeader  reserved;
    UInt32              cmd;
} App_Msg;

#define App_MsgHeapId           0
#define App_HostMsgQueName      "HOST:MsgQ:01"
#define App_SlaveMsgQueName     "%s:MsgQ:01"
#define App_MasterMsgQueName    "%s:MsgQ:02"  // New definition for master message queue

#if defined (__cplusplus)
}
#endif
#endif
