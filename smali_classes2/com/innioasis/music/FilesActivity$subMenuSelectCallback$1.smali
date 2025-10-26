.class public final Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;
.super Ljava/lang/Object;
.source "FilesActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/FilesActivity;-><init>()V
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
        "com/innioasis/music/FilesActivity$subMenuSelectCallback$1",
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
.field final synthetic this$0:Lcom/innioasis/music/FilesActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/FilesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 12

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    const-string v1, "sa"

    invoke-virtual {p1, v1}, Lcom/innioasis/music/FilesActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 192
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance p1, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;

    iget-object v1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-direct {p1, p2, v1, v2}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$3;-><init>(Lcom/innioasis/music/adapter/SubmenuAdapter$Item;Lcom/innioasis/music/FilesActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_2

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    const p2, 0x7f1100c0

    invoke-virtual {p1, p2}, Lcom/innioasis/music/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.is_delete)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {p2}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object p2

    const-string v1, "adapter"

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v2

    :cond_1
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/FileListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 169
    iget-object v4, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v4}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/innioasis/music/adapter/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 170
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    const p2, 0x7f110152

    invoke-virtual {p1, p2}, Lcom/innioasis/music/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.photos_deleting)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    const v3, 0x7f110159

    invoke-virtual {p2, v3}, Lcom/innioasis/music/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "getString(R.string.photos_tips)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p2, ""

    :goto_0
    move-object v4, p1

    move-object v5, p2

    .line 176
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {p1}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Lcom/innioasis/music/adapter/FileListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 177
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object p2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    move-object v7, p2

    check-cast v7, Landroid/app/Activity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    .line 178
    invoke-static {p2}, Lcom/innioasis/music/FilesActivity;->access$isDeleteCallback$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v7, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v10}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 179
    new-instance v1, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$2$1;

    invoke-direct {v1, p2}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$2$1;-><init>(Lcom/innioasis/music/FilesActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 183
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_2

    .line 148
    :cond_6
    iget-object p2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {p2, v0}, Lcom/innioasis/music/FilesActivity;->access$setMultiSelect$p(Lcom/innioasis/music/FilesActivity;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 149
    new-instance p2, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;

    iget-object v6, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-direct {p2, v6, p1}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;-><init>(Lcom/innioasis/music/FilesActivity;I)V

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :cond_7
    :goto_2
    return v0
.end method
