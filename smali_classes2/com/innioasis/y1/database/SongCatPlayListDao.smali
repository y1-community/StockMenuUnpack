.class public interface abstract Lcom/innioasis/y1/database/SongCatPlayListDao;
.super Ljava/lang/Object;
.source "SongCatPlayListDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c2\u0006\u0010\u0006\u001a\u00020\u0007H\'J!\u0010\r\u001a\u00020\u00032\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u000f\"\u00020\nH\'\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/innioasis/y1/database/SongCatPlayListDao;",
        "",
        "delete",
        "",
        "songId",
        "",
        "playlistId",
        "Ljava/util/UUID;",
        "deleteByPlaylistId",
        "findRecordBySongIdAndFlag",
        "Lcom/innioasis/y1/database/SongCatPlaylist;",
        "getSongIdsByFlagSync",
        "",
        "insert",
        "playList",
        "",
        "([Lcom/innioasis/y1/database/SongCatPlaylist;)V",
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
.method public abstract delete(Ljava/lang/String;Ljava/util/UUID;)V
.end method

.method public abstract deleteByPlaylistId(Ljava/util/UUID;)V
.end method

.method public abstract findRecordBySongIdAndFlag(Ljava/lang/String;Ljava/util/UUID;)Lcom/innioasis/y1/database/SongCatPlaylist;
.end method

.method public abstract getSongIdsByFlagSync(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/innioasis/y1/database/SongCatPlaylist;)V
.end method
