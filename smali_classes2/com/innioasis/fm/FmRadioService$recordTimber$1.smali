.class public final Lcom/innioasis/fm/FmRadioService$recordTimber$1;
.super Landroid/os/CountDownTimer;
.source "FmRadioService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FmRadioService;-><init>()V
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
        "com/innioasis/fm/FmRadioService$recordTimber$1",
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
.field final synthetic this$0:Lcom/innioasis/fm/FmRadioService;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/FmRadioService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService$recordTimber$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    .line 1226
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1230
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRecorderStateChanged \u53d1\u9001\u5e7f\u64ad SAVE_A_RECORDING"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$recordTimber$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.mediatek.fm.SAVE_A_RECORDING"

    .line 1232
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
