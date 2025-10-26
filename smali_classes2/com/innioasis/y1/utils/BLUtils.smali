.class public final Lcom/innioasis/y1/utils/BLUtils;
.super Ljava/lang/Object;
.source "BLUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;,
        Lcom/innioasis/y1/utils/BLUtils$State;,
        Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BLUtils.kt\ncom/innioasis/y1/utils/BLUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,548:1\n1851#2,2:549\n1851#2,2:551\n1#3:553\n*S KotlinDebug\n*F\n+ 1 BLUtils.kt\ncom/innioasis/y1/utils/BLUtils\n*L\n113#1:549,2\n228#1:551,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u00039:;B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\"\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020#H\u0002J\u0008\u0010%\u001a\u00020#H\u0002J\u0008\u0010&\u001a\u00020#H\u0002J\u000e\u0010\'\u001a\u00020#2\u0006\u0010\t\u001a\u00020\nJ\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\n0)J\u0010\u0010*\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\nH\u0007J\u000e\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020-J\u0008\u0010.\u001a\u00020#H\u0002J\u0006\u0010/\u001a\u00020\u0012J\u000e\u00100\u001a\u00020#2\u0006\u00101\u001a\u000202J\u0010\u00103\u001a\u00020#2\u0006\u0010\t\u001a\u00020\nH\u0002J\u000e\u00104\u001a\u00020#2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u00105\u001a\u00020\u0012J\u0006\u00106\u001a\u00020#J\u000e\u00107\u001a\u00020#2\u0006\u0010\t\u001a\u00020\nJ\u000e\u00108\u001a\u00020#2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/BLUtils;",
        "",
        "()V",
        "DEFAULT_VALUE_BLUETOOTH",
        "",
        "a2dp",
        "Landroid/bluetooth/BluetoothA2dp;",
        "adapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "intent",
        "Landroid/content/Intent;",
        "getIntent",
        "()Landroid/content/Intent;",
        "setIntent",
        "(Landroid/content/Intent;)V",
        "isActive",
        "",
        "()Z",
        "setActive",
        "(Z)V",
        "isConnect",
        "isLoading",
        "isPairingConnect",
        "listener",
        "Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "recordConnect",
        "recordPairingConnect",
        "recordTest",
        "recordTest2",
        "recordUnPair",
        "a2dpConnectionStateChanged",
        "",
        "actionChanged",
        "adapterConnectionStateChanged",
        "blBindStateChanged",
        "connectClassic",
        "getBondedDevices",
        "",
        "getConnectedDevices",
        "init",
        "context",
        "Landroid/content/Context;",
        "initBroadcast",
        "isEnabled",
        "onDestroy",
        "activity",
        "Landroid/app/Activity;",
        "pair",
        "setListener",
        "startDiscovery",
        "switchBl",
        "test",
        "unPair",
        "BlStateChangedListener",
        "DeviceSTATE",
        "State",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_VALUE_BLUETOOTH:I = 0x3e8

.field public static final INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

.field private static a2dp:Landroid/bluetooth/BluetoothA2dp;

.field private static adapter:Landroid/bluetooth/BluetoothAdapter;

.field private static device:Landroid/bluetooth/BluetoothDevice;

.field public static intent:Landroid/content/Intent;

.field private static isActive:Z

.field private static isConnect:Z

.field private static isLoading:Z

.field private static isPairingConnect:Z

.field private static listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static recordConnect:Landroid/bluetooth/BluetoothDevice;

.field private static recordPairingConnect:Landroid/bluetooth/BluetoothDevice;

.field private static recordTest:Landroid/bluetooth/BluetoothDevice;

.field private static recordTest2:Landroid/bluetooth/BluetoothDevice;

.field private static recordUnPair:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/BLUtils;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a2dpConnectionStateChanged()V
    .locals 10

    .line 341
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_d

    .line 342
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BLUtils;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 370
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "a2dp  \u65ad\u5f00\u4e2d"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 352
    :cond_1
    sput-boolean v4, Lcom/innioasis/y1/utils/BLUtils;->isConnect:Z

    .line 353
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a2dp  \u8fde\u63a5\u6210\u529f   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    .line 355
    :cond_2
    sput-object v3, Lcom/innioasis/y1/utils/BLUtils;->recordConnect:Landroid/bluetooth/BluetoothDevice;

    .line 357
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordTest2:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    .line 358
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    const/4 v6, 0x0

    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$a2dpConnectionStateChanged$1$1$1;

    invoke-direct {v0, v3}, Lcom/innioasis/y1/utils/BLUtils$a2dpConnectionStateChanged$1$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 366
    :cond_3
    sput-object v3, Lcom/innioasis/y1/utils/BLUtils;->recordTest2:Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_1

    .line 345
    :cond_4
    sput-boolean v2, Lcom/innioasis/y1/utils/BLUtils;->isConnect:Z

    .line 346
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a2dp \u8fde\u63a5\u4e2d   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 375
    :cond_5
    sget-boolean v1, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    if-nez v1, :cond_7

    .line 379
    sget-boolean v1, Lcom/innioasis/y1/utils/BLUtils;->isConnect:Z

    if-eqz v1, :cond_6

    .line 381
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v1, :cond_7

    sget-object v5, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v5, v2}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlConnectError(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 384
    :cond_6
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7a81\u7136\u65ad\u8fde  \u81ea\u52a8\u8fde\u63a5 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    .line 388
    :cond_7
    :goto_0
    sget-boolean v1, Lcom/innioasis/y1/utils/BLUtils;->isPairingConnect:Z

    if-eqz v1, :cond_9

    .line 389
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->recordPairingConnect:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_8

    invoke-direct {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->pair(Landroid/bluetooth/BluetoothDevice;)V

    .line 390
    :cond_8
    sput-object v3, Lcom/innioasis/y1/utils/BLUtils;->recordPairingConnect:Landroid/bluetooth/BluetoothDevice;

    .line 391
    sput-boolean v4, Lcom/innioasis/y1/utils/BLUtils;->isPairingConnect:Z

    .line 394
    :cond_9
    sput-boolean v4, Lcom/innioasis/y1/utils/BLUtils;->isConnect:Z

    .line 395
    sput-boolean v4, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    .line 396
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a2dp  \u65ad\u5f00\u6210\u529f   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->recordConnect:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_a

    .line 398
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u68c0\u6d4b\u5230\u5b58\u5728\u914d\u5bf9\u8bb0\u5f55 \u6267\u884c\u8fde\u63a5\u64cd\u4f5c "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    .line 401
    :cond_a
    sput-object v3, Lcom/innioasis/y1/utils/BLUtils;->recordConnect:Landroid/bluetooth/BluetoothDevice;

    .line 402
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->recordUnPair:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_b

    .line 403
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u68c0\u6d4b\u5230\u5b58\u5728\u53d6\u6d88\u914d\u5bf9\u8bb0\u5f55 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->unPair(Landroid/bluetooth/BluetoothDevice;)V

    .line 406
    :cond_b
    sput-object v3, Lcom/innioasis/y1/utils/BLUtils;->recordUnPair:Landroid/bluetooth/BluetoothDevice;

    .line 407
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordTest:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_c

    .line 408
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u6d4b\u5230\u5b58\u5728test\u8bb0\u5f55 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    const/4 v6, 0x0

    new-instance v1, Lcom/innioasis/y1/utils/BLUtils$a2dpConnectionStateChanged$1$5$1;

    invoke-direct {v1, v0, v3}, Lcom/innioasis/y1/utils/BLUtils$a2dpConnectionStateChanged$1$5$1;-><init>(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 416
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordTest2:Landroid/bluetooth/BluetoothDevice;

    .line 418
    :cond_c
    sput-object v3, Lcom/innioasis/y1/utils/BLUtils;->recordTest:Landroid/bluetooth/BluetoothDevice;

    .line 419
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public static final synthetic access$a2dpConnectionStateChanged(Lcom/innioasis/y1/utils/BLUtils;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BLUtils;->a2dpConnectionStateChanged()V

    return-void
.end method

.method public static final synthetic access$actionChanged(Lcom/innioasis/y1/utils/BLUtils;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BLUtils;->actionChanged()V

    return-void
.end method

.method public static final synthetic access$adapterConnectionStateChanged(Lcom/innioasis/y1/utils/BLUtils;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BLUtils;->adapterConnectionStateChanged()V

    return-void
.end method

.method public static final synthetic access$blBindStateChanged(Lcom/innioasis/y1/utils/BLUtils;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BLUtils;->blBindStateChanged()V

    return-void
.end method

.method public static final synthetic access$getDevice$p()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 21
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static final synthetic access$getListener$p()Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;
    .locals 1

    .line 21
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    return-object v0
.end method

.method public static final synthetic access$getRecordConnect$p()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 21
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordConnect:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static final synthetic access$setA2dp$p(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/innioasis/y1/utils/BLUtils;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public static final synthetic access$setDevice$p(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public static final synthetic access$setRecordConnect$p(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/innioasis/y1/utils/BLUtils;->recordConnect:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method private final actionChanged()V
    .locals 6

    .line 308
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BLUtils;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 329
    :pswitch_0
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u84dd\u7259\u72b6\u6001 \u5173\u95ed\u4e2d.....  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    sput-boolean v1, Lcom/innioasis/y1/utils/BLUtils;->isLoading:Z

    .line 331
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_TURNING_OFF:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-interface {v0, v1}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlState(Lcom/innioasis/y1/utils/BLUtils$State;)V

    goto :goto_0

    .line 318
    :pswitch_1
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u84dd\u7259\u72b6\u6001 \u6253\u5f00 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sput-boolean v2, Lcom/innioasis/y1/utils/BLUtils;->isLoading:Z

    .line 320
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_ON:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-interface {v0, v1}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlState(Lcom/innioasis/y1/utils/BLUtils$State;)V

    goto :goto_0

    .line 323
    :pswitch_2
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u84dd\u7259\u72b6\u6001 \u6253\u5f00\u4e2d.....  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    sput-boolean v1, Lcom/innioasis/y1/utils/BLUtils;->isLoading:Z

    .line 325
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_TURNING_ON:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-interface {v0, v1}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlState(Lcom/innioasis/y1/utils/BLUtils$State;)V

    goto :goto_0

    .line 313
    :pswitch_3
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u84dd\u7259\u72b6\u6001 \u5173\u95ed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    sput-boolean v2, Lcom/innioasis/y1/utils/BLUtils;->isLoading:Z

    .line 315
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_OFF:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-interface {v0, v1}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlState(Lcom/innioasis/y1/utils/BLUtils$State;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final adapterConnectionStateChanged()V
    .locals 6

    .line 430
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_6

    .line 431
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BLUtils;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto/16 :goto_0

    .line 446
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65ad\u5f00\u4e2d   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 440
    :cond_1
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fde\u63a5\u6210\u529f   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 434
    :cond_2
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fde\u63a5\u4e2d   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 451
    :cond_3
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_DISCONNECTING  \u65ad\u5f00\u6210\u529f   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v1, :cond_4

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v4, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v3, v4}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    .line 453
    :cond_4
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->recordUnPair:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    .line 454
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u6d4b\u5230\u5b58\u5728\u53d6\u6d88\u914d\u5bf9\u8bb0\u5f55 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->unPair(Landroid/bluetooth/BluetoothDevice;)V

    :cond_5
    const/4 v0, 0x0

    .line 457
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordUnPair:Landroid/bluetooth/BluetoothDevice;

    :cond_6
    :goto_0
    return-void
.end method

.method private final blBindStateChanged()V
    .locals 4

    .line 468
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BLUtils;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 471
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 477
    :pswitch_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u7ed1\u5b9a\uff08\u914d\u5bf9) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    .line 479
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordConnect:Landroid/bluetooth/BluetoothDevice;

    .line 480
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 483
    :pswitch_1
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    .line 485
    :cond_2
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b63\u5728\u7ed1\u5b9a\uff08\u914d\u5bf9\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    :pswitch_2
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    .line 489
    :cond_3
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u7ed1\u5b9a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final initBroadcast()V
    .locals 1

    .line 159
    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$initBroadcast$1;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/BLUtils$initBroadcast$1;-><init>()V

    check-cast v0, Landroid/content/BroadcastReceiver;

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final pair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 227
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "pair  \u5f00\u59cb\u914d\u5bf9"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/BLUtils;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 551
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 229
    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/utils/BLUtils;->getConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u6d4b\u5230\u5df2\u6709\u8bbe\u5907\u8fde\u63a5 \u5148\u65ad\u5f00  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 231
    sput-boolean v0, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    .line 232
    sput-boolean v0, Lcom/innioasis/y1/utils/BLUtils;->isPairingConnect:Z

    .line 233
    invoke-virtual {v3, v2}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    .line 234
    sput-object p1, Lcom/innioasis/y1/utils/BLUtils;->recordPairingConnect:Landroid/bluetooth/BluetoothDevice;

    return-void

    .line 238
    :cond_1
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ca1\u6709\u8bbe\u5907\u5728\u8fde\u63a5\u72b6\u6001 \u7ee7\u7eed\u914d\u5bf9  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "createBond"

    .line 239
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "BluetoothDevice::class.j\u2026a.getMethod(\"createBond\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final connectClassic(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> connectClassic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getBluetoothValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 273
    :cond_1
    :goto_0
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "adapter"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 277
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    .line 278
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> \u524d\u5f80\u914d\u5bf9 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/BLUtils;->pair(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_2

    .line 281
    :cond_5
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> \u524d\u5f80\u8fde\u63a5 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    const-string v1, "a2dp"

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 285
    :try_start_0
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cb\u8fde\u63a5  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "connect"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 286
    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v4, "clazz.getMethod(\"connect\u2026etoothDevice::class.java)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    sget-object v4, Lcom/innioasis/y1/utils/BLUtils;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v4, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v3, v4

    :goto_1
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final getBondedDevices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    const-string v1, "adapter.bondedDevices"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const-string v0, "a2dp"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const-string v1, "a2dp.connectedDevices"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 549
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 114
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectedDevices "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 30
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "intent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "getDefaultAdapter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    invoke-direct {p0}, Lcom/innioasis/y1/utils/BLUtils;->initBroadcast()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.UUID"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/innioasis/y1/utils/BLUtils;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "receiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 79
    :goto_0
    new-instance v0, Lcom/innioasis/y1/utils/BLUtils$init$1;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/BLUtils$init$1;-><init>()V

    check-cast v0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x2

    .line 78
    invoke-virtual {v2, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public final isActive()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 135
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final onDestroy(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 527
    sput-boolean p1, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    const/4 v0, 0x0

    .line 528
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    .line 529
    sput-boolean p1, Lcom/innioasis/y1/utils/BLUtils;->isConnect:Z

    .line 530
    sput-boolean p1, Lcom/innioasis/y1/utils/BLUtils;->isLoading:Z

    .line 531
    sput-boolean p1, Lcom/innioasis/y1/utils/BLUtils;->isPairingConnect:Z

    .line 532
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordPairingConnect:Landroid/bluetooth/BluetoothDevice;

    .line 533
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordUnPair:Landroid/bluetooth/BluetoothDevice;

    .line 534
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordConnect:Landroid/bluetooth/BluetoothDevice;

    .line 535
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordTest:Landroid/bluetooth/BluetoothDevice;

    .line 536
    sput-object v0, Lcom/innioasis/y1/utils/BLUtils;->recordTest2:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    .line 38
    sput-boolean p1, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sput-object p1, Lcom/innioasis/y1/utils/BLUtils;->intent:Landroid/content/Intent;

    return-void
.end method

.method public final setListener(Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sput-object p1, Lcom/innioasis/y1/utils/BLUtils;->listener:Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    return-void
.end method

.method public final startDiscovery()Z
    .locals 1

    .line 127
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method

.method public final switchBl()V
    .locals 3

    .line 143
    sget-boolean v0, Lcom/innioasis/y1/utils/BLUtils;->isLoading:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "switchBl   \u6b63\u5728\u6253\u5f00 / \u5173\u95ed"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const/4 v0, 0x1

    .line 151
    sput-boolean v0, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    goto :goto_2

    .line 153
    :cond_3
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_2
    return-void
.end method

.method public final test(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    sput-object p1, Lcom/innioasis/y1/utils/BLUtils;->recordTest:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    .line 541
    sput-boolean v0, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    .line 542
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public final unPair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">>>unPair  \u53d6\u6d88\u914d\u5bf9"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/BLUtils;->getConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u6b63\u5728\u8fde\u63a5  \u9700\u8981\u65ad\u8fde"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    .line 254
    sput-boolean v0, Lcom/innioasis/y1/utils/BLUtils;->isActive:Z

    .line 255
    sput-object p1, Lcom/innioasis/y1/utils/BLUtils;->recordUnPair:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "removeBond"

    .line 257
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "BluetoothDevice::class.j\u2026a.getMethod(\"removeBond\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 258
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
