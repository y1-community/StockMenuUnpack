.class public final Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;
.super Ljava/lang/Object;
.source "AlbumsActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/AlbumsActivity;-><init>()V
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
        "com/innioasis/music/AlbumsActivity$songMenuDialogCallback$1",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
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
.field final synthetic this$0:Lcom/innioasis/music/AlbumsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/AlbumsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 11

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getString()Ljava/lang/String;

    move-result-object p1

    .line 335
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v1, 0x7f1101a2

    invoke-virtual {v0, v1}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$sortBySongName(Lcom/innioasis/music/AlbumsActivity;)V

    return v1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v2, 0x7f1101a1

    invoke-virtual {v0, v2}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$sortByFileName(Lcom/innioasis/music/AlbumsActivity;)V

    return v1

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v2, 0x7f11012a

    invoke-virtual {v0, v2}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 346
    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-virtual {p1, v1}, Lcom/innioasis/music/AlbumsActivity;->multiSelOrAllSel(Z)V

    goto/16 :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v1, 0x7f110028

    invoke-virtual {v0, v1}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-virtual {p1, v2}, Lcom/innioasis/music/AlbumsActivity;->multiSelOrAllSel(Z)V

    goto/16 :goto_0

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v1, 0x7f110127

    invoke-virtual {v0, v1}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 354
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    move-object v4, p2

    check-cast v4, Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v0, 0x7f1100c0

    .line 355
    invoke-virtual {p2, v0}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "getString(R.string.is_delete)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/innioasis/music/AlbumsActivity;->access$isDeleteCallback$p(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v5, ""

    invoke-static/range {v3 .. v10}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 356
    new-instance v0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1$select$1$1;

    invoke-direct {v0, p2}, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1$select$1$1;-><init>(Lcom/innioasis/music/AlbumsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 366
    :cond_4
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/Playlist;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    .line 368
    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const-string v0, "sa"

    invoke-virtual {p2, v0}, Lcom/innioasis/music/AlbumsActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 370
    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-virtual {p2}, Lcom/innioasis/music/AlbumsActivity;->isShowAlbums()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 371
    new-instance p2, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1$select$2;

    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-direct {p2, v0, p1}, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1$select$2;-><init>(Lcom/innioasis/music/AlbumsActivity;Ljava/util/UUID;)V

    move-object v8, p2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_0

    .line 384
    :cond_5
    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance p2, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1$select$3;

    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/innioasis/music/AlbumsActivity$songMenuDialogCallback$1$select$3;-><init>(Lcom/innioasis/music/AlbumsActivity;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return v2
.end method
