.class public interface abstract Lcom/innioasis/y1/database/video/VideoPlaylistDao;
.super Ljava/lang/Object;
.source "VideoPlaylistDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\'J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\'J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\'J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\'J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\'J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\'J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\'J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\'J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\'J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\t\u001a\u00020\nH\'J\u0019\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cH\'J\u0018\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013H\'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lcom/innioasis/y1/database/video/VideoPlaylistDao;",
        "",
        "delete",
        "",
        "playlist",
        "Lcom/innioasis/y1/database/video/VideoPlaylist;",
        "(Lcom/innioasis/y1/database/video/VideoPlaylist;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteByName",
        "",
        "name",
        "",
        "getAllPlaylists",
        "",
        "getAllPlaylistsOrderByAddTime",
        "getAllPlaylistsOrderByAddTimeDesc",
        "getAllPlaylistsOrderByName",
        "getAllPlaylistsOrderByNameDesc",
        "getPlaylistById",
        "playlistId",
        "",
        "getPlaylistByName",
        "getPlaylistWithVideos",
        "Lcom/innioasis/y1/database/video/PlaylistWithVideos;",
        "getPlaylistWithVideosByName",
        "insert",
        "insertSync",
        "insertVideoToPlaylist",
        "crossRef",
        "Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;",
        "removeVideoFromPlaylist",
        "videoId",
        "update",
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


# virtual methods
.method public abstract delete(Lcom/innioasis/y1/database/video/VideoPlaylist;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract deleteByName(Ljava/lang/String;)I
.end method

.method public abstract getAllPlaylists()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistsOrderByAddTime()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistsOrderByAddTimeDesc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistsOrderByName()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistsOrderByNameDesc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaylistById(J)Lcom/innioasis/y1/database/video/VideoPlaylist;
.end method

.method public abstract getPlaylistByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoPlaylist;
.end method

.method public abstract getPlaylistWithVideos(J)Lcom/innioasis/y1/database/video/PlaylistWithVideos;
.end method

.method public abstract getPlaylistWithVideosByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/PlaylistWithVideos;
.end method

.method public abstract insert(Lcom/innioasis/y1/database/video/VideoPlaylist;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract insertSync(Lcom/innioasis/y1/database/video/VideoPlaylist;)J
.end method

.method public abstract insertVideoToPlaylist(Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;)V
.end method

.method public abstract removeVideoFromPlaylist(JJ)V
.end method

.method public abstract update(Lcom/innioasis/y1/database/video/VideoPlaylist;)V
.end method
