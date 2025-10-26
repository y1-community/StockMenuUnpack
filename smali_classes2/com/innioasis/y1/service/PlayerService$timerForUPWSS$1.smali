.class public final Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "com/innioasis/y1/service/PlayerService$timerForUPWSS$1",
        "Landroid/os/CountDownTimer;",
        "lock",
        "",
        "getLock",
        "()Z",
        "setLock",
        "(Z)V",
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
.field private lock:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 376
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final getLock()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;->lock:Z

    return v0
.end method

.method public onFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;->lock:Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

.method public final setLock(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;->lock:Z

    return-void
.end method
