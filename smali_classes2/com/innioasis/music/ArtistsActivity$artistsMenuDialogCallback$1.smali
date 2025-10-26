.class public final Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;
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
        "com/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1",
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

    iput-object p1, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 10

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getString()Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v1, 0x7f11019f

    invoke-virtual {v0, v1}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object p1, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/ArtistsActivity;->showArtistsSortDialog()V

    const/4 p1, 0x0

    return p1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v1, 0x7f11012a

    invoke-virtual {v0, v1}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v2, 0x7f110028

    invoke-virtual {v0, v2}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 287
    iget-object p1, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-static {p1, v1}, Lcom/innioasis/music/ArtistsActivity;->access$setMultiSelect$p(Lcom/innioasis/music/ArtistsActivity;Z)V

    .line 288
    iget-object p1, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance p1, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1$select$1;

    iget-object v0, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const/4 v5, 0x0

    invoke-direct {p1, v0, p2, v5}, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1$select$1;-><init>(Lcom/innioasis/music/ArtistsActivity;Lcom/innioasis/music/adapter/SubmenuAdapter$Item;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v2, 0x7f11002d

    invoke-virtual {v0, v2}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 317
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object p2, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v0, 0x7f1100c0

    .line 318
    invoke-virtual {p2, v0}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.is_delete)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/innioasis/music/ArtistsActivity;->access$isDeleteCallback$p(Lcom/innioasis/music/ArtistsActivity;)Lcom/innioasis/music/ArtistsActivity$isDeleteCallback$1;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v4, ""

    invoke-static/range {v2 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 319
    new-instance v0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1$select$2$1;

    invoke-direct {v0, p2}, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1$select$2$1;-><init>(Lcom/innioasis/music/ArtistsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 323
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_1

    .line 328
    :cond_3
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/Playlist;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    .line 329
    iget-object p2, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const-string v0, "sa"

    invoke-virtual {p2, v0}, Lcom/innioasis/music/ArtistsActivity;->showOrHideDialog(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 330
    new-instance p2, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1$select$3;

    iget-object v0, p0, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-direct {p2, v0, p1}, Lcom/innioasis/music/ArtistsActivity$artistsMenuDialogCallback$1$select$3;-><init>(Lcom/innioasis/music/ArtistsActivity;Ljava/util/UUID;)V

    move-object v7, p2

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :goto_1
    return v1
.end method
