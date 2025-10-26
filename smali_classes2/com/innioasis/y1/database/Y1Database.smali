.class public abstract Lcom/innioasis/y1/database/Y1Database;
.super Landroidx/room/RoomDatabase;
.source "Y1Database.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0010H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/innioasis/y1/database/Y1Database;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "getBookmarkDao",
        "Lcom/innioasis/y1/database/BookmarkDao;",
        "getPlaylistDao",
        "Lcom/innioasis/y1/database/PlaylistDao;",
        "getProgressDao",
        "Lcom/innioasis/y1/database/ProgressDao;",
        "getSongCatPlaylistDao",
        "Lcom/innioasis/y1/database/SongCatPlayListDao;",
        "getSongDao",
        "Lcom/innioasis/y1/database/SongDao;",
        "getVideoDao",
        "Lcom/innioasis/y1/database/video/VideoInfoDao;",
        "getVideoListDao",
        "Lcom/innioasis/y1/database/video/VideoPlaylistDao;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBookmarkDao()Lcom/innioasis/y1/database/BookmarkDao;
.end method

.method public abstract getPlaylistDao()Lcom/innioasis/y1/database/PlaylistDao;
.end method

.method public abstract getProgressDao()Lcom/innioasis/y1/database/ProgressDao;
.end method

.method public abstract getSongCatPlaylistDao()Lcom/innioasis/y1/database/SongCatPlayListDao;
.end method

.method public abstract getSongDao()Lcom/innioasis/y1/database/SongDao;
.end method

.method public abstract getVideoDao()Lcom/innioasis/y1/database/video/VideoInfoDao;
.end method

.method public abstract getVideoListDao()Lcom/innioasis/y1/database/video/VideoPlaylistDao;
.end method
