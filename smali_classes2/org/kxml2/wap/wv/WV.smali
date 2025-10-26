.class public abstract Lorg/kxml2/wap/wv/WV;
.super Ljava/lang/Object;


# static fields
.field public static final attrStartTable:[Ljava/lang/String;

.field public static final attrValueTable:[Ljava/lang/String;

.field public static final tagTablePage0:[Ljava/lang/String;

.field public static final tagTablePage1:[Ljava/lang/String;

.field public static final tagTablePage2:[Ljava/lang/String;

.field public static final tagTablePage3:[Ljava/lang/String;

.field public static final tagTablePage4:[Ljava/lang/String;

.field public static final tagTablePage5:[Ljava/lang/String;

.field public static final tagTablePage6:[Ljava/lang/String;

.field public static final tagTablePage7:[Ljava/lang/String;

.field public static final tagTablePage8:[Ljava/lang/String;

.field public static final tagTablePage9:[Ljava/lang/String;

.field public static final tagTablePageA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Acceptance"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AddList"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "AddNickList"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "SName"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "WV-CSP-Message"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "ClientID"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "Code"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "ContactList"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "ContentData"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "ContentEncoding"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "ContentSize"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "ContentType"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "DateTime"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "Description"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "DetailedResult"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "EntityList"

    const/16 v15, 0xf

    aput-object v1, v0, v15

    const-string v1, "Group"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-string v1, "GroupID"

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-string v1, "GroupList"

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-string v1, "InUse"

    const/16 v21, 0x13

    aput-object v1, v0, v21

    const-string v1, "Logo"

    const/16 v22, 0x14

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v23, "MessageCount"

    aput-object v23, v0, v1

    const/16 v1, 0x16

    const-string v23, "MessageID"

    aput-object v23, v0, v1

    const/16 v1, 0x17

    const-string v23, "MessageURI"

    aput-object v23, v0, v1

    const/16 v1, 0x18

    const-string v23, "MSISDN"

    aput-object v23, v0, v1

    const/16 v1, 0x19

    const-string v23, "Name"

    aput-object v23, v0, v1

    const/16 v1, 0x1a

    const-string v23, "NickList"

    aput-object v23, v0, v1

    const/16 v1, 0x1b

    const-string v23, "NickName"

    aput-object v23, v0, v1

    const/16 v1, 0x1c

    const-string v23, "Poll"

    aput-object v23, v0, v1

    const/16 v1, 0x1d

    const-string v23, "Presence"

    aput-object v23, v0, v1

    const/16 v1, 0x1e

    const-string v23, "PresenceSubList"

    aput-object v23, v0, v1

    const/16 v1, 0x1f

    const-string v23, "PresenceValue"

    aput-object v23, v0, v1

    const/16 v1, 0x20

    const-string v23, "Property"

    aput-object v23, v0, v1

    const/16 v1, 0x21

    const-string v23, "Qualifier"

    aput-object v23, v0, v1

    const/16 v1, 0x22

    const-string v23, "Recipient"

    aput-object v23, v0, v1

    const/16 v1, 0x23

    const-string v23, "RemoveList"

    aput-object v23, v0, v1

    const/16 v1, 0x24

    const-string v23, "RemoveNickList"

    aput-object v23, v0, v1

    const/16 v1, 0x25

    const-string v23, "Result"

    aput-object v23, v0, v1

    const/16 v1, 0x26

    const-string v23, "ScreenName"

    aput-object v23, v0, v1

    const/16 v1, 0x27

    const-string v23, "Sender"

    aput-object v23, v0, v1

    const/16 v1, 0x28

    const-string v23, "Session"

    aput-object v23, v0, v1

    const/16 v1, 0x29

    const-string v23, "SessionDescriptor"

    aput-object v23, v0, v1

    const/16 v1, 0x2a

    const-string v23, "SessionID"

    aput-object v23, v0, v1

    const/16 v1, 0x2b

    const-string v23, "SessionType"

    aput-object v23, v0, v1

    const/16 v1, 0x2c

    const-string v23, "Status"

    aput-object v23, v0, v1

    const/16 v1, 0x2d

    const-string v23, "Transaction"

    aput-object v23, v0, v1

    const/16 v1, 0x2e

    const-string v23, "TransactionContent"

    aput-object v23, v0, v1

    const/16 v1, 0x2f

    const-string v23, "TransactionDescriptor"

    aput-object v23, v0, v1

    const/16 v1, 0x30

    const-string v23, "TransactionID"

    aput-object v23, v0, v1

    const/16 v1, 0x31

    const-string v23, "TransactionMode"

    aput-object v23, v0, v1

    const/16 v1, 0x32

    const-string v23, "URL"

    aput-object v23, v0, v1

    const/16 v1, 0x33

    const-string v23, "URLList"

    aput-object v23, v0, v1

    const/16 v1, 0x34

    const-string v23, "User"

    aput-object v23, v0, v1

    const/16 v1, 0x35

    const-string v23, "UserID"

    aput-object v23, v0, v1

    const/16 v1, 0x36

    const-string v23, "UserList"

    aput-object v23, v0, v1

    const/16 v1, 0x37

    const-string v23, "Validity"

    aput-object v23, v0, v1

    const/16 v1, 0x38

    const-string v23, "Value"

    aput-object v23, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage0:[Ljava/lang/String;

    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AllFunctions"

    aput-object v1, v0, v2

    const-string v1, "AllFunctionsRequest"

    aput-object v1, v0, v3

    const-string v1, "CancelInvite-Request"

    aput-object v1, v0, v4

    const-string v1, "CancelInviteUser-Request"

    aput-object v1, v0, v5

    const-string v1, "Capability"

    aput-object v1, v0, v6

    const-string v1, "CapabilityList"

    aput-object v1, v0, v7

    const-string v1, "CapabilityRequest"

    aput-object v1, v0, v8

    const-string v1, "ClientCapability-Request"

    aput-object v1, v0, v9

    const-string v1, "ClientCapability-Response"

    aput-object v1, v0, v10

    const-string v1, "DigestBytes"

    aput-object v1, v0, v11

    const-string v1, "DigestSchema"

    aput-object v1, v0, v12

    const-string v1, "Disconnect"

    aput-object v1, v0, v13

    const-string v1, "Functions"

    aput-object v1, v0, v14

    const-string v1, "GetSPInfo-Request"

    const/16 v17, 0xd

    aput-object v1, v0, v17

    const-string v1, "GetSPInfo-Response"

    aput-object v1, v0, v16

    const-string v1, "InviteID"

    aput-object v1, v0, v15

    const-string v1, "InviteNote"

    aput-object v1, v0, v18

    const-string v1, "Invite-Request"

    aput-object v1, v0, v19

    const-string v1, "Invite-Response"

    aput-object v1, v0, v20

    const-string v1, "InviteType"

    aput-object v1, v0, v21

    const-string v1, "InviteUser-Request"

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v23, "InviteUser-Response"

    aput-object v23, v0, v1

    const/16 v1, 0x16

    const-string v23, "KeepAlive-Request"

    aput-object v23, v0, v1

    const/16 v1, 0x17

    const-string v23, "KeepAliveTime"

    aput-object v23, v0, v1

    const/16 v1, 0x18

    const-string v23, "Login-Request"

    aput-object v23, v0, v1

    const/16 v1, 0x19

    const-string v23, "Login-Response"

    aput-object v23, v0, v1

    const/16 v1, 0x1a

    const-string v23, "Logout-Request"

    aput-object v23, v0, v1

    const/16 v1, 0x1b

    const-string v23, "Nonce"

    aput-object v23, v0, v1

    const/16 v1, 0x1c

    const-string v23, "Password"

    aput-object v23, v0, v1

    const/16 v1, 0x1d

    const-string v23, "Polling-Request"

    aput-object v23, v0, v1

    const/16 v1, 0x1e

    const-string v23, "ResponseNote"

    aput-object v23, v0, v1

    const/16 v1, 0x1f

    const-string v23, "SearchElement"

    aput-object v23, v0, v1

    const/16 v1, 0x20

    const-string v23, "SearchFindings"

    aput-object v23, v0, v1

    const/16 v1, 0x21

    const-string v23, "SearchID"

    aput-object v23, v0, v1

    const/16 v1, 0x22

    const-string v23, "SearchIndex"

    aput-object v23, v0, v1

    const/16 v1, 0x23

    const-string v23, "SearchLimit"

    aput-object v23, v0, v1

    const/16 v1, 0x24

    const-string v23, "KeepAlive-Response"

    aput-object v23, v0, v1

    const/16 v1, 0x25

    const-string v23, "SearchPairList"

    aput-object v23, v0, v1

    const/16 v1, 0x26

    const-string v23, "Search-Request"

    aput-object v23, v0, v1

    const/16 v1, 0x27

    const-string v23, "Search-Response"

    aput-object v23, v0, v1

    const/16 v1, 0x28

    const-string v23, "SearchResult"

    aput-object v23, v0, v1

    const/16 v1, 0x29

    const-string v23, "Service-Request"

    aput-object v23, v0, v1

    const/16 v1, 0x2a

    const-string v23, "Service-Response"

    aput-object v23, v0, v1

    const/16 v1, 0x2b

    const-string v23, "SessionCookie"

    aput-object v23, v0, v1

    const/16 v1, 0x2c

    const-string v23, "StopSearch-Request"

    aput-object v23, v0, v1

    const/16 v1, 0x2d

    const-string v23, "TimeToLive"

    aput-object v23, v0, v1

    const/16 v1, 0x2e

    const-string v23, "SearchString"

    aput-object v23, v0, v1

    const/16 v1, 0x2f

    const-string v23, "CompletionFlag"

    aput-object v23, v0, v1

    const/16 v1, 0x30

    const/16 v23, 0x0

    aput-object v23, v0, v1

    const/16 v1, 0x31

    const-string v24, "ReceiveList"

    aput-object v24, v0, v1

    const/16 v1, 0x32

    const-string v24, "VerifyID-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x33

    const-string v24, "Extended-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x34

    const-string v24, "Extended-Response"

    aput-object v24, v0, v1

    const/16 v1, 0x35

    const-string v24, "AgreedCapabilityList"

    aput-object v24, v0, v1

    const/16 v1, 0x36

    const-string v24, "Extended-Data"

    aput-object v24, v0, v1

    const/16 v1, 0x37

    const-string v24, "OtherServer"

    aput-object v24, v0, v1

    const/16 v1, 0x38

    const-string v24, "PresenceAttributeNSName"

    aput-object v24, v0, v1

    const/16 v1, 0x39

    const-string v24, "SessionNSName"

    aput-object v24, v0, v1

    const/16 v1, 0x3a

    const-string v24, "TransactionNSName"

    aput-object v24, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage1:[Ljava/lang/String;

    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ADDGM"

    aput-object v1, v0, v2

    const-string v1, "AttListFunc"

    aput-object v1, v0, v3

    const-string v1, "BLENT"

    aput-object v1, v0, v4

    const-string v1, "CAAUT"

    aput-object v1, v0, v5

    const-string v1, "CAINV"

    aput-object v1, v0, v6

    const-string v1, "CALI"

    aput-object v1, v0, v7

    const-string v1, "CCLI"

    aput-object v1, v0, v8

    const-string v1, "ContListFunc"

    aput-object v1, v0, v9

    const-string v1, "CREAG"

    aput-object v1, v0, v10

    const-string v1, "DALI"

    aput-object v1, v0, v11

    const-string v1, "DCLI"

    aput-object v1, v0, v12

    const-string v1, "DELGR"

    aput-object v1, v0, v13

    const-string v1, "FundamentalFeat"

    aput-object v1, v0, v14

    const-string v1, "FWMSG"

    const/16 v17, 0xd

    aput-object v1, v0, v17

    const-string v1, "GALS"

    aput-object v1, v0, v16

    const-string v1, "GCLI"

    aput-object v1, v0, v15

    const-string v1, "GETGM"

    aput-object v1, v0, v18

    const-string v1, "GETGP"

    aput-object v1, v0, v19

    const-string v1, "GETLM"

    aput-object v1, v0, v20

    const-string v1, "GETM"

    aput-object v1, v0, v21

    const-string v1, "GETPR"

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v24, "GETSPI"

    aput-object v24, v0, v1

    const/16 v1, 0x16

    const-string v24, "GETWL"

    aput-object v24, v0, v1

    const/16 v1, 0x17

    const-string v24, "GLBLU"

    aput-object v24, v0, v1

    const/16 v1, 0x18

    const-string v24, "GRCHN"

    aput-object v24, v0, v1

    const/16 v1, 0x19

    const-string v24, "GroupAuthFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x1a

    const-string v24, "GroupFeat"

    aput-object v24, v0, v1

    const/16 v1, 0x1b

    const-string v24, "GroupMgmtFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x1c

    const-string v24, "GroupUseFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x1d

    const-string v24, "IMAuthFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x1e

    const-string v24, "IMFeat"

    aput-object v24, v0, v1

    const/16 v1, 0x1f

    const-string v24, "IMReceiveFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x20

    const-string v24, "IMSendFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x21

    const-string v24, "INVIT"

    aput-object v24, v0, v1

    const/16 v1, 0x22

    const-string v24, "InviteFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x23

    const-string v24, "MBRAC"

    aput-object v24, v0, v1

    const/16 v1, 0x24

    const-string v24, "MCLS"

    aput-object v24, v0, v1

    const/16 v1, 0x25

    const-string v24, "MDELIV"

    aput-object v24, v0, v1

    const/16 v1, 0x26

    const-string v24, "NEWM"

    aput-object v24, v0, v1

    const/16 v1, 0x27

    const-string v24, "NOTIF"

    aput-object v24, v0, v1

    const/16 v1, 0x28

    const-string v24, "PresenceAuthFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x29

    const-string v24, "PresenceDeliverFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x2a

    const-string v24, "PresenceFeat"

    aput-object v24, v0, v1

    const/16 v1, 0x2b

    const-string v24, "REACT"

    aput-object v24, v0, v1

    const/16 v1, 0x2c

    const-string v24, "REJCM"

    aput-object v24, v0, v1

    const/16 v1, 0x2d

    const-string v24, "REJEC"

    aput-object v24, v0, v1

    const/16 v1, 0x2e

    const-string v24, "RMVGM"

    aput-object v24, v0, v1

    const/16 v1, 0x2f

    const-string v24, "SearchFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x30

    const-string v24, "ServiceFunc"

    aput-object v24, v0, v1

    const/16 v1, 0x31

    const-string v24, "SETD"

    aput-object v24, v0, v1

    const/16 v1, 0x32

    const-string v24, "SETGP"

    aput-object v24, v0, v1

    const/16 v1, 0x33

    const-string v24, "SRCH"

    aput-object v24, v0, v1

    const/16 v1, 0x34

    const-string v24, "STSRC"

    aput-object v24, v0, v1

    const/16 v1, 0x35

    const-string v24, "SUBGCN"

    aput-object v24, v0, v1

    const/16 v1, 0x36

    const-string v24, "UPDPR"

    aput-object v24, v0, v1

    const/16 v1, 0x37

    const-string v24, "WVCSPFeat"

    aput-object v24, v0, v1

    const/16 v1, 0x38

    const-string v24, "MF"

    aput-object v24, v0, v1

    const/16 v1, 0x39

    const-string v24, "MG"

    aput-object v24, v0, v1

    const/16 v1, 0x3a

    const-string v24, "MM"

    aput-object v24, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage2:[Ljava/lang/String;

    new-array v0, v15, [Ljava/lang/String;

    const-string v1, "AcceptedCharset"

    aput-object v1, v0, v2

    const-string v1, "AcceptedContentLength"

    aput-object v1, v0, v3

    const-string v1, "AcceptedContentType"

    aput-object v1, v0, v4

    const-string v1, "AcceptedTransferEncoding"

    aput-object v1, v0, v5

    const-string v1, "AnyContent"

    aput-object v1, v0, v6

    const-string v1, "DefaultLanguage"

    aput-object v1, v0, v7

    const-string v1, "InitialDeliveryMethod"

    aput-object v1, v0, v8

    const-string v1, "MultiTrans"

    aput-object v1, v0, v9

    const-string v1, "ParserSize"

    aput-object v1, v0, v10

    const-string v1, "ServerPollMin"

    aput-object v1, v0, v11

    const-string v1, "SupportedBearer"

    aput-object v1, v0, v12

    const-string v1, "SupportedCIRMethod"

    aput-object v1, v0, v13

    const-string v1, "TCPAddress"

    aput-object v1, v0, v14

    const-string v1, "TCPPort"

    const/16 v17, 0xd

    aput-object v1, v0, v17

    const-string v1, "UDPPort"

    aput-object v1, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage3:[Ljava/lang/String;

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CancelAuth-Request"

    aput-object v1, v0, v2

    const-string v1, "ContactListProperties"

    aput-object v1, v0, v3

    const-string v1, "CreateAttributeList-Request"

    aput-object v1, v0, v4

    const-string v1, "CreateList-Request"

    aput-object v1, v0, v5

    const-string v1, "DefaultAttributeList"

    aput-object v1, v0, v6

    const-string v1, "DefaultContactList"

    aput-object v1, v0, v7

    const-string v1, "DefaultList"

    aput-object v1, v0, v8

    const-string v1, "DeleteAttributeList-Request"

    aput-object v1, v0, v9

    const-string v1, "DeleteList-Request"

    aput-object v1, v0, v10

    const-string v1, "GetAttributeList-Request"

    aput-object v1, v0, v11

    const-string v1, "GetAttributeList-Response"

    aput-object v1, v0, v12

    const-string v1, "GetList-Request"

    aput-object v1, v0, v13

    const-string v1, "GetList-Response"

    aput-object v1, v0, v14

    const-string v1, "GetPresence-Request"

    const/16 v17, 0xd

    aput-object v1, v0, v17

    const-string v1, "GetPresence-Response"

    aput-object v1, v0, v16

    const-string v1, "GetWatcherList-Request"

    aput-object v1, v0, v15

    const-string v1, "GetWatcherList-Response"

    aput-object v1, v0, v18

    const-string v1, "ListManage-Request"

    aput-object v1, v0, v19

    const-string v1, "ListManage-Response"

    aput-object v1, v0, v20

    const-string v1, "UnsubscribePresence-Request"

    aput-object v1, v0, v21

    const-string v1, "PresenceAuth-Request"

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v24, "PresenceAuth-User"

    aput-object v24, v0, v1

    const/16 v1, 0x16

    const-string v24, "PresenceNotification-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x17

    const-string v24, "UpdatePresence-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x18

    const-string v24, "SubscribePresence-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x19

    const-string v24, "Auto-Subscribe"

    aput-object v24, v0, v1

    const/16 v1, 0x1a

    const-string v24, "GetReactiveAuthStatus-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x1b

    const-string v24, "GetReactiveAuthStatus-Response"

    aput-object v24, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage4:[Ljava/lang/String;

    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Accuracy"

    aput-object v1, v0, v2

    const-string v1, "Address"

    aput-object v1, v0, v3

    const-string v1, "AddrPref"

    aput-object v1, v0, v4

    const-string v1, "Alias"

    aput-object v1, v0, v5

    const-string v1, "Altitude"

    aput-object v1, v0, v6

    const-string v1, "Building"

    aput-object v1, v0, v7

    const-string v1, "Caddr"

    aput-object v1, v0, v8

    const-string v1, "City"

    aput-object v1, v0, v9

    const-string v1, "ClientInfo"

    aput-object v1, v0, v10

    const-string v1, "ClientProducer"

    aput-object v1, v0, v11

    const-string v1, "ClientType"

    aput-object v1, v0, v12

    const-string v1, "ClientVersion"

    aput-object v1, v0, v13

    const-string v1, "CommC"

    aput-object v1, v0, v14

    const-string v1, "CommCap"

    const/16 v17, 0xd

    aput-object v1, v0, v17

    const-string v1, "ContactInfo"

    aput-object v1, v0, v16

    const-string v1, "ContainedvCard"

    aput-object v1, v0, v15

    const-string v1, "Country"

    aput-object v1, v0, v18

    const-string v1, "Crossing1"

    aput-object v1, v0, v19

    const-string v1, "Crossing2"

    aput-object v1, v0, v20

    const-string v1, "DevManufacturer"

    aput-object v1, v0, v21

    const-string v1, "DirectContent"

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v24, "FreeTextLocation"

    aput-object v24, v0, v1

    const/16 v1, 0x16

    const-string v24, "GeoLocation"

    aput-object v24, v0, v1

    const/16 v1, 0x17

    const-string v24, "Language"

    aput-object v24, v0, v1

    const/16 v1, 0x18

    const-string v24, "Latitude"

    aput-object v24, v0, v1

    const/16 v1, 0x19

    const-string v24, "Longitude"

    aput-object v24, v0, v1

    const/16 v1, 0x1a

    const-string v24, "Model"

    aput-object v24, v0, v1

    const/16 v1, 0x1b

    const-string v24, "NamedArea"

    aput-object v24, v0, v1

    const/16 v1, 0x1c

    const-string v24, "OnlineStatus"

    aput-object v24, v0, v1

    const/16 v1, 0x1d

    const-string v24, "PLMN"

    aput-object v24, v0, v1

    const/16 v1, 0x1e

    const-string v24, "PrefC"

    aput-object v24, v0, v1

    const/16 v1, 0x1f

    const-string v24, "PreferredContacts"

    aput-object v24, v0, v1

    const/16 v1, 0x20

    const-string v24, "PreferredLanguage"

    aput-object v24, v0, v1

    const/16 v1, 0x21

    const-string v24, "PreferredContent"

    aput-object v24, v0, v1

    const/16 v1, 0x22

    const-string v24, "PreferredvCard"

    aput-object v24, v0, v1

    const/16 v1, 0x23

    const-string v24, "Registration"

    aput-object v24, v0, v1

    const/16 v1, 0x24

    const-string v24, "StatusContent"

    aput-object v24, v0, v1

    const/16 v1, 0x25

    const-string v24, "StatusMood"

    aput-object v24, v0, v1

    const/16 v1, 0x26

    const-string v24, "StatusText"

    aput-object v24, v0, v1

    const/16 v1, 0x27

    const-string v24, "Street"

    aput-object v24, v0, v1

    const/16 v1, 0x28

    const-string v24, "TimeZone"

    aput-object v24, v0, v1

    const/16 v1, 0x29

    const-string v24, "UserAvailability"

    aput-object v24, v0, v1

    const/16 v1, 0x2a

    const-string v24, "Cap"

    aput-object v24, v0, v1

    const/16 v1, 0x2b

    const-string v24, "Cname"

    aput-object v24, v0, v1

    const/16 v1, 0x2c

    const-string v24, "Contact"

    aput-object v24, v0, v1

    const/16 v1, 0x2d

    const-string v24, "Cpriority"

    aput-object v24, v0, v1

    const/16 v1, 0x2e

    const-string v24, "Cstatus"

    aput-object v24, v0, v1

    const/16 v1, 0x2f

    const-string v24, "Note"

    aput-object v24, v0, v1

    const/16 v1, 0x30

    const-string v24, "Zone"

    aput-object v24, v0, v1

    const/16 v1, 0x31

    aput-object v23, v0, v1

    const/16 v1, 0x32

    const-string v24, "Inf_link"

    aput-object v24, v0, v1

    const/16 v1, 0x33

    const-string v24, "InfoLink"

    aput-object v24, v0, v1

    const/16 v1, 0x34

    const-string v24, "Link"

    aput-object v24, v0, v1

    const/16 v1, 0x35

    const-string v24, "Text"

    aput-object v24, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage5:[Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BlockList"

    aput-object v1, v0, v2

    const-string v1, "BlockEntity-Request"

    aput-object v1, v0, v3

    const-string v1, "DeliveryMethod"

    aput-object v1, v0, v4

    const-string v1, "DeliveryReport"

    aput-object v1, v0, v5

    const-string v1, "DeliveryReport-Request"

    aput-object v1, v0, v6

    const-string v1, "ForwardMessage-Request"

    aput-object v1, v0, v7

    const-string v1, "GetBlockedList-Request"

    aput-object v1, v0, v8

    const-string v1, "GetBlockedList-Response"

    aput-object v1, v0, v9

    const-string v1, "GetMessageList-Request"

    aput-object v1, v0, v10

    const-string v1, "GetMessageList-Response"

    aput-object v1, v0, v11

    const-string v1, "GetMessage-Request"

    aput-object v1, v0, v12

    const-string v1, "GetMessage-Response"

    aput-object v1, v0, v13

    const-string v1, "GrantList"

    aput-object v1, v0, v14

    const-string v1, "MessageDelivered"

    const/16 v17, 0xd

    aput-object v1, v0, v17

    const-string v1, "MessageInfo"

    aput-object v1, v0, v16

    const-string v1, "MessageNotification"

    aput-object v1, v0, v15

    const-string v1, "NewMessage"

    aput-object v1, v0, v18

    const-string v1, "RejectMessage-Request"

    aput-object v1, v0, v19

    const-string v1, "SendMessage-Request"

    aput-object v1, v0, v20

    const-string v1, "SendMessage-Response"

    aput-object v1, v0, v21

    const-string v1, "SetDeliveryMethod-Request"

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v24, "DeliveryTime"

    aput-object v24, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage6:[Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AddGroupMembers-Request"

    aput-object v1, v0, v2

    const-string v1, "Admin"

    aput-object v1, v0, v3

    const-string v1, "CreateGroup-Request"

    aput-object v1, v0, v4

    const-string v1, "DeleteGroup-Request"

    aput-object v1, v0, v5

    const-string v1, "GetGroupMembers-Request"

    aput-object v1, v0, v6

    const-string v1, "GetGroupMembers-Response"

    aput-object v1, v0, v7

    const-string v1, "GetGroupProps-Request"

    aput-object v1, v0, v8

    const-string v1, "GetGroupProps-Response"

    aput-object v1, v0, v9

    const-string v1, "GroupChangeNotice"

    aput-object v1, v0, v10

    const-string v1, "GroupProperties"

    aput-object v1, v0, v11

    const-string v1, "Joined"

    aput-object v1, v0, v12

    const-string v1, "JoinedRequest"

    aput-object v1, v0, v13

    const-string v1, "JoinGroup-Request"

    aput-object v1, v0, v14

    const-string v1, "JoinGroup-Response"

    const/16 v17, 0xd

    aput-object v1, v0, v17

    const-string v1, "LeaveGroup-Request"

    aput-object v1, v0, v16

    const-string v1, "LeaveGroup-Response"

    aput-object v1, v0, v15

    const-string v1, "Left"

    aput-object v1, v0, v18

    const-string v1, "MemberAccess-Request"

    aput-object v1, v0, v19

    const-string v1, "Mod"

    aput-object v1, v0, v20

    const-string v1, "OwnProperties"

    aput-object v1, v0, v21

    const-string v1, "RejectList-Request"

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v24, "RejectList-Response"

    aput-object v24, v0, v1

    const/16 v1, 0x16

    const-string v24, "RemoveGroupMembers-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x17

    const-string v24, "SetGroupProps-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x18

    const-string v24, "SubscribeGroupNotice-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x19

    const-string v24, "SubscribeGroupNotice-Response"

    aput-object v24, v0, v1

    const/16 v1, 0x1a

    const-string v24, "Users"

    aput-object v24, v0, v1

    const/16 v1, 0x1b

    const-string v24, "WelcomeNote"

    aput-object v24, v0, v1

    const/16 v1, 0x1c

    const-string v24, "JoinGroup"

    aput-object v24, v0, v1

    const/16 v1, 0x1d

    const-string v24, "SubscribeNotification"

    aput-object v24, v0, v1

    const/16 v1, 0x1e

    const-string v24, "SubscribeType"

    aput-object v24, v0, v1

    const/16 v1, 0x1f

    const-string v24, "GetJoinedUsers-Request"

    aput-object v24, v0, v1

    const/16 v1, 0x20

    const-string v24, "GetJoinedUsers-Response"

    aput-object v24, v0, v1

    const/16 v1, 0x21

    const-string v24, "AdminMapList"

    aput-object v24, v0, v1

    const/16 v1, 0x22

    const-string v24, "AdminMapping"

    aput-object v24, v0, v1

    const/16 v1, 0x23

    const-string v24, "Mapping"

    aput-object v24, v0, v1

    const/16 v1, 0x24

    const-string v24, "ModMapping"

    aput-object v24, v0, v1

    const/16 v1, 0x25

    const-string v24, "UserMapList"

    aput-object v24, v0, v1

    const/16 v1, 0x26

    const-string v24, "UserMapping"

    aput-object v24, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage7:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "MP"

    aput-object v1, v0, v2

    const-string v1, "GETAUT"

    aput-object v1, v0, v3

    const-string v1, "GETJU"

    aput-object v1, v0, v4

    const-string v1, "VRID"

    aput-object v1, v0, v5

    const-string v1, "VerifyIDFunc"

    aput-object v1, v0, v6

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage8:[Ljava/lang/String;

    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "CIR"

    aput-object v1, v0, v2

    const-string v1, "Domain"

    aput-object v1, v0, v3

    const-string v1, "ExtBlock"

    aput-object v1, v0, v4

    const-string v1, "HistoryPeriod"

    aput-object v1, v0, v5

    const-string v1, "IDList"

    aput-object v1, v0, v6

    const-string v1, "MaxWatcherList"

    aput-object v1, v0, v7

    const-string v1, "ReactiveAuthState"

    aput-object v1, v0, v8

    const-string v1, "ReactiveAuthStatus"

    aput-object v1, v0, v9

    const-string v1, "ReactiveAuthStatusList"

    aput-object v1, v0, v10

    const-string v1, "Watcher"

    aput-object v1, v0, v11

    const-string v1, "WatcherStatus"

    aput-object v1, v0, v12

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage9:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "WV-CSP-NSDiscovery-Request"

    aput-object v1, v0, v2

    const-string v1, "WV-CSP-NSDiscovery-Response"

    aput-object v1, v0, v3

    const-string v1, "VersionList"

    aput-object v1, v0, v4

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePageA:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "xmlns=http://www.wireless-village.org/CSP"

    aput-object v1, v0, v2

    const-string v1, "xmlns=http://www.wireless-village.org/PA"

    aput-object v1, v0, v3

    const-string v1, "xmlns=http://www.wireless-village.org/TRC"

    aput-object v1, v0, v4

    const-string v1, "xmlns=http://www.openmobilealliance.org/DTD/WV-CSP"

    aput-object v1, v0, v5

    const-string v1, "xmlns=http://www.openmobilealliance.org/DTD/WV-PA"

    aput-object v1, v0, v6

    const-string v1, "xmlns=http://www.openmobilealliance.org/DTD/WV-TRC"

    aput-object v1, v0, v7

    sput-object v0, Lorg/kxml2/wap/wv/WV;->attrStartTable:[Ljava/lang/String;

    const/16 v0, 0x78

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccessType"

    aput-object v1, v0, v2

    const-string v1, "ActiveUsers"

    aput-object v1, v0, v3

    const-string v1, "Admin"

    aput-object v1, v0, v4

    const-string v1, "application/"

    aput-object v1, v0, v5

    const-string v1, "application/vnd.wap.mms-message"

    aput-object v1, v0, v6

    const-string v1, "application/x-sms"

    aput-object v1, v0, v7

    const-string v1, "AutoJoin"

    aput-object v1, v0, v8

    const-string v1, "BASE64"

    aput-object v1, v0, v9

    const-string v1, "Closed"

    aput-object v1, v0, v10

    const-string v1, "Default"

    aput-object v1, v0, v11

    const-string v1, "DisplayName"

    aput-object v1, v0, v12

    const-string v1, "F"

    aput-object v1, v0, v13

    const-string v1, "G"

    aput-object v1, v0, v14

    const-string v1, "GR"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "http://"

    aput-object v1, v0, v16

    const-string v1, "https://"

    aput-object v1, v0, v15

    const-string v1, "image/"

    aput-object v1, v0, v18

    const-string v1, "Inband"

    aput-object v1, v0, v19

    const-string v1, "IM"

    aput-object v1, v0, v20

    const-string v1, "MaxActiveUsers"

    aput-object v1, v0, v21

    const-string v1, "Mod"

    aput-object v1, v0, v22

    const/16 v1, 0x15

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "None"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Open"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Outband"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Private"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PrivateMessaging"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PrivilegeLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Public"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Request"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Restricted"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ScreenName"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Searchable"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SC"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "text/"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "text/x-vCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "text/x-vCard"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Topic"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "www.wireless-village.org"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "AutoDelete"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "GM"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Validity"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "ShowID"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "GRANTED"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "PENDING"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    aput-object v23, v0, v1

    const/16 v1, 0x38

    aput-object v23, v0, v1

    const/16 v1, 0x39

    aput-object v23, v0, v1

    const/16 v1, 0x3a

    aput-object v23, v0, v1

    const/16 v1, 0x3b

    aput-object v23, v0, v1

    const/16 v1, 0x3c

    aput-object v23, v0, v1

    const/16 v1, 0x3d

    const-string v2, "GROUP_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "GROUP_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "GROUP_TOPIC"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "GROUP_USER_ID_JOINED"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "GROUP_USER_ID_OWNER"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "HTTP"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "STCP"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "SUDP"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "USER_ALIAS"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "USER_EMAIL_ADDRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "USER_FIRST_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "USER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "USER_LAST_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "USER_MOBILE_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "USER_ONLINE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "WAPSMS"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "WAPUDP"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "GROUP_USER_ID_AUTOJOIN"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    aput-object v23, v0, v1

    const/16 v1, 0x52

    aput-object v23, v0, v1

    const/16 v1, 0x53

    aput-object v23, v0, v1

    const/16 v1, 0x54

    aput-object v23, v0, v1

    const/16 v1, 0x55

    aput-object v23, v0, v1

    const/16 v1, 0x56

    aput-object v23, v0, v1

    const/16 v1, 0x57

    aput-object v23, v0, v1

    const/16 v1, 0x58

    aput-object v23, v0, v1

    const/16 v1, 0x59

    aput-object v23, v0, v1

    const/16 v1, 0x5a

    aput-object v23, v0, v1

    const/16 v1, 0x5b

    const-string v2, "ANGRY"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "ANXIOUS"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "ASHAMED"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "AUDIO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "BORED"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "CLI"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "COMPUTER"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "DISCREET"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "EMAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "EXCITED"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "HAPPY"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "IM"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "IM_OFFLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "IM_ONLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "IN_LOVE"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "INVINCIBLE"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "JEALOUS"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "MOBILE_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "PDA"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "SAD"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "SLEEPY"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "VIDEO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "VIDEO_STREAM"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->attrValueTable:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage0:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage1:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage2:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage3:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage4:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage5:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage6:[Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage7:[Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage8:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage9:[Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePageA:[Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    return-object v0
.end method
