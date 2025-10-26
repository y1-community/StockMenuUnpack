.class public abstract Lorg/kxml2/wap/syncml/SyncML;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_TABLE_0:[Ljava/lang/String;

.field public static final TAG_TABLE_1:[Ljava/lang/String;

.field public static final TAG_TABLE_2_DM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0x38

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Add"

    aput-object v3, v1, v2

    const-string v4, "Alert"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "Archive"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string v4, "Atomic"

    const/4 v7, 0x3

    aput-object v4, v1, v7

    const-string v4, "Chal"

    const/4 v8, 0x4

    aput-object v4, v1, v8

    const-string v4, "Cmd"

    const/4 v9, 0x5

    aput-object v4, v1, v9

    const-string v4, "CmdID"

    const/4 v10, 0x6

    aput-object v4, v1, v10

    const-string v4, "CmdRef"

    const/4 v11, 0x7

    aput-object v4, v1, v11

    const/16 v4, 0x8

    const-string v12, "Copy"

    aput-object v12, v1, v4

    const-string v13, "Cred"

    const/16 v14, 0x9

    aput-object v13, v1, v14

    const-string v13, "Data"

    const/16 v15, 0xa

    aput-object v13, v1, v15

    const-string v13, "Delete"

    const/16 v16, 0xb

    aput-object v13, v1, v16

    const-string v13, "Exec"

    const/16 v17, 0xc

    aput-object v13, v1, v17

    const-string v13, "Final"

    const/16 v18, 0xd

    aput-object v13, v1, v18

    const-string v13, "Get"

    const/16 v19, 0xe

    aput-object v13, v1, v19

    const-string v13, "Item"

    const/16 v20, 0xf

    aput-object v13, v1, v20

    const-string v13, "Lang"

    const/16 v21, 0x10

    aput-object v13, v1, v21

    const-string v13, "LocName"

    const/16 v22, 0x11

    aput-object v13, v1, v22

    const-string v13, "LocURI"

    const/16 v0, 0x12

    aput-object v13, v1, v0

    const/16 v13, 0x13

    const-string v23, "Map"

    aput-object v23, v1, v13

    const/16 v13, 0x14

    const-string v23, "MapItem"

    aput-object v23, v1, v13

    const/16 v13, 0x15

    const-string v23, "Meta"

    aput-object v23, v1, v13

    const/16 v13, 0x16

    const-string v23, "MsgID"

    aput-object v23, v1, v13

    const/16 v13, 0x17

    const-string v23, "MsgRef"

    aput-object v23, v1, v13

    const/16 v13, 0x18

    const-string v23, "NoResp"

    aput-object v23, v1, v13

    const/16 v13, 0x19

    const-string v23, "NoResults"

    aput-object v23, v1, v13

    const/16 v13, 0x1a

    const-string v23, "Put"

    aput-object v23, v1, v13

    const/16 v13, 0x1b

    const-string v23, "Replace"

    aput-object v23, v1, v13

    const/16 v13, 0x1c

    const-string v23, "RespURI"

    aput-object v23, v1, v13

    const/16 v13, 0x1d

    const-string v23, "Results"

    aput-object v23, v1, v13

    const/16 v13, 0x1e

    const-string v23, "Search"

    aput-object v23, v1, v13

    const/16 v13, 0x1f

    const-string v23, "Sequence"

    aput-object v23, v1, v13

    const/16 v13, 0x20

    const-string v23, "SessionID"

    aput-object v23, v1, v13

    const/16 v13, 0x21

    const-string v23, "SftDel"

    aput-object v23, v1, v13

    const/16 v13, 0x22

    const-string v23, "Source"

    aput-object v23, v1, v13

    const/16 v13, 0x23

    const-string v23, "SourceRef"

    aput-object v23, v1, v13

    const/16 v13, 0x24

    const-string v23, "Status"

    aput-object v23, v1, v13

    const/16 v13, 0x25

    const-string v23, "Sync"

    aput-object v23, v1, v13

    const/16 v13, 0x26

    const-string v23, "SyncBody"

    aput-object v23, v1, v13

    const/16 v13, 0x27

    const-string v23, "SyncHdr"

    aput-object v23, v1, v13

    const/16 v13, 0x28

    const-string v23, "SyncML"

    aput-object v23, v1, v13

    const/16 v13, 0x29

    const-string v23, "Target"

    aput-object v23, v1, v13

    const/16 v13, 0x2a

    const-string v23, "TargetRef"

    aput-object v23, v1, v13

    const/16 v13, 0x2b

    const-string v23, "Reserved for future use"

    aput-object v23, v1, v13

    const/16 v13, 0x2c

    const-string v23, "VerDTD"

    aput-object v23, v1, v13

    const/16 v13, 0x2d

    const-string v23, "VerProto"

    aput-object v23, v1, v13

    const/16 v13, 0x2e

    const-string v23, "NumberOfChanged"

    aput-object v23, v1, v13

    const/16 v13, 0x2f

    const-string v23, "MoreData"

    aput-object v23, v1, v13

    const/16 v13, 0x30

    const-string v23, "Field"

    aput-object v23, v1, v13

    const/16 v13, 0x31

    const-string v23, "Filter"

    aput-object v23, v1, v13

    const/16 v13, 0x32

    const-string v23, "Record"

    aput-object v23, v1, v13

    const/16 v13, 0x33

    const-string v23, "FilterType"

    aput-object v23, v1, v13

    const/16 v13, 0x34

    const-string v23, "SourceParent"

    aput-object v23, v1, v13

    const/16 v13, 0x35

    const-string v23, "TargetParent"

    aput-object v23, v1, v13

    const/16 v13, 0x36

    const-string v23, "Move"

    aput-object v23, v1, v13

    const/16 v13, 0x37

    const-string v23, "Correlator"

    aput-object v23, v1, v13

    sput-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v13, "Anchor"

    aput-object v13, v1, v2

    const-string v13, "EMI"

    aput-object v13, v1, v5

    const-string v13, "Format"

    aput-object v13, v1, v6

    const-string v13, "FreeID"

    aput-object v13, v1, v7

    const-string v13, "FreeMem"

    aput-object v13, v1, v8

    const-string v13, "Last"

    aput-object v13, v1, v9

    const-string v13, "Mark"

    aput-object v13, v1, v10

    const-string v13, "MaxMsgSize"

    aput-object v13, v1, v11

    const-string v13, "Mem"

    aput-object v13, v1, v4

    const-string v13, "MetInf"

    aput-object v13, v1, v14

    const-string v13, "Next"

    aput-object v13, v1, v15

    const-string v13, "NextNonce"

    aput-object v13, v1, v16

    const-string v13, "SharedMem"

    aput-object v13, v1, v17

    const-string v13, "Size"

    aput-object v13, v1, v18

    const-string v13, "Type"

    aput-object v13, v1, v19

    const-string v13, "Version"

    aput-object v13, v1, v20

    const-string v13, "MaxObjSize"

    aput-object v13, v1, v21

    const-string v13, "FieldLevel"

    aput-object v13, v1, v22

    sput-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    const/16 v1, 0x38

    new-array v1, v1, [Ljava/lang/String;

    const-string v13, "AccessType"

    aput-object v13, v1, v2

    const-string v2, "ACL"

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    const-string v2, "b64"

    aput-object v2, v1, v7

    const-string v2, "bin"

    aput-object v2, v1, v8

    const-string v2, "bool"

    aput-object v2, v1, v9

    const-string v2, "chr"

    aput-object v2, v1, v10

    const-string v2, "CaseSense"

    aput-object v2, v1, v11

    const-string v2, "CIS"

    aput-object v2, v1, v4

    aput-object v12, v1, v14

    const-string v2, "CS"

    aput-object v2, v1, v15

    const-string v2, "date"

    aput-object v2, v1, v16

    const-string v2, "DDFName"

    aput-object v2, v1, v17

    const-string v2, "DefaultValue"

    aput-object v2, v1, v18

    const-string v2, "Delete"

    aput-object v2, v1, v19

    const-string v2, "Description"

    aput-object v2, v1, v20

    const-string v2, "DDFFormat"

    aput-object v2, v1, v21

    const-string v2, "DFProperties"

    aput-object v2, v1, v22

    const-string v2, "DFTitle"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "DFType"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "Dynamic"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "Exec"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "float"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "Format"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "Get"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "int"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "Man"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "MgmtTree"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "MIME"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "Mod"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "Name"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "Node"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "node"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "NodeName"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "null"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "Occurence"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "One"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "OneOrMore"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "OneOrN"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "Path"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string v2, "Permanent"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    const-string v2, "Replace"

    aput-object v2, v1, v0

    const/16 v0, 0x2a

    const-string v2, "RTProperties"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string v2, "Scope"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "Size"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "time"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-string v2, "Title"

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string v2, "TStamp"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string v2, "Type"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    const-string v2, "Value"

    aput-object v2, v1, v0

    const/16 v0, 0x32

    const-string v2, "VerDTD"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string v2, "VerNo"

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-string v2, "xml"

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-string v2, "ZeroOrMore"

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-string v2, "ZeroOrN"

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-string v2, "ZeroOrOne"

    aput-object v2, v1, v0

    sput-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDMParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDMSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createSerializer()Lorg/kxml2/wap/WbxmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    new-instance v0, Lorg/kxml2/wap/WbxmlSerializer;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlSerializer;-><init>()V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method
