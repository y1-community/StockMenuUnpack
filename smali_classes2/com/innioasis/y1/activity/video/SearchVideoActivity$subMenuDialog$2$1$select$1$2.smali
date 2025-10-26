.class public final Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "SearchVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;->select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
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
        "com/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 170
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public confirm()V
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1;

    iget-object v3, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1$select$1$2$confirm$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
