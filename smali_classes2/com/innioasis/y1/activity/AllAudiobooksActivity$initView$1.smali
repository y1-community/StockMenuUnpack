.class final Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AllAudiobooksActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/AllAudiobooksActivity;->initView()V
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
    c = "com.innioasis.y1.activity.AllAudiobooksActivity$initView$1"
    f = "AllAudiobooksActivity.kt"
    i = {}
    l = {
        0x2f,
        0x33,
        0x37,
        0x3b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $timber:Landroid/os/CountDownTimer;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/innioasis/y1/activity/AllAudiobooksActivity;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;",
            "Lcom/innioasis/y1/activity/AllAudiobooksActivity;",
            "Landroid/os/CountDownTimer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    iput-object p3, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->$timber:Landroid/os/CountDownTimer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    iget-object v2, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->$timber:Landroid/os/CountDownTimer;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/innioasis/y1/activity/AllAudiobooksActivity;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->label:I

    const-string v3, ""

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    iget-object v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    iget-object v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v9}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getKind$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "singer"

    .line 46
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 47
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$1;

    iget-object v9, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-direct {v6, v9, v8}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$1;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->label:I

    invoke-static {v5, v6, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    .line 48
    :cond_5
    :goto_0
    sget-object v5, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v5}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v9

    iget-object v5, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v5}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getFilter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v10, v3

    goto :goto_1

    :cond_6
    move-object v10, v5

    :goto_1
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtistSync$default(Lcom/innioasis/y1/database/Y1Repository;Ljava/lang/String;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_5

    :cond_7
    const-string v10, "album"

    .line 50
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$2;

    iget-object v9, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-direct {v7, v9, v8}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$2;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->label:I

    invoke-static {v5, v7, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    .line 52
    :cond_8
    :goto_2
    sget-object v5, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v5}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v9

    new-instance v5, Lcom/innioasis/music/data/Album;

    iget-object v6, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v6}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getFilter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    move-object v11, v3

    goto :goto_3

    :cond_9
    move-object v11, v6

    :goto_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    const-string v12, ""

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lcom/innioasis/music/data/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static/range {v9 .. v14}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_5

    .line 55
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$3;

    iget-object v9, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-direct {v6, v9, v8}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$3;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->label:I

    invoke-static {v3, v6, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_b

    return-object v1

    .line 56
    :cond_b
    :goto_4
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/innioasis/y1/database/Y1Repository;->getSongsSync(I)Ljava/util/List;

    move-result-object v3

    .line 45
    :goto_5
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;

    iget-object v5, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    iget-object v6, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->$timber:Landroid/os/CountDownTimer;

    iget-object v7, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;Landroid/os/CountDownTimer;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v8, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->label:I

    invoke-static {v2, v3, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_c

    return-object v1

    .line 66
    :cond_c
    :goto_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
