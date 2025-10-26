.class final Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchVideoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
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
    value = "SMAP\nSearchVideoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchVideoActivity.kt\ncom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,465:1\n1#2:466\n*E\n"
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
    c = "com.innioasis.y1.activity.video.SearchVideoActivity$subMenuDialog$2$1$select$2$1"
    f = "SearchVideoActivity.kt"
    i = {}
    l = {
        0xe7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $playlistId:J

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/video/SearchVideoActivity;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    iput-wide p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->$playlistId:J

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

    new-instance p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    iget-wide v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->$playlistId:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 219
    iget v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 224
    iget-object v4, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {v4}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemList()Ljava/util/List;

    move-result-object v4

    if-ltz v1, :cond_2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v1, v5, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_2
    check-cast v3, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    if-nez v3, :cond_3

    goto :goto_0

    .line 225
    :cond_3
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6dfb\u52a0\u5230\u64ad\u653e\u5217\u8868 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    .line 227
    invoke-virtual {v3}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getVideoInfo()Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/database/video/VideoInfo;->getVideo_id()J

    move-result-wide v3

    .line 228
    iget-wide v5, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->$playlistId:J

    .line 226
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/innioasis/y1/database/Y1Repository;->addVideoToPlayList(JJ)V

    goto :goto_0

    .line 231
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1$1;

    iget-object v4, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-direct {v1, v4, v3}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$2$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 243
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
