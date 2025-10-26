.class final Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FMMainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity$connectedService$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
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
    c = "com.innioasis.fm.FMMainActivity$connectedService$2$onServiceConnected$1"
    f = "FMMainActivity.kt"
    i = {}
    l = {
        0x236
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $service:Landroid/os/IBinder;

.field label:I

.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/FMMainActivity;Landroid/os/IBinder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/fm/FMMainActivity;",
            "Landroid/os/IBinder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    iput-object p2, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->$service:Landroid/os/IBinder;

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

    new-instance p1, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;

    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->$service:Landroid/os/IBinder;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;-><init>(Lcom/innioasis/fm/FMMainActivity;Landroid/os/IBinder;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 541
    iget v1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 581
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 542
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->$service:Landroid/os/IBinder;

    const-string v3, "null cannot be cast to non-null type com.innioasis.fm.FmRadioService.MyBinder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/innioasis/fm/FmRadioService$MyBinder;

    invoke-virtual {v1}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/innioasis/fm/FMMainActivity;->access$setFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/fm/FmRadioService;)V

    .line 544
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    sget-object v3, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3

    .line 545
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Lcom/innioasis/fm/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 548
    :cond_3
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {p1, v3}, Lcom/innioasis/y1/service/PlayerService;->setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V

    .line 550
    :goto_1
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-nez p1, :cond_5

    .line 551
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "ServiceConnection: Error: can\'t get Service"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->finish()V

    goto/16 :goto_3

    .line 554
    :cond_5
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->isServiceInit()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 555
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->isDeviceOpen()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 556
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/innioasis/fm/FmRadioService;->tuneStationAsync(F)V

    .line 557
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 558
    :cond_6
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/fm/FmRadioService;->isPowerUp()Z

    move-result v3

    invoke-static {p1, v3}, Lcom/innioasis/fm/FMMainActivity;->access$setMIsPlaying$p(Lcom/innioasis/fm/FMMainActivity;Z)V

    goto :goto_2

    .line 561
    :cond_7
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->initService()V

    .line 562
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 565
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    check-cast v3, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    invoke-virtual {p1, v3}, Lcom/innioasis/fm/FmRadioService;->setRecorderListener(Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;)V

    .line 566
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1$1;

    iget-object v4, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-direct {v3, v4, v1}, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1$1;-><init>(Lcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/fm/FMMainActivity$connectedService$2$onServiceConnected$1;->label:I

    invoke-static {p1, v3, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 581
    :cond_a
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
