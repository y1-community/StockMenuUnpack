.class final Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpubActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->setZoom()V
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
    c = "com.innioasis.y1_eBook.ui.epub.EpubActivity$setZoom$1"
    f = "EpubActivity.kt"
    i = {}
    l = {
        0xd5,
        0xdf,
        0xe2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

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

    new-instance p1, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;-><init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 211
    iget v1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->label:I

    const-wide/16 v2, 0xc8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v7, 0x3c

    .line 213
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v6, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->label:I

    invoke-static {v7, v8, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 214
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$getZoom$p(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_5

    .line 215
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$getZoom$p(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)I

    move-result p1

    iget-object v6, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    :goto_1
    if-ge v1, p1, :cond_6

    .line 216
    invoke-virtual {v6}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v7

    check-cast v7, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->zoomIn()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$getZoom$p(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)I

    move-result p1

    if-gez p1, :cond_6

    .line 219
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$getZoom$p(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)I

    move-result p1

    neg-int p1, p1

    iget-object v6, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    :goto_2
    if-ge v1, p1, :cond_6

    .line 220
    invoke-virtual {v6}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v7

    check-cast v7, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object v7, v7, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->zoomOut()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    :cond_6
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->label:I

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 225
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBookEpubBinding;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:window.scrollTo(0,0);"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 226
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->label:I

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 227
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$setZoom$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$getLoadingDialog(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    .line 228
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
