.class final Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.music.SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3"
    f = "SearchActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/SearchActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

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

    new-instance p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;-><init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 253
    iget v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 254
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {p1}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->removeMultiSelectItems$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;ZILjava/lang/Object;)V

    .line 255
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    const-string v0, "hd"

    invoke-virtual {p1, v0}, Lcom/innioasis/music/SearchActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {p1}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {p1}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->setSelectPosition(IZ)V

    .line 258
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "vb.searchHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const v1, 0x7f080147

    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 259
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->title:Landroid/widget/TextView;

    const-string v1, "vb.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06025c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 260
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const-string v1, "vb.info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1$3;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 262
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
