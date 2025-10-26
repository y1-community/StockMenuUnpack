.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "VideoListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
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

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/video/VideoListActivity;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;->$deleteList:Ljava/util/List;

    .line 1250
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1283
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    const/4 v2, 0x0

    .line 1284
    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    return-void
.end method

.method public confirm()V
    .locals 7

    .line 1253
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 1255
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2$confirm$1;

    iget-object v3, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;->$deleteList:Ljava/util/List;

    iget-object v4, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2$confirm$1;-><init>(Ljava/util/List;Lcom/innioasis/y1/activity/video/VideoListActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
