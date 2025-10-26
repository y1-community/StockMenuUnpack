.class public abstract Lcom/innioasis/y1/base/BasePlayerActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "BasePlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000k\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0008\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017*\u0003\r%:\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010<\u001a\u00020=H\u0004J\u0008\u0010>\u001a\u00020=H\u0016J\u0008\u0010?\u001a\u00020=H\u0016J\u0008\u0010@\u001a\u00020=H\u0016J\u0010\u0010A\u001a\u00020=2\u0006\u0010B\u001a\u00020CH\u0016J\u0012\u0010D\u001a\u00020\t2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0008\u0010G\u001a\u00020\u0002H\u0016J\u0008\u0010H\u001a\u00020=H\u0016J\u0008\u0010I\u001a\u00020=H\u0016J\u0008\u0010J\u001a\u00020=H&J\u0008\u0010K\u001a\u00020=H&J\u0008\u0010L\u001a\u00020=H\u0016J\u0008\u0010M\u001a\u00020=H\u0014J\u001a\u0010N\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u001e2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u001a\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u001e2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u001a\u0010Q\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u001e2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0008\u0010R\u001a\u00020=H\u0014J\u0008\u0010S\u001a\u00020=H\u0014J\u0008\u0010T\u001a\u00020=H\u0016J\u0008\u0010U\u001a\u00020=H\u0016J\u0008\u0010V\u001a\u00020=H\u0016J\u0008\u0010W\u001a\u00020=H\u0004J\u000e\u0010X\u001a\u00020=2\u0006\u0010Y\u001a\u00020\u001cJ\u000e\u0010Z\u001a\u00020=2\u0006\u0010Y\u001a\u00020\u001cJ\u0008\u0010[\u001a\u00020=H\u0016J\u0008\u0010\\\u001a\u00020=H\u0004R\u0016\u0010\u0004\u001a\u00020\u00058BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00020\u00058BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0010\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010&R\u001a\u0010\'\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0010\"\u0004\u0008)\u0010\u0012R\u001a\u0010*\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0010\"\u0004\u0008,\u0010\u0012R\u000e\u0010-\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010/\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0010\"\u0004\u00081\u0010\u0012R \u00102\u001a\u0008\u0012\u0004\u0012\u00020403X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u0010\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010;\u00a8\u0006]"
    }
    d2 = {
        "Lcom/innioasis/y1/base/BasePlayerActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;",
        "()V",
        "aPoint",
        "",
        "getAPoint",
        "()J",
        "abRepeatThreadFlag",
        "",
        "bPoint",
        "getBPoint",
        "handler",
        "com/innioasis/y1/base/BasePlayerActivity$handler$1",
        "Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;",
        "isFromNowPlaying",
        "()Z",
        "setFromNowPlaying",
        "(Z)V",
        "lock",
        "lyricThreadFlag",
        "lyricsAdapter",
        "Lcom/innioasis/music/adapter/LyricsAdapter;",
        "getLyricsAdapter",
        "()Lcom/innioasis/music/adapter/LyricsAdapter;",
        "setLyricsAdapter",
        "(Lcom/innioasis/music/adapter/LyricsAdapter;)V",
        "pathForCover",
        "",
        "progressState",
        "",
        "getProgressState",
        "()I",
        "setProgressState",
        "(I)V",
        "progressThreadFlag",
        "refreshUIReceiver",
        "com/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1",
        "Lcom/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1;",
        "shortPressEnter",
        "getShortPressEnter",
        "setShortPressEnter",
        "shortPressLeft",
        "getShortPressLeft",
        "setShortPressLeft",
        "shortPressMenu",
        "shortPressPlay",
        "shortPressRight",
        "getShortPressRight",
        "setShortPressRight",
        "songLyrics",
        "",
        "Lcom/innioasis/music/data/Lyric;",
        "getSongLyrics",
        "()Ljava/util/List;",
        "setSongLyrics",
        "(Ljava/util/List;)V",
        "timer",
        "com/innioasis/y1/base/BasePlayerActivity$timer$1",
        "Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;",
        "abRepeatEnable",
        "",
        "antiClockwise",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "longPressEnter",
        "longPressMenu",
        "nextSong",
        "onDestroy",
        "onKeyDown",
        "keyCode",
        "onKeyLongPress",
        "onKeyUp",
        "onPause",
        "onResume",
        "pressMenu",
        "prevSong",
        "quit",
        "refreshABUI",
        "refreshCover",
        "path",
        "refreshLyric",
        "refreshUI",
        "stopRepeatForUI",
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
.field private aPoint:J

.field private abRepeatThreadFlag:Z

.field private bPoint:J

.field private final handler:Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

.field private isFromNowPlaying:Z

.field private lock:Z

.field private lyricThreadFlag:Z

.field public lyricsAdapter:Lcom/innioasis/music/adapter/LyricsAdapter;

.field private pathForCover:Ljava/lang/String;

.field private progressState:I

.field private progressThreadFlag:Z

.field private final refreshUIReceiver:Lcom/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1;

.field private shortPressEnter:Z

.field private shortPressLeft:Z

.field private shortPressMenu:Z

.field private shortPressPlay:Z

.field private shortPressRight:Z

.field public songLyrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/music/data/Lyric;",
            ">;"
        }
    .end annotation
.end field

.field private final timer:Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;


# direct methods
.method public static synthetic $r8$lambda$W6NhqIniNPDz8EZeoqa30kqKuLk(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->initView$lambda-0(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    iput-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->refreshUIReceiver:Lcom/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1;

    .line 108
    new-instance v0, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    iput-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->timer:Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;

    const-wide/16 v0, -0x1

    .line 233
    iput-wide v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->aPoint:J

    .line 235
    iput-wide v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->bPoint:J

    .line 317
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    invoke-direct {v1, p0, v0}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->handler:Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    const-string v0, ""

    .line 491
    iput-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->pathForCover:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getAPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getAbRepeatThreadFlag$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->abRepeatThreadFlag:Z

    return p0
.end method

.method public static final synthetic access$getBPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getBPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->handler:Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    return-object p0
.end method

.method public static final synthetic access$getLyricThreadFlag$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lyricThreadFlag:Z

    return p0
.end method

.method public static final synthetic access$getProgressThreadFlag$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressThreadFlag:Z

    return p0
.end method

.method private final getAPoint()J
    .locals 2

    .line 234
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getAPoint()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private final getBPoint()J
    .locals 2

    .line 236
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getBPoint()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private static final initView$lambda-0(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ReflectImageView;->setPivotX(F)V

    .line 71
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    invoke-virtual {v1}, Lcom/innioasis/y1/view/ReflectImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ReflectImageView;->setPivotY(F)V

    .line 72
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/view/ReflectImageView;->setRotationY(F)V

    return-void
.end method


# virtual methods
.method protected final abRepeatEnable()V
    .locals 5

    .line 257
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lock:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lock:Z

    .line 259
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v3, -0x1

    if-eqz v1, :cond_3

    .line 260
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    .line 261
    :goto_1
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/innioasis/y1/service/PlayerService;->setRepeatAB(JJ)V

    goto :goto_5

    .line 263
    :cond_3
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v1

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 264
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    move-wide v0, v3

    .line 265
    :goto_3
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setRepeatAB(JJ)V

    goto :goto_5

    .line 267
    :cond_6
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 268
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->stopRepeat()V

    .line 269
    :cond_8
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->stopRepeatForUI()V

    .line 271
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->refreshABUI()V

    return-void
.end method

.method public antiClockwise()V
    .locals 0

    return-void
.end method

.method public clockwise()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 0

    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 304
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 305
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getLyricsAdapter()Lcom/innioasis/music/adapter/LyricsAdapter;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lyricsAdapter:Lcom/innioasis/music/adapter/LyricsAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "lyricsAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProgressState()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressState:I

    return v0
.end method

.method public final getShortPressEnter()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressEnter:Z

    return v0
.end method

.method public final getShortPressLeft()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressLeft:Z

    return v0
.end method

.method public final getShortPressRight()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressRight:Z

    return v0
.end method

.method public final getSongLyrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/music/data/Lyric;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->songLyrics:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "songLyrics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;
    .locals 2

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->setTransparent(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/innioasis/music/data/Lyric;

    .line 61
    new-instance v1, Lcom/innioasis/music/data/Lyric;

    const v2, 0x7f11012b

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/base/BasePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.music_no_lyrics)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/innioasis/music/data/Lyric;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->setSongLyrics(Ljava/util/List;)V

    const-string v0, "audio"

    .line 66
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 67
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->pbVolume:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 69
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->coverBg:Lcom/innioasis/y1/view/ReflectImageView;

    new-instance v1, Lcom/innioasis/y1/base/BasePlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BasePlayerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ReflectImageView;->post(Ljava/lang/Runnable;)Z

    .line 74
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->pbPlayer:Landroid/widget/ProgressBar;

    const-string v2, "vb.pbPlayer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setCustomBackground(Landroid/widget/ProgressBar;)V

    .line 75
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->pbVolume:Landroid/widget/ProgressBar;

    const-string v2, "vb.pbVolume"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setCustomBackground(Landroid/widget/ProgressBar;)V

    .line 79
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->refreshUIReceiver:Lcom/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MY_PLAY_SONG"

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/base/BasePlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final isFromNowPlaying()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->isFromNowPlaying:Z

    return v0
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method public abstract longPressEnter()V
.end method

.method public abstract longPressMenu()V
.end method

.method public nextSong()V
    .locals 1

    .line 173
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 603
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onDestroy()V

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->refreshUIReceiver:Lcom/innioasis/y1/base/BasePlayerActivity$refreshUIReceiver$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 119
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    const-string v2, "audio"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/base/BasePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    .line 121
    invoke-virtual {p1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    add-int/2addr p2, v6

    .line 122
    invoke-virtual {p1, v5, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 123
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llVolume:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llPrograss:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->abPoint:Lcom/innioasis/y1/utils/ProgressMaskView;

    invoke-virtual {p1, v3}, Lcom/innioasis/y1/utils/ProgressMaskView;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->timer:Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->cancel()V

    .line 127
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->timer:Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->start()Landroid/os/CountDownTimer;

    .line 128
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->pbVolume:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 130
    :cond_0
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 131
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/base/BasePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    .line 132
    invoke-virtual {p1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    sub-int/2addr p2, v6

    .line 133
    invoke-virtual {p1, v5, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 134
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llVolume:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llPrograss:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 136
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->abPoint:Lcom/innioasis/y1/utils/ProgressMaskView;

    invoke-virtual {p1, v3}, Lcom/innioasis/y1/utils/ProgressMaskView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->timer:Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->cancel()V

    .line 138
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->timer:Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->start()Landroid/os/CountDownTimer;

    .line 139
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->pbVolume:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 142
    :cond_1
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 143
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 144
    iput-boolean v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressLeft:Z

    goto :goto_0

    .line 147
    :cond_2
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 148
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 149
    iput-boolean v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressRight:Z

    goto :goto_0

    .line 152
    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 153
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 154
    iput-boolean v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressEnter:Z

    goto :goto_0

    .line 157
    :cond_4
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 158
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 159
    iput-boolean v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressMenu:Z

    goto :goto_0

    .line 162
    :cond_5
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 163
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 164
    iput-boolean v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressPlay:Z

    :cond_6
    :goto_0
    return v6
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 275
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    .line 276
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressLeft:Z

    const/4 p1, -0x1

    .line 277
    iput p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressState:I

    .line 278
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/innioasis/y1/service/PlayerService;->pause(IZ)V

    goto :goto_0

    .line 281
    :cond_0
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 282
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressRight:Z

    .line 283
    iput v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressState:I

    .line 284
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/innioasis/y1/service/PlayerService;->pause(IZ)V

    goto :goto_0

    .line 286
    :cond_1
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 287
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressEnter:Z

    .line 288
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->longPressEnter()V

    goto :goto_0

    .line 290
    :cond_2
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 291
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressMenu:Z

    .line 292
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->longPressMenu()V

    goto :goto_0

    .line 294
    :cond_3
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 295
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressPlay:Z

    .line 296
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->stopRepeatForUI()V

    .line 297
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->longClickPlayBtnToStop()V

    :cond_4
    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 180
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1

    .line 181
    iget-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressLeft:Z

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->prevSong()V

    .line 183
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->stopRepeatForUI()V

    goto/16 :goto_1

    .line 185
    :cond_0
    iput v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressState:I

    .line 186
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1, v2, v1, v0}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto/16 :goto_1

    .line 189
    :cond_1
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 190
    iget-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressRight:Z

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->nextSong()V

    .line 192
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->stopRepeatForUI()V

    goto/16 :goto_1

    .line 194
    :cond_2
    iput v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressState:I

    .line 195
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1, v2, v1, v0}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto/16 :goto_1

    .line 198
    :cond_3
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 199
    iget-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressMenu:Z

    if-eqz p1, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->pressMenu()V

    goto :goto_0

    .line 202
    :cond_4
    iput-boolean v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lock:Z

    :goto_0
    return v1

    .line 206
    :cond_5
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 207
    iget-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressEnter:Z

    if-eqz p1, :cond_8

    .line 208
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->clLyric:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    const-string p2, "vb.clPlayerCenter"

    const-string v0, "vb.clLyric"

    if-nez p1, :cond_6

    .line 209
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->clLyric:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 210
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->clPlayerCenter:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    goto :goto_1

    .line 215
    :cond_6
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->clLyric:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 216
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->clPlayerCenter:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    goto :goto_1

    .line 224
    :cond_7
    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p2

    if-ne p1, p2, :cond_8

    .line 225
    iget-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressPlay:Z

    if-eqz p1, :cond_8

    .line 226
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->playOrPause()V

    :cond_8
    :goto_1
    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 597
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressThreadFlag:Z

    .line 599
    iput-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lyricThreadFlag:Z

    .line 600
    iput-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->abRepeatThreadFlag:Z

    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 516
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 517
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressThreadFlag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 518
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressThreadFlag:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 519
    new-instance v0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$1;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lyricThreadFlag:Z

    if-nez v0, :cond_1

    .line 538
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lyricThreadFlag:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 539
    new-instance v0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$2;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 546
    :cond_1
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->abRepeatThreadFlag:Z

    if-nez v0, :cond_2

    .line 547
    iput-boolean v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->abRepeatThreadFlag:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 548
    new-instance v0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 590
    :cond_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 591
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->stopRepeatForUI()V

    .line 592
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->aToB:Landroid/widget/ImageView;

    const-string v2, "vb.aToB"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 593
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->bQuestionMark:Landroid/widget/ImageView;

    const-string v2, "vb.bQuestionMark"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public pressMenu()V
    .locals 0

    .line 613
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->finish()V

    return-void
.end method

.method public prevSong()V
    .locals 1

    .line 176
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->prevSong()V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method protected final refreshABUI()V
    .locals 10

    .line 240
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llPrograss:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llPrograss:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 241
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getAPoint()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const/high16 v4, 0x42000000    # 32.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x42480000    # 50.0f

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/innioasis/music/util/Other;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->abPoint:Lcom/innioasis/y1/utils/ProgressMaskView;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v6

    :cond_1
    invoke-virtual {v0, v6, v7}, Lcom/innioasis/y1/utils/ProgressMaskView;->setDuration(J)V

    .line 244
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->abPoint:Lcom/innioasis/y1/utils/ProgressMaskView;

    const-string v0, "vb.abPoint"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getAPoint()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getBPoint()J

    move-result-wide v4

    const/4 v6, 0x0

    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/innioasis/y1/utils/ProgressMaskView;->setABPosition$default(Lcom/innioasis/y1/utils/ProgressMaskView;JJFZILjava/lang/Object;)V

    return-void
.end method

.method public final refreshCover(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->pathForCover:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 494
    :cond_0
    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->pathForCover:Ljava/lang/String;

    .line 495
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5237\u65b0\u4e00\u6b21\u4e13\u8f91\u56fe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->handler:Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    const/16 v1, 0x3d9

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->removeMessages(I)V

    .line 497
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 498
    iput v1, v0, Landroid/os/Message;->what:I

    .line 499
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->handler:Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final refreshLyric(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5237\u65b0\u4e00\u6b21\u6b4c\u8bcd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->handler:Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->removeMessages(I)V

    .line 506
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 507
    iput v1, v0, Landroid/os/Message;->what:I

    .line 508
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->handler:Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public refreshUI()V
    .locals 9

    .line 96
    new-instance v0, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

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

.method public final setFromNowPlaying(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->isFromNowPlaying:Z

    return-void
.end method

.method public final setLyricsAdapter(Lcom/innioasis/music/adapter/LyricsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->lyricsAdapter:Lcom/innioasis/music/adapter/LyricsAdapter;

    return-void
.end method

.method public final setProgressState(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->progressState:I

    return-void
.end method

.method public final setShortPressEnter(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressEnter:Z

    return-void
.end method

.method public final setShortPressLeft(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressLeft:Z

    return-void
.end method

.method public final setShortPressRight(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->shortPressRight:Z

    return-void
.end method

.method public final setSongLyrics(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/music/data/Lyric;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity;->songLyrics:Ljava/util/List;

    return-void
.end method

.method protected final stopRepeatForUI()V
    .locals 9

    .line 249
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llPrograss:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llPrograss:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 250
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getAPoint()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const/high16 v4, 0x42000000    # 32.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x42480000    # 50.0f

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/innioasis/music/util/Other;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->abPoint:Lcom/innioasis/y1/utils/ProgressMaskView;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/ProgressMaskView;->clearABPointAndDuration()V

    return-void
.end method
