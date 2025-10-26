.class final Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0014\u0008\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u0008\"\u0008\u0008\u0003\u0010\u0007*\u00020\t*\u00020\nH\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "VM",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "S",
        "I",
        "Lcom/innioasis/y1_eBook/base/BaseState;",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
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
    c = "com.innioasis.y1_eBook.base.BaseFragment$onCreateView$4"
    f = "BaseFragment.kt"
    i = {}
    l = {
        0x6e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/y1_eBook/base/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1_eBook/base/BaseFragment<",
            "TVB;TVM;TS;TI;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/base/BaseFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/base/BaseFragment<",
            "TVB;TVM;TS;TI;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->this$0:Lcom/innioasis/y1_eBook/base/BaseFragment;

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

    new-instance p1, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;

    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->this$0:Lcom/innioasis/y1_eBook/base/BaseFragment;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;-><init>(Lcom/innioasis/y1_eBook/base/BaseFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 109
    iget v1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    .line 110
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->this$0:Lcom/innioasis/y1_eBook/base/BaseFragment;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/base/BaseFragment;->getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/base/BaseViewModel;->getMutableSharedFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    new-instance v1, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4$1;

    iget-object v3, p0, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->this$0:Lcom/innioasis/y1_eBook/base/BaseFragment;

    invoke-direct {v1, v3}, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4$1;-><init>(Lcom/innioasis/y1_eBook/base/BaseFragment;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1_eBook/base/BaseFragment$onCreateView$4;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/MutableSharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
