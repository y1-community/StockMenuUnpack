.class final Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ThemeListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.activity.theme.ThemeListActivity$toPathFolder$2$1"
    f = "ThemeListActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;",
            ">;",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->$list:Ljava/util/List;

    iput-object p2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->$list:Ljava/util/List;

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;-><init>(Ljava/util/List;Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 270
    iget v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 271
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->showNone()V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->hideNone()V

    .line 276
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getProgressDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->$list:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 278
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityThemeListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityThemeListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getMark()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 279
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$toPathFolder$2$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    .line 280
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
