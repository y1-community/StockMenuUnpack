.class public interface abstract Lcom/innioasis/y1/database/PlaylistDao;
.super Ljava/lang/Object;
.source "PlayListDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\'J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\'J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\'J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\'J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\'J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u000eH\'J!\u0010\u000f\u001a\u00020\u00032\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0010\"\u00020\u0005H\'\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/innioasis/y1/database/PlaylistDao;",
        "",
        "delete",
        "",
        "playlist",
        "Lcom/innioasis/y1/database/Playlist;",
        "getAllPlaylist",
        "",
        "getAllPlaylistSortByDate",
        "getAllPlaylistSortByDateReverse",
        "getAllPlaylistSortByName",
        "getAllPlaylistSortByNameReverse",
        "getPlaylistById",
        "id",
        "Ljava/util/UUID;",
        "insert",
        "",
        "([Lcom/innioasis/y1/database/Playlist;)V",
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
.method public abstract delete(Lcom/innioasis/y1/database/Playlist;)V
.end method

.method public abstract getAllPlaylist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistSortByDate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistSortByDateReverse()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistSortByName()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlaylistSortByNameReverse()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaylistById(Ljava/util/UUID;)Lcom/innioasis/y1/database/Playlist;
.end method

.method public varargs abstract insert([Lcom/innioasis/y1/database/Playlist;)V
.end method

.method public abstract update(Lcom/innioasis/y1/database/Playlist;)V
.end method
