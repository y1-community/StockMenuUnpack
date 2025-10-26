.class final Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
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
    value = "SMAP\nVideoListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1413:1\n766#2:1414\n857#2,2:1415\n*S KotlinDebug\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1\n*L\n1300#1:1414\n1300#1:1415,2\n*E\n"
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
    c = "com.innioasis.y1.activity.video.VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1"
    f = "VideoListActivity.kt"
    i = {}
    l = {
        0x51f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $playlistId:J

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/video/VideoListActivity;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iput-wide p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->$playlistId:J

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

    new-instance p1, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iget-wide v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->$playlistId:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1298
    iget v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1323
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1298
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1299
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1300
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1414
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1415
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1300
    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1416
    :cond_3
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 1302
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1304
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1305
    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iget-wide v4, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->$playlistId:J

    .line 1306
    invoke-virtual {v3, v1, v4, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->addToPlayListByFile(Ljava/io/File;J)V

    goto :goto_2

    .line 1311
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1$2;

    iget-object v3, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 1323
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
