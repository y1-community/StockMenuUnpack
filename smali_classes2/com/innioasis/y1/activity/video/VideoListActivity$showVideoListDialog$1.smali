.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity;->showVideoListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1413:1\n766#2:1414\n857#2,2:1415\n*S KotlinDebug\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1\n*L\n1091#1:1414\n1091#1:1415,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1",
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

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
    .locals 10

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 1089
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1091
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1415
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1091
    invoke-virtual {v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1416
    :cond_2
    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 1094
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1096
    :goto_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 1097
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 1099
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 1100
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$2$1;

    invoke-direct {v2, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v2}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    const v2, 0x7f1100c0

    .line 1108
    invoke-virtual {p2, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "getString(R.string.is_delete)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$2$2;

    invoke-direct {v2, p2, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$2$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/util/List;)V

    move-object v5, v2

    check-cast v5, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v4, ""

    move-object v2, p1

    .line 1107
    invoke-static/range {v2 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 1075
    :cond_4
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p2, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    if-ne p1, v0, :cond_6

    .line 1078
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1079
    invoke-virtual {p2, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_2

    .line 1081
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 1084
    :cond_6
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 1044
    :cond_7
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V

    .line 1045
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    new-array p1, v0, [Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v2, 0x7f1101a3

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v0, 0x7f1101a9

    invoke-virtual {p2, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 1046
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1050
    new-instance p1, Lcom/innioasis/music/util/SubMenuDialog;

    .line 1051
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    new-instance p2, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-direct {p2, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    move-object v5, p2

    check-cast v5, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    .line 1050
    invoke-direct/range {v2 .. v8}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1070
    invoke-virtual {p1}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    :goto_3
    return v1
.end method
