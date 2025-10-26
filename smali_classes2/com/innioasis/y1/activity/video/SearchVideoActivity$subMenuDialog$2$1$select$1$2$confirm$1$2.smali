.class final Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchVideoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.activity.video.SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2"
    f = "SearchVideoActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/video/SearchVideoActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 189
    iget v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Z)V

    .line 192
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->removeMultiSelectItems$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;ZILjava/lang/Object;)V

    .line 193
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const-string v0, "hd"

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->setSelectPosition(IZ)V

    .line 196
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f080146

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    .line 197
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
