.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowseItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000fJ\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010\'\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\t\u0010)\u001a\u00020\u000bH\u00c6\u0003JW\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010+\u001a\u00020\u000b2\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010-\u001a\u00020.H\u00d6\u0001J\t\u0010/\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u000e\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0015\"\u0004\u0008\u001c\u0010\u0017R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u00060"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
        "",
        "displayName",
        "",
        "targetFile",
        "Ljava/io/File;",
        "videoInfo",
        "Lcom/innioasis/y1/database/video/VideoInfo;",
        "videoPlayList",
        "Lcom/innioasis/y1/database/video/VideoPlaylist;",
        "isMultiSelect",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "coverLoading",
        "(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;Z)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "getCoverLoading",
        "()Z",
        "setCoverLoading",
        "(Z)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "setDisplayName",
        "(Ljava/lang/String;)V",
        "setMultiSelect",
        "getTargetFile",
        "()Ljava/io/File;",
        "getVideoInfo",
        "()Lcom/innioasis/y1/database/video/VideoInfo;",
        "getVideoPlayList",
        "()Lcom/innioasis/y1/database/video/VideoPlaylist;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private bitmap:Landroid/graphics/Bitmap;

.field private coverLoading:Z

.field private displayName:Ljava/lang/String;

.field private isMultiSelect:Z

.field private final targetFile:Ljava/io/File;

.field private final videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

.field private final videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;Z)V
    .locals 1

    const-string v0, "displayName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    .line 188
    iput-object p3, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    .line 189
    iput-object p4, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    .line 190
    iput-boolean p5, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    .line 191
    iput-object p6, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p7, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move p7, v4

    move-object p8, v1

    move/from16 p9, v5

    .line 185
    invoke-direct/range {p2 .. p9}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILjava/lang/Object;)Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-boolean p7, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->copy(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;Z)Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    return-object v0
.end method

.method public final component3()Lcom/innioasis/y1/database/video/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    return-object v0
.end method

.method public final component4()Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    return v0
.end method

.method public final component6()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;Z)Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;
    .locals 9

    const-string v0, "displayName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    iget-object v3, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    iget-object v3, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    iget-object v3, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    iget-boolean v3, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    iget-boolean p1, p1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getCoverLoading()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFile()Ljava/io/File;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    return-object v0
.end method

.method public final getVideoInfo()Lcom/innioasis/y1/database/video/VideoInfo;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    return-object v0
.end method

.method public final getVideoPlayList()Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/innioasis/y1/database/video/VideoInfo;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public final isMultiSelect()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    return v0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setCoverLoading(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    return-void
.end method

.method public final setMultiSelect(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowseItem(displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->targetFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoInfo:Lcom/innioasis/y1/database/video/VideoInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPlayList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->videoPlayList:Lcom/innioasis/y1/database/video/VideoPlaylist;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coverLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->coverLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
