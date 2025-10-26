.class final Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FMMainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity$allSearch$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
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
    c = "com.innioasis.fm.FMMainActivity$allSearch$3$1$2"
    f = "FMMainActivity.kt"
    i = {}
    l = {
        0x2e8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/FMMainActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/fm/FMMainActivity;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    iput-object p2, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->$it:Ljava/util/List;

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

    new-instance p1, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;

    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->$it:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;-><init>(Lcom/innioasis/fm/FMMainActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 734
    iget v1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 736
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 734
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 735
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$markAll(Lcom/innioasis/fm/FMMainActivity;)V

    .line 736
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->$it:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 738
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    const v4, 0x7f1100b1

    invoke-virtual {v3, v4}, Lcom/innioasis/fm/FMMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->$it:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 737
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 741
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 742
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->$it:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p1, v1}, Lcom/innioasis/fm/FMMainActivity;->access$setPlayFrequency(Lcom/innioasis/fm/FMMainActivity;F)V

    .line 744
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2$1;

    iget-object v3, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2$1;-><init>(Lcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lkotlin/Unit;

    goto :goto_1

    .line 752
    :cond_3
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v0

    invoke-static {p1, v0}, Lcom/innioasis/fm/FMMainActivity;->access$setPlayFrequency(Lcom/innioasis/fm/FMMainActivity;F)V

    .line 753
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$allSearch$3$1$2;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11009d

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p1
.end method
