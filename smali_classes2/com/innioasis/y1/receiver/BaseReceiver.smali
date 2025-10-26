.class public abstract Lcom/innioasis/y1/receiver/BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u0018\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\nH&J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\rH&J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\nH&J\u0018\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\rH&J\u0008\u0010\u001f\u001a\u00020\u000fH&R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/innioasis/y1/receiver/BaseReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "intentFilter",
        "Landroid/content/IntentFilter;",
        "getIntentFilter",
        "()Landroid/content/IntentFilter;",
        "intentFilter$delegate",
        "Lkotlin/Lazy;",
        "newPlug",
        "",
        "oldPlug",
        "temp",
        "",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "toHome",
        "updateBattery",
        "value",
        "plug",
        "updateBluetooth",
        "isOn",
        "updateBluetoothConnect",
        "connectState",
        "updateHeadset",
        "isPlugged",
        "isMicrophone",
        "updateTime",
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


# instance fields
.field private final intentFilter$delegate:Lkotlin/Lazy;

.field private newPlug:I

.field private oldPlug:I

.field private temp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->init(Landroid/content/Context;)V

    .line 29
    sget-object v0, Lcom/innioasis/y1/receiver/BaseReceiver$intentFilter$2;->INSTANCE:Lcom/innioasis/y1/receiver/BaseReceiver$intentFilter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->intentFilter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final toHome(Landroid/content/Context;)V
    .locals 2

    .line 168
    iget v0, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->newPlug:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->oldPlug:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "fine"

    const-string v1, "---------------"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->intentFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string p1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 113
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    goto/16 :goto_5

    .line 115
    :cond_2
    iput-boolean v7, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->temp:Z

    .line 116
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v8, [Ljava/lang/Object;

    const-string v0, "\u84dd\u7259A2DP\u8fde\u63a5\u72b6\u6001 \u6253\u5f00"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetoothConnect(I)V

    .line 118
    sget-object p1, Lcom/innioasis/y1/utils/Utils;->INSTANCE:Lcom/innioasis/y1/utils/Utils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Utils;->changeToBT()V

    goto/16 :goto_5

    .line 132
    :cond_3
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v8, [Ljava/lang/Object;

    const-string v0, "\u84dd\u7259A2DP\u8fde\u63a5\u72b6\u6001 \u8fde\u63a5\u4e2d"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0, v6}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetoothConnect(I)V

    goto/16 :goto_5

    .line 122
    :cond_4
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string p2, "restore"

    invoke-virtual {p1, p2}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    iget-boolean p2, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->temp:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-boolean p1, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->temp:Z

    if-eqz p1, :cond_5

    .line 124
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 p2, 0x8

    invoke-static {p1, p2, v8, v6, v5}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 126
    :cond_5
    iput-boolean v8, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->temp:Z

    .line 127
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v8, [Ljava/lang/Object;

    const-string v0, "\u84dd\u7259A2DP\u8fde\u63a5\u72b6\u6001 \u65ad\u8fde"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getFmService()Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->resetSoundChannel()V

    .line 129
    :cond_6
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetoothConnect(I)V

    goto/16 :goto_5

    :sswitch_1
    const-string p1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_5

    .line 140
    :cond_7
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    goto/16 :goto_5

    .line 142
    :cond_8
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v8, [Ljava/lang/Object;

    const-string v0, "\u84dd\u7259\u9002\u914d\u5668\u8fde\u63a5\u72b6\u6001 \u6253\u5f00"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetoothConnect(I)V

    .line 145
    sget-object p1, Lcom/innioasis/y1/utils/Utils;->INSTANCE:Lcom/innioasis/y1/utils/Utils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Utils;->changeToBT()V

    goto/16 :goto_5

    .line 153
    :cond_9
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v8, [Ljava/lang/Object;

    const-string v0, "\u84dd\u7259\u9002\u914d\u5668\u8fde\u63a5\u72b6\u6001 \u8fde\u63a5\u4e2d"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0, v6}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetoothConnect(I)V

    goto/16 :goto_5

    .line 149
    :cond_a
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v8, [Ljava/lang/Object;

    const-string v0, "\u84dd\u7259\u9002\u914d\u5668\u8fde\u63a5\u72b6\u6001 \u5173\u95ed"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetoothConnect(I)V

    goto/16 :goto_5

    :sswitch_2
    const-string p1, "android.intent.action.TIME_TICK"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_5

    .line 56
    :cond_b
    invoke-virtual {p0}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateTime()V

    goto/16 :goto_5

    :sswitch_3
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_5

    .line 95
    :cond_c
    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_f

    const/16 p2, 0xa

    if-eq p1, p2, :cond_e

    const/16 p2, 0xc

    if-eq p1, p2, :cond_d

    goto/16 :goto_5

    .line 105
    :cond_d
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u84dd\u7259\u72b6\u6001 \u6253\u5f00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetooth(Z)V

    goto/16 :goto_5

    .line 100
    :cond_e
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u84dd\u7259\u72b6\u6001 \u5173\u95ed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0, v8}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBluetooth(Z)V

    goto/16 :goto_5

    .line 97
    :cond_f
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_19

    const/4 p2, 0x7

    invoke-static {p1, p2, v8, v6, v5}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto/16 :goto_5

    :sswitch_4
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string v0, "level"

    .line 60
    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    .line 61
    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x64

    .line 62
    div-int/2addr v0, v1

    const-string v1, "plugged"

    .line 63
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 64
    invoke-virtual {p0, v0, p2}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateBattery(II)V

    .line 66
    iput p2, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->newPlug:I

    .line 67
    invoke-direct {p0, p1}, Lcom/innioasis/y1/receiver/BaseReceiver;->toHome(Landroid/content/Context;)V

    .line 68
    iget p1, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->newPlug:I

    iput p1, p0, Lcom/innioasis/y1/receiver/BaseReceiver;->oldPlug:I

    if-ne v0, v6, :cond_19

    .line 71
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->saveState()V

    goto/16 :goto_5

    :sswitch_5
    const-string p1, "android.intent.action.HEADSET_PLUG"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_5

    :cond_11
    const-string p1, "state"

    .line 75
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 80
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v7, :cond_12

    const/4 p1, 0x1

    goto :goto_0

    :cond_12
    const/4 p1, 0x0

    :goto_0
    const-string v1, "microphone"

    .line 81
    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_13

    const/4 p2, 0x1

    goto :goto_1

    :cond_13
    const/4 p2, 0x0

    .line 79
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/receiver/BaseReceiver;->updateHeadset(ZZ)V

    if-nez v0, :cond_19

    .line 85
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_16

    const/4 p2, 0x6

    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    goto :goto_2

    :cond_14
    move-object v0, v5

    :goto_2
    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq v0, v1, :cond_15

    goto :goto_3

    :cond_15
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {p1, p2, v7}, Lcom/innioasis/y1/service/PlayerService;->pause(IZ)V

    .line 86
    :cond_16
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v5

    :cond_17
    sget-object p1, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v5, p1, :cond_19

    .line 87
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_4

    :cond_18
    sget-object p2, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/service/PlayerService;->setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V

    .line 88
    :goto_4
    sget-object p1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/16 p2, 0x14

    invoke-virtual {p1, v8, p2}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    :cond_19
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x63ecb970 -> :sswitch_5
        -0x5bb23923 -> :sswitch_4
        -0x5b36f014 -> :sswitch_3
        -0x5a2f0b56 -> :sswitch_2
        0x42f3be3f -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract updateBattery(II)V
.end method

.method public abstract updateBluetooth(Z)V
.end method

.method public abstract updateBluetoothConnect(I)V
.end method

.method public abstract updateHeadset(ZZ)V
.end method

.method public abstract updateTime()V
.end method
