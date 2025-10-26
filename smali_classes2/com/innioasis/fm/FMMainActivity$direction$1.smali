.class public final Lcom/innioasis/fm/FMMainActivity$direction$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "FMMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity;->direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/fm/FMMainActivity$direction$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/FMMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    .line 391
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/innioasis/fm/FMMainActivity;->access$setSoundRecordingState(Lcom/innioasis/fm/FMMainActivity;Z)V

    .line 405
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public confirm()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/innioasis/fm/FMMainActivity;->access$setSoundRecordingState(Lcom/innioasis/fm/FMMainActivity;Z)V

    .line 395
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {v2}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v2}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/innioasis/fm/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    .line 394
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$direction$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/innioasis/fm/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
