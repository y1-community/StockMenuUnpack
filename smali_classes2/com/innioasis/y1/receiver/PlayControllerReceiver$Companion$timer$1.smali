.class public final Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;
.super Landroid/os/CountDownTimer;
.source "PlayControllerReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/receiver/PlayControllerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
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
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 41
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 44
    invoke-static {}, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->access$getWasPlaying$cp()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq v0, v1, :cond_1

    .line 45
    sget-object v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->Companion:Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Y1Application.app.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;->access$goToSleep(Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;Landroid/content/Context;)V

    .line 47
    :cond_1
    sget-object v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->Companion:Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->access$setLock$cp(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
