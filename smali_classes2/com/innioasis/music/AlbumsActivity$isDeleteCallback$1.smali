.class public final Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "AlbumsActivity.kt"


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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/music/AlbumsActivity$isDeleteCallback$1",
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
.field final synthetic this$0:Lcom/innioasis/music/AlbumsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/AlbumsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    .line 224
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->notifyDataSetChanged()V

    .line 277
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0}, Lcom/innioasis/music/AlbumsActivity;->access$getSongAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/SongListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0}, Lcom/innioasis/music/AlbumsActivity;->access$getSongAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/SongListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public confirm()V
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lcom/innioasis/music/AlbumsActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/AlbumsActivity;->isShowAlbums()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 228
    new-instance v0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;

    iget-object v6, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-direct {v0, v6}, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$1;-><init>(Lcom/innioasis/music/AlbumsActivity;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_0

    .line 247
    :cond_0
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$2;

    iget-object v4, p0, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/innioasis/music/AlbumsActivity$isDeleteCallback$1$confirm$2;-><init>(Lcom/innioasis/music/AlbumsActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method
