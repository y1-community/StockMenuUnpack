.class final Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpubActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->showContent(Ljava/lang/String;)V
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
    c = "com.innioasis.y1_eBook.ui.epub.EpubActivity$showContent$1"
    f = "EpubActivity.kt"
    i = {}
    l = {
        0xc1,
        0xc6
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $content:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->$content:Ljava/lang/String;

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

    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->$content:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->label:I

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v6, p1, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    const/4 v11, 0x0

    const-string v7, "file:///android_assets/"

    const-string v8, ""

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    invoke-virtual/range {v6 .. v11}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->label:I

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 195
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v5, p1, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    .line 196
    iget-object v7, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->$content:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v6, "file:///android_assets/"

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    .line 195
    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->label:I

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 199
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$showContent$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$setFontSize(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V

    .line 200
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
