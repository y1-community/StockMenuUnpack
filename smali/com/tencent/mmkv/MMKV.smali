.class public Lcom/tencent/mmkv/MMKV;
.super Ljava/lang/Object;
.source "MMKV.java"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mmkv/MMKV$LibLoader;
    }
.end annotation


# static fields
.field private static final ASHMEM_MODE:I = 0x8

.field private static final BACKUP_MODE:I = 0x10

.field private static final CONTEXT_MODE_MULTI_PROCESS:I = 0x4

.field public static final MULTI_PROCESS_MODE:I = 0x2

.field public static final SINGLE_PROCESS_MODE:I = 0x1

.field private static final checkedHandleSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static gCallbackHandler:Lcom/tencent/mmkv/MMKVHandler;

.field private static gContentChangeNotify:Lcom/tencent/mmkv/MMKVContentChangeNotification;

.field private static gWantLogReDirecting:Z

.field private static final index2LogLevel:[Lcom/tencent/mmkv/MMKVLogLevel;

.field private static isProcessModeCheckerEnabled:Z

.field private static final logLevel2Index:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/tencent/mmkv/MMKVLogLevel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final recoverIndex:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/tencent/mmkv/MMKVRecoverStrategic;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static rootDir:Ljava/lang/String;


# instance fields
.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/tencent/mmkv/MMKVRecoverStrategic;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/tencent/mmkv/MMKV;->recoverIndex:Ljava/util/EnumMap;

    .line 54
    sget-object v1, Lcom/tencent/mmkv/MMKVRecoverStrategic;->OnErrorDiscard:Lcom/tencent/mmkv/MMKVRecoverStrategic;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/tencent/mmkv/MMKVRecoverStrategic;->OnErrorRecover:Lcom/tencent/mmkv/MMKVRecoverStrategic;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/tencent/mmkv/MMKV;->logLevel2Index:Ljava/util/EnumMap;

    .line 58
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelDebug:Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelWarning:Lcom/tencent/mmkv/MMKVLogLevel;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelNone:Lcom/tencent/mmkv/MMKVLogLevel;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/mmkv/MMKVLogLevel;

    .line 64
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelDebug:Lcom/tencent/mmkv/MMKVLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelWarning:Lcom/tencent/mmkv/MMKVLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelNone:Lcom/tencent/mmkv/MMKVLogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/mmkv/MMKV;->index2LogLevel:[Lcom/tencent/mmkv/MMKVLogLevel;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mmkv/MMKV;->checkedHandleSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 239
    sput-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    .line 516
    sput-boolean v4, Lcom/tencent/mmkv/MMKV;->isProcessModeCheckerEnabled:Z

    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mmkv/MMKV;->mCreators:Ljava/util/HashMap;

    .line 1187
    sput-boolean v2, Lcom/tencent/mmkv/MMKV;->gWantLogReDirecting:Z

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    iput-wide p1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    return-void
.end method

.method private native actualSize(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method public static backedUpMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "mode",
            "cryptKey",
            "rootPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x10

    .line 396
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    .line 397
    invoke-static {p2, p3, p0, p1}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0

    .line 392
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should Call MMKV.initialize() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native backupAllToDirectory(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dstDir"
        }
    .end annotation
.end method

.method public static native backupOneToDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "dstDir",
            "rootPath"
        }
    .end annotation
.end method

.method private static checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "mmapID",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_4

    .line 494
    sget-boolean v0, Lcom/tencent/mmkv/MMKV;->isProcessModeCheckerEnabled:Z

    if-nez v0, :cond_0

    .line 495
    new-instance p2, Lcom/tencent/mmkv/MMKV;

    invoke-direct {p2, p0, p1}, Lcom/tencent/mmkv/MMKV;-><init>(J)V

    return-object p2

    .line 497
    :cond_0
    sget-object v0, Lcom/tencent/mmkv/MMKV;->checkedHandleSet:Ljava/util/Set;

    monitor-enter v0

    .line 498
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 499
    invoke-static {p0, p1}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(J)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x1

    if-ne p3, p0, :cond_1

    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Opening a multi-process MMKV instance ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] with SINGLE_PROCESS_MODE!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 504
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Opening an MMKV instance ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] with MULTI_PROCESS_MODE, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "while it\'s already been opened with SINGLE_PROCESS_MODE by someone somewhere else!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 507
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    new-instance p2, Lcom/tencent/mmkv/MMKV;

    invoke-direct {p2, p0, p1}, Lcom/tencent/mmkv/MMKV;-><init>(J)V

    return-object p2

    :catchall_0
    move-exception p0

    .line 511
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 492
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to create an MMKV instance ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] in JNI"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native checkProcessMode(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method private native containsKey(JLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "key"
        }
    .end annotation
.end method

.method private native count(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method private static native createNB(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public static createNativeBuffer(I)Lcom/tencent/mmkv/NativeBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1163
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->createNB(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1167
    :cond_0
    new-instance v2, Lcom/tencent/mmkv/NativeBuffer;

    invoke-direct {v2, v0, v1, p0}, Lcom/tencent/mmkv/NativeBuffer;-><init>(JI)V

    return-object v2
.end method

.method private native decodeBool(JLjava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method private native decodeBytes(JLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "key"
        }
    .end annotation
.end method

.method private native decodeDouble(JLjava/lang/String;D)D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method private native decodeFloat(JLjava/lang/String;F)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method private native decodeInt(JLjava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method private native decodeLong(JLjava/lang/String;J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method private native decodeString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method private native decodeStringSet(JLjava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "key"
        }
    .end annotation
.end method

.method public static defaultMMKV()Lcom/tencent/mmkv/MMKV;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 471
    invoke-static {v1, v0}, Lcom/tencent/mmkv/MMKV;->getDefaultMMKV(ILjava/lang/String;)J

    move-result-wide v2

    const-string v0, "DefaultMMKV"

    .line 472
    invoke-static {v2, v3, v0, v1}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0

    .line 468
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should Call MMKV.initialize() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static defaultMMKV(ILjava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "cryptKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 486
    invoke-static {p0, p1}, Lcom/tencent/mmkv/MMKV;->getDefaultMMKV(ILjava/lang/String;)J

    move-result-wide v0

    const-string p1, "DefaultMMKV"

    .line 487
    invoke-static {v0, v1, p1, p0}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0

    .line 483
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should Call MMKV.initialize() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native destroyNB(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "size"
        }
    .end annotation
.end method

.method public static destroyNativeBuffer(Lcom/tencent/mmkv/NativeBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1174
    iget-wide v0, p0, Lcom/tencent/mmkv/NativeBuffer;->pointer:J

    iget p0, p0, Lcom/tencent/mmkv/NativeBuffer;->size:I

    invoke-static {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->destroyNB(JI)V

    return-void
.end method

.method public static disableProcessModeChecker()V
    .locals 2

    .line 536
    sget-object v0, Lcom/tencent/mmkv/MMKV;->checkedHandleSet:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    .line 537
    :try_start_0
    sput-boolean v1, Lcom/tencent/mmkv/MMKV;->isProcessModeCheckerEnabled:Z

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MMKV"

    const-string v1, "Disable checkProcessMode()"

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 538
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static doInitialize(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootDir",
            "cacheDir",
            "loader",
            "logLevel"
        }
    .end annotation

    const-string v0, "mmkv"

    if-eqz p2, :cond_0

    .line 189
    invoke-interface {p2, v0}, Lcom/tencent/mmkv/MMKV$LibLoader;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 196
    :goto_0
    invoke-static {p3}, Lcom/tencent/mmkv/MMKV;->logLevel2Int(Lcom/tencent/mmkv/MMKVLogLevel;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->jniInitialize(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    sput-object p0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    return-object p0
.end method

.method public static enableProcessModeChecker()V
    .locals 2

    .line 524
    sget-object v0, Lcom/tencent/mmkv/MMKV;->checkedHandleSet:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x1

    .line 525
    :try_start_0
    sput-boolean v1, Lcom/tencent/mmkv/MMKV;->isProcessModeCheckerEnabled:Z

    .line 526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MMKV"

    const-string v1, "Enable checkProcessMode()"

    .line 527
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 526
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private native encodeBool(JLjava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private native encodeBytes(JLjava/lang/String;[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private native encodeDouble(JLjava/lang/String;D)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private native encodeFloat(JLjava/lang/String;F)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private native encodeInt(JLjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private native encodeLong(JLjava/lang/String;J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private native encodeSet(JLjava/lang/String;[Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private native encodeString(JLjava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "value"
        }
    .end annotation
.end method

.method private static native getDefaultMMKV(ILjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "cryptKey"
        }
    .end annotation
.end method

.method private static native getMMKVWithAshmemFD(Ljava/lang/String;IILjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "fd",
            "metaFD",
            "cryptKey"
        }
    .end annotation
.end method

.method private static native getMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "mode",
            "cryptKey",
            "rootPath"
        }
    .end annotation
.end method

.method private static native getMMKVWithIDAndSize(Ljava/lang/String;IILjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "size",
            "mode",
            "cryptKey"
        }
    .end annotation
.end method

.method public static getRootDir()Ljava/lang/String;
    .locals 1

    .line 245
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    const/4 v2, 0x0

    .line 84
    invoke-static {p0, v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Lcom/tencent/mmkv/MMKV$LibLoader;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "loader"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 109
    invoke-static {p0, v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "loader",
            "logLevel"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p0, v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevel"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rootDir"
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    const/4 v1, 0x0

    .line 134
    invoke-static {p0, p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "rootDir",
            "loader"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 159
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "rootDir",
            "loader",
            "logLevel"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->disableProcessModeChecker()V

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->enableProcessModeChecker()V

    .line 180
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {p1, p0, p2, p3}, Lcom/tencent/mmkv/MMKV;->doInitialize(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "rootDir",
            "logLevel"
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootDir"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    sget-object v0, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->doInitialize(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootDir",
            "loader"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    sget-object v0, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/tencent/mmkv/MMKV;->doInitialize(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootDir",
            "loader",
            "logLevel"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->doInitialize(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Ljava/lang/String;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootDir",
            "logLevel"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->doInitialize(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV$LibLoader;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFileValid(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mmapID"
        }
    .end annotation

    const/4 v0, 0x0

    .line 898
    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->isFileValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static native isFileValid(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "rootPath"
        }
    .end annotation
.end method

.method private static native jniInitialize(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootDir",
            "cacheDir",
            "level"
        }
    .end annotation
.end method

.method private static logLevel2Int(Lcom/tencent/mmkv/MMKVLogLevel;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/tencent/mmkv/MMKV$1;->$SwitchMap$com$tencent$mmkv$MMKVLogLevel:[I

    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKVLogLevel;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private static mmkvLogImp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "file",
            "line",
            "function",
            "message"
        }
    .end annotation

    .line 1235
    sget-object v0, Lcom/tencent/mmkv/MMKV;->gCallbackHandler:Lcom/tencent/mmkv/MMKVHandler;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/tencent/mmkv/MMKV;->gWantLogReDirecting:Z

    if-eqz v1, :cond_0

    .line 1236
    sget-object v1, Lcom/tencent/mmkv/MMKV;->index2LogLevel:[Lcom/tencent/mmkv/MMKVLogLevel;

    aget-object v1, v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mmkv/MMKVHandler;->mmkvLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1238
    :cond_0
    sget-object p1, Lcom/tencent/mmkv/MMKV$1;->$SwitchMap$com$tencent$mmkv$MMKVLogLevel:[I

    sget-object p2, Lcom/tencent/mmkv/MMKV;->index2LogLevel:[Lcom/tencent/mmkv/MMKVLogLevel;

    aget-object p0, p2, p0

    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKVLogLevel;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    const-string p2, "MMKV"

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 1243
    :cond_1
    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1249
    :cond_2
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    :cond_3
    invoke-static {p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1240
    :cond_4
    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static mmkvWithAshmemFD(Ljava/lang/String;IILjava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "fd",
            "metaFD",
            "cryptKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1138
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getMMKVWithAshmemFD(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 1142
    new-instance p0, Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;-><init>(J)V

    return-object p0

    .line 1140
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to create an ashmem MMKV instance ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in JNI"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static mmkvWithAshmemID(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mmapID",
            "size",
            "mode",
            "cryptKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 416
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKVContentProvider;->getProcessNameByPID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 417
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ":"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    invoke-static {p0}, Lcom/tencent/mmkv/MMKVContentProvider;->contentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting parcelable mmkv in process, Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    .line 431
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_SIZE"

    .line 432
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "KEY_MODE"

    .line 433
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    const-string v2, "KEY_CRYPT"

    .line 435
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "mmkvFromAshmemID"

    .line 438
    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 440
    const-class v0, Lcom/tencent/mmkv/ParcelableMMKV;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "KEY"

    .line 441
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/tencent/mmkv/ParcelableMMKV;

    if-eqz p0, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/tencent/mmkv/ParcelableMMKV;->toMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 445
    sget-object p1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKV;->mmapID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " fd = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKV;->ashmemFD()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", meta fd = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKV;->ashmemMetaFD()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 445
    invoke-static {p1, p2}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p0, "MMKVContentProvider has invalid authority"

    .line 426
    sget-object p1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-static {p1, p0}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    .line 427
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 452
    :cond_2
    sget-object p0, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    const-string v0, "getting mmkv in main process"

    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    or-int/lit8 p0, p3, 0x8

    .line 455
    invoke-static {p1, p2, p0, p4}, Lcom/tencent/mmkv/MMKV;->getMMKVWithIDAndSize(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-eqz p0, :cond_3

    .line 457
    new-instance p0, Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, p2, p3}, Lcom/tencent/mmkv/MMKV;-><init>(J)V

    return-object p0

    .line 459
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to create an Ashmem MMKV instance ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "process name detect fail, try again later"

    .line 419
    sget-object p1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-static {p1, p0}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    .line 420
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should Call MMKV.initialize() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mmapID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    invoke-static {p0, v0, v1, v1}, Lcom/tencent/mmkv/MMKV;->getMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 314
    invoke-static {v1, v2, p0, v0}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You should Call MMKV.initialize() first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 328
    invoke-static {p0, p1, v0, v0}, Lcom/tencent/mmkv/MMKV;->getMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 329
    invoke-static {v0, v1, p0, p1}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should Call MMKV.initialize() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mmkvWithID(Ljava/lang/String;ILjava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "mode",
            "cryptKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 344
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->getMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 345
    invoke-static {v0, v1, p0, p1}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0

    .line 341
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should Call MMKV.initialize() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mmkvWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "mode",
            "cryptKey",
            "rootPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 373
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 377
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    .line 378
    invoke-static {p2, p3, p0, p1}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should Call MMKV.initialize() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mmkvWithID(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "rootPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/tencent/mmkv/MMKV;->rootDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 359
    invoke-static {p0, v1, v0, p1}, Lcom/tencent/mmkv/MMKV;->getMMKVWithID(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 360
    invoke-static {v2, v3, p0, v1}, Lcom/tencent/mmkv/MMKV;->checkProcessMode(JLjava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0

    .line 356
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should Call MMKV.initialize() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onContentChangedByOuterProcess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mmapID"
        }
    .end annotation

    .line 1289
    sget-object v0, Lcom/tencent/mmkv/MMKV;->gContentChangeNotify:Lcom/tencent/mmkv/MMKVContentChangeNotification;

    if-eqz v0, :cond_0

    .line 1290
    invoke-interface {v0, p0}, Lcom/tencent/mmkv/MMKVContentChangeNotification;->onContentChangedByOuterProcess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static native onExit()V
.end method

.method private static onMMKVCRCCheckFail(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mmapID"
        }
    .end annotation

    .line 1215
    sget-object v0, Lcom/tencent/mmkv/MMKVRecoverStrategic;->OnErrorDiscard:Lcom/tencent/mmkv/MMKVRecoverStrategic;

    .line 1216
    sget-object v1, Lcom/tencent/mmkv/MMKV;->gCallbackHandler:Lcom/tencent/mmkv/MMKVHandler;

    if-eqz v1, :cond_0

    .line 1217
    invoke-interface {v1, p0}, Lcom/tencent/mmkv/MMKVHandler;->onMMKVCRCCheckFail(Ljava/lang/String;)Lcom/tencent/mmkv/MMKVRecoverStrategic;

    move-result-object v0

    .line 1219
    :cond_0
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recover strategic for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    .line 1220
    sget-object p0, Lcom/tencent/mmkv/MMKV;->recoverIndex:Ljava/util/EnumMap;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 1221
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static onMMKVFileLengthError(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mmapID"
        }
    .end annotation

    .line 1225
    sget-object v0, Lcom/tencent/mmkv/MMKVRecoverStrategic;->OnErrorDiscard:Lcom/tencent/mmkv/MMKVRecoverStrategic;

    .line 1226
    sget-object v1, Lcom/tencent/mmkv/MMKV;->gCallbackHandler:Lcom/tencent/mmkv/MMKVHandler;

    if-eqz v1, :cond_0

    .line 1227
    invoke-interface {v1, p0}, Lcom/tencent/mmkv/MMKVHandler;->onMMKVFileLengthError(Ljava/lang/String;)Lcom/tencent/mmkv/MMKVRecoverStrategic;

    move-result-object v0

    .line 1229
    :cond_0
    sget-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recover strategic for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    .line 1230
    sget-object p0, Lcom/tencent/mmkv/MMKV;->recoverIndex:Ljava/util/EnumMap;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 1231
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static native pageSize()I
.end method

.method public static registerContentChangeNotify(Lcom/tencent/mmkv/MMKVContentChangeNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notify"
        }
    .end annotation

    .line 1276
    sput-object p0, Lcom/tencent/mmkv/MMKV;->gContentChangeNotify:Lcom/tencent/mmkv/MMKVContentChangeNotification;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1277
    :goto_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->setWantsContentChangeNotify(Z)V

    return-void
.end method

.method public static registerHandler(Lcom/tencent/mmkv/MMKVHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 1193
    sput-object p0, Lcom/tencent/mmkv/MMKV;->gCallbackHandler:Lcom/tencent/mmkv/MMKVHandler;

    .line 1195
    invoke-interface {p0}, Lcom/tencent/mmkv/MMKVHandler;->wantLogRedirecting()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1196
    invoke-static {v0, v0}, Lcom/tencent/mmkv/MMKV;->setCallbackHandler(ZZ)V

    .line 1197
    sput-boolean v0, Lcom/tencent/mmkv/MMKV;->gWantLogReDirecting:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1199
    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->setCallbackHandler(ZZ)V

    .line 1200
    sput-boolean p0, Lcom/tencent/mmkv/MMKV;->gWantLogReDirecting:Z

    :goto_0
    return-void
.end method

.method private native removeValueForKey(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "key"
        }
    .end annotation
.end method

.method public static native restoreAllFromDirectory(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcDir"
        }
    .end annotation
.end method

.method public static native restoreOneMMKVFromDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mmapID",
            "srcDir",
            "rootPath"
        }
    .end annotation
.end method

.method private static native setCallbackHandler(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logReDirecting",
            "hasCallback"
        }
    .end annotation
.end method

.method private static native setLogLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public static setLogLevel(Lcom/tencent/mmkv/MMKVLogLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 276
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->logLevel2Int(Lcom/tencent/mmkv/MMKVLogLevel;)I

    move-result p0

    .line 277
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->setLogLevel(I)V

    return-void
.end method

.method private static native setWantsContentChangeNotify(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needsNotify"
        }
    .end annotation
.end method

.method private static simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "message"
        }
    .end annotation

    .line 1258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1259
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 1260
    sget-object v1, Lcom/tencent/mmkv/MMKV;->logLevel2Index:Ljava/util/EnumMap;

    invoke-virtual {v1, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1262
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0, p1}, Lcom/tencent/mmkv/MMKV;->mmkvLogImp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native sync(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sync"
        }
    .end annotation
.end method

.method private native totalSize(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method public static unregisterContentChangeNotify()V
    .locals 1

    const/4 v0, 0x0

    .line 1284
    sput-object v0, Lcom/tencent/mmkv/MMKV;->gContentChangeNotify:Lcom/tencent/mmkv/MMKVContentChangeNotification;

    const/4 v0, 0x0

    .line 1285
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->setWantsContentChangeNotify(Z)V

    return-void
.end method

.method public static unregisterHandler()V
    .locals 1

    const/4 v0, 0x0

    .line 1208
    sput-object v0, Lcom/tencent/mmkv/MMKV;->gCallbackHandler:Lcom/tencent/mmkv/MMKVHandler;

    const/4 v0, 0x0

    .line 1210
    invoke-static {v0, v0}, Lcom/tencent/mmkv/MMKV;->setCallbackHandler(ZZ)V

    .line 1211
    sput-boolean v0, Lcom/tencent/mmkv/MMKV;->gWantLogReDirecting:Z

    return-void
.end method

.method private native valueSize(JLjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "actualSize"
        }
    .end annotation
.end method

.method public static native version()Ljava/lang/String;
.end method

.method private native writeValueToNB(JLjava/lang/String;JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "key",
            "pointer",
            "size"
        }
    .end annotation
.end method


# virtual methods
.method public actualSize()J
    .locals 2

    .line 836
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->actualSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public native allKeys()[Ljava/lang/String;
.end method

.method public apply()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1097
    invoke-direct {p0, v0}, Lcom/tencent/mmkv/MMKV;->sync(Z)V

    return-void
.end method

.method public native ashmemFD()I
.end method

.method public native ashmemMetaFD()I
.end method

.method public async()V
    .locals 1

    const/4 v0, 0x0

    .line 888
    invoke-direct {p0, v0}, Lcom/tencent/mmkv/MMKV;->sync(Z)V

    return-void
.end method

.method public native checkContentChangedByOuterProcess()V
.end method

.method public native checkReSetCryptKey(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cryptKey"
        }
    .end annotation
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1075
    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    return-object p0
.end method

.method public native clearAll()V
.end method

.method public native clearMemoryCache()V
.end method

.method public native close()V
.end method

.method public commit()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1086
    invoke-direct {p0, v0}, Lcom/tencent/mmkv/MMKV;->sync(Z)V

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1102
    invoke-virtual {p0, p1}, Lcom/tencent/mmkv/MMKV;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 808
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->containsKey(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public count()J
    .locals 2

    .line 821
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->count(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public native cryptKey()Ljava/lang/String;
.end method

.method public decodeBool(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 604
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->decodeBool(JLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public decodeBool(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 608
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeBool(JLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public decodeBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    .line 712
    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->decodeBytes(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public decodeBytes(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 717
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->decodeBytes(JLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public decodeDouble(Ljava/lang/String;)D
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 652
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->decodeDouble(JLjava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public decodeDouble(Ljava/lang/String;D)D
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 656
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->decodeDouble(JLjava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public decodeFloat(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 640
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->decodeFloat(JLjava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public decodeFloat(Ljava/lang/String;F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 644
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeFloat(JLjava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public decodeInt(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 616
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->decodeInt(JLjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public decodeInt(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 620
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeInt(JLjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public decodeLong(Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 628
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->decodeLong(JLjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public decodeLong(Ljava/lang/String;J)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 632
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->decodeLong(JLjava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public decodeParcelable(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "tClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 739
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->decodeParcelable(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public decodeParcelable(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "tClass",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    .line 749
    :cond_0
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->decodeBytes(JLjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object p3

    .line 754
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 755
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 756
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 759
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    sget-object v1, Lcom/tencent/mmkv/MMKV;->mCreators:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 762
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable$Creator;

    if-nez v2, :cond_2

    const-string v2, "CREATOR"

    .line 764
    invoke-virtual {p2, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v2, 0x0

    .line 765
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Parcelable$Creator;

    if-eqz v2, :cond_2

    .line 767
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 772
    :try_start_2
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 774
    :cond_3
    :try_start_3
    new-instance p2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable protocol requires a non-null static Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_0
    move-exception p1

    .line 770
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 779
    :try_start_6
    sget-object p2, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p3

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 782
    throw p1
.end method

.method public decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 665
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->decodeString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 670
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->decodeStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public decodeStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->decodeStringSet(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public decodeStringSet(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Set;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 690
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->decodeStringSet(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 696
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p3

    :catch_0
    return-object p2
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method

.method public encode(Ljava/lang/String;D)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 648
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->encodeDouble(JLjava/lang/String;D)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 636
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeFloat(JLjava/lang/String;F)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 612
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeInt(JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 624
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->encodeLong(JLjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 725
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const/4 p2, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeBytes(JLjava/lang/String;[B)Z

    move-result p1

    return p1

    .line 728
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 729
    invoke-interface {p2, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeBytes(JLjava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 660
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeString(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 674
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeSet(JLjava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 600
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeBool(JLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/String;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 707
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeBytes(JLjava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 983
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Intentionally Not Supported. Use allKeys() instead, getAll() not implement because type-erasure inside mmkv"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 1055
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeBool(JLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeBytes(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 1044
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeFloat(JLjava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 1022
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeInt(JLjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 1033
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->decodeLong(JLjava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValue"
        }
    .end annotation

    .line 990
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1002
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getValueActualSize(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 800
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->valueSize(JLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getValueSize(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 792
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->valueSize(JLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public importFromSharedPreferences(Landroid/content/SharedPreferences;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferences"
        }
    .end annotation

    .line 915
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 916
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 920
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 921
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 922
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v6, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    .line 927
    :cond_2
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 928
    iget-wide v2, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v2, v3, v6, v1}, Lcom/tencent/mmkv/MMKV;->encodeBool(JLjava/lang/String;Z)Z

    goto :goto_0

    .line 929
    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 930
    iget-wide v2, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v6, v1}, Lcom/tencent/mmkv/MMKV;->encodeInt(JLjava/lang/String;I)Z

    goto :goto_0

    .line 931
    :cond_4
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 932
    iget-wide v4, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/mmkv/MMKV;->encodeLong(JLjava/lang/String;J)Z

    goto :goto_0

    .line 933
    :cond_5
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_6

    .line 934
    iget-wide v2, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v2, v3, v6, v1}, Lcom/tencent/mmkv/MMKV;->encodeFloat(JLjava/lang/String;F)Z

    goto :goto_0

    .line 935
    :cond_6
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_7

    .line 936
    iget-wide v4, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/mmkv/MMKV;->encodeDouble(JLjava/lang/String;D)Z

    goto :goto_0

    .line 937
    :cond_7
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 938
    iget-wide v2, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v6, v1}, Lcom/tencent/mmkv/MMKV;->encodeString(JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 939
    :cond_8
    instance-of v2, v1, Ljava/util/Set;

    if-eqz v2, :cond_9

    .line 940
    check-cast v1, Ljava/util/Set;

    invoke-virtual {p0, v6, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/util/Set;)Z

    goto/16 :goto_0

    .line 942
    :cond_9
    sget-object v2, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mmkv/MMKV;->simpleLog(Lcom/tencent/mmkv/MMKVLogLevel;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 945
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1

    :cond_b
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public native lock()V
.end method

.method public native mmapID()Ljava/lang/String;
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1060
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeBool(JLjava/lang/String;Z)Z

    return-object p0
.end method

.method public putBytes(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "bytes"
        }
    .end annotation

    .line 1012
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;[B)Z

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1049
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeFloat(JLjava/lang/String;F)Z

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1027
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeInt(JLjava/lang/String;I)Z

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1038
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mmkv/MMKV;->encodeLong(JLjava/lang/String;J)Z

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 995
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encodeString(JLjava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/util/Set;)Z

    return-object p0
.end method

.method public native reKey(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cryptKey"
        }
    .end annotation
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Intentionally Not implement in MMKV"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1066
    invoke-virtual {p0, p1}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public removeValueForKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 840
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(JLjava/lang/String;)V

    return-void
.end method

.method public native removeValuesForKeys([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrKeys"
        }
    .end annotation
.end method

.method public sync()V
    .locals 1

    const/4 v0, 0x1

    .line 880
    invoke-direct {p0, v0}, Lcom/tencent/mmkv/MMKV;->sync(Z)V

    return-void
.end method

.method public totalSize()J
    .locals 2

    .line 828
    iget-wide v0, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->totalSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public native trim()V
.end method

.method public native tryLock()Z
.end method

.method public native unlock()V
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1124
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Intentionally Not implement in MMKV"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeValueToNativeBuffer(Ljava/lang/String;Lcom/tencent/mmkv/NativeBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "buffer"
        }
    .end annotation

    .line 1182
    iget-wide v1, p0, Lcom/tencent/mmkv/MMKV;->nativeHandle:J

    iget-wide v4, p2, Lcom/tencent/mmkv/NativeBuffer;->pointer:J

    iget v6, p2, Lcom/tencent/mmkv/NativeBuffer;->size:I

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mmkv/MMKV;->writeValueToNB(JLjava/lang/String;JI)I

    move-result p1

    return p1
.end method
