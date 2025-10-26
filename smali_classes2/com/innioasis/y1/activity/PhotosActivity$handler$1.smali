.class public final Lcom/innioasis/y1/activity/PhotosActivity$handler$1;
.super Landroid/os/Handler;
.source "PhotosActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity;-><init>()V
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
        "com/innioasis/y1/activity/PhotosActivity$handler$1",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method public static synthetic $r8$lambda$7tTmpRBKqNflKnhXDL0k2kxlzU8(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->handleMessage$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static final handleMessage$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    .line 138
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getWhatshowpicture$p(Lcom/innioasis/y1/activity/PhotosActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const v2, 0x7f1100c7

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v1, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/innioasis/y1/activity/PhotosActivity$handler$1$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v1, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2;

    iget-object v5, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const/4 v6, 0x0

    invoke-direct {v1, p1, v5, v0, v6}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2;-><init>(Ljava/lang/String;Lcom/innioasis/y1/activity/PhotosActivity;Landroid/app/ProgressDialog;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method
