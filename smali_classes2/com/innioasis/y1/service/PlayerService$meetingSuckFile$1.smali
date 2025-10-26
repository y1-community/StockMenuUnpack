.class final Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/service/PlayerService;->meetingSuckFile()V
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
    c = "com.innioasis.y1.service.PlayerService$meetingSuckFile$1"
    f = "PlayerService.kt"
    i = {}
    l = {
        0x1f0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/service/PlayerService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/service/PlayerService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

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

    new-instance p1, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;-><init>(Lcom/innioasis/y1/service/PlayerService;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 494
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 494
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 495
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {p1}, Lcom/innioasis/y1/service/PlayerService;->access$getWakeLock$p(Lcom/innioasis/y1/service/PlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x4e20

    invoke-virtual {p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_2
    const-wide/16 v3, 0xbb8

    .line 496
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 497
    :cond_3
    :goto_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v0, "dl"

    invoke-virtual {p1, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "11111111"

    invoke-virtual {p1, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getMeetingSuckNotNext()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 499
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/service/PlayerService;->setMeetingSuckFile(Z)V

    .line 500
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->isPlayLastSong()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto :goto_1

    .line 501
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    const/16 v2, 0x12

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v2, v1, v3, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 502
    :goto_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "isMeetingSuckFile"

    invoke-virtual {p1, v2}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "\u5012\u8ba1\u65f6\u5b8c\u6210"

    invoke-virtual {p1, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "22222222"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
