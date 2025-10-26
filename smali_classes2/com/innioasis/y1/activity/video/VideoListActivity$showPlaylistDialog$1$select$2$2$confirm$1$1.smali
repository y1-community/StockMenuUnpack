.class final Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.y1.activity.video.VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1"
    f = "VideoListActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $deleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/video/VideoListActivity;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->$deleteList:Ljava/util/List;

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

    new-instance p1, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->$deleteList:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 956
    iget v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 957
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const-string v0, "hd"

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 958
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->$deleteList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 959
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 961
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showNone()V

    .line 963
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 964
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 966
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2$confirm$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$upDateRecycler(Lcom/innioasis/y1/activity/video/VideoListActivity;I)V

    .line 967
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
