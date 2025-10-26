.class final Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
        "invoke"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 170
    new-instance v12, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v3, 0x7f1101c8

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "getString(R.string.video_list_all)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v12, v1, v2

    .line 171
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v4, 0x7f1101ca

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "getString(R.string.video_list_playlist)"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x7c

    const/16 v22, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v22}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 172
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v4, 0x7f1101c9

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "getString(R.string.video_list_folders)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7c

    const/4 v13, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 173
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v3, v0, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const v4, 0x7f1101cb

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "getString(R.string.video_list_search)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 169
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
