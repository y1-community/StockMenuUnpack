.class public final Lcom/innioasis/y1/activity/video/VideoActivity$handler$2$1;
.super Landroid/os/Handler;
.source "VideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoActivity$handler$2;->invoke()Lcom/innioasis/y1/activity/video/VideoActivity$handler$2$1;
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
        "com/innioasis/y1/activity/video/VideoActivity$handler$2$1",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    .line 434
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x457

    if-ne p1, v0, :cond_0

    .line 438
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;->volumeLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
