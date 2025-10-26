.class final Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AllAudiobooksActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.activity.AllAudiobooksActivity$initView$1$4"
    f = "AllAudiobooksActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $timber:Landroid/os/CountDownTimer;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;Landroid/os/CountDownTimer;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/AllAudiobooksActivity;",
            "Landroid/os/CountDownTimer;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->$timber:Landroid/os/CountDownTimer;

    iput-object p3, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;

    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    iget-object v1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->$timber:Landroid/os/CountDownTimer;

    iget-object v2, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;Landroid/os/CountDownTimer;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 59
    iget v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    const-string v0, "hl"

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->$timber:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 62
    iget-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->showOrHideNone(I)V

    .line 63
    iget-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->$audiobooksList:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->setItems(Ljava/util/List;)V

    .line 64
    iget-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->lvAudiobooks:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1$4;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
