.class final Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BasePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->handleMessage(Landroid/os/Message;)V
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
    c = "com.innioasis.y1.base.BasePlayerActivity$handler$1$handleMessage$1"
    f = "BasePlayerActivity.kt"
    i = {
        0x0
    }
    l = {
        0x198,
        0x1b4
    }
    m = "invokeSuspend"
    n = {
        "coverBitmap"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/innioasis/y1/base/BasePlayerActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/innioasis/y1/base/BasePlayerActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

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

    new-instance p1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;

    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;-><init>(Ljava/lang/String;Lcom/innioasis/y1/base/BasePlayerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 400
    iget v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 440
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 401
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5237\u65b0\u4e00\u6b21\u4e13\u8f91\u56fe "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v5}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/innioasis/music/util/Other;->getAlbumCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 404
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/16 v1, 0x140

    if-le p1, v1, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/16 v1, 0xf0

    if-le p1, v1, :cond_3

    sget-object v5, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/innioasis/y1/utils/WallpaperUtils;->getImageThumbnail$default(Lcom/innioasis/y1/utils/WallpaperUtils;Landroid/graphics/Bitmap;IIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_3
    move-object v1, v6

    .line 408
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;

    iget-object v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-direct {v5, v1, v6, v4}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$1;-><init>(Landroid/graphics/Bitmap;Lcom/innioasis/y1/base/BasePlayerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->label:I

    invoke-static {p1, v5, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 435
    :cond_4
    :goto_1
    sget-object p1, Lcom/innioasis/y1/utils/Blur;->INSTANCE:Lcom/innioasis/y1/utils/Blur;

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v3}, Lcom/innioasis/y1/utils/Blur;->createBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 436
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;

    iget-object v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-direct {v5, v6, p1, v1, v4}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;->label:I

    invoke-static {v3, v5, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 440
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
