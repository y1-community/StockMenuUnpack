.class public final Lcom/innioasis/y1/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u00aa\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001J\u0012\u0010\u00a5\u0001\u001a\u00030\u00a4\u00012\u0008\u0010\u00a6\u0001\u001a\u00030\u00a7\u0001J\u0008\u0010\u00a8\u0001\u001a\u00030\u00a4\u0001J\u000b\u0010\u00a9\u0001\u001a\u00020\u0004*\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R$\u0010/\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00080\u0010,\"\u0004\u00081\u0010.R$\u00103\u001a\u0002022\u0006\u0010(\u001a\u0002028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R$\u00109\u001a\u0002082\u0006\u0010(\u001a\u0002088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R$\u0010>\u001a\u00020\"2\u0006\u0010(\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008?\u0010%\"\u0004\u0008@\u0010\'R$\u0010A\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008B\u0010,\"\u0004\u0008C\u0010.R$\u0010D\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010,\"\u0004\u0008F\u0010.R$\u0010G\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008H\u0010%\"\u0004\u0008I\u0010\'R$\u0010J\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u0010%\"\u0004\u0008L\u0010\'R$\u0010M\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008N\u0010%\"\u0004\u0008O\u0010\'R$\u0010P\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u000e\u0010U\u001a\u00020VX\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010W\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008X\u0010R\"\u0004\u0008Y\u0010TR$\u0010Z\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Z\u0010,\"\u0004\u0008[\u0010.R$\u0010\\\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\\\u0010,\"\u0004\u0008]\u0010.R$\u0010^\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008^\u0010,\"\u0004\u0008_\u0010.R$\u0010`\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008`\u0010,\"\u0004\u0008a\u0010.R$\u0010b\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008b\u0010,\"\u0004\u0008c\u0010.R$\u0010d\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008d\u0010,\"\u0004\u0008e\u0010.R$\u0010f\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008f\u0010,\"\u0004\u0008g\u0010.R$\u0010h\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008h\u0010,\"\u0004\u0008i\u0010.R$\u0010j\u001a\u00020\"2\u0006\u0010(\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008k\u0010%\"\u0004\u0008l\u0010\'R$\u0010m\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008n\u0010,\"\u0004\u0008o\u0010.R$\u0010p\u001a\u00020\"2\u0006\u0010(\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008q\u0010%\"\u0004\u0008r\u0010\'R\u000e\u0010s\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010t\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008u\u0010,\"\u0004\u0008v\u0010.R$\u0010w\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008x\u0010,\"\u0004\u0008y\u0010.R\u000e\u0010z\u001a\u00020{X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010|\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008}\u0010%\"\u0004\u0008~\u0010\'R&\u0010\u007f\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0080\u0001\u0010%\"\u0005\u0008\u0081\u0001\u0010\'R\'\u0010\u0082\u0001\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0083\u0001\u0010%\"\u0005\u0008\u0084\u0001\u0010\'R\'\u0010\u0085\u0001\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0086\u0001\u0010%\"\u0005\u0008\u0087\u0001\u0010\'R\'\u0010\u0088\u0001\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0089\u0001\u0010%\"\u0005\u0008\u008a\u0001\u0010\'R\'\u0010\u008b\u0001\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008c\u0001\u0010%\"\u0005\u0008\u008d\u0001\u0010\'R\'\u0010\u008e\u0001\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008f\u0001\u0010,\"\u0005\u0008\u0090\u0001\u0010.R\'\u0010\u0091\u0001\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0092\u0001\u0010%\"\u0005\u0008\u0093\u0001\u0010\'R\'\u0010\u0094\u0001\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0095\u0001\u0010,\"\u0005\u0008\u0096\u0001\u0010.R\'\u0010\u0097\u0001\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0098\u0001\u0010%\"\u0005\u0008\u0099\u0001\u0010\'R\'\u0010\u009a\u0001\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u009b\u0001\u0010%\"\u0005\u0008\u009c\u0001\u0010\'R\'\u0010\u009d\u0001\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u009e\u0001\u0010,\"\u0005\u0008\u009f\u0001\u0010.R\'\u0010\u00a0\u0001\u001a\u00020)2\u0006\u0010!\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u00a1\u0001\u0010,\"\u0005\u0008\u00a2\u0001\u0010.\u00a8\u0006\u00ab\u0001"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/SharedPreferencesUtils;",
        "",
        "()V",
        "AppFirstUse",
        "",
        "AudiobookIsShuffle",
        "AudiobookPlayRate",
        "AudiobookPlayTime",
        "AudiobookRepeatMode",
        "BatteryPercentage",
        "BluetoothSwitch",
        "DesktopWallpaper",
        "Eq",
        "GlobalWallpaper",
        "IS24",
        "ISINTITLE",
        "IsCreatePlaylist",
        "IsKeyLock",
        "IsShutdown",
        "IsSortByName",
        "IsSortLogic",
        "KEY_BOOK_FONT_SIZE_EPUB",
        "KEY_BOOK_FONT_SIZE_TXT",
        "KEY_BOOK_THEME",
        "Language",
        "MusicIsShuffle",
        "MusicRepeatMode",
        "NowPlayingData",
        "PlaybackStatus",
        "RINGTONE",
        "VIBRATOR",
        "WallpaperBlur",
        "WasUnmounted",
        "value",
        "",
        "allVideoSort",
        "getAllVideoSort",
        "()I",
        "setAllVideoSort",
        "(I)V",
        "i",
        "",
        "appFirstUse",
        "getAppFirstUse",
        "()Z",
        "setAppFirstUse",
        "(Z)V",
        "audiobookIsShuffle",
        "getAudiobookIsShuffle",
        "setAudiobookIsShuffle",
        "",
        "audiobookPlayRate",
        "getAudiobookPlayRate",
        "()F",
        "setAudiobookPlayRate",
        "(F)V",
        "",
        "audiobookPlayTime",
        "getAudiobookPlayTime",
        "()J",
        "setAudiobookPlayTime",
        "(J)V",
        "audiobookRepeatMode",
        "getAudiobookRepeatMode",
        "setAudiobookRepeatMode",
        "batteryPercentage",
        "getBatteryPercentage",
        "setBatteryPercentage",
        "bluetoothSwitch",
        "getBluetoothSwitch",
        "setBluetoothSwitch",
        "bookFontSizeEpub",
        "getBookFontSizeEpub",
        "setBookFontSizeEpub",
        "bookFontSizeTxt",
        "getBookFontSizeTxt",
        "setBookFontSizeTxt",
        "bookTheme",
        "getBookTheme",
        "setBookTheme",
        "desktopWallpaper",
        "getDesktopWallpaper",
        "()Ljava/lang/String;",
        "setDesktopWallpaper",
        "(Ljava/lang/String;)V",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "globalWallpaper",
        "getGlobalWallpaper",
        "setGlobalWallpaper",
        "is24",
        "set24",
        "isCreatePlaylist",
        "setCreatePlaylist",
        "isFileExtensions",
        "setFileExtensions",
        "isInTitle",
        "setInTitle",
        "isKeyLock",
        "setKeyLock",
        "isShutdown",
        "setShutdown",
        "isSortByName",
        "setSortByName",
        "isSortLogic",
        "setSortLogic",
        "language",
        "getLanguage",
        "setLanguage",
        "musicIsShuffle",
        "getMusicIsShuffle",
        "setMusicIsShuffle",
        "musicRepeatMode",
        "getMusicRepeatMode",
        "setMusicRepeatMode",
        "parName",
        "playlistIsReverse",
        "getPlaylistIsReverse",
        "setPlaylistIsReverse",
        "ringtone",
        "getRingtone",
        "setRingtone",
        "settings",
        "Landroid/content/SharedPreferences;",
        "sortAlbum",
        "getSortAlbum",
        "setSortAlbum",
        "sortAlbumSong",
        "getSortAlbumSong",
        "setSortAlbumSong",
        "sortAllSong",
        "getSortAllSong",
        "setSortAllSong",
        "sortArtist",
        "getSortArtist",
        "setSortArtist",
        "sortArtistSong",
        "getSortArtistSong",
        "setSortArtistSong",
        "sortPlayList",
        "getSortPlayList",
        "setSortPlayList",
        "sortPlayListIsChange",
        "getSortPlayListIsChange",
        "setSortPlayListIsChange",
        "sortPlayListSong",
        "getSortPlayListSong",
        "setSortPlayListSong",
        "vibrator",
        "getVibrator",
        "setVibrator",
        "videoListSort",
        "getVideoListSort",
        "setVideoListSort",
        "videoSort",
        "getVideoSort",
        "setVideoSort",
        "wallpaperBlur",
        "getWallpaperBlur",
        "setWallpaperBlur",
        "wasUnmounted",
        "getWasUnmounted",
        "setWasUnmounted",
        "clear",
        "",
        "init",
        "context",
        "Landroid/content/Context;",
        "initSort",
        "processFileExtensions",
        "EqParameter",
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
.field private static final AppFirstUse:Ljava/lang/String; = "appFirstUse"

.field private static final AudiobookIsShuffle:Ljava/lang/String; = "audiobookIsShuffle"

.field private static final AudiobookPlayRate:Ljava/lang/String; = "audiobookPlayRate"

.field private static final AudiobookPlayTime:Ljava/lang/String; = "audiobookPlayTime"

.field private static final AudiobookRepeatMode:Ljava/lang/String; = "audiobookRepeatMode"

.field private static final BatteryPercentage:Ljava/lang/String; = "batteryPercentage"

.field private static final BluetoothSwitch:Ljava/lang/String; = "BluetoothSwitch"

.field private static final DesktopWallpaper:Ljava/lang/String; = "DesktopWallpaper"

.field private static final Eq:Ljava/lang/String; = "eq"

.field private static final GlobalWallpaper:Ljava/lang/String; = "GlobalWallpaper"

.field public static final INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

.field private static final IS24:Ljava/lang/String; = "is24"

.field private static final ISINTITLE:Ljava/lang/String; = "isInTitle"

.field private static final IsCreatePlaylist:Ljava/lang/String; = "isCreatePlaylist"

.field private static final IsKeyLock:Ljava/lang/String; = "com_innioasis_y1_key_lock"

.field private static final IsShutdown:Ljava/lang/String; = "isShutdown"

.field private static final IsSortByName:Ljava/lang/String; = "isSortByName"

.field private static final IsSortLogic:Ljava/lang/String; = "isSortLogic"

.field private static final KEY_BOOK_FONT_SIZE_EPUB:Ljava/lang/String; = "bookFontSizeEpub"

.field private static final KEY_BOOK_FONT_SIZE_TXT:Ljava/lang/String; = "bookFontSizeTxt"

.field private static final KEY_BOOK_THEME:Ljava/lang/String; = "bookTheme"

.field private static final Language:Ljava/lang/String; = "language"

.field private static final MusicIsShuffle:Ljava/lang/String; = "musicIsShuffle"

.field private static final MusicRepeatMode:Ljava/lang/String; = "musicRepeatMode"

.field private static final NowPlayingData:Ljava/lang/String; = "nowPlayingData"

.field private static final PlaybackStatus:Ljava/lang/String; = "playbackStatus"

.field private static final RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final VIBRATOR:Ljava/lang/String; = "vibrator"

.field private static final WallpaperBlur:Ljava/lang/String; = "WallpaperBlur"

.field private static final WasUnmounted:Ljava/lang/String; = "WasUnmounted"

.field private static editor:Landroid/content/SharedPreferences$Editor; = null

.field private static final parName:Ljava/lang/String; = "config"

.field private static settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 54
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const-string v0, "editor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final getAllVideoSort()I
    .locals 3

    .line 317
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->None:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->getType()I

    move-result v1

    const-string v2, "allVideoSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getAppFirstUse()Z
    .locals 3

    .line 131
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "appFirstUse"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getAudiobookIsShuffle()Z
    .locals 3

    .line 107
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "audiobookIsShuffle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getAudiobookPlayRate()F
    .locals 3

    .line 119
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "audiobookPlayRate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getAudiobookPlayTime()J
    .locals 4

    .line 125
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-wide/16 v1, -0x1

    const-string v3, "audiobookPlayTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAudiobookRepeatMode()I
    .locals 3

    .line 113
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "audiobookRepeatMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getBatteryPercentage()Z
    .locals 3

    .line 138
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "batteryPercentage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getBluetoothSwitch()Z
    .locals 3

    .line 145
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "BluetoothSwitch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getBookFontSizeEpub()I
    .locals 3

    .line 360
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x16

    const-string v2, "bookFontSizeEpub"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getBookFontSizeTxt()I
    .locals 3

    .line 352
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x12

    const-string v2, "bookFontSizeTxt"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getBookTheme()I
    .locals 3

    .line 344
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "bookTheme"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getDesktopWallpaper()Ljava/lang/String;
    .locals 3

    .line 162
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "DesktopWallpaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getGlobalWallpaper()Ljava/lang/String;
    .locals 3

    .line 168
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "GlobalWallpaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getLanguage()I
    .locals 3

    .line 61
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->defaultLanguage()I

    move-result v1

    const-string v2, "language"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getMusicIsShuffle()Z
    .locals 3

    .line 95
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "musicIsShuffle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getMusicRepeatMode()I
    .locals 3

    .line 101
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "musicRepeatMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPlaylistIsReverse()Z
    .locals 3

    .line 234
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "playlistIsReverse"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getRingtone()Z
    .locals 3

    .line 76
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "ringtone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getSortAlbum()I
    .locals 3

    .line 277
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->getType()I

    move-result v1

    const-string v2, "albumSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSortAlbumSong()I
    .locals 3

    .line 285
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v1

    const-string v2, "albumSongSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSortAllSong()I
    .locals 3

    .line 253
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v1

    const-string v2, "allSongSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSortArtist()I
    .locals 3

    .line 261
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->getType()I

    move-result v1

    const-string v2, "artistSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSortArtistSong()I
    .locals 3

    .line 269
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v1

    const-string v2, "artistSongSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSortPlayList()I
    .locals 3

    .line 293
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->None:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->getType()I

    move-result v1

    const-string v2, "sortPlayList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSortPlayListIsChange()Z
    .locals 3

    .line 309
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "sortPlayListIsChange"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getSortPlayListSong()I
    .locals 3

    .line 301
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v1

    const-string v2, "sortPlayListSong"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getVibrator()Z
    .locals 3

    .line 69
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "vibrator"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getVideoListSort()I
    .locals 3

    .line 332
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->None:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->getType()I

    move-result v1

    const-string v2, "videoListSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getVideoSort()I
    .locals 3

    .line 324
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->None:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->getType()I

    move-result v1

    const-string v2, "videoSort"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getWallpaperBlur()Z
    .locals 3

    .line 175
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "WallpaperBlur"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getWasUnmounted()Z
    .locals 3

    .line 181
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "WasUnmounted"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026me, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    const-string p1, "settings"

    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "settings.edit()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final initSort()V
    .locals 1

    .line 243
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortAllSong(I)V

    .line 244
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortAllSong(I)V

    .line 245
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortArtist(I)V

    .line 246
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortArtistSong(I)V

    .line 247
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortAlbum(I)V

    .line 248
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortAlbumSong(I)V

    return-void
.end method

.method public final is24()Z
    .locals 3

    .line 83
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "is24"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isCreatePlaylist()Z
    .locals 3

    .line 188
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "isCreatePlaylist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isFileExtensions()Z
    .locals 3

    .line 211
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "isFileExtensions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isInTitle()Z
    .locals 3

    .line 89
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "isInTitle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isKeyLock()Z
    .locals 2

    .line 206
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_innioasis_y1_key_lock"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isShutdown()Z
    .locals 3

    .line 151
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "isShutdown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSortByName()Z
    .locals 3

    .line 194
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "isSortByName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSortLogic()Z
    .locals 3

    .line 200
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "isSortLogic"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final processFileExtensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isFileExtensions()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final set24(Z)V
    .locals 4

    .line 85
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "is24"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setAllVideoSort(I)V
    .locals 4

    .line 319
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "allVideoSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 320
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setAppFirstUse(Z)V
    .locals 4

    .line 133
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "appFirstUse"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setAudiobookIsShuffle(Z)V
    .locals 4

    .line 109
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "audiobookIsShuffle"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setAudiobookPlayRate(F)V
    .locals 4

    .line 121
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "audiobookPlayRate"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 122
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setAudiobookPlayTime(J)V
    .locals 4

    .line 127
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "audiobookPlayTime"

    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 128
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setAudiobookRepeatMode(I)V
    .locals 4

    .line 115
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "audiobookRepeatMode"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setBatteryPercentage(Z)V
    .locals 4

    .line 140
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "batteryPercentage"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setBluetoothSwitch(Z)V
    .locals 4

    .line 147
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "BluetoothSwitch"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setBookFontSizeEpub(I)V
    .locals 4

    .line 362
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "bookFontSizeEpub"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 363
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setBookFontSizeTxt(I)V
    .locals 4

    .line 354
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "bookFontSizeTxt"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setBookTheme(I)V
    .locals 4

    .line 346
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "bookTheme"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setCreatePlaylist(Z)V
    .locals 4

    .line 190
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "isCreatePlaylist"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setDesktopWallpaper(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "DesktopWallpaper"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setFileExtensions(Z)V
    .locals 4

    .line 213
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "isFileExtensions"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setGlobalWallpaper(Ljava/lang/String;)V
    .locals 4

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "GlobalWallpaper"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setInTitle(Z)V
    .locals 4

    .line 91
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "isInTitle"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setKeyLock(Z)V
    .locals 2

    .line 208
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_innioasis_y1_key_lock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setLanguage(I)V
    .locals 4

    .line 63
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "language"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setMusicIsShuffle(Z)V
    .locals 4

    .line 97
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "musicIsShuffle"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setMusicRepeatMode(I)V
    .locals 4

    .line 103
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "musicRepeatMode"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setPlaylistIsReverse(Z)V
    .locals 4

    .line 236
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "playlistIsReverse"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setRingtone(Z)V
    .locals 4

    .line 78
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "ringtone"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setShutdown(Z)V
    .locals 4

    .line 153
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "isShutdown"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortAlbum(I)V
    .locals 4

    .line 279
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "albumSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 280
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortAlbumSong(I)V
    .locals 4

    .line 287
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "albumSongSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 288
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortAllSong(I)V
    .locals 4

    .line 255
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "allSongSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortArtist(I)V
    .locals 4

    .line 263
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "artistSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 264
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortArtistSong(I)V
    .locals 4

    .line 271
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "artistSongSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortByName(Z)V
    .locals 4

    .line 196
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "isSortByName"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortLogic(Z)V
    .locals 4

    .line 202
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "isSortLogic"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 203
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortPlayList(I)V
    .locals 4

    .line 295
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "sortPlayList"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortPlayListIsChange(Z)V
    .locals 4

    .line 311
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "sortPlayListIsChange"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSortPlayListSong(I)V
    .locals 4

    .line 303
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "sortPlayListSong"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setVibrator(Z)V
    .locals 4

    .line 71
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "vibrator"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setVideoListSort(I)V
    .locals 4

    .line 334
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "videoListSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 335
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setVideoSort(I)V
    .locals 4

    .line 326
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "videoSort"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setWallpaperBlur(Z)V
    .locals 4

    .line 177
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "WallpaperBlur"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setWasUnmounted(Z)V
    .locals 4

    .line 183
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "editor"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "WasUnmounted"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
