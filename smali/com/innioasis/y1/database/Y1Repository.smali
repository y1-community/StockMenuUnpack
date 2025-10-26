.class public final Lcom/innioasis/y1/database/Y1Repository;
.super Ljava/lang/Object;
.source "Y1Repository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/database/Y1Repository$Companion;,
        Lcom/innioasis/y1/database/Y1Repository$SongSortType;,
        Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;,
        Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;,
        Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;,
        Lcom/innioasis/y1/database/Y1Repository$SortVideoType;,
        Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;,
        Lcom/innioasis/y1/database/Y1Repository$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nY1Repository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1510:1\n1851#2,2:1511\n1851#2,2:1513\n1851#2,2:1515\n350#2,7:1519\n1851#2,2:1528\n1045#2:1530\n1045#2:1531\n1054#2:1532\n1045#2:1533\n1045#2:1534\n1054#2:1535\n1045#2:1536\n1054#2:1537\n13543#3,2:1517\n13543#3,2:1526\n*S KotlinDebug\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository\n*L\n347#1:1511,2\n396#1:1513,2\n419#1:1515,2\n515#1:1519,7\n1164#1:1528,2\n1434#1:1530\n1436#1:1531\n1437#1:1532\n1438#1:1533\n1498#1:1534\n1499#1:1535\n1500#1:1536\n1501#1:1537\n466#1:1517,2\n547#1:1526,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fd\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0018*\u0001\u000e\u0018\u0000 \u0093\u00012\u00020\u0001:\u000e\u0093\u0001\u0094\u0001\u0095\u0001\u0096\u0001\u0097\u0001\u0098\u0001\u0099\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u0016\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,J\u001c\u0010(\u001a\u00020%2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010+\u001a\u00020,J\u0016\u0010/\u001a\u00020%2\u0006\u00100\u001a\u0002012\u0006\u0010+\u001a\u00020,J\u0019\u00102\u001a\u00020%2\u0006\u00103\u001a\u000204H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00105J\u000e\u00106\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u0007J\u0016\u00108\u001a\u00020%2\u0006\u00109\u001a\u00020:2\u0006\u0010+\u001a\u00020:J\u000e\u0010;\u001a\u00020%2\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u000e\u0010?\u001a\u00020%2\u0006\u0010)\u001a\u00020*J\u000e\u0010@\u001a\u00020%2\u0006\u0010A\u001a\u000201J\u000e\u0010B\u001a\u00020%2\u0006\u00109\u001a\u00020:J\u000e\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020\u0007J\u000e\u0010D\u001a\u00020%2\u0006\u00107\u001a\u00020\u0007J\u0006\u0010E\u001a\u00020%J\u000e\u0010F\u001a\u00020\u00142\u0006\u00100\u001a\u000201J\u001e\u0010G\u001a\u00020\u00142\u0006\u00100\u001a\u0002012\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00070.H\u0002J\u000e\u0010I\u001a\u00020\u00142\u0006\u00100\u001a\u000201J\u000e\u0010J\u001a\u00020\u00142\u0006\u00100\u001a\u000201J\u0018\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020OH\u0002J\u000e\u0010P\u001a\u00020*2\u0006\u00100\u001a\u000201J\u001c\u0010Q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070.0R2\u0008\u0008\u0002\u0010S\u001a\u00020OJ\u0014\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00070.2\u0006\u0010U\u001a\u00020VJ\u0014\u0010W\u001a\u0008\u0012\u0004\u0012\u00020X0.2\u0006\u0010Y\u001a\u00020\u0007J\u0014\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00070.2\u0006\u0010N\u001a\u00020[J\u0016\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00070.2\u0008\u0008\u0002\u0010S\u001a\u00020OJ\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\'0.J\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u0002040.J\u001c\u0010_\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070.0R2\u0008\u0008\u0002\u0010S\u001a\u00020OJ\u0014\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\u00070.2\u0006\u0010U\u001a\u00020VJ \u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u00070.2\u0008\u0008\u0002\u0010S\u001a\u00020O2\u0008\u0008\u0002\u0010b\u001a\u00020cJ\u000c\u0010d\u001a\u0008\u0012\u0004\u0012\u00020=0.J\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u00020\u00070.J\u0014\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\'0.2\u0006\u0010N\u001a\u00020gJ\u0010\u0010h\u001a\u0004\u0018\u00010\'2\u0006\u0010i\u001a\u00020,J\u0010\u0010j\u001a\u0004\u0018\u00010k2\u0006\u0010l\u001a\u00020\u0007J\u0010\u0010m\u001a\u0004\u0018\u00010*2\u0006\u0010n\u001a\u00020\u0007J\u0010\u0010o\u001a\u0004\u0018\u00010*2\u0006\u0010l\u001a\u00020\u0007J\u001c\u0010p\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0.0R2\u0008\u0008\u0002\u0010S\u001a\u00020OJ\u001c\u0010q\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010r\u001a\u00020\u00072\u0006\u0010b\u001a\u00020sJ*\u0010t\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010r\u001a\u00020X2\u0008\u0008\u0002\u0010S\u001a\u00020O2\n\u0008\u0002\u0010U\u001a\u0004\u0018\u00010VJ\u001c\u0010u\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010v\u001a\u00020\u00072\u0006\u0010b\u001a\u00020sJ*\u0010w\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010v\u001a\u00020\u00072\u0008\u0008\u0002\u0010S\u001a\u00020O2\n\u0008\u0002\u0010U\u001a\u0004\u0018\u00010VJ\u0014\u0010x\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010U\u001a\u00020VJ\u0014\u0010y\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010Y\u001a\u00020\u0007J\u0014\u0010z\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010{\u001a\u00020\u0007J\u001c\u0010|\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010&\u001a\u00020\'2\u0006\u0010N\u001a\u00020sJ\u0014\u0010}\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010&\u001a\u00020\'J\u0014\u0010~\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0006\u0010N\u001a\u00020sJ\u0016\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020*0.2\u0008\u0008\u0002\u0010S\u001a\u00020OJ\u0007\u0010\u0080\u0001\u001a\u00020!J\u000e\u0010\u0081\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010.J\u0012\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0082\u00012\u0006\u00107\u001a\u00020\u0007J\u000e\u0010\u0084\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010.J\u0015\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u0002040.2\u0006\u00107\u001a\u00020\u0007J\u0016\u0010\u0085\u0001\u001a\u0008\u0012\u0004\u0012\u0002040.2\u0007\u0010\u0086\u0001\u001a\u00020\u0007J\u000f\u0010\u0087\u0001\u001a\u00020%2\u0006\u0010<\u001a\u00020=J\u0010\u0010\u0088\u0001\u001a\u00020%2\u0007\u0010\u0089\u0001\u001a\u00020kJ\u000f\u0010\u008a\u0001\u001a\u00020%2\u0006\u00100\u001a\u000201J\u0007\u0010\u008b\u0001\u001a\u00020%J\u0017\u0010\u008c\u0001\u001a\u00020%2\u0006\u0010l\u001a\u00020\u00072\u0006\u0010+\u001a\u00020,J\u0017\u0010\u008d\u0001\u001a\u00020%2\u0006\u00109\u001a\u00020:2\u0006\u0010+\u001a\u00020:J\u0016\u0010\u008e\u0001\u001a\u0008\u0012\u0004\u0012\u0002040.2\u0007\u0010\u008f\u0001\u001a\u00020\u0007J\u0007\u0010\u0090\u0001\u001a\u00020%J\u0010\u0010\u0091\u0001\u001a\u00020%2\u0007\u0010&\u001a\u00030\u0082\u0001J\u000f\u0010\u0092\u0001\u001a\u00020%2\u0006\u0010&\u001a\u00020\'R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lcom/innioasis/y1/database/Y1Repository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "STANDARD_GENRES",
        "",
        "",
        "[Ljava/lang/String;",
        "bookmarkDao",
        "Lcom/innioasis/y1/database/BookmarkDao;",
        "database",
        "Lcom/innioasis/y1/database/Y1Database;",
        "deleteHandler",
        "com/innioasis/y1/database/Y1Repository$deleteHandler$1",
        "Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "isRefreshDatabaseIng",
        "",
        "nowSongPath",
        "playlistDao",
        "Lcom/innioasis/y1/database/PlaylistDao;",
        "progressDao",
        "Lcom/innioasis/y1/database/ProgressDao;",
        "refreshDatabaseRunOneTime",
        "refreshExecutor",
        "songCatPlayListDao",
        "Lcom/innioasis/y1/database/SongCatPlayListDao;",
        "songDao",
        "Lcom/innioasis/y1/database/SongDao;",
        "videoDao",
        "Lcom/innioasis/y1/database/video/VideoInfoDao;",
        "videoListDao",
        "Lcom/innioasis/y1/database/video/VideoPlaylistDao;",
        "addPlaylist",
        "",
        "playlist",
        "Lcom/innioasis/y1/database/Playlist;",
        "addToPlayList",
        "song",
        "Lcom/innioasis/y1/database/Song;",
        "playlistId",
        "Ljava/util/UUID;",
        "songs",
        "",
        "addToPlayListByFile",
        "file",
        "Ljava/io/File;",
        "addVideo",
        "video",
        "Lcom/innioasis/y1/database/video/VideoInfo;",
        "(Lcom/innioasis/y1/database/video/VideoInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addVideoList",
        "name",
        "addVideoToPlayList",
        "videoId",
        "",
        "deleteBookmark",
        "bookmark",
        "Lcom/innioasis/y1/database/Bookmark;",
        "deletePlaylist",
        "deleteSong",
        "deleteSongsOfDir",
        "dir",
        "deleteVideo",
        "videoPath",
        "deleteVideoPlayByName",
        "endDeleteSongs",
        "endIsAudiobook",
        "endIsInList",
        "list",
        "endIsMusic",
        "endIsVideo",
        "extractMetadata",
        "mmr",
        "Landroid/media/MediaMetadataRetriever;",
        "type",
        "",
        "fileToSong",
        "getAlbums",
        "Landroidx/lifecycle/LiveData;",
        "isAudiobook",
        "getAlbumsByGenreSync",
        "genre",
        "Lcom/innioasis/music/data/Genre;",
        "getAlbumsByKey",
        "Lcom/innioasis/music/data/Album;",
        "key",
        "getAlbumsBySort",
        "Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;",
        "getAlbumsSync",
        "getAllPlaylistSync",
        "getAllVideoBySort",
        "getArtists",
        "getArtistsByGenreSync",
        "getArtistsBySort",
        "sortType",
        "Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;",
        "getBookmarksSync",
        "getGenresSync",
        "getPlayListBySort",
        "Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;",
        "getPlaylistById",
        "id",
        "getProgressBySongId",
        "Lcom/innioasis/y1/database/Progress;",
        "songId",
        "getSongByPathSync",
        "path",
        "getSongBySongIdSync",
        "getSongs",
        "getSongsByAlbum",
        "album",
        "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
        "getSongsByAlbumSync",
        "getSongsByArtist",
        "artist",
        "getSongsByArtistSync",
        "getSongsByGenreSync",
        "getSongsByKey",
        "getSongsByParentPath",
        "parentPath",
        "getSongsByPlaylistSortByType",
        "getSongsByPlaylistSync",
        "getSongsList",
        "getSongsSync",
        "getVideoDao",
        "getVideoPlayList",
        "Lcom/innioasis/y1/database/video/VideoPlaylist;",
        "getVideoPlayListByName",
        "getVideoPlayListBySort",
        "getVideoToVideoPlayListNameBySort",
        "videoListName",
        "insertBookmark",
        "insertProgress",
        "progress",
        "insertSong",
        "refreshDatabase",
        "removeFromPlayList",
        "removeVideoToPlayList",
        "searchByKeyword",
        "searchKey",
        "startDeleteSongs",
        "upDateVideoList",
        "updatePlaylist",
        "Companion",
        "SongSortType",
        "SortAlbumType",
        "SortArtistsType",
        "SortPlayListType",
        "SortVideoListType",
        "SortVideoType",
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


# static fields
.field public static final Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

.field private static INSTANCE:Lcom/innioasis/y1/database/Y1Repository;


# instance fields
.field private final STANDARD_GENRES:[Ljava/lang/String;

.field private final bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

.field private final database:Lcom/innioasis/y1/database/Y1Database;

.field private final deleteHandler:Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private isRefreshDatabaseIng:Z

.field private nowSongPath:Ljava/lang/String;

.field private final playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

.field private final progressDao:Lcom/innioasis/y1/database/ProgressDao;

.field private refreshDatabaseRunOneTime:Z

.field private refreshExecutor:Ljava/util/concurrent/ExecutorService;

.field private final songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

.field private final songDao:Lcom/innioasis/y1/database/SongDao;

.field private final videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

.field private final videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;


# direct methods
.method public static synthetic $r8$lambda$-fTM_eRHqRvx-AlehaG0iWi1ADo(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayListByFile$lambda-8(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$00IwVACjxsqWvyUEwSzbLGKzXIE(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->insertBookmark$lambda-3(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KrueT8wEPgjiTKQl6qNvWrWDwn8(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->deleteBookmark$lambda-5(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRjqmw3pUCWbgrg6Hzb8qobhqjY(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayListByFile$lambda-9(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jCOyEtfSJAr4Vn_YXfx-39B3ddc(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Progress;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->insertProgress$lambda-2(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Progress;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/innioasis/y1/database/Y1Database;

    const-string/jumbo v1, "y1_database"

    .line 62
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/room/migration/Migration;

    invoke-static {}, Lcom/innioasis/y1/database/Y1DatabaseKt;->getMIGRATION_1_2()Landroidx/room/migration/Migration;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v1, v0, [Landroidx/room/migration/Migration;

    invoke-static {}, Lcom/innioasis/y1/database/Y1DatabaseKt;->getMIGRATION_2_3()Landroidx/room/migration/Migration;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v1, "databaseBuilder(\n       \u2026ION_2_3)\n        .build()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1/database/Y1Database;

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->database:Lcom/innioasis/y1/database/Y1Database;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->executor:Ljava/util/concurrent/ExecutorService;

    .line 67
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Database;->getSongDao()Lcom/innioasis/y1/database/SongDao;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    .line 68
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Database;->getProgressDao()Lcom/innioasis/y1/database/ProgressDao;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->progressDao:Lcom/innioasis/y1/database/ProgressDao;

    .line 69
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Database;->getBookmarkDao()Lcom/innioasis/y1/database/BookmarkDao;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    .line 70
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Database;->getSongCatPlaylistDao()Lcom/innioasis/y1/database/SongCatPlayListDao;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    .line 71
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Database;->getPlaylistDao()Lcom/innioasis/y1/database/PlaylistDao;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    .line 72
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Database;->getVideoDao()Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    .line 73
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Database;->getVideoListDao()Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    .line 476
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;

    invoke-direct {v1, p1}, Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->deleteHandler:Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;

    const-string p1, ""

    .line 505
    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->nowSongPath:Ljava/lang/String;

    const/16 p1, 0x94

    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, p1, v3

    const-string v1, "Classic Rock"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "Country"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "Dance"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "Disco"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "Funk"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "Grunge"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "Hip-Hop"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "Jazz"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "Metal"

    aput-object v1, p1, v0

    const/16 v0, 0xa

    const-string v1, "New Age"

    aput-object v1, p1, v0

    const/16 v0, 0xb

    const-string v1, "Oldies"

    aput-object v1, p1, v0

    const/16 v0, 0xc

    const-string v1, "Other"

    aput-object v1, p1, v0

    const/16 v0, 0xd

    const-string v1, "Pop"

    aput-object v1, p1, v0

    const/16 v0, 0xe

    const-string v1, "R&B"

    aput-object v1, p1, v0

    const/16 v0, 0xf

    const-string v1, "Rap"

    aput-object v1, p1, v0

    const/16 v0, 0x10

    const-string v1, "Reggae"

    aput-object v1, p1, v0

    const/16 v0, 0x11

    const-string v1, "Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x12

    const-string v1, "Techno"

    aput-object v1, p1, v0

    const/16 v0, 0x13

    const-string v1, "Industrial"

    aput-object v1, p1, v0

    const/16 v0, 0x14

    const-string v1, "Alternative"

    aput-object v1, p1, v0

    const/16 v0, 0x15

    const-string v1, "Ska"

    aput-object v1, p1, v0

    const/16 v0, 0x16

    const-string v1, "Death Metal"

    aput-object v1, p1, v0

    const/16 v0, 0x17

    const-string v1, "Pranks"

    aput-object v1, p1, v0

    const/16 v0, 0x18

    const-string v1, "Soundtrack"

    aput-object v1, p1, v0

    const/16 v0, 0x19

    const-string v1, "Euro-Techno"

    aput-object v1, p1, v0

    const/16 v0, 0x1a

    const-string v1, "Ambient"

    aput-object v1, p1, v0

    const/16 v0, 0x1b

    const-string v1, "Trip-Hop"

    aput-object v1, p1, v0

    const/16 v0, 0x1c

    const-string v1, "Vocal"

    aput-object v1, p1, v0

    const/16 v0, 0x1d

    const-string v1, "Jazz+Funk"

    aput-object v1, p1, v0

    const/16 v0, 0x1e

    const-string v1, "Fusion"

    aput-object v1, p1, v0

    const/16 v0, 0x1f

    const-string v1, "Trance"

    aput-object v1, p1, v0

    const/16 v0, 0x20

    const-string v1, "Classical"

    aput-object v1, p1, v0

    const/16 v0, 0x21

    const-string v1, "Instrumental"

    aput-object v1, p1, v0

    const/16 v0, 0x22

    const-string v1, "Acid"

    aput-object v1, p1, v0

    const/16 v0, 0x23

    const-string v1, "House"

    aput-object v1, p1, v0

    const/16 v0, 0x24

    const-string v1, "Game"

    aput-object v1, p1, v0

    const/16 v0, 0x25

    const-string v1, "Sound Clip"

    aput-object v1, p1, v0

    const/16 v0, 0x26

    const-string v1, "Gospel"

    aput-object v1, p1, v0

    const/16 v0, 0x27

    const-string v1, "Noise"

    aput-object v1, p1, v0

    const/16 v0, 0x28

    const-string v1, "AlternRock"

    aput-object v1, p1, v0

    const/16 v0, 0x29

    const-string v1, "Bass"

    aput-object v1, p1, v0

    const/16 v0, 0x2a

    const-string v1, "Soul"

    aput-object v1, p1, v0

    const/16 v0, 0x2b

    const-string v1, "Punk"

    aput-object v1, p1, v0

    const/16 v0, 0x2c

    const-string v1, "Space"

    aput-object v1, p1, v0

    const/16 v0, 0x2d

    const-string v1, "Meditative"

    aput-object v1, p1, v0

    const/16 v0, 0x2e

    const-string v1, "Instrumental Pop"

    aput-object v1, p1, v0

    const/16 v0, 0x2f

    const-string v1, "Instrumental Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x30

    const-string v1, "Ethnic"

    aput-object v1, p1, v0

    const/16 v0, 0x31

    const-string v1, "Gothic"

    aput-object v1, p1, v0

    const/16 v0, 0x32

    const-string v1, "Darkwave"

    aput-object v1, p1, v0

    const/16 v0, 0x33

    const-string v1, "Techno-Industrial"

    aput-object v1, p1, v0

    const/16 v0, 0x34

    const-string v1, "Electronic"

    aput-object v1, p1, v0

    const/16 v0, 0x35

    const-string v1, "Pop-Folk"

    aput-object v1, p1, v0

    const/16 v0, 0x36

    const-string v1, "Eurodance"

    aput-object v1, p1, v0

    const/16 v0, 0x37

    const-string v1, "Dream"

    aput-object v1, p1, v0

    const/16 v0, 0x38

    const-string v1, "Southern Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x39

    const-string v1, "Comedy"

    aput-object v1, p1, v0

    const/16 v0, 0x3a

    const-string v1, "Cult"

    aput-object v1, p1, v0

    const/16 v0, 0x3b

    const-string v1, "Gangsta"

    aput-object v1, p1, v0

    const/16 v0, 0x3c

    const-string v1, "Top 40"

    aput-object v1, p1, v0

    const/16 v0, 0x3d

    const-string v1, "Christian Rap"

    aput-object v1, p1, v0

    const/16 v0, 0x3e

    const-string v1, "Pop/Funk"

    aput-object v1, p1, v0

    const/16 v0, 0x3f

    const-string v1, "Jungle"

    aput-object v1, p1, v0

    const/16 v0, 0x40

    const-string v1, "Native American"

    aput-object v1, p1, v0

    const/16 v0, 0x41

    const-string v1, "Cabaret"

    aput-object v1, p1, v0

    const/16 v0, 0x42

    const-string v1, "New Wave"

    aput-object v1, p1, v0

    const/16 v0, 0x43

    const-string v1, "Psychadelic"

    aput-object v1, p1, v0

    const/16 v0, 0x44

    const-string v1, "Rave"

    aput-object v1, p1, v0

    const/16 v0, 0x45

    const-string v1, "Showtunes"

    aput-object v1, p1, v0

    const/16 v0, 0x46

    const-string v1, "Trailer"

    aput-object v1, p1, v0

    const/16 v0, 0x47

    const-string v1, "Lo-Fi"

    aput-object v1, p1, v0

    const/16 v0, 0x48

    const-string v1, "Tribal"

    aput-object v1, p1, v0

    const/16 v0, 0x49

    const-string v1, "Acid Punk"

    aput-object v1, p1, v0

    const/16 v0, 0x4a

    const-string v1, "Acid Jazz"

    aput-object v1, p1, v0

    const/16 v0, 0x4b

    const-string v1, "Polka"

    aput-object v1, p1, v0

    const/16 v0, 0x4c

    const-string v1, "Retro"

    aput-object v1, p1, v0

    const/16 v0, 0x4d

    const-string v1, "Musical"

    aput-object v1, p1, v0

    const/16 v0, 0x4e

    const-string v1, "Rock & Roll"

    aput-object v1, p1, v0

    const/16 v0, 0x4f

    const-string v1, "Hard Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x50

    const-string v1, "Folk"

    aput-object v1, p1, v0

    const/16 v0, 0x51

    const-string v1, "Folk-Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x52

    const-string v1, "National Folk"

    aput-object v1, p1, v0

    const/16 v0, 0x53

    const-string v1, "Swing"

    aput-object v1, p1, v0

    const/16 v0, 0x54

    const-string v1, "Fast Fusion"

    aput-object v1, p1, v0

    const/16 v0, 0x55

    const-string v1, "Bebob"

    aput-object v1, p1, v0

    const/16 v0, 0x56

    const-string v1, "Latin"

    aput-object v1, p1, v0

    const/16 v0, 0x57

    const-string v1, "Revival"

    aput-object v1, p1, v0

    const/16 v0, 0x58

    const-string v1, "Celtic"

    aput-object v1, p1, v0

    const/16 v0, 0x59

    const-string v1, "Bluegrass"

    aput-object v1, p1, v0

    const/16 v0, 0x5a

    const-string v1, "Avantgarde"

    aput-object v1, p1, v0

    const/16 v0, 0x5b

    const-string v1, "Gothic Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x5c

    const-string v1, "Progressive Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x5d

    const-string v1, "Psychedelic Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x5e

    const-string v1, "Symphonic Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x5f

    const-string v1, "Slow Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x60

    const-string v1, "Big Band"

    aput-object v1, p1, v0

    const/16 v0, 0x61

    const-string v1, "Chorus"

    aput-object v1, p1, v0

    const/16 v0, 0x62

    const-string v1, "Easy Listening"

    aput-object v1, p1, v0

    const/16 v0, 0x63

    const-string v1, "Acoustic"

    aput-object v1, p1, v0

    const/16 v0, 0x64

    const-string v1, "Humour"

    aput-object v1, p1, v0

    const/16 v0, 0x65

    const-string v1, "Speech"

    aput-object v1, p1, v0

    const/16 v0, 0x66

    const-string v1, "Chanson"

    aput-object v1, p1, v0

    const/16 v0, 0x67

    const-string v1, "Opera"

    aput-object v1, p1, v0

    const/16 v0, 0x68

    const-string v1, "Chamber Music"

    aput-object v1, p1, v0

    const/16 v0, 0x69

    const-string v1, "Sonata"

    aput-object v1, p1, v0

    const/16 v0, 0x6a

    const-string v1, "Symphony"

    aput-object v1, p1, v0

    const/16 v0, 0x6b

    const-string v1, "Booty Bass"

    aput-object v1, p1, v0

    const/16 v0, 0x6c

    const-string v1, "Primus"

    aput-object v1, p1, v0

    const/16 v0, 0x6d

    const-string v1, "Porn Groove"

    aput-object v1, p1, v0

    const/16 v0, 0x6e

    const-string v1, "Satire"

    aput-object v1, p1, v0

    const/16 v0, 0x6f

    const-string v1, "Slow Jam"

    aput-object v1, p1, v0

    const/16 v0, 0x70

    const-string v1, "Club"

    aput-object v1, p1, v0

    const/16 v0, 0x71

    const-string v1, "Tango"

    aput-object v1, p1, v0

    const/16 v0, 0x72

    const-string v1, "Samba"

    aput-object v1, p1, v0

    const/16 v0, 0x73

    const-string v1, "Folklore"

    aput-object v1, p1, v0

    const/16 v0, 0x74

    const-string v1, "Ballad"

    aput-object v1, p1, v0

    const/16 v0, 0x75

    const-string v1, "Power Ballad"

    aput-object v1, p1, v0

    const/16 v0, 0x76

    const-string v1, "Rhythmic Soul"

    aput-object v1, p1, v0

    const/16 v0, 0x77

    const-string v1, "Freestyle"

    aput-object v1, p1, v0

    const/16 v0, 0x78

    const-string v1, "Duet"

    aput-object v1, p1, v0

    const/16 v0, 0x79

    const-string v1, "Punk Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x7a

    const-string v1, "Drum Solo"

    aput-object v1, p1, v0

    const/16 v0, 0x7b

    const-string v1, "A capella"

    aput-object v1, p1, v0

    const/16 v0, 0x7c

    const-string v1, "Euro-House"

    aput-object v1, p1, v0

    const/16 v0, 0x7d

    const-string v1, "Dance Hall"

    aput-object v1, p1, v0

    const/16 v0, 0x7e

    const-string v1, "Goa"

    aput-object v1, p1, v0

    const/16 v0, 0x7f

    const-string v1, "Drum & Bass"

    aput-object v1, p1, v0

    const/16 v0, 0x80

    const-string v1, "Club-House"

    aput-object v1, p1, v0

    const/16 v0, 0x81

    const-string v1, "Hardcore"

    aput-object v1, p1, v0

    const/16 v0, 0x82

    const-string v1, "Terror"

    aput-object v1, p1, v0

    const/16 v0, 0x83

    const-string v1, "Indie"

    aput-object v1, p1, v0

    const/16 v0, 0x84

    const-string v1, "BritPop"

    aput-object v1, p1, v0

    const/16 v0, 0x85

    const-string v1, "Afro-Punk"

    aput-object v1, p1, v0

    const/16 v0, 0x86

    const-string v1, "Polsk Punk"

    aput-object v1, p1, v0

    const/16 v0, 0x87

    const-string v1, "Beat"

    aput-object v1, p1, v0

    const/16 v0, 0x88

    const-string v1, "Christian Gangsta Rap"

    aput-object v1, p1, v0

    const/16 v0, 0x89

    const-string v1, "Heavy Metal"

    aput-object v1, p1, v0

    const/16 v0, 0x8a

    const-string v1, "Black Metal"

    aput-object v1, p1, v0

    const/16 v0, 0x8b

    const-string v1, "Crossover"

    aput-object v1, p1, v0

    const/16 v0, 0x8c

    const-string v1, "Contemporary Christian"

    aput-object v1, p1, v0

    const/16 v0, 0x8d

    const-string v1, "Christian Rock"

    aput-object v1, p1, v0

    const/16 v0, 0x8e

    const-string v1, "Merengue"

    aput-object v1, p1, v0

    const/16 v0, 0x8f

    const-string v1, "Salsa"

    aput-object v1, p1, v0

    const/16 v0, 0x90

    const-string v1, "Thrash Metal"

    aput-object v1, p1, v0

    const/16 v0, 0x91

    const-string v1, "Anime"

    aput-object v1, p1, v0

    const/16 v0, 0x92

    const-string v1, "Jpop"

    aput-object v1, p1, v0

    const/16 v0, 0x93

    const-string v1, "Synthpop"

    aput-object v1, p1, v0

    .line 999
    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getBookmarkDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/BookmarkDao;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Repository;->bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/innioasis/y1/database/Y1Repository;
    .locals 1

    .line 48
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository;->INSTANCE:Lcom/innioasis/y1/database/Y1Repository;

    return-object v0
.end method

.method public static final synthetic access$getProgressDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/ProgressDao;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Repository;->progressDao:Lcom/innioasis/y1/database/ProgressDao;

    return-object p0
.end method

.method public static final synthetic access$getSongCatPlayListDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/SongCatPlayListDao;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Repository;->songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    return-object p0
.end method

.method public static final synthetic access$getSongDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/SongDao;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    return-object p0
.end method

.method public static final synthetic access$getVideoDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/video/VideoInfoDao;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    return-object p0
.end method

.method public static final synthetic access$isRefreshDatabaseIng$p(Lcom/innioasis/y1/database/Y1Repository;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/innioasis/y1/database/Y1Repository;->isRefreshDatabaseIng:Z

    return p0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/innioasis/y1/database/Y1Repository;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/innioasis/y1/database/Y1Repository;->INSTANCE:Lcom/innioasis/y1/database/Y1Repository;

    return-void
.end method

.method public static final synthetic access$setRefreshDatabaseIng$p(Lcom/innioasis/y1/database/Y1Repository;Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/innioasis/y1/database/Y1Repository;->isRefreshDatabaseIng:Z

    return-void
.end method

.method private static final addToPlayListByFile$lambda-8(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->endIsAudiobook(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final addToPlayListByFile$lambda-9(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->endIsMusic(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final deleteBookmark$lambda-5(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bookmark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object p0, p0, Lcom/innioasis/y1/database/Y1Repository;->bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    invoke-interface {p0, p1}, Lcom/innioasis/y1/database/BookmarkDao;->delete(Lcom/innioasis/y1/database/Bookmark;)V

    return-void
.end method

.method private final endIsInList(Ljava/io/File;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1162
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "path"

    .line 1163
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    check-cast p2, Ljava/lang/Iterable;

    .line 1528
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1165
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final extractMetadata(Landroid/media/MediaMetadataRetriever;I)Ljava/lang/String;
    .locals 2

    .line 1150
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\uffe6\uffe6\uffe6\uffe6<unknown>"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 1152
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1153
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 1154
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->STANDARD_GENRES:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    .line 1157
    :cond_1
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public static synthetic getAlbums$default(Lcom/innioasis/y1/database/Y1Repository;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getAlbums(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAlbumsSync$default(Lcom/innioasis/y1/database/Y1Repository;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getAlbumsSync(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getArtists$default(Lcom/innioasis/y1/database/Y1Repository;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getArtists(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getArtistsBySort$default(Lcom/innioasis/y1/database/Y1Repository;ILcom/innioasis/y1/database/Y1Repository$SortArtistsType;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1229
    sget-object p2, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    .line 1227
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/Y1Repository;->getArtistsBySort(ILcom/innioasis/y1/database/Y1Repository$SortArtistsType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSongs$default(Lcom/innioasis/y1/database/Y1Repository;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getSongs(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 266
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync(Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSongsByArtistSync$default(Lcom/innioasis/y1/database/Y1Repository;Ljava/lang/String;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 289
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtistSync(Ljava/lang/String;ILcom/innioasis/music/data/Genre;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSongsSync$default(Lcom/innioasis/y1/database/Y1Repository;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getSongsSync(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final insertBookmark$lambda-3(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bookmark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;-><init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/innioasis/music/util/Other;->repeatTry$default(Lcom/innioasis/music/util/Other;IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    return-void
.end method

.method private static final insertProgress$lambda-2(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Progress;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->progressDao:Lcom/innioasis/y1/database/ProgressDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/ProgressDao;->findProgressBySongId(Ljava/lang/String;)Lcom/innioasis/y1/database/Progress;

    move-result-object v0

    .line 363
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v3

    :cond_0
    invoke-virtual {p1, v3, v4}, Lcom/innioasis/y1/database/Progress;->setEndTime(J)V

    :cond_1
    if-eqz v0, :cond_2

    .line 365
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->progressDao:Lcom/innioasis/y1/database/ProgressDao;

    invoke-interface {v1, v0}, Lcom/innioasis/y1/database/ProgressDao;->delete(Lcom/innioasis/y1/database/Progress;)V

    .line 367
    :cond_2
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$insertProgress$1$2;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1/database/Y1Repository$insertProgress$1$2;-><init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Progress;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/innioasis/music/util/Other;->repeatTry$default(Lcom/innioasis/music/util/Other;IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 368
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "usb_usb"

    invoke-virtual {p0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Progress;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v1

    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addPlaylist(Lcom/innioasis/y1/database/Playlist;)V
    .locals 3

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/PlaylistDao;->getPlaylistById(Ljava/util/UUID;)Lcom/innioasis/y1/database/Playlist;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/innioasis/y1/database/Playlist;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/PlaylistDao;->insert([Lcom/innioasis/y1/database/Playlist;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public final addToPlayList(Lcom/innioasis/y1/database/Song;Ljava/util/UUID;)V
    .locals 1

    const-string v0, "song"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayList(Ljava/util/List;Ljava/util/UUID;)V

    return-void
.end method

.method public final addToPlayList(Ljava/util/List;Ljava/util/UUID;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    const-string v2, "songs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "playlistId"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    .line 419
    check-cast v1, Ljava/lang/Iterable;

    .line 1515
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/database/Song;

    .line 420
    iget-object v2, v0, Lcom/innioasis/y1/database/Y1Repository;->songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Lcom/innioasis/y1/database/SongCatPlayListDao;->findRecordBySongIdAndFlag(Ljava/lang/String;Ljava/util/UUID;)Lcom/innioasis/y1/database/SongCatPlaylist;

    move-result-object v2

    if-nez v2, :cond_0

    .line 423
    new-instance v12, Lcom/innioasis/y1/database/SongCatPlaylist;

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/16 v7, 0x9

    const/4 v8, 0x0

    move-object v1, v12

    move-object/from16 v4, p2

    .line 423
    invoke-direct/range {v1 .. v8}, Lcom/innioasis/y1/database/SongCatPlaylist;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 422
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_1
    sget-object v13, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$addToPlayList$2;

    invoke-direct {v1, v0, v10}, Lcom/innioasis/y1/database/Y1Repository$addToPlayList$2;-><init>(Lcom/innioasis/y1/database/Y1Repository;Ljava/util/List;)V

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x3

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/innioasis/music/util/Other;->repeatTry$default(Lcom/innioasis/music/util/Other;IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    return-void
.end method

.method public final addToPlayListByFile(Ljava/io/File;Ljava/util/UUID;)V
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "file.path"

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayList(Lcom/innioasis/y1/database/Song;Ljava/util/UUID;)V

    goto :goto_2

    .line 457
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "/storage/sdcard0/Audiobooks"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/database/Y1Repository;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 462
    :cond_1
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/y1/database/Y1Repository;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1517
    array-length v0, p1

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v1, p1, v4

    const-string v2, "it"

    .line 467
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/innioasis/y1/database/Y1Repository;->addToPlayListByFile(Ljava/io/File;Ljava/util/UUID;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final addVideo(Lcom/innioasis/y1/database/video/VideoInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0, p1, p2}, Lcom/innioasis/y1/database/video/VideoInfoDao;->insert(Lcom/innioasis/y1/database/video/VideoInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final addVideoList(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getPlaylistByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    new-instance v9, Lcom/innioasis/y1/database/video/VideoPlaylist;

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object v1, v9

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/innioasis/y1/database/video/VideoPlaylist;-><init>(JLjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v9}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->insertSync(Lcom/innioasis/y1/database/video/VideoPlaylist;)J

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addVideoToPlayList(JJ)V
    .locals 10

    .line 1457
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    .line 1458
    new-instance v9, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v9

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;-><init>(JJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1457
    invoke-interface {v0, v9}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->insertVideoToPlaylist(Lcom/innioasis/y1/database/video/PlaylistVideoCrossRef;)V

    return-void
.end method

.method public final deleteBookmark(Lcom/innioasis/y1/database/Bookmark;)V
    .locals 2

    const-string v0, "bookmark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda3;-><init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final deletePlaylist(Lcom/innioasis/y1/database/Playlist;)V
    .locals 2

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/SongCatPlayListDao;->deleteByPlaylistId(Ljava/util/UUID;)V

    .line 246
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/PlaylistDao;->delete(Lcom/innioasis/y1/database/Playlist;)V

    return-void
.end method

.method public final deleteSong(Lcom/innioasis/y1/database/Song;)V
    .locals 2

    const-string v0, "song"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$deleteSong$1;

    invoke-direct {v1, p1}, Lcom/innioasis/y1/database/Y1Repository$deleteSong$1;-><init>(Lcom/innioasis/y1/database/Song;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 532
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->delete(Lcom/innioasis/y1/database/Song;)V

    .line 536
    :try_start_0
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Song;->isAudiobook()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 537
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->progressDao:Lcom/innioasis/y1/database/ProgressDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/ProgressDao;->findProgressBySongId(Ljava/lang/String;)Lcom/innioasis/y1/database/Progress;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 538
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->progressDao:Lcom/innioasis/y1/database/ProgressDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/ProgressDao;->delete(Lcom/innioasis/y1/database/Progress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final deleteSongsOfDir(Ljava/io/File;)V
    .locals 7

    const-string v0, "dir.path"

    const-string v1, "dir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1526
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    const-string v6, "it"

    .line 548
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/innioasis/y1/database/Y1Repository;->deleteSongsOfDir(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 552
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/innioasis/y1/database/SongDao;->getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object v1

    .line 555
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp+1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_2

    .line 557
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp+2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository;->getVideoDao()Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getVideoByPath(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/database/video/VideoInfo;->getVideo_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/database/Y1Repository;->deleteVideo(J)V

    .line 564
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 566
    :cond_2
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp+3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public final deleteVideo(J)V
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0, p1, p2}, Lcom/innioasis/y1/database/video/VideoInfoDao;->deleteById(J)I

    return-void
.end method

.method public final deleteVideo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoInfoDao;->deleteByPath(Ljava/lang/String;)I

    return-void
.end method

.method public final deleteVideoPlayByName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->deleteByName(Ljava/lang/String;)I

    return-void
.end method

.method public final endDeleteSongs()V
    .locals 6

    .line 511
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->deleteHandler:Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;->sendEmptyMessage(I)Z

    .line 513
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->setPlayIndex(I)V

    goto :goto_3

    .line 515
    :cond_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1521
    check-cast v4, Lcom/innioasis/y1/database/Song;

    .line 516
    invoke-virtual {v4}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/innioasis/y1/database/Y1Repository;->nowSongPath:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-gez v3, :cond_5

    .line 519
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->deleteHandler:Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 521
    :cond_5
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v3}, Lcom/innioasis/y1/service/PlayerService;->setPlayIndex(I)V

    :goto_3
    const-string v0, ""

    .line 524
    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->nowSongPath:Ljava/lang/String;

    return-void
.end method

.method public final endIsAudiobook(Ljava/io/File;)Z
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "amr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ape"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flac"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "wav"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "wma"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aac"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m4r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mmf"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mp2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "wv"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m4a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "aiff"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "au"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mka"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ra"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ac3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "aif"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "caf"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    .line 881
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 905
    invoke-direct {p0, p1, v0}, Lcom/innioasis/y1/database/Y1Repository;->endIsInList(Ljava/io/File;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final endIsMusic(Ljava/io/File;)Z
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "amr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ape"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flac"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "wav"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "wma"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aac"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m4r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mmf"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mp2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "wv"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m4a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mid"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "aiff"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "au"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mka"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ra"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ac3"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "aif"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "caf"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    .line 851
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 873
    invoke-direct {p0, p1, v0}, Lcom/innioasis/y1/database/Y1Repository;->endIsInList(Ljava/io/File;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final endIsVideo(Ljava/io/File;)Z
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mov"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wmv"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "avi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mkv"

    aput-object v2, v0, v1

    .line 913
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 921
    invoke-direct {p0, p1, v0}, Lcom/innioasis/y1/database/Y1Repository;->endIsInList(Ljava/io/File;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final fileToSong(Ljava/io/File;)Lcom/innioasis/y1/database/Song;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "file"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/innioasis/y1/utils/HanziToPinyin;->getInstance()Lcom/innioasis/y1/utils/HanziToPinyin;

    move-result-object v2

    .line 930
    new-instance v15, Lcom/innioasis/y1/database/Song;

    move-object v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x7fff

    const/16 v22, 0x0

    invoke-direct/range {v3 .. v22}, Lcom/innioasis/y1/database/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 932
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    move-object/from16 v5, v23

    invoke-virtual {v5, v3, v4}, Lcom/innioasis/y1/database/Song;->setFileDate(J)V

    .line 934
    sget-object v3, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "file.absolutePath"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/innioasis/music/util/Other;->toBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/innioasis/y1/database/Song;->setSongId(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/innioasis/y1/database/Song;->setName(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/utils/HanziToPinyin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "instance.getString(name)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/innioasis/y1/database/Song;->setPinyinName(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/innioasis/y1/database/Song;->setPath(Ljava/lang/String;)V

    const/16 v3, 0x15

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ogg"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "mp3"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string v4, "amr"

    const/4 v8, 0x2

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string v9, "ape"

    aput-object v9, v3, v4

    const/4 v4, 0x4

    const-string v9, "flac"

    aput-object v9, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v9, "wav"

    aput-object v9, v3, v4

    const-string/jumbo v4, "wma"

    const/4 v9, 0x6

    aput-object v4, v3, v9

    const-string v4, "aac"

    const/4 v10, 0x7

    aput-object v4, v3, v10

    const/16 v4, 0x8

    const-string v11, "m4r"

    aput-object v11, v3, v4

    const/16 v4, 0x9

    const-string v11, "mmf"

    aput-object v11, v3, v4

    const/16 v4, 0xa

    const-string v11, "mp2"

    aput-object v11, v3, v4

    const/16 v4, 0xb

    const-string/jumbo v11, "wv"

    aput-object v11, v3, v4

    const/16 v4, 0xc

    const-string v11, "m4a"

    aput-object v11, v3, v4

    const/16 v4, 0xd

    const-string v11, "aiff"

    aput-object v11, v3, v4

    const/16 v4, 0xe

    const-string v11, "au"

    aput-object v11, v3, v4

    const/16 v4, 0xf

    const-string v11, "mka"

    aput-object v11, v3, v4

    const/16 v4, 0x10

    const-string v11, "ra"

    aput-object v11, v3, v4

    const/16 v4, 0x11

    const-string v11, "ac3"

    aput-object v11, v3, v4

    const/16 v4, 0x12

    const-string v11, "aif"

    aput-object v11, v3, v4

    const/16 v4, 0x13

    const-string v11, "caf"

    aput-object v11, v3, v4

    const/16 v4, 0x14

    const-string v11, "3gpp"

    aput-object v11, v3, v4

    .line 941
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 940
    invoke-direct {v0, v1, v3}, Lcom/innioasis/y1/database/Y1Repository;->endIsInList(Ljava/io/File;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 968
    :try_start_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 969
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u6587\u4ef6 "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " \u4e0d\u5b58\u5728"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v11}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    :cond_0
    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 974
    invoke-direct {v0, v3, v10}, Lcom/innioasis/y1/database/Y1Repository;->extractMetadata(Landroid/media/MediaMetadataRetriever;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setSongName(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/utils/HanziToPinyin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "instance.getString(songName)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setPinyinSongName(Ljava/lang/String;)V

    .line 977
    invoke-direct {v0, v3, v7}, Lcom/innioasis/y1/database/Y1Repository;->extractMetadata(Landroid/media/MediaMetadataRetriever;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setAlbum(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/utils/HanziToPinyin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "instance.getString(album)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setPinyinAlbum(Ljava/lang/String;)V

    .line 980
    invoke-direct {v0, v3, v8}, Lcom/innioasis/y1/database/Y1Repository;->extractMetadata(Landroid/media/MediaMetadataRetriever;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setArtist(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/utils/HanziToPinyin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "instance.getString(artist)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setPinyinArtist(Ljava/lang/String;)V

    .line 983
    invoke-direct {v0, v3, v9}, Lcom/innioasis/y1/database/Y1Repository;->extractMetadata(Landroid/media/MediaMetadataRetriever;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setGenre(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/utils/HanziToPinyin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "instance.getString(genre)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/innioasis/y1/database/Song;->setPinyinGenre(Ljava/lang/String;)V

    .line 986
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Song -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    :catch_0
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "refreshDatabase"

    invoke-virtual {v1, v2}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "fileToSong \u51fa\u73b0\u9519\u8bef"

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "/storage/sdcard0/Audiobooks"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v1, v2, v6, v8, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 993
    invoke-virtual {v5, v7}, Lcom/innioasis/y1/database/Song;->setAudiobook(I)V

    :cond_2
    return-object v5
.end method

.method public final getAlbums(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbums(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsReverse(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbums2(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbums2Reverse(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAlbumsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/data/Genre;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "genre"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsByGenreSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsByGenreReverseSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsByGenre2Sync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsByGenre2ReverseSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAlbumsByKey(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/music/data/Album;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 346
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v1, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsByKeySync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 347
    check-cast p1, Ljava/lang/Iterable;

    .line 1511
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 348
    new-instance v1, Lcom/innioasis/music/data/Album;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/innioasis/music/data/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getAlbumsBySort(Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortAlbum(I)V

    .line 1196
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 1198
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p1, v1, v2, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getAlbumsReverseSync$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1197
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p1, v1, v2, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getAlbumsSync$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAlbumsSync(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsSync(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbumsReverseSync(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbums2Sync(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getAlbums2ReverseSync(I)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAllPlaylistSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/PlaylistDao;->getAllPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAllVideoBySort()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation

    .line 1385
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAllVideoSort()I

    move-result v0

    .line 1386
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->None:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getAllVideos()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1387
    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getAllVideosOrderByName()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1388
    :cond_1
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getAllVideosOrderByNameDesc()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1389
    :cond_2
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getAllVideosOrderByAddedTime()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1390
    :cond_3
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getAllVideosOrderByAddedTimeDesc()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1391
    :cond_4
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getAllVideos()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getArtists(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtists(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtistsReverse(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtists2(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtists2Reverse(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getArtistsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/data/Genre;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "genre"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtistsByGenreSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtistsByGenreReverseSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtistsByGenre2Sync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getArtistsByGenre2ReverseSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getArtistsBySort(ILcom/innioasis/y1/database/Y1Repository$SortArtistsType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "sortType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortArtist(I)V

    .line 1232
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1234
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getArtistsReverseSync(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1233
    :cond_1
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getArtistsSync(I)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getBookmarksSync()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Bookmark;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/BookmarkDao;->getBookmarksSync()Ljava/util/List;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 396
    check-cast v0, Ljava/lang/Iterable;

    .line 1513
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/database/Bookmark;

    .line 397
    invoke-virtual {v2}, Lcom/innioasis/y1/database/Bookmark;->getSongId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/database/Y1Repository;->getSongBySongIdSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 398
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/innioasis/y1/database/Y1Repository;->bookmarkDao:Lcom/innioasis/y1/database/BookmarkDao;

    invoke-interface {v3, v2}, Lcom/innioasis/y1/database/BookmarkDao;->delete(Lcom/innioasis/y1/database/Bookmark;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getGenresSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/SongDao;->getGenresSync()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/SongDao;->getGenresReverseSync()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/SongDao;->getGenres2Sync()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/SongDao;->getGenres2ReverseSync()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getPlayListBySort(Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Playlist;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortPlayList(I)V

    .line 1266
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1271
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {p1}, Lcom/innioasis/y1/database/PlaylistDao;->getAllPlaylistSortByDateReverse()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1270
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {p1}, Lcom/innioasis/y1/database/PlaylistDao;->getAllPlaylistSortByDate()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1269
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {p1}, Lcom/innioasis/y1/database/PlaylistDao;->getAllPlaylistSortByNameReverse()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1268
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {p1}, Lcom/innioasis/y1/database/PlaylistDao;->getAllPlaylistSortByName()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1267
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {p1}, Lcom/innioasis/y1/database/PlaylistDao;->getAllPlaylist()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getPlaylistById(Ljava/util/UUID;)Lcom/innioasis/y1/database/Playlist;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/PlaylistDao;->getPlaylistById(Ljava/util/UUID;)Lcom/innioasis/y1/database/Playlist;

    move-result-object p1

    return-object p1
.end method

.method public final getProgressBySongId(Ljava/lang/String;)Lcom/innioasis/y1/database/Progress;
    .locals 1

    const-string v0, "songId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->progressDao:Lcom/innioasis/y1/database/ProgressDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/ProgressDao;->findProgressBySongId(Ljava/lang/String;)Lcom/innioasis/y1/database/Progress;

    move-result-object p1

    return-object p1
.end method

.method public final getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object p1

    return-object p1
.end method

.method public final getSongBySongIdSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;
    .locals 1

    const-string v0, "songId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongBySongIdSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object p1

    return-object p1
.end method

.method public final getSongs(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongs(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsReverse(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongs2(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongs2Reverse(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getSongsByAlbum(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "album"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortAlbumSong(I)V

    .line 1208
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1215
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistSortByAlbum(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1214
    :pswitch_1
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongByAlbumReverseByName$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1213
    :pswitch_2
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongByAlbumSortByName$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1212
    :pswitch_3
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongByAlbumReverseSortByFileTime$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1211
    :pswitch_4
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongByAlbumSortByFileTime$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1210
    :pswitch_5
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongByAlbumReverseByFileName$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1209
    :pswitch_6
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongByAlbumSortByFileName$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSongsByAlbumSync(Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/data/Album;",
            "I",
            "Lcom/innioasis/music/data/Genre;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "album"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 268
    sget-object p3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 269
    sget-object p3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbumSync(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    .line 270
    :cond_0
    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbumReverseSync(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    .line 272
    :cond_1
    sget-object p3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbum2Sync(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 273
    :cond_2
    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbum2ReverseSync(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 276
    :cond_3
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 277
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbumAndGenreSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 278
    :cond_4
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbumAndGenreReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 280
    :cond_5
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbumAndGenre2Sync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_6
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByAlbumAndGenre2ReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "artist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1246
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortArtistSong(I)V

    .line 1247
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1254
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistSortByAlbum(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1253
    :pswitch_1
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongByArtistReverseSortByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1252
    :pswitch_2
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongByArtistSortByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1251
    :pswitch_3
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByArtistReverseSortByFileTime$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1250
    :pswitch_4
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByArtistSortByFileTime$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1249
    :pswitch_5
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByArtistReverseByFileName$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1248
    :pswitch_6
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {p2, p1, v2, v1, v0}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByArtistByFileName$default(Lcom/innioasis/y1/database/SongDao;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSongsByArtistSync(Ljava/lang/String;ILcom/innioasis/music/data/Genre;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/innioasis/music/data/Genre;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "artist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 295
    sget-object p3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 296
    sget-object p3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistByFileName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 297
    :cond_0
    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistReverseByFileName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 299
    :cond_1
    sget-object p3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistSortByFileTime(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 300
    :cond_2
    iget-object p3, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {p3, p1, p2}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistReverseSortByFileTime(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_3
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 304
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistAndGenreSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 305
    :cond_4
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistAndGenreReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 307
    :cond_5
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistAndGenre2Sync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 308
    :cond_6
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p3}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/innioasis/y1/database/SongDao;->getSongsByArtistAndGenre2ReverseSync(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getSongsByGenreSync(Lcom/innioasis/music/data/Genre;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/data/Genre;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "genre"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/music/data/Genre;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByGenreSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSongsByKey(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByKeySync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSongsByParentPath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    const-string v0, "parentPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByParentPathSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByParentPathReserveSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByParentPath2Sync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByParentPath2ReserveSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getSongsByPlaylistSortByType(Lcom/innioasis/y1/database/Playlist;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/Playlist;",
            "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortPlayListSong(I)V

    .line 1281
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 1288
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdSortByFileName(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1287
    :pswitch_1
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdReverseSortByName(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1286
    :pswitch_2
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdSortByName(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1285
    :pswitch_3
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdReverseSortByFileTime(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1284
    :pswitch_4
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdSortByFileTime(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1283
    :pswitch_5
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdReverseSortByFileName(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1282
    :pswitch_6
    iget-object p2, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdSortByFileName(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSongsByPlaylistSync(Lcom/innioasis/y1/database/Playlist;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/Playlist;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistId(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistIdReverse(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 218
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistId2(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByPlaylistId2Reverse(Ljava/util/UUID;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getSongsList(Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1183
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {v0, v3, v2, v1}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByAlbum$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1182
    :pswitch_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {v0, v3, v2, v1}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByNameReverse$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1181
    :pswitch_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {v0, v3, v2, v1}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByName$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1180
    :pswitch_3
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {v0, v3, v2, v1}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByTimeReverse$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1179
    :pswitch_4
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {v0, v3, v2, v1}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsByTime$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1178
    :pswitch_5
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-static {v0, v3, v2, v1}, Lcom/innioasis/y1/database/SongDao$DefaultImpls;->getSongsReverseSync$default(Lcom/innioasis/y1/database/SongDao;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1177
    :pswitch_6
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, v3}, Lcom/innioasis/y1/database/SongDao;->getSongsSync(I)Ljava/util/List;

    move-result-object v0

    .line 1185
    :goto_0
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortAllSong(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSongsSync(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsSync(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsReverseSync(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByTime(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/SongDao;->getSongsByTimeReverse(I)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getVideoDao()Lcom/innioasis/y1/database/video/VideoInfoDao;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    return-object v0
.end method

.method public final getVideoPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getAllPlaylists()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoPlayListByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getPlaylistByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object p1

    return-object p1
.end method

.method public final getVideoPlayListBySort()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoPlaylist;",
            ">;"
        }
    .end annotation

    .line 1476
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType$Companion;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVideoListSort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType$Companion;->fromType(I)Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    move-result-object v0

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getAllPlaylistsOrderByAddTimeDesc()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getAllPlaylistsOrderByAddTime()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1477
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getAllPlaylists()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1479
    :cond_3
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getAllPlaylistsOrderByNameDesc()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1478
    :cond_4
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getAllPlaylistsOrderByName()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getVideoPlayListBySort(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getPlaylistByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylist_id()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getPlaylistWithVideos(J)Lcom/innioasis/y1/database/video/PlaylistWithVideos;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1434
    :cond_1
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1530
    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1435
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType$Companion;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVideoSort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType$Companion;->fromType(I)Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    move-result-object v0

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1438
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1533
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedBy$3;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedBy$3;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1437
    :cond_2
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1532
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1436
    :cond_3
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1531
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedBy$2;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1Repository$getVideoPlayListBySort$$inlined$sortedBy$2;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getVideoToVideoPlayListNameBySort(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "videoListName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SortVideoType$Companion;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVideoSort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType$Companion;->fromType(I)Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    move-result-object v0

    .line 1493
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v1, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->getPlaylistWithVideosByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/PlaylistWithVideos;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1496
    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1501
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1537
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedByDescending$2;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedByDescending$2;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1500
    :cond_2
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1536
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedBy$2;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedBy$2;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1499
    :cond_3
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1535
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1498
    :cond_4
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1534
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1Repository$getVideoToVideoPlayListNameBySort$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1497
    :cond_5
    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/PlaylistWithVideos;->getVideos()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final insertBookmark(Lcom/innioasis/y1/database/Bookmark;)V
    .locals 5

    const-string v0, "bookmark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Bookmark;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Bookmark;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/database/Bookmark;->setStartTime(J)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda2;-><init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final insertProgress(Lcom/innioasis/y1/database/Progress;)V
    .locals 5

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert SongId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/y1/database/Progress;->getEndTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1, v2, v3}, Lcom/innioasis/y1/database/Progress;->setStartTime(J)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1/database/Y1Repository$$ExternalSyntheticLambda4;-><init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Progress;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final insertSong(Ljava/io/File;)V
    .locals 8

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository;->fileToSong(Ljava/io/File;)Lcom/innioasis/y1/database/Song;

    move-result-object v0

    .line 319
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u63d2\u5165\u6b4c\u66f2 -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v1, p0, Lcom/innioasis/y1/database/Y1Repository;->songDao:Lcom/innioasis/y1/database/SongDao;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file.path"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/innioasis/y1/database/SongDao;->getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object p1

    if-nez p1, :cond_0

    .line 321
    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    new-instance p1, Lcom/innioasis/y1/database/Y1Repository$insertSong$1;

    invoke-direct {p1, p0, v0}, Lcom/innioasis/y1/database/Y1Repository$insertSong$1;-><init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Song;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/innioasis/music/util/Other;->repeatTry$default(Lcom/innioasis/music/util/Other;IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final refreshDatabase()V
    .locals 11

    .line 585
    iget-boolean v0, p0, Lcom/innioasis/y1/database/Y1Repository;->isRefreshDatabaseIng:Z

    if-eqz v0, :cond_0

    .line 586
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "\u6b63\u5728\u626b\u63cf  \u65e0\u6cd5\u91cd\u590d\u626b\u63cf"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 589
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;-><init>(Lcom/innioasis/y1/database/Y1Repository;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method public final removeFromPlayList(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1

    const-string v0, "songId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->songCatPlayListDao:Lcom/innioasis/y1/database/SongCatPlayListDao;

    invoke-interface {v0, p1, p2}, Lcom/innioasis/y1/database/SongCatPlayListDao;->delete(Ljava/lang/String;Ljava/util/UUID;)V

    return-void
.end method

.method public final removeVideoToPlayList(JJ)V
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->removeVideoFromPlaylist(JJ)V

    return-void
.end method

.method public final searchByKeyword(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "searchKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoDao:Lcom/innioasis/y1/database/video/VideoInfoDao;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoInfoDao;->searchByKeyword(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final startDeleteSongs()V
    .locals 1

    .line 507
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingSong()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->nowSongPath:Ljava/lang/String;

    return-void
.end method

.method public final upDateVideoList(Lcom/innioasis/y1/database/video/VideoPlaylist;)V
    .locals 1

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->videoListDao:Lcom/innioasis/y1/database/video/VideoPlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoPlaylistDao;->update(Lcom/innioasis/y1/database/video/VideoPlaylist;)V

    return-void
.end method

.method public final updatePlaylist(Lcom/innioasis/y1/database/Playlist;)V
    .locals 1

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository;->playlistDao:Lcom/innioasis/y1/database/PlaylistDao;

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/PlaylistDao;->update(Lcom/innioasis/y1/database/Playlist;)V

    return-void
.end method
