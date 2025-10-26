.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$1;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;->select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
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
        "com/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$1",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    .line 1060
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->getType()I

    move-result v1

    goto :goto_0

    .line 1059
    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->getType()I

    move-result v1

    goto :goto_0

    .line 1058
    :cond_1
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->getType()I

    move-result v1

    .line 1057
    :goto_0
    invoke-virtual {p2, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setVideoSort(I)V

    .line 1062
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allVideoSort "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVideoSort()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getVideoBySort(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    .line 1067
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1$select$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getSubMenuDialog$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->dismiss()V

    :cond_2
    return v0
.end method
