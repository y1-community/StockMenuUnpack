.class public final Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;
.super Ljava/lang/Object;
.source "GenresActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity;-><init>()V
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
        "com/innioasis/music/GenresActivity$subMenuDialogCallback$1",
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
.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/GenresActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "item"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/Playlist;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v1

    .line 168
    iget-object v3, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const-string v4, "sa"

    invoke-virtual {v3, v4}, Lcom/innioasis/music/GenresActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 169
    iget-object v3, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v3}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 170
    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v4}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 171
    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$3;

    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v3, v4, v1}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$3;-><init>(Lcom/innioasis/music/GenresActivity;Ljava/util/UUID;)V

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 184
    :cond_0
    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v4}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 185
    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;

    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v3, v4, v1}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$4;-><init>(Lcom/innioasis/music/GenresActivity;Ljava/util/UUID;)V

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 198
    :cond_1
    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v4}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 199
    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$5;

    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v3, v4, v1}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$5;-><init>(Lcom/innioasis/music/GenresActivity;Ljava/util/UUID;)V

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 212
    :cond_2
    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v4}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 213
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    const/4 v8, 0x0

    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$6;

    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v3, v4, v1, v5}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$6;-><init>(Lcom/innioasis/music/GenresActivity;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    .line 228
    :cond_3
    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v4}, Lcom/innioasis/music/GenresActivity;->getAdapter4()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 229
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    const/4 v8, 0x0

    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$7;

    iget-object v4, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v3, v4, v1, v5}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$7;-><init>(Lcom/innioasis/music/GenresActivity;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 137
    :cond_4
    new-instance v1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v3, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    move-object v13, v3

    check-cast v13, Landroid/app/Activity;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const v4, 0x7f1100c0

    .line 138
    invoke-virtual {v3, v4}, Lcom/innioasis/music/GenresActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v4, "getString(R.string.is_delete)"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/innioasis/music/GenresActivity;->access$isDeleteCallback$p(Lcom/innioasis/music/GenresActivity;)Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x18

    const/16 v19, 0x0

    const-string v14, ""

    invoke-static/range {v12 .. v19}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 139
    new-instance v4, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$2$1;

    invoke-direct {v4, v3}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$2$1;-><init>(Lcom/innioasis/music/GenresActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v4}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 163
    invoke-virtual {v1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_0

    .line 99
    :cond_5
    iget-object v3, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-static {v3, v2}, Lcom/innioasis/music/GenresActivity;->access$setMultiSelect$p(Lcom/innioasis/music/GenresActivity;Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 100
    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;

    iget-object v9, v0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v3, v9, v1}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;-><init>(Lcom/innioasis/music/GenresActivity;I)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :cond_6
    :goto_0
    return v2
.end method
