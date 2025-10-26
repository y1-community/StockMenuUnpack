.class final Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ThemeListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1;->handleMessage(Landroid/os/Message;)V
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
    c = "com.innioasis.y1.activity.theme.ThemeListActivity$handler$1$handleMessage$1"
    f = "ThemeListActivity.kt"
    i = {}
    l = {
        0xbd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;-><init>(Ljava/lang/String;Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 169
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 170
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 171
    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 172
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v1, v3

    .line 173
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v4, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v3, v4

    .line 174
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_2

    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    goto :goto_3

    :cond_3
    if-gt v6, v1, :cond_4

    const/16 v4, 0x9

    if-ge v1, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    const/4 v5, 0x4

    goto :goto_3

    :cond_5
    if-gt v5, v1, :cond_6

    const/16 v4, 0x11

    if-ge v1, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const/16 v5, 0x10

    .line 177
    :goto_3
    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 184
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u56fe\u7247\u538b\u7f29\u6bd4\u4f8b "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 187
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 188
    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 189
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1$1;

    iget-object v4, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    iget-object v6, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->$path:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1$1;-><init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Landroid/graphics/Bitmap;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$handler$1$handleMessage$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 197
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
