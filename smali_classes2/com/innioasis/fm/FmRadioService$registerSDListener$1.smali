.class public final Lcom/innioasis/fm/FmRadioService$registerSDListener$1;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FmRadioService;->registerSDListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/fm/FmRadioService$registerSDListener$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.method constructor <init>(Lcom/innioasis/fm/FmRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    .line 1095
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->getMFMRecorder()Lcom/innioasis/fm/FMRecorder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1098
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "SD receiver: FMRecorder is not present!!"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1103
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 1106
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "MEDIA_MOUNTED"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->getMFMRecorder()Lcom/innioasis/fm/FMRecorder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FMRecorder;->onSDInserted()V

    return-void

    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 1111
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 1113
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->isRecordingCardUnmount(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1114
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "MEDIA_EJECT"

    invoke-virtual {p1, v1, p2}, Ltimber/log/Timber$Forest;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->getMFMRecorder()Lcom/innioasis/fm/FMRecorder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FMRecorder;->getState()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_4

    .line 1116
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "old state is recording"

    invoke-virtual {p1, v1, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService;->onRecorderError(I)V

    .line 1118
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->getMFMRecorder()Lcom/innioasis/fm/FMRecorder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FMRecorder;->discardRecording()V

    :cond_4
    return-void
.end method
