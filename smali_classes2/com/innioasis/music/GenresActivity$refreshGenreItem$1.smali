.class final Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GenresActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity;->refreshGenreItem()V
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
    c = "com.innioasis.music.GenresActivity$refreshGenreItem$1"
    f = "GenresActivity.kt"
    i = {}
    l = {
        0x267,
        0x271,
        0x275
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/GenresActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/GenresActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

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

    new-instance p1, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;

    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;-><init>(Lcom/innioasis/music/GenresActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 608
    iget v1, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 633
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 608
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 609
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/GenreListAdapter;->getPosition()I

    move-result p1

    if-ltz p1, :cond_7

    .line 610
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/GenreListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 611
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/innioasis/music/adapter/GenreListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/data/Genre;

    .line 612
    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/innioasis/y1/database/Y1Repository;->getArtistsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 613
    sget-object v7, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v7}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/innioasis/y1/database/Y1Repository;->getAlbumsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 615
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1$1;

    iget-object v6, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v3, v6, p1, v4}, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1$1;-><init>(Lcom/innioasis/music/GenresActivity;ILkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->label:I

    invoke-static {v1, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 621
    :cond_3
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/16 v8, 0x20

    if-le v6, v5, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v6}, Lcom/innioasis/music/GenresActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    const v10, 0x7f1100bb

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 622
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v6}, Lcom/innioasis/music/GenresActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    const v10, 0x7f1100ba

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 621
    :goto_0
    iput-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-le v7, v5, :cond_5

    .line 623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v6}, Lcom/innioasis/music/GenresActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1100b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 624
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v6}, Lcom/innioasis/music/GenresActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1100b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 623
    :goto_1
    iput-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 625
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1$2;

    invoke-direct {v6, v1, p1, v4}, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1$2;-><init>(Lcom/innioasis/music/data/Genre;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->label:I

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 629
    :cond_6
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1$3;

    iget-object v3, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {v1, v3, v4}, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1$3;-><init>(Lcom/innioasis/music/GenresActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/music/GenresActivity$refreshGenreItem$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 633
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
