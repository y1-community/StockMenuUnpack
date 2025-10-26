.class final Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.innioasis.music.FilesActivity$subMenuSelectCallback$1$select$3"
    f = "FilesActivity.kt"
    i = {}
    l = {
        0xc8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $item:Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

.field label:I

.field final synthetic this$0:Lcom/innioasis/music/FilesActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/adapter/SubmenuAdapter$Item;Lcom/innioasis/music/FilesActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
            "Lcom/innioasis/music/FilesActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->$item:Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

    iput-object p2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->this$0:Lcom/innioasis/music/FilesActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;

    iget-object v0, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->$item:Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

    iget-object v1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;-><init>(Lcom/innioasis/music/adapter/SubmenuAdapter$Item;Lcom/innioasis/music/FilesActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 192
    iget v1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 193
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->$item:Lcom/innioasis/music/adapter/SubmenuAdapter$Item;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/Playlist;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    .line 194
    iget-object v1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v1}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object v1

    const-string v3, "adapter"

    const/4 v4, 0x0

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_2
    invoke-virtual {v1}, Lcom/innioasis/music/adapter/FileListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 195
    iget-object v6, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v6}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_3
    invoke-virtual {v6, v5}, Lcom/innioasis/music/adapter/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 196
    sget-object v6, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v7, "filefile"

    invoke-virtual {v6, v7}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayListByFile(Ljava/io/File;Ljava/util/UUID;)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {p1}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_5
    invoke-virtual {p1}, Lcom/innioasis/music/adapter/FileListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 200
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3$1;

    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-direct {v1, v3, v4}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3$1;-><init>(Lcom/innioasis/music/FilesActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 205
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
