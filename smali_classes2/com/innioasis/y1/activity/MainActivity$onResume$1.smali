.class final Lcom/innioasis/y1/activity/MainActivity$onResume$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/MainActivity;->onResume()V
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
    c = "com.innioasis.y1.activity.MainActivity$onResume$1"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0xdf,
        0xe1
    }
    m = "invokeSuspend"
    n = {
        "view"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

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
            "Lcom/innioasis/y1/activity/MainActivity$onResume$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1/activity/MainActivity$onResume$1;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 218
    iget v1, p0, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 219
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v1, p1

    :goto_0
    move-object p1, p0

    .line 220
    :cond_3
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v4, :cond_8

    .line 221
    iget-object v4, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v4, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v4

    iget-object v6, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-static {v6}, Lcom/innioasis/y1/activity/MainActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/MainActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, "adapter"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_4
    invoke-virtual {v6}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v6

    if-lt v4, v6, :cond_6

    :cond_5
    iget-object v4, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/innioasis/y1/activity/MainActivity;->setMark(I)V

    .line 222
    :cond_6
    iget-object v4, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/innioasis/y1/databinding/ActivityMainBinding;->rcList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->this$0:Lcom/innioasis/y1/activity/MainActivity;

    invoke-virtual {v5}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    :cond_7
    iput-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    .line 223
    move-object v6, p1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->label:I

    invoke-static {v4, v5, v6}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    .line 225
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/innioasis/y1/activity/MainActivity$onResume$1$1;

    invoke-direct {v4, v1, v5}, Lcom/innioasis/y1/activity/MainActivity$onResume$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v5, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;->label:I

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 230
    :cond_9
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
