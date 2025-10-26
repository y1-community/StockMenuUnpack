.class public final Lcom/innioasis/y1/utils/TempUtil;
.super Ljava/lang/Object;
.source "TempUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0006\u0010\u0010\u001a\u00020\u000eJ\u0006\u0010\u0011\u001a\u00020\u000eR$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/TempUtil;",
        "",
        "()V",
        "value",
        "",
        "deadBeforeTime",
        "getDeadBeforeTime",
        "()J",
        "setDeadBeforeTime",
        "(J)V",
        "deadBeforeTime2",
        "getDeadBeforeTime2",
        "setDeadBeforeTime2",
        "setScreenOn",
        "",
        "time",
        "startAudiobookShutdown",
        "startShutdown",
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
.field public static final INSTANCE:Lcom/innioasis/y1/utils/TempUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/TempUtil;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/TempUtil;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setScreenOn(J)V
    .locals 7

    .line 85
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/AlarmManager;

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 89
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const-class v6, Lcom/innioasis/y1/receiver/AutoShutdownReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    .line 87
    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 91
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    const/4 p1, 0x2

    .line 93
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDeadBeforeTime()J
    .locals 4

    .line 29
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "deadBeforeTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDeadBeforeTime2()J
    .locals 4

    .line 38
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "deadBeforeTime2"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setDeadBeforeTime(J)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "deadBeforeTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;J)Z

    return-void
.end method

.method public final setDeadBeforeTime2(J)V
    .locals 2

    .line 40
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "deadBeforeTime2"

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;J)Z

    return-void
.end method

.method public final startAudiobookShutdown()V
    .locals 3

    .line 98
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime2()J

    move-result-wide v0

    .line 99
    sget-object v2, Lcom/innioasis/y1/Y1Application;->timer2:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 100
    :cond_0
    new-instance v2, Lcom/innioasis/y1/utils/TempUtil$startAudiobookShutdown$1;

    invoke-direct {v2, v0, v1}, Lcom/innioasis/y1/utils/TempUtil$startAudiobookShutdown$1;-><init>(J)V

    check-cast v2, Landroid/os/CountDownTimer;

    sput-object v2, Lcom/innioasis/y1/Y1Application;->timer2:Landroid/os/CountDownTimer;

    .line 113
    sget-object v0, Lcom/innioasis/y1/Y1Application;->timer2:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public final startShutdown()V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/utils/TempUtil;->setScreenOn(J)V

    .line 47
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 48
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 49
    :cond_1
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/Y1Application$Companion;->setTimer(Landroid/os/CountDownTimer;)V

    .line 53
    :cond_2
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    new-instance v3, Lcom/innioasis/y1/utils/TempUtil$startShutdown$1;

    invoke-direct {v3, v0, v1}, Lcom/innioasis/y1/utils/TempUtil$startShutdown$1;-><init>(J)V

    check-cast v3, Landroid/os/CountDownTimer;

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/Y1Application$Companion;->setTimer(Landroid/os/CountDownTimer;)V

    .line 81
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_3
    return-void
.end method
