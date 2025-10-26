.class final Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WallpaperActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.activity.WallpaperActivity$getPicture$2$3"
    f = "WallpaperActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/WallpaperActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/WallpaperActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->$pictures:Ljava/util/List;

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

    new-instance p1, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;

    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

    iget-object v1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->$pictures:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;-><init>(Lcom/innioasis/y1/activity/WallpaperActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 122
    iget v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/WallpaperActivity;->access$getProgressDialog$p(Lcom/innioasis/y1/activity/WallpaperActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "progressDialog"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    iget-object p1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/WallpaperActivity;->access$getProgressDialog$p(Lcom/innioasis/y1/activity/WallpaperActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 125
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u641c\u5230  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->$pictures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  \u5f20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->this$0:Lcom/innioasis/y1/activity/WallpaperActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/WallpaperActivity;->access$getAdapter(Lcom/innioasis/y1/activity/WallpaperActivity;)Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperActivity$getPicture$2$3;->$pictures:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/WallpaperActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 127
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
