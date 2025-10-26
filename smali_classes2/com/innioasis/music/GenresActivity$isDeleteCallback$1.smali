.class public final Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "GenresActivity.kt"


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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/music/GenresActivity$isDeleteCallback$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    .line 251
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {v0, v1}, Lcom/innioasis/music/GenresActivity;->access$clear(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    .line 384
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {v0, v1}, Lcom/innioasis/music/GenresActivity;->access$clear(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    .line 385
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {v0, v1}, Lcom/innioasis/music/GenresActivity;->access$clear(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    .line 386
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {v0, v1}, Lcom/innioasis/music/GenresActivity;->access$clear(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    .line 387
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter4()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {v0, v1}, Lcom/innioasis/music/GenresActivity;->access$clear(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    return-void
.end method

.method public confirm()V
    .locals 10

    .line 253
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lcom/innioasis/music/GenresActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 256
    new-instance v0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v0, v1}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$1;-><init>(Lcom/innioasis/music/GenresActivity;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 275
    new-instance v0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$2;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v0, v1}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$2;-><init>(Lcom/innioasis/music/GenresActivity;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 302
    new-instance v0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$3;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v0, v1}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$3;-><init>(Lcom/innioasis/music/GenresActivity;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 329
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance v0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$4;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v0, v1, v2}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$4;-><init>(Lcom/innioasis/music/GenresActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 354
    :cond_3
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter4()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance v0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v0, v1, v2}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5;-><init>(Lcom/innioasis/music/GenresActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4
    :goto_0
    return-void
.end method
