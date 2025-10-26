.class public final Lcom/innioasis/y1/service/StateBarService$receiver$2$1;
.super Lcom/innioasis/y1/receiver/BaseReceiver;
.source "StateBarService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/service/StateBarService$receiver$2;->invoke()Lcom/innioasis/y1/service/StateBarService$receiver$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/innioasis/y1/service/StateBarService$receiver$2$1",
        "Lcom/innioasis/y1/receiver/BaseReceiver;",
        "updateBattery",
        "",
        "value",
        "",
        "plug",
        "updateBluetooth",
        "isOn",
        "",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/BaseReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBattery(II)V
    .locals 2

    .line 29
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    new-instance v1, Lcom/innioasis/y1/utils/Static$Battery;

    invoke-direct {v1, p1, p2}, Lcom/innioasis/y1/utils/Static$Battery;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/Static;->setBatteryValue(Lcom/innioasis/y1/utils/Static$Battery;)V

    return-void
.end method

.method public updateBluetooth(Z)V
    .locals 1

    .line 42
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/Static;->setBluetoothValue(I)V

    return-void
.end method

.method public updateBluetoothConnect(I)V
    .locals 1

    .line 46
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/Static;->setBluetoothValue(I)V

    return-void
.end method

.method public updateHeadset(ZZ)V
    .locals 2

    .line 33
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    new-instance v1, Lcom/innioasis/y1/utils/Static$Headset;

    invoke-direct {v1, p1, p2}, Lcom/innioasis/y1/utils/Static$Headset;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/Static;->setHeadsetValue(Lcom/innioasis/y1/utils/Static$Headset;)V

    if-nez p1, :cond_1

    .line 35
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    sget-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne p1, v0, :cond_1

    .line 36
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p2}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public updateTime()V
    .locals 2

    .line 23
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/Static;->setTimeValue(I)V

    return-void
.end method
