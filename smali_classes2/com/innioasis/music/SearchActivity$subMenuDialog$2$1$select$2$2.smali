.class public final Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
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
        "com/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2",
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
.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;->this$0:Lcom/innioasis/music/SearchActivity;

    .line 221
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {v0}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {v0}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public confirm()V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;->this$0:Lcom/innioasis/music/SearchActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lcom/innioasis/music/SearchActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 224
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;

    iget-object v3, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;->this$0:Lcom/innioasis/music/SearchActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2$confirm$1;-><init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
