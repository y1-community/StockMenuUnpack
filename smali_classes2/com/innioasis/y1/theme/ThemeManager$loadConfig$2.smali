.class final Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ThemeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/theme/ThemeManager;->loadConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "com.innioasis.y1.theme.ThemeManager$loadConfig$2"
    f = "ThemeManager.kt"
    i = {
        0x0,
        0x4,
        0x4,
        0x5,
        0x5,
        0x6,
        0x7
    }
    l = {
        0x86,
        0x8d,
        0x90,
        0x92,
        0xb6,
        0xb8,
        0xbf,
        0xc1,
        0xc5
    }
    m = "invokeSuspend"
    n = {
        "themeDir",
        "themeDir",
        "config",
        "themeDir",
        "config",
        "config",
        "config"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;

    invoke-direct {p1, p2}, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 131
    iget v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    const-string v2, "preset2"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 199
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/innioasis/y1/theme/ThemeConfig;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/innioasis/y1/theme/ThemeConfig;

    iget-object v6, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadConfig start,themeName:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v6}, Lcom/innioasis/y1/theme/ThemeManager;->getThemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v6}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/innioasis/y1/theme/ThemeManager;->access$getThemesDir$p()Ljava/io/File;

    move-result-object v1

    sget-object v6, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v6}, Lcom/innioasis/y1/theme/ThemeManager;->getThemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v6, 0x1388

    .line 134
    new-instance v1, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2$1;

    invoke-direct {v1, v5}, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {v6, v7, v1, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object v0

    :cond_0
    move-object v6, p1

    .line 137
    :goto_0
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v7, "themeDir.path"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/theme/ThemeManager;->getConfig(Ljava/lang/String;)Lcom/innioasis/y1/theme/ThemeConfig;

    move-result-object v1

    .line 138
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v5}, Lcom/innioasis/y1/theme/ThemeManager;->access$setThemeConfig$p(Lcom/innioasis/y1/theme/ThemeConfig;)V

    const-string p1, "preset3"

    if-nez v1, :cond_4

    .line 140
    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getUserIsSetDeskWallpaper()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {v1, p1, v3, v6}, Lcom/innioasis/y1/theme/ThemeManager;->access$setWallpaper(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 143
    :cond_1
    :goto_1
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getUserIsSetGlobalWallpaper()Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {p1, v2, v4, v1}, Lcom/innioasis/y1/theme/ThemeManager;->access$setWallpaper(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 146
    :cond_2
    :goto_2
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {p1, v1}, Lcom/innioasis/y1/theme/ThemeManager;->access$setGlobalFont(Lcom/innioasis/y1/theme/ThemeManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 147
    :cond_3
    :goto_3
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 149
    :cond_4
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/innioasis/y1/theme/util/BitmapCache;->clear()V

    .line 150
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    .line 152
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getItemConfig()Lcom/innioasis/y1/theme/config/ItemConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/theme/config/ItemConfig;->getItemSelectedBackground()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    invoke-virtual {v10}, Lcom/innioasis/y1/theme/BitmapSize;->getITEM()Lcom/innioasis/y1/theme/BitmapSizeValue;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmap(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "itemSelectedBackground"

    .line 150
    invoke-virtual {v7, v9, v8}, Lcom/innioasis/y1/theme/util/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 154
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    .line 156
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getItemConfig()Lcom/innioasis/y1/theme/config/ItemConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/theme/config/ItemConfig;->getItemBackground()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    invoke-virtual {v10}, Lcom/innioasis/y1/theme/BitmapSize;->getITEM()Lcom/innioasis/y1/theme/BitmapSizeValue;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmap(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "itemBackground"

    .line 154
    invoke-virtual {v7, v9, v8}, Lcom/innioasis/y1/theme/util/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 158
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    .line 160
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getItemConfig()Lcom/innioasis/y1/theme/config/ItemConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/theme/config/ItemConfig;->getItemRightArrow()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    invoke-virtual {v10}, Lcom/innioasis/y1/theme/BitmapSize;->getSMALL_ICON()Lcom/innioasis/y1/theme/BitmapSizeValue;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmap(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "rightArrow"

    .line 158
    invoke-virtual {v7, v9, v8}, Lcom/innioasis/y1/theme/util/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 162
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    .line 164
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getDialogConfig()Lcom/innioasis/y1/theme/config/DialogConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/theme/config/DialogConfig;->getDialogOptionBackground()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    invoke-virtual {v10}, Lcom/innioasis/y1/theme/BitmapSize;->getSMALL_ICON()Lcom/innioasis/y1/theme/BitmapSizeValue;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmap(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "dialogOptionBackground"

    .line 162
    invoke-virtual {v7, v9, v8}, Lcom/innioasis/y1/theme/util/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 166
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    .line 168
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getDialogConfig()Lcom/innioasis/y1/theme/config/DialogConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/theme/config/DialogConfig;->getDialogOptionSelectedBackground()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    invoke-virtual {v10}, Lcom/innioasis/y1/theme/BitmapSize;->getSMALL_ICON()Lcom/innioasis/y1/theme/BitmapSizeValue;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmap(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "dialogOptionSelectedBackground"

    .line 166
    invoke-virtual {v7, v9, v8}, Lcom/innioasis/y1/theme/util/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 170
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    .line 172
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getMenuConfig()Lcom/innioasis/y1/theme/config/MenuConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/theme/config/MenuConfig;->getMenuItemBackground()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    invoke-virtual {v10}, Lcom/innioasis/y1/theme/BitmapSize;->getITEM()Lcom/innioasis/y1/theme/BitmapSizeValue;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmap(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "menuItemBackground"

    .line 170
    invoke-virtual {v7, v9, v8}, Lcom/innioasis/y1/theme/util/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 174
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v7}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmapCache(Lcom/innioasis/y1/theme/ThemeManager;)Lcom/innioasis/y1/theme/util/BitmapCache;

    move-result-object v7

    .line 176
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getMenuConfig()Lcom/innioasis/y1/theme/config/MenuConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/theme/config/MenuConfig;->getMenuItemSelectedBackground()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/innioasis/y1/theme/BitmapSize;->INSTANCE:Lcom/innioasis/y1/theme/BitmapSize;

    invoke-virtual {v10}, Lcom/innioasis/y1/theme/BitmapSize;->getITEM()Lcom/innioasis/y1/theme/BitmapSizeValue;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/innioasis/y1/theme/ThemeManager;->access$getBitmap(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;Lcom/innioasis/y1/theme/BitmapSizeValue;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "menuItemSelectedBackground"

    .line 174
    invoke-virtual {v7, v9, v8}, Lcom/innioasis/y1/theme/util/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 178
    sget-object v7, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u7528\u6237\u662f\u5426\u8bbe\u7f6e\u684c\u9762\u58c1\u7eb8 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v9}, Lcom/innioasis/y1/utils/WallpaperUtils;->getUserIsSetDeskWallpaper()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "  \u7528\u6237\u662f\u5426\u8bbe\u7f6e\u5168\u5c40\u58c1\u7eb8 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v9}, Lcom/innioasis/y1/utils/WallpaperUtils;->getUserIsSetGlobalWallpaper()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    sget-object v7, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v7}, Lcom/innioasis/y1/utils/WallpaperUtils;->getUserIsSetDeskWallpaper()Z

    move-result v7

    if-nez v7, :cond_6

    .line 180
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getDesktopWallpaper()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v8, v7}, Lcom/innioasis/y1/utils/WallpaperUtils;->isPicture(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 182
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "desktopFile.path"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$1:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {p1, v7, v3, v8}, Lcom/innioasis/y1/theme/ThemeManager;->access$setWallpaper(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 184
    :cond_5
    sget-object v7, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$1:Ljava/lang/Object;

    const/4 v9, 0x6

    iput v9, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {v7, p1, v3, v8}, Lcom/innioasis/y1/theme/ThemeManager;->access$setWallpaper(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 188
    :cond_6
    :goto_4
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getUserIsSetGlobalWallpaper()Z

    move-result p1

    if-nez p1, :cond_8

    .line 189
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeConfig;->getGlobalWallpaper()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v6, p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->isPicture(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 191
    sget-object v2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v6, "globalFile.path"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {v2, p1, v4, v6}, Lcom/innioasis/y1/theme/ThemeManager;->access$setWallpaper(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 193
    :cond_7
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$1:Ljava/lang/Object;

    const/16 v7, 0x8

    iput v7, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {p1, v2, v4, v6}, Lcom/innioasis/y1/theme/ThemeManager;->access$setWallpaper(Lcom/innioasis/y1/theme/ThemeManager;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 196
    :cond_8
    :goto_5
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v1}, Lcom/innioasis/y1/theme/ThemeManager;->access$setThemeConfig$p(Lcom/innioasis/y1/theme/ThemeConfig;)V

    .line 197
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->L$1:Ljava/lang/Object;

    const/16 v2, 0x9

    iput v2, p0, Lcom/innioasis/y1/theme/ThemeManager$loadConfig$2;->label:I

    invoke-static {p1, v1}, Lcom/innioasis/y1/theme/ThemeManager;->access$setGlobalFont(Lcom/innioasis/y1/theme/ThemeManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 198
    :cond_9
    :goto_6
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/innioasis/y1/theme/ThemeManager;->access$getThemeConfig$p()Lcom/innioasis/y1/theme/ThemeConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
