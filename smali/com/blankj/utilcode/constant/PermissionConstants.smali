.class public final Lcom/blankj/utilcode/constant/PermissionConstants;
.super Ljava/lang/Object;
.source "PermissionConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/constant/PermissionConstants$PermissionGroup;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RECOGNITION:Ljava/lang/String; = "ACTIVITY_RECOGNITION"

.field public static final CALENDAR:Ljava/lang/String; = "CALENDAR"

.field public static final CAMERA:Ljava/lang/String; = "CAMERA"

.field public static final CONTACTS:Ljava/lang/String; = "CONTACTS"

.field private static final GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

.field private static final GROUP_CALENDAR:[Ljava/lang/String;

.field private static final GROUP_CAMERA:[Ljava/lang/String;

.field private static final GROUP_CONTACTS:[Ljava/lang/String;

.field private static final GROUP_LOCATION:[Ljava/lang/String;

.field private static final GROUP_MICROPHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE_BELOW_O:[Ljava/lang/String;

.field private static final GROUP_SENSORS:[Ljava/lang/String;

.field private static final GROUP_SMS:[Ljava/lang/String;

.field private static final GROUP_STORAGE:[Ljava/lang/String;

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final MICROPHONE:Ljava/lang/String; = "MICROPHONE"

.field public static final PHONE:Ljava/lang/String; = "PHONE"

.field public static final SENSORS:Ljava/lang/String; = "SENSORS"

.field public static final SMS:Ljava/lang/String; = "SMS"

.field public static final STORAGE:Ljava/lang/String; = "STORAGE"


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.WRITE_CALENDAR"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 34
    sput-object v1, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    .line 37
    sput-object v1, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "android.permission.READ_CONTACTS"

    aput-object v5, v2, v3

    const-string v5, "android.permission.WRITE_CONTACTS"

    aput-object v5, v2, v4

    const-string v5, "android.permission.GET_ACCOUNTS"

    aput-object v5, v2, v0

    .line 40
    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v2, v3

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v2, v4

    const-string v5, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v5, v2, v0

    .line 43
    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v2, v3

    .line 46
    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v2, v3

    const-string v6, "android.permission.READ_PHONE_NUMBERS"

    aput-object v6, v2, v4

    const-string v7, "android.permission.CALL_PHONE"

    aput-object v7, v2, v0

    const-string v8, "android.permission.READ_CALL_LOG"

    aput-object v8, v2, v1

    const/4 v9, 0x4

    const-string v10, "android.permission.WRITE_CALL_LOG"

    aput-object v10, v2, v9

    const/4 v11, 0x5

    const-string v12, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v12, v2, v11

    const/4 v13, 0x6

    const-string v14, "android.permission.USE_SIP"

    aput-object v14, v2, v13

    const/4 v15, 0x7

    const-string v16, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v16, v2, v15

    const-string v17, "android.permission.ANSWER_PHONE_CALLS"

    const/16 v15, 0x8

    aput-object v17, v2, v15

    .line 49
    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/String;

    aput-object v5, v2, v3

    aput-object v6, v2, v4

    aput-object v7, v2, v0

    aput-object v8, v2, v1

    aput-object v10, v2, v9

    aput-object v12, v2, v11

    aput-object v14, v2, v13

    const/4 v5, 0x7

    aput-object v16, v2, v5

    .line 54
    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "android.permission.BODY_SENSORS"

    aput-object v5, v2, v3

    .line 59
    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    new-array v2, v11, [Ljava/lang/String;

    const-string v5, "android.permission.SEND_SMS"

    aput-object v5, v2, v3

    const-string v5, "android.permission.RECEIVE_SMS"

    aput-object v5, v2, v4

    const-string v5, "android.permission.READ_SMS"

    aput-object v5, v2, v0

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v5, v2, v1

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v2, v9

    .line 62
    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    .line 66
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    aput-object v1, v0, v3

    .line 69
    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "CAMERA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "MICROPHONE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "CALENDAR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "CONTACTS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "ACTIVITY_RECOGNITION"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "PHONE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "SMS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "STORAGE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "SENSORS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v2, "LOCATION"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-array v1, v3, [Ljava/lang/String;

    aput-object p0, v1, v0

    return-object v1

    .line 84
    :pswitch_0
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    return-object p0

    .line 90
    :pswitch_1
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    return-object p0

    .line 82
    :pswitch_2
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    return-object p0

    .line 86
    :pswitch_3
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    return-object p0

    .line 104
    :pswitch_4
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    return-object p0

    .line 92
    :pswitch_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_b

    .line 93
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    return-object p0

    .line 95
    :cond_b
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    return-object p0

    .line 100
    :pswitch_6
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    return-object p0

    .line 102
    :pswitch_7
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-object p0

    .line 98
    :pswitch_8
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    return-object p0

    .line 88
    :pswitch_9
    sget-object p0, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x600a704b -> :sswitch_9
        -0x5f2a5027 -> :sswitch_8
        -0x458431a5 -> :sswitch_7
        0x14139 -> :sswitch_6
        0x489454e -> :sswitch_5
        0x8623667 -> :sswitch_4
        0xcd35053 -> :sswitch_3
        0x2404eb3e -> :sswitch_2
        0x6ea0852a -> :sswitch_1
        0x760cb725 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
