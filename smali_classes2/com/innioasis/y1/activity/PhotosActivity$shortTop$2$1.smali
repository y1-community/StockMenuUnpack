.class final Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhotosActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhotosActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotosActivity.kt\ncom/innioasis/y1/activity/PhotosActivity$shortTop$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,853:1\n1851#2,2:854\n*S KotlinDebug\n*F\n+ 1 PhotosActivity.kt\ncom/innioasis/y1/activity/PhotosActivity$shortTop$2$1\n*L\n641#1:854,2\n*E\n"
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
    c = "com.innioasis.y1.activity.PhotosActivity$shortTop$2$1"
    f = "PhotosActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/innioasis/y1/activity/PhotosActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
            ">;",
            "Lcom/innioasis/y1/activity/PhotosActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->$items:Ljava/util/List;

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;-><init>(Ljava/util/List;Lcom/innioasis/y1/activity/PhotosActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 640
    iget v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 641
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->$items:Ljava/util/List;

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    .line 854
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    .line 642
    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getAdapter(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->addData(Ljava/lang/Object;)V

    goto :goto_0

    .line 645
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getAdapter(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getAdapter(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    .line 646
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    .line 647
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 649
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getAdapter(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 650
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->showNone()V

    goto :goto_1

    .line 652
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->hideNone()V

    .line 654
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
