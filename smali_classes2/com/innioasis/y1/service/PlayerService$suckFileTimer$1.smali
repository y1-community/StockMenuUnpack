.class public final Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;
.super Landroid/os/CountDownTimer;
.source "PlayerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/service/PlayerService;-><init>()V
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
        "com/innioasis/y1/service/PlayerService$suckFileTimer$1",
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


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/service/PlayerService;)V
    .locals 4

    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    .line 455
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .line 458
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "dl"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "11111111"

    invoke-virtual {v0, v4, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getMeetingSuckNotNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->setMeetingSuckFile(Z)V

    .line 461
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->isPlayLastSong()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    const/16 v3, 0x12

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v4, v5}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 463
    :goto_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "isMeetingSuckFile"

    invoke-virtual {v0, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "\u5012\u8ba1\u65f6\u5b8c\u6210"

    invoke-virtual {v0, v4, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {v0}, Lcom/innioasis/y1/service/PlayerService;->access$getWakeLock$p(Lcom/innioasis/y1/service/PlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 465
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {v0}, Lcom/innioasis/y1/service/PlayerService;->access$getWakeLock$p(Lcom/innioasis/y1/service/PlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 467
    :cond_3
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "22222222"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
