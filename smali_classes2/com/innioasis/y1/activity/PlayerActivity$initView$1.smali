.class final Lcom/innioasis/y1/activity/PlayerActivity$initView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PlayerActivity;->initView()V
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
    c = "com.innioasis.y1.activity.PlayerActivity$initView$1"
    f = "PlayerActivity.kt"
    i = {}
    l = {
        0x2e,
        0x32,
        0x36
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $playerList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $timber:Landroid/os/CountDownTimer;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PlayerActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/PlayerActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/os/CountDownTimer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/PlayerActivity$initView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$playerList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$timber:Landroid/os/CountDownTimer;

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

    new-instance p1, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    iget-object v1, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$playerList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$timber:Landroid/os/CountDownTimer;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 43
    iget v1, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getTitle$p(Lcom/innioasis/y1/activity/PlayerActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "singer"

    .line 45
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/PlayerActivity$initView$1$1;

    iget-object v6, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-direct {v1, v6, v5}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1$1;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->label:I

    invoke-static {p1, v1, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 47
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$playerList:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-static {v1, v4, v5, v3, v5}, Lcom/innioasis/y1/database/Y1Repository;->getArtistsBySort$default(Lcom/innioasis/y1/database/Y1Repository;ILcom/innioasis/y1/database/Y1Repository$SortArtistsType;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string v1, "album"

    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 50
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/PlayerActivity$initView$1$2;

    iget-object v6, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-direct {v1, v6, v5}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1$2;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->label:I

    invoke-static {p1, v1, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 51
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$playerList:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/innioasis/y1/database/Y1Repository;->getAlbumsSync(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    :cond_7
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/PlayerActivity$initView$1$3;

    iget-object v3, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    iget-object v4, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$timber:Landroid/os/CountDownTimer;

    iget-object v6, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->$playerList:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1$3;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;Landroid/os/CountDownTimer;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 62
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
