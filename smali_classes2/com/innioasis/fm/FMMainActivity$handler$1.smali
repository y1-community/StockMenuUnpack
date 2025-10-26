.class public final Lcom/innioasis/fm/FMMainActivity$handler$1;
.super Landroid/os/Handler;
.source "FMMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/innioasis/fm/FMMainActivity$handler$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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
.method constructor <init>(Lcom/innioasis/fm/FMMainActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    .line 118
    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v1}, Lcom/innioasis/fm/FMMainActivity;->access$getVolumeLinearHide$p(Lcom/innioasis/fm/FMMainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeLinear:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmSearchTimeout$p(Lcom/innioasis/fm/FMMainActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 122
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/FMMainActivity;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService;->stopScan()Z

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/FMMainActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/FMMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "screen_off_timeout"

    .line 126
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 130
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmSlideFrequency$p(Lcom/innioasis/fm/FMMainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 135
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 136
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1, v1, v2}, Lcom/innioasis/fm/FMMainActivity;->access$setFrequency(Lcom/innioasis/fm/FMMainActivity;FZ)V

    goto :goto_1

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1, v1, v2}, Lcom/innioasis/fm/FMMainActivity;->access$setFrequency(Lcom/innioasis/fm/FMMainActivity;FZ)V

    goto :goto_1

    .line 141
    :cond_6
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRecord$p(Lcom/innioasis/fm/FMMainActivity;)I

    move-result p1

    if-ne v0, p1, :cond_8

    .line 142
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$isRecordIcon$p(Lcom/innioasis/fm/FMMainActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 143
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingIcon:Landroid/widget/ImageView;

    const v0, 0x7f0800d3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    :cond_7
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingIcon:Landroid/widget/ImageView;

    const v0, 0x7f0800d2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :goto_0
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$isRecordIcon$p(Lcom/innioasis/fm/FMMainActivity;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/innioasis/fm/FMMainActivity;->access$setRecordIcon$p(Lcom/innioasis/fm/FMMainActivity;Z)V

    .line 148
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$handler$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRecord$p(Lcom/innioasis/fm/FMMainActivity;)I

    move-result p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/innioasis/fm/FMMainActivity$handler$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    :goto_1
    return-void
.end method
