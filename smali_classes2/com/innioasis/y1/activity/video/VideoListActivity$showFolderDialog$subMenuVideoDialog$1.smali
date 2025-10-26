.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity;->showFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1413:1\n766#2:1414\n857#2,2:1415\n*S KotlinDebug\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1\n*L\n1223#1:1414\n1223#1:1415,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1",
        "Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
    .locals 13

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    .line 1294
    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 1295
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylist_id()J

    move-result-wide v3

    const-string p1, "sa"

    .line 1296
    invoke-virtual {p2, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 1298
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    const/4 v7, 0x0

    new-instance p1, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v3, v4, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;JLkotlin/coroutines/Continuation;)V

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1325
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 1326
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    goto/16 :goto_5

    .line 1218
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 1221
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1223
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1414
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 1415
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1223
    invoke-virtual {v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1416
    :cond_4
    check-cast p2, Ljava/util/List;

    goto :goto_1

    .line 1226
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1228
    :goto_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 1229
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 1231
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v1, 0x7f1100c0

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.is_delete)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1233
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v3, ""

    move-object v5, p1

    move-object v6, v3

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1234
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    .line 1235
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v3, 0x7f110152

    invoke-virtual {p1, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p1, "getString(R.string.photos_deleting)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v3, 0x7f110159

    invoke-virtual {p1, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "getString(R.string.photos_tips)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1240
    :cond_8
    new-instance v4, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 1241
    new-instance v1, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$1;

    invoke-direct {v1, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4, v1}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 1250
    new-instance v1, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;

    invoke-direct {v1, p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1$select$1$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/util/List;)V

    move-object v7, v1

    check-cast v7, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v8, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    .line 1248
    invoke-static/range {v4 .. v11}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto :goto_5

    .line 1205
    :cond_9
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p2, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    if-ne p1, v0, :cond_b

    .line 1208
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1209
    invoke-virtual {p2, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_4

    .line 1211
    :cond_a
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 1213
    :cond_b
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_5
    return v0
.end method
