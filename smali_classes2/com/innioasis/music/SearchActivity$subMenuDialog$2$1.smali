.class public final Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;
.super Ljava/lang/Object;
.source "SearchActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity$subMenuDialog$2;->invoke()Lcom/innioasis/music/util/SubMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/music/SearchActivity$subMenuDialog$2$1",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
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

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 10

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 277
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/Playlist;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    .line 278
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    const-string v2, "sa"

    .line 279
    invoke-virtual {p2, v2}, Lcom/innioasis/music/SearchActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 280
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance v2, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;

    invoke-direct {v2, p2, p1, v0}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$3$1;-><init>(Lcom/innioasis/music/SearchActivity;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {p1}, Lcom/innioasis/music/SearchActivity;->access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 214
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    .line 215
    new-instance v0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$1;

    invoke-direct {v0, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$1;-><init>(Lcom/innioasis/music/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    const v0, 0x7f1100c0

    .line 220
    invoke-virtual {p2, v0}, Lcom/innioasis/music/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.is_delete)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;

    invoke-direct {v0, p2}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$2$2;-><init>(Lcom/innioasis/music/SearchActivity;)V

    move-object v5, v0

    check-cast v5, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v4, ""

    .line 219
    invoke-static/range {v2 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 272
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-static {p2, v1}, Lcom/innioasis/music/SearchActivity;->access$setMultiSelect$p(Lcom/innioasis/music/SearchActivity;Z)V

    .line 194
    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance p2, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1;

    iget-object v5, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-direct {p2, v5, p1, v0}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1$select$1;-><init>(Lcom/innioasis/music/SearchActivity;ILkotlin/coroutines/Continuation;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_0
    return v1
.end method
