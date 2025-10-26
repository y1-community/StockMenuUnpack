.class final Lcom/innioasis/y1/activity/WallpaperActivity$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WallpaperActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/WallpaperActivity;->save(Ljava/lang/String;)V
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
    c = "com.innioasis.y1.activity.WallpaperActivity$save$1"
    f = "WallpaperActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic $type:I

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/WallpaperActivity;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/innioasis/y1/activity/WallpaperActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/innioasis/y1/activity/WallpaperActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/WallpaperActivity$save$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->$type:I

    iput-object p2, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

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

    new-instance p1, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;

    iget v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->$type:I

    iget-object v1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;-><init>(ILjava/lang/String;Lcom/innioasis/y1/activity/WallpaperActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 226
    iget v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 227
    iget p1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->$type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 228
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    iget-object v1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->$path:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->saveWallpaper(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 230
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->$path:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->saveWallpaper(Ljava/lang/String;Z)V

    .line 232
    :cond_1
    :goto_0
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    new-instance v0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1$1;

    iget-object v1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$save$1;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

    invoke-direct {v0, v1}, Lcom/innioasis/y1/activity/WallpaperActivity$save$1$1;-><init>(Lcom/innioasis/y1/activity/WallpaperActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->loadBitmap(Lkotlin/jvm/functions/Function0;)V

    .line 237
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
