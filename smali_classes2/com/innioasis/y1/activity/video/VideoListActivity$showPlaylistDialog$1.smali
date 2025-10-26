.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity;->showPlaylistDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1413:1\n766#2:1414\n857#2,2:1415\n1851#2,2:1417\n*S KotlinDebug\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1\n*L\n926#1:1414\n926#1:1415,2\n989#1:1417,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1",
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

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 843
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

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_10

    if-eq v1, v6, :cond_d

    if-eq v1, v4, :cond_d

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    .line 985
    :cond_0
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v6

    .line 986
    :cond_1
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 987
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v2, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$showInputMethodDialog(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)Lcom/innioasis/y1/utils/InputMethodDialog;

    .line 989
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1417
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 990
    invoke-virtual {v2, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_0

    .line 992
    :cond_2
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 993
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 994
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto/16 :goto_7

    .line 922
    :cond_3
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return v6

    .line 924
    :cond_4
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 926
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1415
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 926
    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1416
    :cond_6
    check-cast v2, Ljava/util/List;

    goto :goto_2

    .line 929
    :cond_7
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 931
    :goto_2
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 932
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 934
    new-instance v1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 935
    new-instance v4, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$1;

    invoke-direct {v4, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v4}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    const v4, 0x7f1100c0

    .line 944
    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "getString(R.string.is_delete)"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    new-instance v4, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2;

    invoke-direct {v4, v3, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$2$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/util/List;)V

    move-object v10, v4

    check-cast v10, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/4 v14, 0x0

    const-string v9, ""

    .line 943
    invoke-static/range {v7 .. v14}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto/16 :goto_7

    .line 895
    :cond_8
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getItemCount()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_9

    .line 898
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 899
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v3, 0x7f11015c

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 897
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 901
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 903
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playlist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    const/4 v2, 0x1

    .line 905
    :goto_3
    iget-object v4, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v4, v8}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$existDuplicatePlaylistNameCount(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)I

    move-result v4

    if-lt v4, v6, :cond_a

    .line 906
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/2addr v2, v6

    goto :goto_3

    .line 909
    :cond_a
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/innioasis/y1/database/Y1Repository;->addVideoList(Ljava/lang/String;)Z

    .line 910
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7e

    const/16 v16, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->addData(Ljava/lang/Object;)V

    .line 911
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getItemCount()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->hideNone()V

    .line 913
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 914
    invoke-virtual {v2, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_5

    .line 916
    :cond_c
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 917
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 918
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto/16 :goto_7

    .line 883
    :cond_d
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v2, v6}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    if-ne v1, v4, :cond_f

    .line 886
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 887
    invoke-virtual {v2, v6}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_6

    .line 889
    :cond_e
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 891
    :cond_f
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    :cond_10
    new-array v1, v2, [Ljava/lang/String;

    .line 849
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v7, 0x7f1101a3

    invoke-virtual {v2, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 850
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v7, 0x7f1101a9

    invoke-virtual {v2, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 851
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v7, 0x7f1101a7

    invoke-virtual {v2, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 852
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v4, 0x7f1101a8

    invoke-virtual {v2, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 848
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 855
    new-instance v1, Lcom/innioasis/music/util/SubMenuDialog;

    .line 856
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    move-object v8, v2

    check-cast v8, Landroid/app/Activity;

    .line 858
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$1;

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-direct {v2, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    move-object v10, v2

    check-cast v10, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v1

    .line 855
    invoke-direct/range {v7 .. v13}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 877
    invoke-virtual {v1}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 878
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 879
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :goto_7
    return v6
.end method
