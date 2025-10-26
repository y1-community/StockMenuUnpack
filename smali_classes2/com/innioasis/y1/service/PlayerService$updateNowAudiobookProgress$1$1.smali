.class final Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.service.PlayerService$updateNowAudiobookProgress$1$1"
    f = "PlayerService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $songId:Ljava/lang/String;

.field final synthetic $time:Ljava/lang/Long;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/service/PlayerService;


# direct methods
.method constructor <init>(Ljava/lang/Long;Lcom/innioasis/y1/service/PlayerService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/innioasis/y1/service/PlayerService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->$time:Ljava/lang/Long;

    iput-object p2, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    iput-object p3, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->$songId:Ljava/lang/String;

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

    new-instance p1, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->$time:Ljava/lang/Long;

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    iget-object v2, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->$songId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;-><init>(Ljava/lang/Long;Lcom/innioasis/y1/service/PlayerService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 361
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 362
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->$time:Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    .line 363
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->$songId:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_1
    move-object v3, p1

    if-eqz v3, :cond_3

    .line 364
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1$1;->this$0:Lcom/innioasis/y1/service/PlayerService;

    .line 365
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    .line 366
    new-instance v1, Lcom/innioasis/y1/database/Progress;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/innioasis/y1/database/Progress;-><init>(Ljava/lang/String;JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->insertProgress(Lcom/innioasis/y1/database/Progress;)V

    .line 369
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
