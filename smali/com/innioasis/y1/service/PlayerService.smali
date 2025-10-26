.class public final Lcom/innioasis/y1/service/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/service/PlayerService$Companion;,
        Lcom/innioasis/y1/service/PlayerService$Playing;,
        Lcom/innioasis/y1/service/PlayerService$MyList;,
        Lcom/innioasis/y1/service/PlayerService$MyBinder;,
        Lcom/innioasis/y1/service/PlayerService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerService.kt\ncom/innioasis/y1/service/PlayerService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1851#2,2:1162\n*S KotlinDebug\n*F\n+ 1 PlayerService.kt\ncom/innioasis/y1/service/PlayerService\n*L\n1112#1:1162,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ad\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0007\n\u0002\u0008\u0013*\u0003kor\u0018\u0000 \u00b3\u00012\u00020\u0001:\u0008\u00b3\u0001\u00b4\u0001\u00b5\u0001\u00b6\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010z\u001a\u00020{H\u0002J$\u0010|\u001a\u00020{2\u0008\u0008\u0002\u0010}\u001a\u00020\u00042\u0012\u0010~\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020{0\u007fJ\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0011J\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0011J\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0011J\t\u0010\u0083\u0001\u001a\u00020{H\u0002J\t\u0010\u0084\u0001\u001a\u00020{H\u0002J\u0010\u0010\u0085\u0001\u001a\u00020)2\u0007\u0010\u0086\u0001\u001a\u00020,J\u0007\u0010\u0087\u0001\u001a\u00020{J\t\u0010\u0088\u0001\u001a\u00020{H\u0002J\u0010\u0010\u0089\u0001\u001a\u00020{2\u0007\u0010\u008a\u0001\u001a\u00020)J\u0007\u0010\u008b\u0001\u001a\u00020{J\u0018\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0016J\t\u0010\u0090\u0001\u001a\u00020{H\u0017J\t\u0010\u0091\u0001\u001a\u00020{H\u0016J\u001c\u0010\u0092\u0001\u001a\u00020{2\t\u0008\u0002\u0010\u0093\u0001\u001a\u00020\n2\u0008\u0008\u0002\u00104\u001a\u00020)J\u0011\u0010\u0094\u0001\u001a\u00020{2\u0008\u0008\u0002\u00104\u001a\u00020)J\u0007\u0010\u0095\u0001\u001a\u00020{J\t\u0010\u0096\u0001\u001a\u00020{H\u0002J\u0007\u0010\u0097\u0001\u001a\u00020{J\u0011\u0010\u0098\u0001\u001a\u00020{2\u0008\u0008\u0002\u00104\u001a\u00020)J\u0007\u0010\u0099\u0001\u001a\u00020{J\u0007\u0010\u009a\u0001\u001a\u00020{J\u001f\u0010\u009b\u0001\u001a\u00020{2\r\u0010\u009c\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110+2\u0007\u0010\u009d\u0001\u001a\u00020\nJ\u001f\u0010\u009e\u0001\u001a\u00020{2\r\u0010\u009c\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110+2\u0007\u0010\u009d\u0001\u001a\u00020\nJ\u0019\u0010\u009f\u0001\u001a\u00020{2\u0007\u0010\u00a0\u0001\u001a\u00020\u00042\u0007\u0010\u00a1\u0001\u001a\u00020\u0004J\u0013\u0010\u00a2\u0001\u001a\u00020{2\n\u0008\u0002\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001J\t\u0010\u00a5\u0001\u001a\u00020{H\u0002J\u0007\u0010\u00a6\u0001\u001a\u00020{J\u0007\u0010\u00a7\u0001\u001a\u00020{J\u0007\u0010\u00a8\u0001\u001a\u00020{J\u0007\u0010\u00a9\u0001\u001a\u00020{J\u0007\u0010\u00aa\u0001\u001a\u00020{J\u001c\u0010\u00ab\u0001\u001a\u00020{2\u0007\u0010\u00ac\u0001\u001a\u00020\n2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0004H\u0002J\t\u0010\u00ad\u0001\u001a\u00020{H\u0002J&\u0010\u00ae\u0001\u001a\u00020{2\n\u0008\u0002\u0010}\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00af\u0001\u001a\u0004\u0018\u00010,\u00a2\u0006\u0003\u0010\u00b0\u0001J\t\u0010\u00b1\u0001\u001a\u00020{H\u0002J\t\u0010\u00b2\u0001\u001a\u00020{H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R\u001a\u0010\u0019\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000c\"\u0004\u0008\u001b\u0010\u000eR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010\u0006\"\u0004\u0008%\u0010\u0008R\u0011\u0010&\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0006R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010-\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001c\u00101\u001a\u00020)8FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010.\"\u0004\u00082\u00100R\u0011\u00103\u001a\u00020)8F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010.R\u001a\u00104\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010.\"\u0004\u00085\u00100R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00108\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010.\"\u0004\u0008:\u00100R\u001a\u0010;\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u000c\"\u0004\u0008=\u0010\u000eR \u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0013\"\u0004\u0008@\u0010\u0015R\u000e\u0010A\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010B\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u0010\u000c\"\u0004\u0008D\u0010\u000eR\u0017\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010\u0013R\u001a\u0010G\u001a\u00020HX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001a\u0010M\u001a\u00020NX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\u000e\u0010S\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010T\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010.\"\u0004\u0008V\u00100R\u001a\u0010W\u001a\u00020XX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u001b\u0010]\u001a\u00020^8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008a\u0010b\u001a\u0004\u0008_\u0010`R\u001a\u0010c\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010.\"\u0004\u0008e\u00100R\u001a\u0010f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010\u000c\"\u0004\u0008h\u0010\u000eR\u000e\u0010i\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010j\u001a\u00020kX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010lR\u000e\u0010m\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010n\u001a\u00020oX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010pR\u0010\u0010q\u001a\u00020rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010sR\u0014\u0010t\u001a\u0008\u0018\u00010uR\u00020vX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010w\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010.\"\u0004\u0008y\u00100\u00a8\u0006\u00b7\u0001"
    }
    d2 = {
        "Lcom/innioasis/y1/service/PlayerService;",
        "Landroid/app/Service;",
        "()V",
        "aPoint",
        "",
        "getAPoint",
        "()J",
        "setAPoint",
        "(J)V",
        "audiobookIndex",
        "",
        "getAudiobookIndex",
        "()I",
        "setAudiobookIndex",
        "(I)V",
        "audiobookList",
        "",
        "Lcom/innioasis/y1/database/Song;",
        "getAudiobookList",
        "()Ljava/util/List;",
        "setAudiobookList",
        "(Ljava/util/List;)V",
        "bPoint",
        "getBPoint",
        "setBPoint",
        "bookMarkIndex",
        "getBookMarkIndex",
        "setBookMarkIndex",
        "bookMarkProgress",
        "Lcom/innioasis/y1/database/Bookmark;",
        "getBookMarkProgress",
        "()Lcom/innioasis/y1/database/Bookmark;",
        "setBookMarkProgress",
        "(Lcom/innioasis/y1/database/Bookmark;)V",
        "value",
        "currentPosition",
        "getCurrentPosition",
        "setCurrentPosition",
        "duration",
        "getDuration",
        "fastForwardLock",
        "",
        "formatListForIjk",
        "",
        "",
        "isMeetingSuckFile",
        "()Z",
        "setMeetingSuckFile",
        "(Z)V",
        "isPlayLastSong",
        "setPlayLastSong",
        "isPlaying",
        "isSetPlayValue",
        "setSetPlayValue",
        "job",
        "Lkotlinx/coroutines/Job;",
        "meetingSuckNotNext",
        "getMeetingSuckNotNext",
        "setMeetingSuckNotNext",
        "musicIndex",
        "getMusicIndex",
        "setMusicIndex",
        "musicList",
        "getMusicList",
        "setMusicList",
        "nowVolume",
        "playIndex",
        "getPlayIndex",
        "setPlayIndex",
        "playList",
        "getPlayList",
        "player",
        "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
        "getPlayer",
        "()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
        "setPlayer",
        "(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V",
        "player2",
        "Landroid/media/MediaPlayer;",
        "getPlayer2",
        "()Landroid/media/MediaPlayer;",
        "setPlayer2",
        "(Landroid/media/MediaPlayer;)V",
        "playerIsError",
        "playerIsPrepared",
        "getPlayerIsPrepared",
        "setPlayerIsPrepared",
        "playing",
        "Lcom/innioasis/y1/service/PlayerService$Playing;",
        "getPlaying",
        "()Lcom/innioasis/y1/service/PlayerService$Playing;",
        "setPlaying",
        "(Lcom/innioasis/y1/service/PlayerService$Playing;)V",
        "random",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "random$delegate",
        "Lkotlin/Lazy;",
        "repeatFlag",
        "getRepeatFlag",
        "setRepeatFlag",
        "repeatState",
        "getRepeatState",
        "setRepeatState",
        "restoreStartTime",
        "suckFileTimer",
        "com/innioasis/y1/service/PlayerService$suckFileTimer$1",
        "Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;",
        "temp2",
        "timerForRestartPlay",
        "com/innioasis/y1/service/PlayerService$timerForRestartPlay$1",
        "Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;",
        "timerForUPWSS",
        "com/innioasis/y1/service/PlayerService$timerForUPWSS$1",
        "Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "wasPlayBookmark",
        "getWasPlayBookmark",
        "setWasPlayBookmark",
        "autoSwitch",
        "",
        "delayGetDuration",
        "time",
        "callback",
        "Lkotlin/Function1;",
        "getPlayingAudiobook",
        "getPlayingMusic",
        "getPlayingSong",
        "initPlayer",
        "initPlayer2",
        "isUseIjk",
        "path",
        "longClickPlayBtnToStop",
        "meetingSuckFile",
        "muteOrNoMuteMusic",
        "isMute",
        "nextSong",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "pause",
        "message",
        "play",
        "playOrPause",
        "playerPrepared",
        "prevSong",
        "restartPlay",
        "restore",
        "saveState",
        "setAudiobookPlaylist",
        "playlist",
        "index",
        "setMusicPlaylist",
        "setRepeatAB",
        "a",
        "b",
        "setSpeed",
        "speed",
        "",
        "shuffleSong",
        "startFastForward",
        "startRewind",
        "stop",
        "stopFastForward",
        "stopRepeat",
        "toRepeatStart",
        "from",
        "toRestart",
        "updateNowAudiobookProgress",
        "songId",
        "(Ljava/lang/Long;Ljava/lang/String;)V",
        "updateProgressWhileSwitchSong",
        "whenLastSongFromBookmark",
        "Companion",
        "MyBinder",
        "MyList",
        "Playing",
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
.field public static final ACTION_PLAY_SONG:Ljava/lang/String; = "android.intent.action.MY_PLAY_SONG"

.field public static final Companion:Lcom/innioasis/y1/service/PlayerService$Companion;

.field public static final KEY_FROM_NOW_PLAYING:Ljava/lang/String; = "from_now_playing"

.field public static final PAUSE_FM_RADIO_ACTION:Ljava/lang/String; = "com.mediatek.fm.PAUSE_FM"

.field public static final PLAY_FM_RADIO_ACTION:Ljava/lang/String; = "com.mediatek.fm.PLAY_FM"

.field public static final PLAY_OR_PAUSE_FM_RADIO_ACTION:Ljava/lang/String; = "com.mediatek.fm.PLAY_OR_PAUSE_FM"

.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_OFF:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final SAVE_STATE:Ljava/lang/String; = "save_state"

.field public static final STOP_FM_RADIO_ACTION:Ljava/lang/String; = "com.mediatek.fm.STOP_FM"


# instance fields
.field private aPoint:J

.field private audiobookIndex:I

.field private audiobookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field private bPoint:J

.field private bookMarkIndex:I

.field private bookMarkProgress:Lcom/innioasis/y1/database/Bookmark;

.field private fastForwardLock:Z

.field private final formatListForIjk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMeetingSuckFile:Z

.field private isPlayLastSong:Z

.field private isSetPlayValue:Z

.field private job:Lkotlinx/coroutines/Job;

.field private meetingSuckNotNext:Z

.field private musicIndex:I

.field private musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field private nowVolume:I

.field public player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field public player2:Landroid/media/MediaPlayer;

.field private playerIsError:Z

.field private playerIsPrepared:Z

.field private playing:Lcom/innioasis/y1/service/PlayerService$Playing;

.field private final random$delegate:Lkotlin/Lazy;

.field private repeatFlag:Z

.field private repeatState:I

.field private restoreStartTime:J

.field private final suckFileTimer:Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;

.field private temp2:Z

.field private final timerForRestartPlay:Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;

.field private final timerForUPWSS:Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wasPlayBookmark:Z


# direct methods
.method public static synthetic $r8$lambda$CejTx3aRcrFQz263FF7D8oJRIAc(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/innioasis/y1/service/PlayerService;->initPlayer2$lambda-15(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Z9hFOOiLtpjwgwjU9duu1-q_bSM(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->initPlayer2$lambda-13(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_AR43WQCCi7GCSEnC2w9l8PkKbc(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->initPlayer$lambda-10(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fmwZ-jPTZm_CO4S3UPTSt8HJF1M(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->initPlayer$lambda-11(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s4hJrrqK4_lftLlM1kK2K_sluMA(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/innioasis/y1/service/PlayerService;->initPlayer$lambda-12(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wk8qf0OFX5BqVikvulMU-G602sw(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->initPlayer2$lambda-14(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/service/PlayerService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/service/PlayerService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/service/PlayerService;->Companion:Lcom/innioasis/y1/service/PlayerService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, -0x1

    .line 61
    iput-wide v0, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    .line 62
    iput-wide v0, p0, Lcom/innioasis/y1/service/PlayerService;->bPoint:J

    .line 124
    sget-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wma"

    aput-object v2, v0, v1

    const-string v1, "mmf"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v3, "wv"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "ogg"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "m4a"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "aiff"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "au"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "mka"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "ra"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "ac3"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "aif"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "caf"

    aput-object v3, v0, v1

    .line 199
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->formatListForIjk:Ljava/util/List;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    const/4 v0, -0x1

    .line 342
    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    .line 376
    new-instance v1, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;

    invoke-direct {v1}, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;-><init>()V

    iput-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->timerForUPWSS:Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;

    .line 455
    new-instance v1, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    iput-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->suckFileTimer:Lcom/innioasis/y1/service/PlayerService$suckFileTimer$1;

    .line 471
    iput-boolean v2, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    .line 511
    new-instance v1, Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    iput-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->timerForRestartPlay:Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;

    .line 946
    sget-object v1, Lcom/innioasis/y1/service/PlayerService$random$2;->INSTANCE:Lcom/innioasis/y1/service/PlayerService$random$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->random$delegate:Lkotlin/Lazy;

    .line 1118
    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->nowVolume:I

    return-void
.end method

.method public static final synthetic access$getFastForwardLock$p(Lcom/innioasis/y1/service/PlayerService;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/innioasis/y1/service/PlayerService;->fastForwardLock:Z

    return p0
.end method

.method public static final synthetic access$getTemp2$p(Lcom/innioasis/y1/service/PlayerService;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/innioasis/y1/service/PlayerService;->temp2:Z

    return p0
.end method

.method public static final synthetic access$getWakeLock$p(Lcom/innioasis/y1/service/PlayerService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/innioasis/y1/service/PlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static final synthetic access$setTemp2$p(Lcom/innioasis/y1/service/PlayerService;Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->temp2:Z

    return-void
.end method

.method public static final synthetic access$toRestart(Lcom/innioasis/y1/service/PlayerService;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->toRestart()V

    return-void
.end method

.method private final autoSwitch()V
    .locals 7

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto song "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingSong()Lcom/innioasis/y1/database/Song;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    const-wide/16 v5, 0x0

    .line 849
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    invoke-virtual {p0, v0, v5}, Lcom/innioasis/y1/service/PlayerService;->updateNowAudiobookProgress(Ljava/lang/Long;Ljava/lang/String;)V

    .line 850
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookRepeatMode()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    .line 864
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto :goto_2

    .line 860
    :cond_5
    invoke-static {p0, v1, v4, v2}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto :goto_2

    .line 852
    :cond_6
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    iget-object v5, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v0, v5, :cond_7

    const/16 v0, 0xa

    .line 853
    invoke-static {p0, v0, v1, v3, v2}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto :goto_2

    .line 855
    :cond_7
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto :goto_2

    .line 829
    :cond_8
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 830
    :cond_9
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicRepeatMode()I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    goto :goto_2

    .line 842
    :cond_a
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto :goto_2

    .line 838
    :cond_b
    invoke-static {p0, v1, v4, v2}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto :goto_2

    .line 832
    :cond_c
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    iget-object v5, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v0, v5, :cond_d

    const/16 v0, 0x9

    .line 833
    invoke-static {p0, v0, v1, v3, v2}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto :goto_2

    .line 834
    :cond_d
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    :goto_2
    return-void
.end method

.method public static synthetic delayGetDuration$default(Lcom/innioasis/y1/service/PlayerService;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x3e8

    .line 143
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/service/PlayerService;->delayGetDuration(JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getRandom()Ljava/util/Random;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->random$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method

.method private final initPlayer()V
    .locals 2

    const/4 v0, 0x0

    .line 1046
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    const-string v0, "libijkplayer.so"

    .line 1047
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 1048
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->setPlayer(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    .line 1049
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 1050
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda3;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 1062
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda5;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 1066
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda4;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private static final initPlayer$lambda-10(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v0, "ABRepeat"

    invoke-virtual {p1, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u64ad\u653e\u7ed3\u675f1 repeatState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    iget p1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    .line 1059
    invoke-static/range {v3 .. v8}, Lcom/innioasis/y1/service/PlayerService;->toRepeatStart$default(Lcom/innioasis/y1/service/PlayerService;IJILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    const/4 v0, 0x0

    .line 1055
    invoke-static {p0, p1, v1, v2, v0}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 1056
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v0

    const/16 v2, 0x32

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/innioasis/y1/service/PlayerService;->toRepeatStart(IJ)V

    goto :goto_0

    .line 1053
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->autoSwitch()V

    :goto_0
    return-void
.end method

.method private static final initPlayer$lambda-11(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fine"

    const-string v0, "player prepared"

    .line 1063
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->playerPrepared()V

    return-void
.end method

.method private static final initPlayer$lambda-12(Lcom/innioasis/y1/service/PlayerService;Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "player onError 1"

    invoke-virtual {p1, p3, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1069
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsError:Z

    .line 1070
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->meetingSuckFile()V

    return p1
.end method

.method private final initPlayer2()V
    .locals 2

    .line 1076
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->setPlayer2(Landroid/media/MediaPlayer;)V

    .line 1077
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1078
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1097
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda2;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1101
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private static final initPlayer2$lambda-13(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object p1

    .line 1080
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoNext  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_5

    if-eqz p1, :cond_0

    .line 1082
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 1081
    :cond_1
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1083
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    const v0, 0x3b9aca00

    if-ge p1, v0, :cond_5

    .line 1085
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v0, "ABRepeat"

    invoke-virtual {p1, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u64ad\u653e\u7ed3\u675f2 repeatState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    iget p1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    .line 1093
    invoke-static/range {v3 .. v8}, Lcom/innioasis/y1/service/PlayerService;->toRepeatStart$default(Lcom/innioasis/y1/service/PlayerService;IJILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0xff

    const/4 v0, 0x0

    .line 1089
    invoke-static {p0, p1, v2, v1, v0}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 1090
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v0

    const/16 v2, 0x32

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/innioasis/y1/service/PlayerService;->toRepeatStart(IJ)V

    goto :goto_0

    .line 1087
    :cond_4
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->autoSwitch()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final initPlayer2$lambda-14(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "player2 prepared"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->playerPrepared()V

    return-void
.end method

.method private static final initPlayer2$lambda-15(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer Crash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "player onError 2"

    invoke-virtual {p1, p3, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->reset()V

    const/4 p0, 0x1

    return p0
.end method

.method private final meetingSuckFile()V
    .locals 12

    .line 479
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "OnDelete"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "meetingSuckFile"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 481
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    const-string v3, "com.innioasis.y1:MyWakeLockTag"

    .line 482
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 488
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "dl"

    invoke-virtual {v0, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_2

    invoke-static {v0, v5, v2, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 491
    :cond_2
    iput-boolean v2, p0, Lcom/innioasis/y1/service/PlayerService;->isMeetingSuckFile:Z

    .line 492
    iput-boolean v1, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    .line 493
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f1101ac

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    const/4 v8, 0x0

    new-instance v0, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;

    invoke-direct {v0, p0, v5}, Lcom/innioasis/y1/service/PlayerService$meetingSuckFile$1;-><init>(Lcom/innioasis/y1/service/PlayerService;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 605
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/service/PlayerService;->pause(IZ)V

    return-void
.end method

.method public static synthetic play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->play(Z)V

    return-void
.end method

.method private final playerPrepared()V
    .locals 11

    .line 974
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingSong()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 975
    :cond_0
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "\u8fdb\u5165 prepared \u51fd\u6570"

    invoke-virtual {v1, v4, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isShutdown()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 977
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setShutdown(Z)V

    .line 978
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u66f4\u6539\u540e "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v6}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isShutdown()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/service/PlayerService;->play(Z)V

    const/16 v0, 0xb

    .line 981
    invoke-static {p0, v0, v2, v3, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 982
    iput-boolean v5, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    .line 983
    iget-wide v0, p0, Lcom/innioasis/y1/service/PlayerService;->restoreStartTime:J

    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setCurrentPosition(J)V

    .line 984
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v5}, Lcom/innioasis/music/objects/Global;->setRestoreCompleted(Z)V

    return-void

    .line 994
    :cond_1
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v6, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v1, v6, v1

    if-eq v1, v5, :cond_b

    if-eq v1, v3, :cond_2

    goto/16 :goto_2

    .line 1008
    :cond_2
    iget-boolean v1, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsError:Z

    if-eqz v1, :cond_3

    xor-int/lit8 v0, v1, 0x1

    .line 1009
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsError:Z

    return-void

    .line 1012
    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkProgress:Lcom/innioasis/y1/database/Bookmark;

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_6

    if-eqz v1, :cond_4

    .line 1015
    invoke-virtual {v1}, Lcom/innioasis/y1/database/Bookmark;->getStartTime()J

    move-result-wide v6

    :cond_4
    invoke-virtual {p0, v6, v7}, Lcom/innioasis/y1/service/PlayerService;->setCurrentPosition(J)V

    if-eqz v1, :cond_5

    .line 1016
    invoke-virtual {v1}, Lcom/innioasis/y1/database/Bookmark;->getStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "fine"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iput-boolean v5, p0, Lcom/innioasis/y1/service/PlayerService;->wasPlayBookmark:Z

    goto :goto_1

    .line 1021
    :cond_6
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1022
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/database/Y1Repository;->getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 1024
    :cond_8
    :goto_0
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/database/Y1Repository;->getProgressBySongId(Ljava/lang/String;)Lcom/innioasis/y1/database/Progress;

    move-result-object v1

    .line 1025
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u64ad\u653e\u8fdb\u5ea6\u4e3a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Progress;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_9
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v8}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_a

    .line 1026
    invoke-virtual {v1}, Lcom/innioasis/y1/database/Progress;->getStartTime()J

    move-result-wide v6

    :cond_a
    invoke-virtual {p0, v6, v7}, Lcom/innioasis/y1/service/PlayerService;->setCurrentPosition(J)V

    .line 1029
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    goto :goto_2

    .line 996
    :cond_b
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 997
    iget-boolean v1, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsError:Z

    if-eqz v1, :cond_c

    xor-int/lit8 v0, v1, 0x1

    .line 998
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsError:Z

    return-void

    .line 1001
    :cond_c
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    goto :goto_2

    .line 1003
    :cond_d
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1034
    :goto_2
    iput-boolean v2, p0, Lcom/innioasis/y1/service/PlayerService;->isMeetingSuckFile:Z

    .line 1035
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepared "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    iput-boolean v5, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    return-void
.end method

.method public static synthetic restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 581
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->restartPlay(Z)V

    return-void
.end method

.method public static synthetic setSpeed$default(Lcom/innioasis/y1/service/PlayerService;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 873
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->setSpeed(F)V

    return-void
.end method

.method private final shuffleSong()V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 960
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->getRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    goto :goto_0

    .line 956
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->getRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    :goto_0
    return-void
.end method

.method private final toRepeatStart(IJ)V
    .locals 4

    .line 115
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "ABRepeat"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toRepeatStart\u6765\u6e90: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-wide p2, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    cmp-long v3, p2, v0

    if-ltz v3, :cond_1

    const/16 v0, 0x12c

    int-to-long v0, v0

    add-long/2addr p2, v0

    goto :goto_0

    :cond_1
    move-wide p2, v0

    .line 116
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/innioasis/y1/service/PlayerService;->setCurrentPosition(J)V

    const/4 p2, 0x3

    const/4 p3, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 119
    invoke-static {p0, v2, p3, p1}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    .line 121
    :goto_1
    iput-boolean p3, p0, Lcom/innioasis/y1/service/PlayerService;->temp2:Z

    return-void
.end method

.method static synthetic toRepeatStart$default(Lcom/innioasis/y1/service/PlayerService;IJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1/service/PlayerService;->toRepeatStart(IJ)V

    return-void
.end method

.method private final toRestart()V
    .locals 7

    const-string v0, "restore"

    .line 520
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 548
    :cond_1
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restartPlay audiobook: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iput-boolean v3, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsError:Z

    .line 550
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 551
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    const/4 v2, 0x4

    const-wide/16 v3, 0x1

    const-string v5, "soundtouch"

    invoke-virtual {v1, v2, v5, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 553
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    .line 554
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookPlayRate()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/service/PlayerService;->setSpeed(F)V

    .line 555
    iget-boolean v1, p0, Lcom/innioasis/y1/service/PlayerService;->isSetPlayValue:Z

    if-eqz v1, :cond_5

    .line 556
    sget-object v1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    goto/16 :goto_1

    .line 522
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 523
    :cond_3
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restartPlay music: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 525
    iput-boolean v3, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsError:Z

    .line 526
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 527
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 528
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    goto :goto_0

    .line 532
    :cond_4
    :try_start_0
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v4, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v4

    const-string v5, "restart \u4f7f\u7528mediaPlayer"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 534
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 535
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 537
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const-string v1, "restart \u4f7f\u7528mediaPlayer\u5b8c\u6bd5"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->meetingSuckFile()V

    .line 542
    :goto_0
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->isSetPlayValue:Z

    if-eqz v0, :cond_5

    .line 543
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic updateNowAudiobookProgress$default(Lcom/innioasis/y1/service/PlayerService;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 356
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/service/PlayerService;->updateNowAudiobookProgress(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method private final updateProgressWhileSwitchSong()V
    .locals 12

    .line 386
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->timerForUPWSS:Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;->cancel()V

    .line 387
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->timerForUPWSS:Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;->start()Landroid/os/CountDownTimer;

    .line 388
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->timerForUPWSS:Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->timerForUPWSS:Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService$timerForUPWSS$1;->setLock(Z)V

    .line 390
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 393
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    .line 394
    new-instance v11, Lcom/innioasis/y1/database/Progress;

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/innioasis/y1/database/Progress;-><init>(Ljava/lang/String;JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 393
    invoke-virtual {v0, v11}, Lcom/innioasis/y1/database/Y1Repository;->insertProgress(Lcom/innioasis/y1/database/Progress;)V

    :cond_1
    return-void
.end method

.method private final whenLastSongFromBookmark()V
    .locals 4

    .line 565
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->wasPlayBookmark:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 566
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->wasPlayBookmark:Z

    .line 567
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    iget v3, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 569
    :cond_0
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 570
    iget-object v3, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 571
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 572
    :cond_1
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    if-gez v1, :cond_2

    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    :cond_2
    const/4 v0, 0x0

    .line 573
    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkProgress:Lcom/innioasis/y1/database/Bookmark;

    const/4 v0, -0x1

    .line 574
    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    :cond_3
    return-void
.end method


# virtual methods
.method public final delayGetDuration(JLkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/innioasis/y1/service/PlayerService$delayGetDuration$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/innioasis/y1/service/PlayerService$delayGetDuration$1;-><init>(JLkotlin/jvm/functions/Function1;Lcom/innioasis/y1/service/PlayerService;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method public final getAPoint()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    return-wide v0
.end method

.method public final getAudiobookIndex()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    return v0
.end method

.method public final getAudiobookList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    return-object v0
.end method

.method public final getBPoint()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/innioasis/y1/service/PlayerService;->bPoint:J

    return-wide v0
.end method

.method public final getBookMarkIndex()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    return v0
.end method

.method public final getBookMarkProgress()Lcom/innioasis/y1/database/Bookmark;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkProgress:Lcom/innioasis/y1/database/Bookmark;

    return-object v0
.end method

.method public final getCurrentPosition()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 153
    :try_start_0
    iget-boolean v2, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    if-nez v2, :cond_0

    return-wide v0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v3, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v2

    if-nez v2, :cond_1

    return-wide v0

    .line 157
    :cond_1
    invoke-virtual {v2}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMeetingSuckNotNext()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    return v0
.end method

.method public final getMusicIndex()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    return v0
.end method

.method public final getMusicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    return-object v0
.end method

.method public final getPlayIndex()I
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1150
    :cond_0
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    goto :goto_0

    .line 1149
    :cond_1
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    :goto_0
    return v0
.end method

.method public final getPlayList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public final getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlayer2()Landroid/media/MediaPlayer;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->player2:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "player2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlayerIsPrepared()Z
    .locals 1

    .line 1042
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    return v0
.end method

.method public final getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    return-object v0
.end method

.method public final getPlayingAudiobook()Lcom/innioasis/y1/database/Song;
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 941
    :cond_0
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 942
    :cond_1
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 943
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/database/Song;

    return-object v0
.end method

.method public final getPlayingMusic()Lcom/innioasis/y1/database/Song;
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 934
    :cond_0
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 935
    :cond_1
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/database/Song;

    return-object v0
.end method

.method public final getPlayingSong()Lcom/innioasis/y1/database/Song;
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    goto :goto_0

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getRepeatFlag()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->repeatFlag:Z

    return v0
.end method

.method public final getRepeatState()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    return v0
.end method

.method public final getWasPlayBookmark()Z
    .locals 1

    .line 968
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->wasPlayBookmark:Z

    return v0
.end method

.method public final isMeetingSuckFile()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->isMeetingSuckFile:Z

    return v0
.end method

.method public final isPlayLastSong()Z
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final isPlaying()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    return v2

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 187
    :cond_2
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final isSetPlayValue()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->isSetPlayValue:Z

    return v0
.end method

.method public final isUseIjk(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
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

    .line 1112
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->formatListForIjk:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1162
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1113
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final longClickPlayBtnToStop()V
    .locals 4

    .line 697
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 v1, 0x5

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    .line 698
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->stopRepeat()V

    .line 699
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.fm.STOP_FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    .line 715
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    const-wide/16 v2, 0x0

    .line 716
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->updateNowAudiobookProgress$default(Lcom/innioasis/y1/service/PlayerService;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 702
    :cond_3
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    .line 704
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 705
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 707
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 708
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 709
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    :goto_0
    return-void
.end method

.method public final muteOrNoMuteMusic(Z)V
    .locals 5

    const-string v0, "muteOrNoMuteMusic"

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    const-string v2, "audio"

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    .line 1121
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/service/PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    .line 1122
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->nowVolume:I

    .line 1123
    invoke-virtual {p1, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1124
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u9759\u97f3 nowVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->nowVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1126
    :cond_0
    iget p1, p0, Lcom/innioasis/y1/service/PlayerService;->nowVolume:I

    if-ltz p1, :cond_2

    .line 1127
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/service/PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    .line 1128
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1129
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->nowVolume:I

    invoke-virtual {p1, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1131
    :cond_1
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0d\u9759\u97f3 nowVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 1133
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->nowVolume:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final nextSong()V
    .locals 6

    const/4 v0, 0x1

    .line 731
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    .line 732
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "OnDelete"

    invoke-virtual {v1, v2}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "next song"

    invoke-virtual {v1, v4, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v3, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 759
    :cond_0
    sget-object v1, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/innioasis/fm/util/FmOther;->switchNextFrequency(FI)F

    move-result v1

    .line 760
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5207\u6362\u4e0b\u4e00\u4e2a\u9891\u6bb5   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3, v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 763
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/innioasis/fm/FmRadioService;->isPowerUp()Z

    move-result v3

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 764
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->tuneStationAsync(F)V

    goto :goto_1

    .line 766
    :cond_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 768
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MY_PLAY_SONG"

    .line 769
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 746
    :cond_4
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    return-void

    .line 747
    :cond_5
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->updateProgressWhileSwitchSong()V

    .line 748
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookIsShuffle()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->shuffleSong()V

    goto :goto_2

    .line 750
    :cond_6
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    if-gez v1, :cond_7

    iput v2, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 751
    :cond_7
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_8

    .line 752
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 751
    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 753
    :cond_8
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    add-int/2addr v1, v0

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v1, v4

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 755
    :goto_2
    invoke-static {p0, v2, v0, v3}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto :goto_4

    .line 735
    :cond_9
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a

    return-void

    .line 736
    :cond_a
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicIsShuffle()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->shuffleSong()V

    goto :goto_3

    .line 738
    :cond_b
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    if-gez v1, :cond_c

    iput v2, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 739
    :cond_c
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_d

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 740
    :cond_d
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    add-int/2addr v1, v0

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v1, v4

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 742
    :goto_3
    invoke-static {p0, v2, v0, v3}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 337
    new-instance p1, Lcom/innioasis/y1/service/PlayerService$MyBinder;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/service/PlayerService$MyBinder;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->initPlayer()V

    .line 347
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->initPlayer2()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 351
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 352
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    return-void
.end method

.method public final pause(IZ)V
    .locals 4

    .line 606
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6267\u884c\u4e86pause from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 607
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object p2, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq p1, p2, :cond_0

    .line 608
    sget-object p1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p2}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 610
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object p2, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 626
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 614
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 615
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 616
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 618
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 619
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 632
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 633
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 635
    :cond_5
    :goto_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "3"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object p2, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne p1, p2, :cond_6

    .line 637
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.mediatek.fm.PAUSE_FM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public final play(Z)V
    .locals 3

    .line 404
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "isMeetingSuckFile"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "play"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 425
    :cond_1
    sget-object p1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    if-eqz p1, :cond_6

    .line 420
    sget-object p1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 v0, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    goto :goto_1

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 408
    :cond_4
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    goto :goto_0

    .line 411
    :cond_5
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    if-eqz p1, :cond_6

    .line 414
    sget-object p1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {p1, v2, v1}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    .line 432
    :cond_6
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MY_PLAY_SONG"

    .line 433
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final playOrPause()V
    .locals 6

    .line 656
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "isMeetingSuckFile"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "play or pause"

    invoke-virtual {v0, v4, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/innioasis/y1/service/PlayerService;->isMeetingSuckFile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->isMeetingSuckFile:Z

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 661
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 662
    invoke-static {p0, v0, v2, v1, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 663
    iput-boolean v3, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    goto :goto_0

    .line 665
    :cond_0
    invoke-static {p0, v2, v3, v4}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    .line 666
    iput-boolean v2, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v5, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 688
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.fm.PLAY_OR_PAUSE_FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 683
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    invoke-static {p0, v0, v2, v1, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto :goto_1

    .line 684
    :cond_4
    invoke-static {p0, v2, v3, v4}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto :goto_1

    .line 672
    :cond_5
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 673
    :cond_6
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 674
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    invoke-static {p0, v0, v2, v1, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto :goto_1

    .line 675
    :cond_7
    invoke-static {p0, v2, v3, v4}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto :goto_1

    .line 677
    :cond_8
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    invoke-static {p0, v0, v2, v1, v4}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    goto :goto_1

    .line 678
    :cond_9
    invoke-static {p0, v2, v3, v4}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final prevSong()V
    .locals 6

    const/4 v0, 0x1

    .line 779
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    .line 780
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v1, v0, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 807
    :cond_0
    sget-object v1, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    sget-object v2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lcom/innioasis/fm/util/FmOther;->switchNextFrequency(FI)F

    move-result v1

    .line 808
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5207\u6362\u4e0a\u4e00\u4e2a\u9891\u6bb5   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    sget-object v2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v2, v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 810
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/innioasis/fm/FmRadioService;->isPowerUp()Z

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 812
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->tuneStationAsync(F)V

    goto :goto_1

    .line 814
    :cond_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 816
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MY_PLAY_SONG"

    .line 817
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 794
    :cond_4
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    return-void

    .line 795
    :cond_5
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->updateProgressWhileSwitchSong()V

    .line 796
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookIsShuffle()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->shuffleSong()V

    goto :goto_2

    .line 798
    :cond_6
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    if-gez v1, :cond_7

    iput v3, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 799
    :cond_7
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_8

    .line 800
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 799
    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 801
    :cond_8
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    sub-int/2addr v1, v0

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v1, v4

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 803
    :goto_2
    invoke-static {p0, v3, v0, v2}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto :goto_4

    .line 782
    :cond_9
    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a

    return-void

    .line 783
    :cond_a
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicIsShuffle()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->shuffleSong()V

    goto :goto_3

    .line 785
    :cond_b
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    if-gez v1, :cond_c

    iput v3, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 786
    :cond_c
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_d

    iget-object v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 787
    :cond_d
    iget v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    sub-int/2addr v1, v0

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v1, v4

    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 789
    :goto_3
    invoke-static {p0, v3, v0, v2}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public final restartPlay(Z)V
    .locals 4

    .line 582
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->stopRepeat()V

    .line 583
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "isMeetingSuckFile"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "restart play"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->whenLastSongFromBookmark()V

    .line 585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MY_PLAY_SONG"

    .line 586
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    iput-boolean v1, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    .line 589
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "BasePlayerActivity"

    invoke-virtual {v0, v2}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "\u8fdb\u5165restart play"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 590
    invoke-static {p0, v0, v1, v2, v3}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 591
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->isSetPlayValue:Z

    const-string p1, "power"

    .line 593
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/service/PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/PowerManager;

    .line 594
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/innioasis/y1/service/PlayerService;->toRestart()V

    goto :goto_0

    .line 597
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->timerForRestartPlay:Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;->cancel()V

    .line 598
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->timerForRestartPlay:Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService$timerForRestartPlay$1;->start()Landroid/os/CountDownTimer;

    :goto_0
    return-void
.end method

.method public final restore()V
    .locals 27

    move-object/from16 v12, p0

    const-string v13, "restore"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v11, 0x0

    .line 276
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/service/PlayerService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/save_state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 278
    :cond_0
    invoke-static {v0, v14, v15, v14}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore\u51fd\u6570 ,\u8bfb\u53d6\u51fa\u6765\u7684\u6587\u4ef6\u957f\u5ea6\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/innioasis/y1/service/PlayerService$MyList;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/service/PlayerService$MyList;

    if-nez v0, :cond_1

    new-instance v16, Lcom/innioasis/y1/service/PlayerService$MyList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    const/4 v14, 0x0

    move-object/from16 v11, v17

    :try_start_1
    invoke-direct/range {v0 .. v11}, Lcom/innioasis/y1/service/PlayerService$MyList;-><init>(Lcom/innioasis/y1/service/PlayerService;Ljava/util/List;ILjava/util/List;IJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, v16

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :catch_0
    const/4 v14, 0x0

    .line 282
    :catch_1
    new-instance v16, Lcom/innioasis/y1/service/PlayerService$MyList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/innioasis/y1/service/PlayerService$MyList;-><init>(Lcom/innioasis/y1/service/PlayerService;Ljava/util/List;ILjava/util/List;IJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 285
    :goto_0
    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getPlaying()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v15, :cond_2

    .line 288
    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    goto :goto_1

    .line 287
    :cond_2
    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    goto :goto_1

    .line 286
    :cond_3
    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Music:Lcom/innioasis/y1/service/PlayerService$Playing;

    .line 285
    :goto_1
    iput-object v1, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    .line 290
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u64ad\u653e\u5e73\u53f0\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v1, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v1, v15}, Lcom/innioasis/music/objects/Global;->setRestoreCompleted(Z)V

    .line 293
    :cond_4
    iget-object v1, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v15, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 297
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v14}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setShutdown(Z)V

    .line 298
    sget-object v1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 v2, 0x7

    invoke-virtual {v1, v14, v2}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    goto :goto_2

    .line 295
    :cond_5
    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getAudiobookList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getAudiobookIndex()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->setAudiobookPlaylist(Ljava/util/List;I)V

    goto :goto_2

    .line 294
    :cond_6
    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getMusicList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getMusicIndex()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->setMusicPlaylist(Ljava/util/List;I)V

    .line 302
    :goto_2
    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getStartTime()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/innioasis/y1/service/PlayerService;->restoreStartTime:J

    .line 304
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore\u51fd\u6570 isShutDown\u7684\u503c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore\u51fd\u6570 \u6b4c\u66f2\u5217\u8868\u4e2a\u6570\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getMusicList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \u6709\u58f0\u8bfb\u7269\u5217\u8868\u4e2a\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getAudiobookList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u59cb\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    .line 305
    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bookmarkIndex\u7684\u503c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getBookmarkIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v1, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$Playing;->Music:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq v1, v2, :cond_9

    iget-object v1, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v1, v2, :cond_a

    .line 311
    :cond_9
    invoke-virtual {v12, v15}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 312
    invoke-virtual {v12, v14}, Lcom/innioasis/y1/service/PlayerService;->restartPlay(Z)V

    .line 315
    :cond_a
    iget-object v1, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getBookmarkIndex()I

    move-result v1

    if-ltz v1, :cond_b

    .line 316
    new-instance v1, Lcom/innioasis/y1/database/Bookmark;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x18

    const/16 v26, 0x0

    const-string v17, ""

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v26}, Lcom/innioasis/y1/database/Bookmark;-><init>(Ljava/lang/String;JJJLjava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v12, Lcom/innioasis/y1/service/PlayerService;->bookMarkProgress:Lcom/innioasis/y1/database/Bookmark;

    .line 317
    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->getAudiobookIndex()I

    move-result v0

    iput v0, v12, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    .line 318
    iput-boolean v15, v12, Lcom/innioasis/y1/service/PlayerService;->wasPlayBookmark:Z

    :cond_b
    return-void
.end method

.method public final saveState()V
    .locals 19

    move-object/from16 v12, p0

    .line 234
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v13, "restore"

    invoke-virtual {v0, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/Object;

    const-string/jumbo v2, "\u5f00\u59cbsavaState\u51fd\u6570"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    .line 239
    new-instance v11, Lcom/innioasis/y1/service/PlayerService$MyList;

    iget-object v2, v12, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    iget v3, v12, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    iget-object v4, v12, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    iget v5, v12, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x70

    const/16 v17, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-direct/range {v0 .. v11}, Lcom/innioasis/y1/service/PlayerService$MyList;-><init>(Lcom/innioasis/y1/service/PlayerService;Ljava/util/List;ILjava/util/List;IJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    iget-object v0, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v0, v1, :cond_0

    iget-object v0, v12, Lcom/innioasis/y1/service/PlayerService;->bookMarkProgress:Lcom/innioasis/y1/database/Bookmark;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const-string v1, "+++++++"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget v0, v12, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->setBookmarkIndex(I)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, v18

    .line 246
    :goto_0
    iget-object v0, v12, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v2, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/innioasis/y1/service/PlayerService$MyList;->setPlaying(I)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingSong()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 253
    iget-boolean v0, v12, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v4

    .line 253
    invoke-virtual {v1, v4, v5}, Lcom/innioasis/y1/service/PlayerService$MyList;->setStartTime(J)V

    .line 256
    :cond_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savaState\u51fd\u6570 myListJson\u957f\u5ea6\u4e3a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "null"

    .line 259
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "myListJson"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 260
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/service/PlayerService;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/save_state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_5
    const/4 v3, 0x0

    .line 262
    invoke-static {v1, v0, v3, v2, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 265
    :cond_6
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savaState\u51fd\u6570 \u8017\u65f6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 269
    :catch_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v13}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "saveState \u5931\u8d25\u4e86"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public final setAPoint(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    return-void
.end method

.method public final setAudiobookIndex(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    return-void
.end method

.method public final setAudiobookList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    return-void
.end method

.method public final setAudiobookPlaylist(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iput p2, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 218
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    .line 219
    :cond_0
    iget p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    :cond_1
    return-void
.end method

.method public final setBPoint(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/innioasis/y1/service/PlayerService;->bPoint:J

    return-void
.end method

.method public final setBookMarkIndex(I)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkIndex:I

    return-void
.end method

.method public final setBookMarkProgress(Lcom/innioasis/y1/database/Bookmark;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->bookMarkProgress:Lcom/innioasis/y1/database/Bookmark;

    return-void
.end method

.method public final setCurrentPosition(J)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/service/PlayerService;->isUseIjk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    :goto_0
    return-void
.end method

.method public final setMeetingSuckFile(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->isMeetingSuckFile:Z

    return-void
.end method

.method public final setMeetingSuckNotNext(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->meetingSuckNotNext:Z

    return-void
.end method

.method public final setMusicIndex(I)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    return-void
.end method

.method public final setMusicList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    return-void
.end method

.method public final setMusicPlaylist(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "playlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    iput p2, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 210
    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    .line 211
    :cond_0
    iget p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    :cond_1
    return-void
.end method

.method public final setPlayIndex(I)V
    .locals 2

    .line 1155
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->audiobookIndex:I

    goto :goto_0

    .line 1156
    :cond_1
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->musicIndex:I

    :goto_0
    return-void
.end method

.method public final setPlayLastSong(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->isPlayLastSong:Z

    return-void
.end method

.method public final setPlayer(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->player:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-void
.end method

.method public final setPlayer2(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->player2:Landroid/media/MediaPlayer;

    return-void
.end method

.method public final setPlayerIsPrepared(Z)V
    .locals 0

    .line 1042
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->playerIsPrepared:Z

    return-void
.end method

.method public final setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    return-void
.end method

.method public final setRepeatAB(JJ)V
    .locals 9

    .line 70
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "ABRepeat"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u51c6\u5907\u5f00\u59cb\u590d\u8bfb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3e8

    const-wide/16 v5, 0x0

    cmp-long v2, p1, v5

    if-ltz v2, :cond_0

    int-to-long v7, v0

    .line 71
    rem-long v7, p1, v7

    sub-long/2addr p1, v7

    iput-wide p1, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    :cond_0
    cmp-long p1, p3, v5

    if-ltz p1, :cond_1

    int-to-long p1, v0

    .line 72
    rem-long p1, p3, p1

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/innioasis/y1/service/PlayerService;->bPoint:J

    .line 73
    :cond_1
    iget-wide p1, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    const/4 p3, 0x1

    cmp-long p4, p1, v5

    if-ltz p4, :cond_2

    iput p3, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    .line 74
    :cond_2
    iget-wide v7, p0, Lcom/innioasis/y1/service/PlayerService;->bPoint:J

    cmp-long p4, v5, p1

    if-gtz p4, :cond_3

    cmp-long p4, p1, v7

    if-gez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const/4 p1, 0x2

    if-eqz p3, :cond_4

    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    .line 75
    :cond_4
    iget p2, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    if-ne p2, p1, :cond_5

    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u590d\u8bfb\u5f00\u542f\u6210\u529f "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/innioasis/y1/service/PlayerService;->bPoint:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 76
    new-instance p1, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/service/PlayerService$setRepeatAB$1;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method

.method public final setRepeatFlag(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatFlag:Z

    return-void
.end method

.method public final setRepeatState(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    return-void
.end method

.method public final setSetPlayValue(Z)V
    .locals 0

    .line 518
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->isSetPlayValue:Z

    return-void
.end method

.method public final setSpeed(F)V
    .locals 4

    .line 874
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 875
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "soundtouch"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public final setWasPlayBookmark(Z)V
    .locals 0

    .line 968
    iput-boolean p1, p0, Lcom/innioasis/y1/service/PlayerService;->wasPlayBookmark:Z

    return-void
.end method

.method public final startFastForward()V
    .locals 12

    .line 884
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->fastForwardLock:Z

    if-eqz v0, :cond_0

    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 886
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->fastForwardLock:Z

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 887
    invoke-static {p0, v0, v1, v2, v3}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 888
    new-instance v0, Lcom/innioasis/y1/service/PlayerService$startFastForward$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/service/PlayerService$startFastForward$1;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method public final startRewind()V
    .locals 12

    .line 910
    iget-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->fastForwardLock:Z

    if-eqz v0, :cond_0

    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 912
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->fastForwardLock:Z

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 913
    invoke-static {p0, v0, v1, v2, v3}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 914
    new-instance v0, Lcom/innioasis/y1/service/PlayerService$startRewind$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/service/PlayerService$startRewind$1;-><init>(Lcom/innioasis/y1/service/PlayerService;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 646
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 647
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 648
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 649
    sget-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    iput-object v0, p0, Lcom/innioasis/y1/service/PlayerService;->playing:Lcom/innioasis/y1/service/PlayerService$Playing;

    .line 650
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/innioasis/y1/utils/Static;->setPlayValue$default(Lcom/innioasis/y1/utils/Static;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final stopFastForward()V
    .locals 3

    const/4 v0, 0x0

    .line 902
    iput-boolean v0, p0, Lcom/innioasis/y1/service/PlayerService;->fastForwardLock:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 903
    invoke-static {p0, v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    return-void
.end method

.method public final stopRepeat()V
    .locals 4

    .line 107
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "ABRepeat"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "\u505c\u6b62\u590d\u8bfb"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iput v1, p0, Lcom/innioasis/y1/service/PlayerService;->repeatState:I

    const-wide/16 v0, -0x1

    .line 109
    iput-wide v0, p0, Lcom/innioasis/y1/service/PlayerService;->aPoint:J

    .line 110
    iput-wide v0, p0, Lcom/innioasis/y1/service/PlayerService;->bPoint:J

    return-void
.end method

.method public final updateNowAudiobookProgress(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 7

    .line 357
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/innioasis/y1/service/PlayerService$updateNowAudiobookProgress$1;-><init>(Lcom/innioasis/y1/service/PlayerService;Ljava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
