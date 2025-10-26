.class final Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FMMainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity;->setPlayFrequency(F)V
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
    c = "com.innioasis.fm.FMMainActivity$setPlayFrequency$1"
    f = "FMMainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $frequency:F

.field label:I

.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(FLcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/innioasis/fm/FMMainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->$frequency:F

    iput-object p2, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

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

    new-instance p1, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;

    iget v0, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->$frequency:F

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;-><init>(FLcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 621
    iget v0, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 622
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    iget v0, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->$frequency:F

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 623
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u64ad\u653e\u9891\u7387 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->$frequency:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->isPowerUp()Z

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 627
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->$frequency:F

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService;->tuneStationAsync(F)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;->$frequency:F

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 632
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
