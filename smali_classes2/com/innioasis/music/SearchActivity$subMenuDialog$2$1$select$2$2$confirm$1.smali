.class final Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;->confirm()V
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
    value = "SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,519:1\n1851#2,2:520\n*S KotlinDebug\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1\n*L\n242#1:520,2\n*E\n"
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
    c = "com.innioasis.music.SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1"
    f = "SearchActivity.kt"
    i = {}
    l = {
        0xfd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/SearchActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/music/SearchActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;-><init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 224
    iget v1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository;->startDeleteSongs()V

    .line 226
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/music/SearchActivity;

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

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 227
    iget-object v3, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {v3}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/SearchActivity$Item;

    if-nez v1, :cond_3

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$Item;->getType()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "\u5220\u9664 "

    const-string v6, "delete"

    if-eq v3, v2, :cond_5

    const/4 v7, 0x2

    if-eq v3, v7, :cond_4

    goto :goto_0

    .line 237
    :cond_4
    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$Item;->getAlbum()Lcom/innioasis/music/data/Album;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 239
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v7

    .line 240
    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$Item;->getAlbum()Lcom/innioasis/music/data/Album;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 239
    invoke-static/range {v7 .. v12}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/Iterable;

    .line 520
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/database/Song;

    .line 243
    sget-object v7, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v7, v6}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v7

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    sget-object v7, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v7}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V

    goto :goto_1

    .line 230
    :cond_5
    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$Item;->getSong()Lcom/innioasis/y1/database/Song;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 231
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v3, v6}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$Item;->getSong()Lcom/innioasis/y1/database/Song;

    move-result-object v5

    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$Item;->getSong()Lcom/innioasis/y1/database/Song;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V

    goto/16 :goto_0

    .line 252
    :cond_6
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository;->endDeleteSongs()V

    .line 253
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;

    iget-object v3, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/music/SearchActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;-><init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 263
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
