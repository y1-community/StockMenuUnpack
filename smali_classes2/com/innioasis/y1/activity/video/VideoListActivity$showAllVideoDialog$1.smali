.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity;->showAllVideoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1413:1\n766#2:1414\n857#2,2:1415\n*S KotlinDebug\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1\n*L\n634#1:1414\n634#1:1415,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1",
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

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "item"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 696
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;->getPlaylist()Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v7, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 697
    invoke-virtual {v8}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylist_id()J

    move-result-wide v9

    const-string v1, "sa"

    .line 698
    invoke-virtual {v7, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 699
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/coroutines/CoroutineContext;

    const/4 v13, 0x0

    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$3$1;

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$3$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Lcom/innioasis/y1/database/video/VideoPlaylist;JLkotlin/coroutines/Continuation;)V

    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object v11, v1

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_3

    .line 632
    :cond_0
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 634
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 1415
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 634
    invoke-virtual {v6}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1416
    :cond_2
    check-cast v3, Ljava/util/List;

    goto :goto_1

    .line 638
    :cond_3
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 640
    :goto_1
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 643
    new-instance v1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 644
    new-instance v4, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$2$1;

    invoke-direct {v4, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v4}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    const v4, 0x7f1100c0

    .line 652
    invoke-virtual {v2, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "getString(R.string.is_delete)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    new-instance v4, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$2$2;

    invoke-direct {v4, v2, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$2$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/util/List;)V

    move-object v9, v4

    check-cast v9, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/4 v13, 0x0

    const-string v8, ""

    .line 651
    invoke-static/range {v6 .. v13}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto :goto_3

    .line 619
    :cond_4
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v2, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    if-ne v1, v4, :cond_6

    .line 622
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 623
    invoke-virtual {v2, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_2

    .line 625
    :cond_5
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 627
    :cond_6
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_7
    new-array v1, v4, [Ljava/lang/String;

    .line 588
    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v4, 0x7f1101a3

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 589
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v3, 0x7f1101a9

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 587
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 592
    new-instance v1, Lcom/innioasis/music/util/SubMenuDialog;

    .line 593
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    move-object v7, v2

    check-cast v7, Landroid/app/Activity;

    .line 595
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$1;

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-direct {v2, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1$select$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    move-object v9, v2

    check-cast v9, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v1

    .line 592
    invoke-direct/range {v6 .. v12}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 614
    invoke-virtual {v1}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    :cond_8
    :goto_3
    return v5
.end method
