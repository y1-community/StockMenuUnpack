.class public interface abstract Lcom/innioasis/y1/database/SongDao;
.super Ljava/lang/Object;
.source "SongDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/database/SongDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008L\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u001e\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0016\u001a\u00020\tH\'J\u001e\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u001e\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\'J\u000e\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\'J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\'J\u000e\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\'J \u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\tH\'J\u0016\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\tH\'J\u0012\u00104\u001a\u0004\u0018\u00010\u00052\u0006\u00105\u001a\u00020\tH\'J\u0012\u00106\u001a\u0004\u0018\u00010\u00052\u0006\u00107\u001a\u00020\tH\'J\u001e\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u00109\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J\u001e\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J\u001e\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J\u001e\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J \u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010+\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J\u001e\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J\u001e\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J\u001e\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\'J \u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J \u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0016\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\tH\'J \u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u00102\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0016\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010\u0011\u001a\u00020\tH\'J\u0016\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010\u0016\u001a\u00020\tH\'J\u0018\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0016\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010R\u001a\u00020\tH\'J\u0016\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010R\u001a\u00020\tH\'J\u0016\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010R\u001a\u00020\tH\'J\u0016\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010R\u001a\u00020\tH\'J\u0016\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0016\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0006\u0010W\u001a\u00020XH\'J\u0018\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J\u000e\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\'J\u0018\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\'J!\u0010g\u001a\u00020\u00032\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050h\"\u00020\u0005H\'\u00a2\u0006\u0002\u0010i\u00a8\u0006j"
    }
    d2 = {
        "Lcom/innioasis/y1/database/SongDao;",
        "",
        "delete",
        "",
        "song",
        "Lcom/innioasis/y1/database/Song;",
        "getAlbums",
        "Landroidx/lifecycle/LiveData;",
        "",
        "",
        "isAudiobook",
        "",
        "getAlbums2",
        "getAlbums2Reverse",
        "getAlbums2ReverseSync",
        "getAlbums2Sync",
        "getAlbumsByGenre2ReverseSync",
        "genre",
        "getAlbumsByGenre2Sync",
        "getAlbumsByGenreReverseSync",
        "getAlbumsByGenreSync",
        "getAlbumsByKeySync",
        "searchKey",
        "getAlbumsReverse",
        "getAlbumsReverseSync",
        "getAlbumsSync",
        "getArtists",
        "getArtists2",
        "getArtists2Reverse",
        "getArtists2ReverseSync",
        "getArtists2Sync",
        "getArtistsByGenre2ReverseSync",
        "getArtistsByGenre2Sync",
        "getArtistsByGenreReverseSync",
        "getArtistsByGenreSync",
        "getArtistsReverse",
        "getArtistsReverseSync",
        "getArtistsSync",
        "getGenres2ReverseSync",
        "getGenres2Sync",
        "getGenresReverseSync",
        "getGenresSync",
        "getSongByAlbumReverseByFileName",
        "album",
        "getSongByAlbumReverseByName",
        "getSongByAlbumReverseSortByFileTime",
        "getSongByAlbumSortByFileName",
        "getSongByAlbumSortByFileTime",
        "getSongByAlbumSortByName",
        "getSongByArtistReverseSortByName",
        "artist",
        "getSongByArtistSortByName",
        "getSongByPathSync",
        "path",
        "getSongBySongIdSync",
        "songId",
        "getSongs",
        "getSongs2",
        "getSongs2Reverse",
        "getSongsByAlbum",
        "getSongsByAlbum2ReverseSync",
        "getSongsByAlbum2Sync",
        "getSongsByAlbumAndGenre2ReverseSync",
        "getSongsByAlbumAndGenre2Sync",
        "getSongsByAlbumAndGenreReverseSync",
        "getSongsByAlbumAndGenreSync",
        "getSongsByAlbumReverseSync",
        "getSongsByAlbumSync",
        "getSongsByArtistAndGenre2ReverseSync",
        "getSongsByArtistAndGenre2Sync",
        "getSongsByArtistAndGenreReverseSync",
        "getSongsByArtistAndGenreSync",
        "getSongsByArtistByFileName",
        "getSongsByArtistReverseByFileName",
        "getSongsByArtistReverseSortByFileTime",
        "getSongsByArtistSortByAlbum",
        "getSongsByArtistSortByFileTime",
        "getSongsByGenreSync",
        "getSongsByKeySync",
        "getSongsByName",
        "getSongsByNameReverse",
        "getSongsByParentPath2ReserveSync",
        "like",
        "getSongsByParentPath2Sync",
        "getSongsByParentPathReserveSync",
        "getSongsByParentPathSync",
        "getSongsByPlaylistId",
        "playlistId",
        "Ljava/util/UUID;",
        "getSongsByPlaylistId2",
        "getSongsByPlaylistId2Reverse",
        "getSongsByPlaylistIdReverse",
        "getSongsByPlaylistIdReverseSortByFileName",
        "getSongsByPlaylistIdReverseSortByFileTime",
        "getSongsByPlaylistIdReverseSortByName",
        "getSongsByPlaylistIdSortByFileName",
        "getSongsByPlaylistIdSortByFileTime",
        "getSongsByPlaylistIdSortByName",
        "getSongsByTime",
        "getSongsByTimeReverse",
        "getSongsReverse",
        "getSongsReverseSync",
        "getSongsSync",
        "insert",
        "",
        "([Lcom/innioasis/y1/database/Song;)V",
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
.method public abstract delete(Lcom/innioasis/y1/database/Song;)V
.end method

.method public abstract getAlbums(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAlbums2(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAlbums2Reverse(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAlbums2ReverseSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbums2Sync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumsByGenre2ReverseSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumsByGenre2Sync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumsByGenreReverseSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumsByGenreSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumsByKeySync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumsReverse(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAlbumsReverseSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumsSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtists(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getArtists2(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getArtists2Reverse(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getArtists2ReverseSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtists2Sync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtistsByGenre2ReverseSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtistsByGenre2Sync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtistsByGenreReverseSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtistsByGenreSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtistsReverse(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getArtistsReverseSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtistsSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGenres2ReverseSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGenres2Sync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGenresReverseSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGenresSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByAlbumReverseByFileName(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByAlbumReverseByName(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByAlbumReverseSortByFileTime(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByAlbumSortByFileName(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByAlbumSortByFileTime(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByAlbumSortByName(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByArtistReverseSortByName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByArtistSortByName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;
.end method

.method public abstract getSongBySongIdSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;
.end method

.method public abstract getSongs(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSongs2(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSongs2Reverse(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbum(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbum2ReverseSync(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbum2Sync(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbumAndGenre2ReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbumAndGenre2Sync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbumAndGenreReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbumAndGenreSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbumReverseSync(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByAlbumSync(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistAndGenre2ReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistAndGenre2Sync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistAndGenreReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistAndGenreSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistByFileName(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistReverseByFileName(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistReverseSortByFileTime(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistSortByAlbum(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByArtistSortByFileTime(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByGenreSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByKeySync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByName(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByNameReverse(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByParentPath2ReserveSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByParentPath2Sync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByParentPathReserveSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByParentPathSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistId(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistId2(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistId2Reverse(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistIdReverse(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistIdReverseSortByFileName(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistIdReverseSortByFileTime(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistIdReverseSortByName(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistIdSortByFileName(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistIdSortByFileTime(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByPlaylistIdSortByName(Ljava/util/UUID;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByTime(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsByTimeReverse(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsReverse(I)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSongsReverseSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSongsSync(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/innioasis/y1/database/Song;)V
.end method
