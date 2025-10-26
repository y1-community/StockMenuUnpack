.class final Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ThemeListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;->confirm()V
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
    c = "com.innioasis.y1.activity.theme.ThemeListActivity$longTop$1$1$1$confirm$1"
    f = "ThemeListActivity.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1f3
    }
    m = "invokeSuspend"
    n = {
        "item",
        "isReset",
        "i"
    }
    s = {
        "L$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;-><init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 495
    iget v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->I$1:I

    iget v4, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->I$0:I

    iget-object v5, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    iget-object v6, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    .line 522
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 497
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p1

    const/4 v4, 0x0

    move-object p1, p0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 498
    iget-object v5, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v5}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    .line 499
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1$isSuccess$1;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1$isSuccess$1;-><init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, p1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->L$0:Ljava/lang/Object;

    iput-object v5, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->L$1:Ljava/lang/Object;

    iput v4, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->I$0:I

    iput v1, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->I$1:I

    iput v3, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->label:I

    invoke-static {v7, v8, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_2

    return-object v0

    :cond_2
    move-object v10, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v1

    move-object v1, v10

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 508
    invoke-virtual {v6}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v8}, Lcom/innioasis/y1/theme/ThemeManager;->getThemeName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v5, 0x1

    .line 511
    :cond_3
    iget-object p1, v0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    move v4, v5

    .line 513
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5220\u9664 item:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    move-object v0, v1

    move-object v6, v7

    goto/16 :goto_0

    .line 515
    :cond_5
    iget-object v0, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 516
    iget-object v0, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 517
    iget-object p1, p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const-string v0, "hd"

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->showOrHideDialog(Ljava/lang/String;)V

    if-eqz v4, :cond_6

    .line 519
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->setThemeName(Ljava/lang/String;)V

    .line 520
    invoke-static {v3}, Lcom/blankj/utilcode/util/AppUtils;->relaunchApp(Z)V

    .line 522
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
