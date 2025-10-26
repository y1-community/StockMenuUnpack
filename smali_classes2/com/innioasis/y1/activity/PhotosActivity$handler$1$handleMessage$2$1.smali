.class final Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhotosActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.activity.PhotosActivity$handler$1$handleMessage$2$1"
    f = "PhotosActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $ms:J

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $progressDialog:Landroid/app/ProgressDialog;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity;Landroid/graphics/Bitmap;Ljava/lang/String;JLandroid/app/ProgressDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/PhotosActivity;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "J",
            "Landroid/app/ProgressDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$path:Ljava/lang/String;

    iput-wide p4, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$ms:J

    iput-object p6, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$progressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    iget-object v2, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$path:Ljava/lang/String;

    iget-wide v4, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$ms:J

    iget-object v6, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$progressDialog:Landroid/app/ProgressDialog;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;Landroid/graphics/Bitmap;Ljava/lang/String;JLandroid/app/ProgressDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 176
    iget v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object p1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 179
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 180
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9884\u89c8\u56fe\u7247    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$ms:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$setPictureDisplayMods$p(Lcom/innioasis/y1/activity/PhotosActivity;I)V

    .line 182
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$handler$1$handleMessage$2$1;->$progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    .line 183
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
