.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$1;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;->select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
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
        "com/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$1",
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

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 869
    sget-object p1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->None:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->getType()I

    move-result p1

    goto :goto_0

    .line 868
    :cond_0
    sget-object p1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result p1

    goto :goto_0

    .line 867
    :cond_1
    sget-object p1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result p1

    goto :goto_0

    .line 866
    :cond_2
    sget-object p1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result p1

    goto :goto_0

    .line 865
    :cond_3
    sget-object p1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result p1

    .line 864
    :goto_0
    invoke-virtual {p2, p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setVideoListSort(I)V

    .line 872
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getPlayListBySort(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    .line 874
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1$select$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getSubMenuDialog$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->dismiss()V

    :cond_4
    return v0
.end method
