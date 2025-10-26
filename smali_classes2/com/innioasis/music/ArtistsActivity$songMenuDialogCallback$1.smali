.class public final Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;
.super Ljava/lang/Object;
.source "ArtistsActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/ArtistsActivity;-><init>()V
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
        "com/innioasis/music/ArtistsActivity$songMenuDialogCallback$1",
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
.field final synthetic this$0:Lcom/innioasis/music/ArtistsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/ArtistsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "item"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getString()Ljava/lang/String;

    move-result-object v2

    .line 409
    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v4, 0x7f1101a0

    invoke-virtual {v3, v4}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 411
    iget-object v1, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-static {v1}, Lcom/innioasis/music/ArtistsActivity;->access$getArtist$p(Lcom/innioasis/music/ArtistsActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Album:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-static {v1, v2, v3}, Lcom/innioasis/music/ArtistsActivity;->access$switchSongSortType(Lcom/innioasis/music/ArtistsActivity;Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    return v4

    .line 415
    :cond_0
    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v5, 0x7f1101a2

    invoke-virtual {v3, v5}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 416
    iget-object v1, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-static {v1}, Lcom/innioasis/music/ArtistsActivity;->access$sortBySongName(Lcom/innioasis/music/ArtistsActivity;)V

    return v5

    .line 420
    :cond_1
    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v6, 0x7f1101a1

    invoke-virtual {v3, v6}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    iget-object v1, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-static {v1}, Lcom/innioasis/music/ArtistsActivity;->access$sortByFileName(Lcom/innioasis/music/ArtistsActivity;)V

    return v5

    .line 425
    :cond_2
    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v5, 0x7f11012a

    invoke-virtual {v3, v5}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v5, 0x7f110028

    invoke-virtual {v3, v5}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_4

    .line 426
    iget-object v2, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-static {v2, v4}, Lcom/innioasis/music/ArtistsActivity;->access$setMultiSelect$p(Lcom/innioasis/music/ArtistsActivity;Z)V

    .line 427
    iget-object v2, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    const/4 v7, 0x0

    new-instance v2, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$1;

    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const/4 v8, 0x0

    invoke-direct {v2, v3, v1, v8}, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$1;-><init>(Lcom/innioasis/music/ArtistsActivity;Lcom/innioasis/music/adapter/SubmenuAdapter$Item;Lkotlin/coroutines/Continuation;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_1

    .line 462
    :cond_4
    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v5, 0x7f110127

    invoke-virtual {v3, v5}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 463
    new-instance v1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v2, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    move-object v6, v2

    check-cast v6, Landroid/app/Activity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v3, 0x7f1100c0

    .line 464
    invoke-virtual {v2, v3}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "getString(R.string.is_delete)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/innioasis/music/ArtistsActivity;->access$isDeleteCallback$p(Lcom/innioasis/music/ArtistsActivity;)Lcom/innioasis/music/ArtistsActivity$isDeleteCallback$1;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    const-string v7, ""

    invoke-static/range {v5 .. v12}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 465
    new-instance v3, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$2$1;

    invoke-direct {v3, v2}, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$2$1;-><init>(Lcom/innioasis/music/ArtistsActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 474
    invoke-virtual {v1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_1

    .line 479
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/Playlist;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v1

    .line 481
    iget-object v2, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const-string v3, "sa"

    invoke-virtual {v2, v3}, Lcom/innioasis/music/ArtistsActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 483
    iget-object v2, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-virtual {v2}, Lcom/innioasis/music/ArtistsActivity;->isShowArtists()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 484
    new-instance v2, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$3;

    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-direct {v2, v3, v1}, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$3;-><init>(Lcom/innioasis/music/ArtistsActivity;Ljava/util/UUID;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 500
    new-instance v2, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$4;

    iget-object v3, v0, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-direct {v2, v3, v1}, Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1$select$4;-><init>(Lcom/innioasis/music/ArtistsActivity;Ljava/util/UUID;)V

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0x1f

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :goto_1
    return v4
.end method
