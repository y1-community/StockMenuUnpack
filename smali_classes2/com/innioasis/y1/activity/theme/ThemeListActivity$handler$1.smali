.class public final Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;
.super Landroid/os/Handler;
.source "ThemeListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity;-><init>()V
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
        "com/innioasis/y1/activity/theme/ThemeListActivity$handler$1",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    .line 151
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    .line 154
    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getWhatshowpicture$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "getString(R.string.loading)"

    const v4, 0x7f1100c7

    if-ne v0, v1, :cond_5

    .line 155
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    new-instance v1, Lcom/innioasis/y1/utils/LoadingDialog;

    iget-object v5, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v5}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v5, v4}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/innioasis/y1/utils/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setProgressDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lcom/innioasis/y1/utils/LoadingDialog;)V

    .line 156
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getProgressDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$isFull(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0, v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setFull(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Z)V

    .line 161
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;

    iget-object v4, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const/4 v5, 0x0

    invoke-direct {v0, p1, v4, v5}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;-><init>(Ljava/lang/String;Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 163
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getFullImageView(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080137

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getProgressDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    :cond_4
    return-void

    .line 202
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getShowDefaultPicture$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)I

    move-result p1

    if-ne v0, p1, :cond_8

    .line 203
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    new-instance v0, Lcom/innioasis/y1/utils/LoadingDialog;

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v1, v4}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/innioasis/y1/utils/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setProgressDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lcom/innioasis/y1/utils/LoadingDialog;)V

    .line 204
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getProgressDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    .line 206
    :cond_6
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$isFull(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 207
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1, v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setFull(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Z)V

    .line 209
    :cond_7
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getFullImageView(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080138

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getProgressDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    :cond_8
    :goto_1
    return-void
.end method
