.class final Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WallpaperUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/utils/WallpaperUtils;->loadBitmap(Lkotlin/jvm/functions/Function0;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWallpaperUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WallpaperUtils.kt\ncom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,519:1\n1#2:520\n*E\n"
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
    c = "com.innioasis.y1.utils.WallpaperUtils$loadBitmap$1"
    f = "WallpaperUtils.kt"
    i = {}
    l = {
        0x94
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $u:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->$u:Lkotlin/jvm/functions/Function0;

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

    new-instance p1, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;

    iget-object v0, p0, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->$u:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const-string v0, ""

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, p0, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "loadBitmap start"

    invoke-virtual {p1, v5, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 83
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getDesktopWallpaper()Ljava/lang/String;

    move-result-object p1

    .line 85
    sget-object v6, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadBitmap \u89e3\u6790\u684c\u9762\u58c1\u7eb8\uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x48

    const/16 v7, 0x60

    const/16 v8, 0xf0

    const/16 v9, 0x140

    const/4 v10, 0x0

    .line 87
    :try_start_0
    move-object v11, p1

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_3

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 89
    sget-object v11, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v12, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v12, p1, v9, v8}, Lcom/innioasis/y1/utils/WallpaperUtils;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    sget-object v11, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v12, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v12, p1, v7, v6}, Lcom/innioasis/y1/utils/WallpaperUtils;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v11, p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmapPreview(Landroid/graphics/Bitmap;)V

    .line 93
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getWallpaperBlur()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 94
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v11, Lcom/innioasis/y1/utils/Blur;->INSTANCE:Lcom/innioasis/y1/utils/Blur;

    sget-object v12, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v12}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v11, v12, v13}, Lcom/innioasis/y1/utils/Blur;->createBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v11, Lcom/innioasis/y1/utils/Blur;->INSTANCE:Lcom/innioasis/y1/utils/Blur;

    sget-object v12, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v12}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Lcom/innioasis/y1/utils/Blur;->createBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmapPreview(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 98
    :cond_3
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setDesktopWallpaper(Ljava/lang/String;)V

    .line 99
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v11, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v11}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v11

    invoke-virtual {v11}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v12, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v12}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$getDefaultDesktop(Lcom/innioasis/y1/utils/WallpaperUtils;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1, v10}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmapPreview(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 103
    sget-object v11, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u52a0\u8f7d\u684c\u9762\u58c1\u7eb8\u5f02\u5e38  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v11, p1, v12}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setDesktopWallpaper(Ljava/lang/String;)V

    .line 105
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v11, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v11}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v11

    invoke-virtual {v11}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v12, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v12}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$getDefaultDesktop(Lcom/innioasis/y1/utils/WallpaperUtils;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1, v10}, Lcom/innioasis/y1/utils/WallpaperUtils;->setDesktopBitmapPreview(Landroid/graphics/Bitmap;)V

    .line 109
    :cond_4
    :goto_1
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getGlobalWallpaper()Ljava/lang/String;

    move-result-object p1

    .line 110
    sget-object v11, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadBitmap \u89e3\u6790\u5168\u5c40\u58c1\u7eb8\uff1a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :try_start_1
    move-object v11, p1

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_6

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 113
    sget-object v11, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v12, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v12, p1, v9, v8}, Lcom/innioasis/y1/utils/WallpaperUtils;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    sget-object v8, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v9, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v9, p1, v7, v6}, Lcom/innioasis/y1/utils/WallpaperUtils;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmapPreview(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 117
    :cond_6
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setGlobalWallpaper(Ljava/lang/String;)V

    .line 118
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v6

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v7}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$getDefaultGlobal(Lcom/innioasis/y1/utils/WallpaperUtils;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    .line 120
    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v6

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v7}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$getDefaultGlobal(Lcom/innioasis/y1/utils/WallpaperUtils;)I

    move-result v7

    sget-object v8, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v8}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$getOptionsPreview(Lcom/innioasis/y1/utils/WallpaperUtils;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    .line 119
    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmapPreview(Landroid/graphics/Bitmap;)V

    .line 124
    :goto_3
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getWallpaperBlur()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 125
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v6, Lcom/innioasis/y1/utils/Blur;->INSTANCE:Lcom/innioasis/y1/utils/Blur;

    sget-object v7, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v7}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/innioasis/y1/utils/Blur;->createBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v6, Lcom/innioasis/y1/utils/Blur;->INSTANCE:Lcom/innioasis/y1/utils/Blur;

    sget-object v7, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v7}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/innioasis/y1/utils/Blur;->createBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmapPreview(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 131
    sget-object v6, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u52a0\u8f7d\u5168\u5c40\u58c1\u7eb8\u5f02\u5e38  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setGlobalWallpaper(Ljava/lang/String;)V

    .line 133
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v6, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v6}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$getDefaultGlobal(Lcom/innioasis/y1/utils/WallpaperUtils;)I

    move-result v6

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    .line 136
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f08007b

    sget-object v7, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v7}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$getOptionsPreview(Lcom/innioasis/y1/utils/WallpaperUtils;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->setGlobalBitmapPreview(Landroid/graphics/Bitmap;)V

    .line 139
    :cond_7
    :goto_4
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-static {v0, p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->access$saveUsbBack(Lcom/innioasis/y1/utils/WallpaperUtils;Landroid/graphics/Bitmap;)V

    .line 140
    :cond_8
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadBitmap end  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap \u684c\u9762\u58c1\u7eb8\u8def\u5f84  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap \u684c\u9762\u58c1\u7eb8\u5927\u5c0f  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5

    :cond_9
    move-object v4, v10

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap \u684c\u9762\u58c1\u7eb8\u9884\u89c8\u5927\u5c0f  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_6

    :cond_a
    move-object v4, v10

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap \u5168\u5c40\u58c1\u7eb8\u8def\u5f84  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getGlobalWallpaper()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap \u5168\u5c40\u58c1\u7eb8\u5927\u5c0f  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_b
    move-object v4, v10

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap \u5168\u5c40\u58c1\u7eb8\u9884\u89c8\u5927\u5c0f  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8

    :cond_c
    move-object v4, v10

    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1$2;

    iget-object v2, p0, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->$u:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v2, v10}, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/innioasis/y1/utils/WallpaperUtils$loadBitmap$1;->label:I

    invoke-static {p1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    .line 151
    :cond_d
    :goto_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
