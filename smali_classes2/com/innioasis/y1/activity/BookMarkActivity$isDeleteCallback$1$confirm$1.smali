.class final Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BookMarkActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;->confirm()V
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
    c = "com.innioasis.y1.activity.BookMarkActivity$isDeleteCallback$1$confirm$1"
    f = "BookMarkActivity.kt"
    i = {}
    l = {
        0x72
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $i:Lkotlin/jvm/internal/Ref$IntRef;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/BookMarkActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/innioasis/y1/activity/BookMarkActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/innioasis/y1/activity/BookMarkActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->$i:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->$i:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/innioasis/y1/activity/BookMarkActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 106
    iget v1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->$i:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/BookMarkActivity;->access$getAdapter(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 108
    iget-object p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BookMarkActivity;->access$getAdapter(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->$i:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 109
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-static {v3}, Lcom/innioasis/y1/activity/BookMarkActivity;->access$getAdapter(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/database/Bookmark;

    invoke-virtual {v1, p1}, Lcom/innioasis/y1/database/Y1Repository;->deleteBookmark(Lcom/innioasis/y1/database/Bookmark;)V

    .line 110
    iget-object p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->$i:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->$i:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/2addr p1, v2

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BookMarkActivity;->access$getAdapter(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->removeItems()V

    .line 113
    iget-object p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BookMarkActivity;->access$getAdapter(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 114
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1$1;

    iget-object v3, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1$1;-><init>(Lcom/innioasis/y1/activity/BookMarkActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1$confirm$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 121
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
