.class final Lcom/innioasis/y1/activity/MainActivity$confirm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/MainActivity;->confirm()V
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
    c = "com.innioasis.y1.activity.MainActivity$confirm$1"
    f = "MainActivity.kt"
    i = {
        0x1
    }
    l = {
        0x124,
        0x127,
        0x12b,
        0x12f
    }
    m = "invokeSuspend"
    n = {
        "count"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/MainActivity$confirm$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1/activity/MainActivity$confirm$1;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 284
    iget v1, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_2

    :cond_2
    iget v1, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 285
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "restore2"

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6309\u4e0b\u5f00\u673a\u65f6\u95f4 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v8}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x4e20

    cmp-long p1, v8, v10

    if-gez p1, :cond_b

    .line 288
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1}, Lcom/innioasis/music/objects/Global;->getRestoreCompleted()Z

    move-result p1

    if-nez p1, :cond_b

    .line 290
    iget-object p1, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/MainActivity;->access$getLock$p(Lcom/innioasis/y1/activity/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 291
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-static {p1, v7}, Lcom/innioasis/y1/activity/MainActivity;->access$setLock$p(Lcom/innioasis/y1/activity/MainActivity;Z)V

    .line 292
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/MainActivity$confirm$1$1;

    iget-object v8, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {v1, v8, v5}, Lcom/innioasis/y1/activity/MainActivity$confirm$1$1;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v7, p0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->label:I

    invoke-static {p1, v1, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    const/4 v1, 0x0

    move-object p1, p0

    .line 294
    :cond_7
    sget-object v8, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v8}, Lcom/innioasis/music/objects/Global;->getRestoreCompleted()Z

    move-result v8

    if-nez v8, :cond_9

    const-wide/16 v8, 0x64

    .line 295
    move-object v10, p1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v1, p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->I$0:I

    iput v4, p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->label:I

    invoke-static {v8, v9, v10}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    add-int/2addr v1, v7

    const/16 v8, 0x64

    if-lt v1, v8, :cond_7

    .line 299
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/innioasis/y1/activity/MainActivity$confirm$1$2;

    iget-object v7, p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {v4, v7, v5}, Lcom/innioasis/y1/activity/MainActivity$confirm$1$2;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v7, p1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v3, p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->label:I

    invoke-static {v1, v4, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    .line 300
    :cond_a
    :goto_2
    iget-object v1, p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-static {v1, v6}, Lcom/innioasis/y1/activity/MainActivity;->access$setLock$p(Lcom/innioasis/y1/activity/MainActivity;Z)V

    goto :goto_3

    :cond_b
    move-object p1, p0

    .line 302
    :goto_3
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v6}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 303
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/innioasis/y1/activity/MainActivity$confirm$1$3;

    iget-object v4, p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {v3, v4, v5}, Lcom/innioasis/y1/activity/MainActivity$confirm$1$3;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p1, Lcom/innioasis/y1/activity/MainActivity$confirm$1;->label:I

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    .line 330
    :cond_d
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
