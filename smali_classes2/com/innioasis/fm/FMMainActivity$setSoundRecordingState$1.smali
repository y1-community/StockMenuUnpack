.class final Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FMMainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity;->setSoundRecordingState(Z)V
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
    c = "com.innioasis.fm.FMMainActivity$setSoundRecordingState$1"
    f = "FMMainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isStart:Z

.field label:I

.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(ZLcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/innioasis/fm/FMMainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->$isStart:Z

    iput-object p2, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

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

    new-instance p1, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;

    iget-boolean v0, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->$isStart:Z

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;-><init>(ZLcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 817
    iget v0, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 818
    iget-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->$isStart:Z

    if-eqz p1, :cond_0

    .line 819
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getHandler$p(Lcom/innioasis/fm/FMMainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRecord$p(Lcom/innioasis/fm/FMMainActivity;)I

    move-result v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 822
    :cond_0
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 823
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->stopRecordingAsync()V

    .line 824
    :cond_1
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getHandler$p(Lcom/innioasis/fm/FMMainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRecord$p(Lcom/innioasis/fm/FMMainActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
