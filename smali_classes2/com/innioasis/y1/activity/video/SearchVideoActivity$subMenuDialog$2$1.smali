.class public final Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;
.super Ljava/lang/Object;
.source "SearchVideoActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->invoke()Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1",
        "Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
    .locals 10

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 216
    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 217
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylist_id()J

    move-result-wide v2

    const-string p1, "sa"

    .line 218
    invoke-virtual {p2, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 219
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    const/4 v6, 0x0

    new-instance p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;

    invoke-direct {p1, p2, v2, v3, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;JLkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 162
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 163
    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$1;

    invoke-direct {v0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    const v0, 0x7f1100c0

    .line 169
    invoke-virtual {p2, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.is_delete)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;

    invoke-direct {v0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    move-object v5, v0

    check-cast v5, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v4, ""

    .line 168
    invoke-static/range {v2 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 210
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p2, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Z)V

    if-ne p1, v1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->allSelect$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;ZILjava/lang/Object;)V

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return v1
.end method
