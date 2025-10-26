.class final Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhotosDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/utils/PhotosDialog;->setWallpaper(Ljava/lang/String;Z)V
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
    c = "com.innioasis.y1.utils.PhotosDialog$setWallpaper$1"
    f = "PhotosDialog.kt"
    i = {}
    l = {
        0xcd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isDesktop:Z

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $progressDialog:Landroid/app/ProgressDialog;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/utils/PhotosDialog;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/innioasis/y1/utils/PhotosDialog;Landroid/app/ProgressDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/innioasis/y1/utils/PhotosDialog;",
            "Landroid/app/ProgressDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$path:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$isDesktop:Z

    iput-object p3, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->this$0:Lcom/innioasis/y1/utils/PhotosDialog;

    iput-object p4, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$progressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;

    iget-object v1, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$isDesktop:Z

    iget-object v3, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->this$0:Lcom/innioasis/y1/utils/PhotosDialog;

    iget-object v4, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$progressDialog:Landroid/app/ProgressDialog;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;-><init>(Ljava/lang/String;ZLcom/innioasis/y1/utils/PhotosDialog;Landroid/app/ProgressDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 197
    iget v1, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 198
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    iget-object v3, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$path:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v4}, Lcom/innioasis/y1/utils/WallpaperUtils;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getBright(Landroid/graphics/Bitmap;)I

    move-result p1

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_2

    .line 199
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    iget-object v0, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$path:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$isDesktop:Z

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->saveWallpaper(Ljava/lang/String;Z)V

    .line 200
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    new-instance v0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1$1;

    iget-object v1, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->this$0:Lcom/innioasis/y1/utils/PhotosDialog;

    iget-object v2, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1$1;-><init>(Lcom/innioasis/y1/utils/PhotosDialog;Landroid/app/ProgressDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->loadBitmap(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1$2;

    iget-object v3, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->$progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->this$0:Lcom/innioasis/y1/utils/PhotosDialog;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1$2;-><init>(Landroid/app/ProgressDialog;Lcom/innioasis/y1/utils/PhotosDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1/utils/PhotosDialog$setWallpaper$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 214
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
