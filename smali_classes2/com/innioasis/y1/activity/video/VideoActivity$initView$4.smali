.class final Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "type",
        "",
        "invoke"
    }
    k = 0x3
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
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoActivity;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9519\u8bef\u76d1\u542c type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const-string v0, "getString(R.string.video_encoding_error)"

    const v1, 0x7f1101c7

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    goto/16 :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;->video:Lcom/innioasis/y1/view/VideoView;

    iget-object v2, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/view/VideoView;->setTipText(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoActivity;->access$getStatusError$p(Lcom/innioasis/y1/activity/video/VideoActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-static {p1, v3}, Lcom/innioasis/y1/activity/video/VideoActivity;->access$setStatusError$p(Lcom/innioasis/y1/activity/video/VideoActivity;Z)V

    .line 107
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;->video:Lcom/innioasis/y1/view/VideoView;

    iget-object v3, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {v3, v1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/view/VideoView;->setTipText(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    const v1, 0x7f1101cc

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4$1;

    iget-object v3, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4}, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4$1;-><init>(Lcom/innioasis/y1/activity/video/VideoActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoActivity$initView$4;->this$0:Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityVideoBinding;->video:Lcom/innioasis/y1/view/VideoView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/VideoView;->setTipText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
