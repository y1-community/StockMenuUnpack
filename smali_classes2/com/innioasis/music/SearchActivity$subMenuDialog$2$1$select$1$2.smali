.class final Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.music.SearchActivity$subMenuDialog$2$1$select$1$2"
    f = "SearchActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $itemView:Landroid/view/View;

.field final synthetic $select:Lkotlin/jvm/internal/Ref$BooleanRef;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->$select:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->$itemView:Landroid/view/View;

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

    new-instance p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->$select:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->$itemView:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 201
    iget v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->$select:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->$itemView:Landroid/view/View;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080147

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1$2;->$itemView:Landroid/view/View;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    :goto_0
    return-object v0

    .line 202
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
