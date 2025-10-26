.class final Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,519:1\n1#2:520\n*E\n"
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
    c = "com.innioasis.music.SearchActivity$subMenuDialog$2$1$select$3$1"
    f = "SearchActivity.kt"
    i = {}
    l = {
        0x12e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $playlistId:Ljava/util/UUID;

.field label:I

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SearchActivity;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/SearchActivity;",
            "Ljava/util/UUID;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->this$0:Lcom/innioasis/music/SearchActivity;

    iput-object p2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->$playlistId:Ljava/util/UUID;

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

    new-instance p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->this$0:Lcom/innioasis/music/SearchActivity;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->$playlistId:Ljava/util/UUID;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;-><init>(Lcom/innioasis/music/SearchActivity;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 280
    iget v1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 282
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {p1}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 284
    iget-object v4, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {v4}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    if-ltz v1, :cond_3

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v1, v5, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_3
    check-cast v3, Lcom/innioasis/music/SearchActivity$Item;

    if-nez v3, :cond_4

    goto :goto_0

    .line 285
    :cond_4
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6dfb\u52a0\u5230\u64ad\u653e\u5217\u8868 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v3}, Lcom/innioasis/music/SearchActivity$Item;->getType()I

    move-result v1

    if-eq v1, v2, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    goto :goto_0

    .line 294
    :cond_5
    invoke-virtual {v3}, Lcom/innioasis/music/SearchActivity$Item;->getAlbum()Lcom/innioasis/music/data/Album;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->$playlistId:Ljava/util/UUID;

    .line 295
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v5

    invoke-virtual {v3}, Lcom/innioasis/music/SearchActivity$Item;->getAlbum()Lcom/innioasis/music/data/Album;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 296
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayList(Ljava/util/List;Ljava/util/UUID;)V

    goto :goto_0

    .line 288
    :cond_6
    invoke-virtual {v3}, Lcom/innioasis/music/SearchActivity$Item;->getSong()Lcom/innioasis/y1/database/Song;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->$playlistId:Ljava/util/UUID;

    .line 289
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayList(Lcom/innioasis/y1/database/Song;Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 302
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1$3;

    iget-object v4, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-direct {v1, v4, v3}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1$3;-><init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 314
    :cond_8
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
