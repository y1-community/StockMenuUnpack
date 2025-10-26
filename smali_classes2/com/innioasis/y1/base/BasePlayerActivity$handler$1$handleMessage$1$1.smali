.class final Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BasePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.base.BasePlayerActivity$handler$1$handleMessage$1$1"
    f = "BasePlayerActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $coverBitmap:Landroid/graphics/Bitmap;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lcom/innioasis/y1/base/BasePlayerActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/innioasis/y1/base/BasePlayerActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->$coverBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

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

    new-instance p1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;

    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->$coverBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;-><init>(Landroid/graphics/Bitmap;Lcom/innioasis/y1/base/BasePlayerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 408
    iget v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 409
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->$coverBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 410
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u6e32\u67d3 Activity\u662f\u5426\u9500\u6bc1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/base/BasePlayerActivity;->isDestroyed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg2:Lcom/innioasis/y1/view/ReflectImageView;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/ReflectImageView;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/view/ReflectImageView;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->$coverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/ReflectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg2:Lcom/innioasis/y1/view/ReflectImageView;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/view/ReflectImageView;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/ReflectImageView;->setVisibility(I)V

    .line 434
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
