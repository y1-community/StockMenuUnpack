.class final Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;
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
    c = "com.innioasis.y1.base.BasePlayerActivity$handler$1$handleMessage$1$2"
    f = "BasePlayerActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bgBitmap:Landroid/graphics/Bitmap;

.field final synthetic $coverBitmap:Landroid/graphics/Bitmap;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/base/BasePlayerActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/base/BasePlayerActivity;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    iput-object p2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->$bgBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->$coverBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;

    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->$bgBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->$coverBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 436
    iget v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 437
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->playerBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->$bgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 438
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5237\u65b0\u4e00\u6b21\u4e13\u8f91\u56fe ------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1$2;->$coverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
