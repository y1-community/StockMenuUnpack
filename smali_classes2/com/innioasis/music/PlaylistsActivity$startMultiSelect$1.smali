.class final Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlaylistsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/PlaylistsActivity;->startMultiSelect(Z)V
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
    c = "com.innioasis.music.PlaylistsActivity$startMultiSelect$1"
    f = "PlaylistsActivity.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x13e,
        0x143,
        0x148
    }
    m = "invokeSuspend"
    n = {
        "select",
        "select",
        "select"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $isAll:Z

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/innioasis/music/PlaylistsActivity;


# direct methods
.method constructor <init>(ZLcom/innioasis/music/PlaylistsActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/innioasis/music/PlaylistsActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->$isAll:Z

    iput-object p2, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

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

    new-instance p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;

    iget-boolean v0, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->$isAll:Z

    iget-object v1, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;-><init>(ZLcom/innioasis/music/PlaylistsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 315
    iget v1, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_0

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 316
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 317
    iget-boolean p1, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->$isAll:Z

    if-eqz p1, :cond_4

    .line 318
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1$1;

    iget-object v7, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-direct {v6, v7, v4}, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1$1;-><init>(Lcom/innioasis/music/PlaylistsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->label:I

    invoke-static {p1, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    move-object p1, p0

    .line 320
    :cond_5
    iget-object v6, p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-static {v6}, Lcom/innioasis/music/PlaylistsActivity;->access$isMultiSelect$p(Lcom/innioasis/music/PlaylistsActivity;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 321
    iget-object v6, p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-static {v6}, Lcom/innioasis/music/PlaylistsActivity;->access$getAdapter(Lcom/innioasis/music/PlaylistsActivity;)Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectPosition()I

    move-result v6

    .line 322
    iget-object v7, p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-virtual {v7}, Lcom/innioasis/music/PlaylistsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v7

    check-cast v7, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;->playlist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v4

    .line 323
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1$2;

    invoke-direct {v8, v1, v6, v4}, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v6, p1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->label:I

    invoke-static {v7, v8, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_7

    return-object v0

    .line 327
    :cond_7
    :goto_2
    iget-boolean v6, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    xor-int/2addr v6, v5

    iput-boolean v6, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const-wide/16 v6, 0x1f4

    .line 328
    move-object v8, p1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v1, p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;->label:I

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    return-object v0

    .line 330
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
