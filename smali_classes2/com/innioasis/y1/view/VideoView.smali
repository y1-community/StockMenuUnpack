.class public final Lcom/innioasis/y1/view/VideoView;
.super Landroid/widget/FrameLayout;
.source "VideoView.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/view/VideoView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoView.kt\ncom/innioasis/y1/view/VideoView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,444:1\n1#2:445\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001&\u0018\u0000 X2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001XB\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cB!\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010/\u001a\u00020\u001bH\u0002J\u0006\u00100\u001a\u00020\u001bJ\u0006\u00101\u001a\u00020\u001bJ\u0008\u00102\u001a\u00020\u001bH\u0002J\u000e\u00103\u001a\u00020\u001b2\u0006\u00104\u001a\u00020$J\u0006\u00105\u001a\u00020\u0011J\u0006\u00106\u001a\u00020\u0011J\u0012\u00107\u001a\u00020\u001b2\u0008\u00108\u001a\u0004\u0018\u00010\u0014H\u0016J\"\u00109\u001a\u00020\u00112\u0008\u00108\u001a\u0004\u0018\u00010\u00142\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000eH\u0016J\u0012\u0010<\u001a\u00020\u001b2\u0008\u00108\u001a\u0004\u0018\u00010\u0014H\u0016J\"\u0010=\u001a\u00020\u001b2\u0008\u00108\u001a\u0004\u0018\u00010\u00142\u0006\u0010>\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\u000eH\u0016J\u0006\u0010@\u001a\u00020\u001bJ\u000e\u0010A\u001a\u00020\u001b2\u0006\u00104\u001a\u00020$J\u0006\u0010B\u001a\u00020\u001bJ\u0006\u0010C\u001a\u00020\u001bJ\u0014\u0010D\u001a\u00020\u001b2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ)\u0010E\u001a\u00020\u001b2!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u001b0\u001dJ\u001a\u0010F\u001a\u00020\u001b2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0\u001dJ\u001a\u0010G\u001a\u00020\u001b2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0\u001dJ\u0018\u0010H\u001a\u00020\u001b2\u0006\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020\u000eH\u0002J\u000e\u0010K\u001a\u00020\u001b2\u0006\u0010L\u001a\u00020$J\u0010\u0010M\u001a\u00020\u001b2\u0008\u0008\u0002\u0010N\u001a\u00020\u0011J\u000e\u0010O\u001a\u00020\u001b2\u0006\u0010P\u001a\u00020\u0011J\u0006\u0010Q\u001a\u00020\u001bJ(\u0010R\u001a\u00020\u001b2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\u000eH\u0016J\u0010\u0010V\u001a\u00020\u001b2\u0006\u0010S\u001a\u00020TH\u0016J\u0010\u0010W\u001a\u00020\u001b2\u0006\u0010S\u001a\u00020TH\u0016R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010%\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\u0018\u001a\u0004\u0008\'\u0010(R\u001b\u0010*\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u0018\u001a\u0004\u0008,\u0010-\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/innioasis/y1/view/VideoView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/media/MediaPlayer$OnVideoSizeChangedListener;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/media/MediaPlayer$OnErrorListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "canClearSurface",
        "",
        "isRelease",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "getMediaPlayer",
        "()Landroid/media/MediaPlayer;",
        "mediaPlayer$delegate",
        "Lkotlin/Lazy;",
        "onCompletionListener",
        "Lkotlin/Function0;",
        "",
        "onErrorListener",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "type",
        "onPlayStateListener",
        "onVideoViewListener",
        "playPath",
        "",
        "progressHandler",
        "com/innioasis/y1/view/VideoView$progressHandler$2$1",
        "getProgressHandler",
        "()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;",
        "progressHandler$delegate",
        "vb",
        "Lcom/innioasis/y1/databinding/ViewVideoBinding;",
        "getVb",
        "()Lcom/innioasis/y1/databinding/ViewVideoBinding;",
        "vb$delegate",
        "clearSurfaceToBlack",
        "fastBackward",
        "fastForward",
        "getVideoProgress",
        "init",
        "url",
        "isPlaying",
        "isVisibility",
        "onCompletion",
        "mp",
        "onError",
        "what",
        "extra",
        "onPrepared",
        "onVideoSizeChanged",
        "width",
        "height",
        "pause",
        "play",
        "release",
        "resume",
        "setOnCompletionListener",
        "setOnErrorListener",
        "setOnPlayStateListener",
        "setOnProgressShowListener",
        "setProgress",
        "progress",
        "max",
        "setTipText",
        "text",
        "showAndHideProgress",
        "isShow",
        "showProgress",
        "show",
        "stop",
        "surfaceChanged",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "surfaceCreated",
        "surfaceDestroyed",
        "Companion",
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
.field public static final Companion:Lcom/innioasis/y1/view/VideoView$Companion;

.field public static final ERROR_TYPE_NONE:I = -0x1

.field public static final ERROR_TYPE_NOT_PICTURE:I = 0x1

.field public static final ERROR_TYPE_PLAY:I


# instance fields
.field private canClearSurface:Z

.field private isRelease:Z

.field private final mediaPlayer$delegate:Lkotlin/Lazy;

.field private onCompletionListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onErrorListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onPlayStateListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onVideoViewListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private playPath:Ljava/lang/String;

.field private final progressHandler$delegate:Lkotlin/Lazy;

.field private final vb$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$vNkINH_keUzEgzQC5wZiI-DRcDg(Lcom/innioasis/y1/view/VideoView;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/view/VideoView;->onPrepared$lambda-2(Lcom/innioasis/y1/view/VideoView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/view/VideoView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/view/VideoView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/view/VideoView;->Companion:Lcom/innioasis/y1/view/VideoView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/innioasis/y1/view/VideoView$vb$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/VideoView$vb$2;-><init>(Lcom/innioasis/y1/view/VideoView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->vb$delegate:Lkotlin/Lazy;

    .line 39
    sget-object p1, Lcom/innioasis/y1/view/VideoView$mediaPlayer$2;->INSTANCE:Lcom/innioasis/y1/view/VideoView$mediaPlayer$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->mediaPlayer$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    .line 277
    new-instance p1, Lcom/innioasis/y1/view/VideoView$progressHandler$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/VideoView$progressHandler$2;-><init>(Lcom/innioasis/y1/view/VideoView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->progressHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Lcom/innioasis/y1/view/VideoView$vb$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/VideoView$vb$2;-><init>(Lcom/innioasis/y1/view/VideoView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->vb$delegate:Lkotlin/Lazy;

    .line 39
    sget-object p1, Lcom/innioasis/y1/view/VideoView$mediaPlayer$2;->INSTANCE:Lcom/innioasis/y1/view/VideoView$mediaPlayer$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->mediaPlayer$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    .line 277
    new-instance p1, Lcom/innioasis/y1/view/VideoView$progressHandler$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/VideoView$progressHandler$2;-><init>(Lcom/innioasis/y1/view/VideoView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->progressHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Lcom/innioasis/y1/view/VideoView$vb$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/VideoView$vb$2;-><init>(Lcom/innioasis/y1/view/VideoView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->vb$delegate:Lkotlin/Lazy;

    .line 39
    sget-object p1, Lcom/innioasis/y1/view/VideoView$mediaPlayer$2;->INSTANCE:Lcom/innioasis/y1/view/VideoView$mediaPlayer$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->mediaPlayer$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    .line 277
    new-instance p1, Lcom/innioasis/y1/view/VideoView$progressHandler$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/VideoView$progressHandler$2;-><init>(Lcom/innioasis/y1/view/VideoView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->progressHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getVb(Lcom/innioasis/y1/view/VideoView;)Lcom/innioasis/y1/databinding/ViewVideoBinding;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVideoProgress(Lcom/innioasis/y1/view/VideoView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVideoProgress()V

    return-void
.end method

.method public static final synthetic access$isRelease$p(Lcom/innioasis/y1/view/VideoView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/innioasis/y1/view/VideoView;->isRelease:Z

    return p0
.end method

.method private final clearSurfaceToBlack()V
    .locals 2

    .line 267
    iget-boolean v0, p0, Lcom/innioasis/y1/view/VideoView;->canClearSurface:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/innioasis/y1/view/VideoView;->canClearSurface:Z

    .line 271
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 272
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private final getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/innioasis/y1/view/VideoView;->mediaPlayer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private final getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/innioasis/y1/view/VideoView;->progressHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    return-object v0
.end method

.method private final getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/innioasis/y1/view/VideoView;->vb$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;

    return-object v0
.end method

.method private final getVideoProgress()V
    .locals 5

    .line 345
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 348
    iget-boolean v0, p0, Lcom/innioasis/y1/view/VideoView;->isRelease:Z

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const-wide/16 v2, 0x3de

    invoke-virtual {v0, v1, v2, v3}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->sendEmptyMessageDelayed(IJ)Z

    .line 356
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 358
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 359
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoProgress currentPosition->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  totalDuration->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/view/VideoView;->setProgress(II)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/view/VideoView;->onPlayStateListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->isPlaying()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->playPause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f08013d

    goto :goto_0

    :cond_3
    const v1, 0x7f08013f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static final onPrepared$lambda-2(Lcom/innioasis/y1/view/VideoView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private final setProgress(II)V
    .locals 6

    .line 374
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->progress:Landroid/widget/ProgressBar;

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const/16 v3, 0x64

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 375
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 377
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->tvPlayNow:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/innioasis/y1/utils/TimeUtils;->time(J)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ViewVideoBinding;->tvPlayAll:Landroid/widget/TextView;

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/innioasis/y1/utils/TimeUtils;->time(J)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic showAndHideProgress$default(Lcom/innioasis/y1/view/VideoView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/view/VideoView;->showAndHideProgress(Z)V

    return-void
.end method


# virtual methods
.method public final fastBackward()V
    .locals 4

    .line 415
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->resume()V

    .line 416
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 417
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 418
    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v0

    if-ltz v1, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    const/4 v0, 0x1

    .line 423
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/view/VideoView;->showAndHideProgress(Z)V

    .line 424
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVideoProgress()V

    .line 426
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->fastBackward:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->fastForward:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->fastBackward:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 431
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final fastForward()V
    .locals 4

    .line 388
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->resume()V

    .line 389
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 391
    div-int/lit8 v1, v0, 0x64

    .line 392
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    const/4 v0, 0x1

    .line 399
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/view/VideoView;->showAndHideProgress(Z)V

    .line 400
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVideoProgress()V

    .line 402
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->fastForward:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->fastForward:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->fastBackward:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 407
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final init(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/innioasis/y1/view/VideoView;->isRelease:Z

    .line 49
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ViewVideoBinding;->surface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 54
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 55
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 57
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->progress:Landroid/widget/ProgressBar;

    const-string v1, "vb.progress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->setCustomBackground(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public final isPlaying()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/innioasis/y1/view/VideoView;->isRelease:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final isVisibility()Z
    .locals 1

    .line 308
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->playPause:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 225
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u64ad\u653e\u7ed3\u675f"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lcom/innioasis/y1/view/VideoView;->onCompletionListener:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 192
    iget-object p1, p0, Lcom/innioasis/y1/view/VideoView;->onErrorListener:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 181
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u89c6\u9891\u5c31\u7eea"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance p1, Lcom/innioasis/y1/view/VideoView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/view/VideoView$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/view/VideoView;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Lcom/innioasis/y1/view/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .line 202
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891\u5927\u5c0f\u53d8\u66f4  width->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    and-int/2addr p2, p3

    if-eqz p2, :cond_3

    .line 205
    iget-object p2, p0, Lcom/innioasis/y1/view/VideoView;->onErrorListener:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ViewVideoBinding;->view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 208
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ViewVideoBinding;->view:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/innioasis/y1/view/VideoView;->onErrorListener:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_4

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_4
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p1

    .line 212
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p2

    .line 213
    sget-object p3, Lcom/innioasis/y1/activity/video/VideoUtils;->INSTANCE:Lcom/innioasis/y1/activity/video/VideoUtils;

    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->surface:Landroid/view/SurfaceView;

    const-string v1, "vb.surface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, p2}, Lcom/innioasis/y1/activity/video/VideoUtils;->adjustSurfaceViewSize(Landroid/view/SurfaceView;II)V

    :goto_2
    return-void
.end method

.method public final pause()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-static {p0, v0, v1, v2}, Lcom/innioasis/y1/view/VideoView;->showAndHideProgress$default(Lcom/innioasis/y1/view/VideoView;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final play(Ljava/lang/String;)V
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, p1, v0, v1}, Lcom/innioasis/y1/view/VideoView;->showAndHideProgress$default(Lcom/innioasis/y1/view/VideoView;ZILjava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 66
    :cond_0
    iput-boolean p1, p0, Lcom/innioasis/y1/view/VideoView;->canClearSurface:Z

    .line 67
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e\u89c6\u9891\u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/innioasis/y1/view/VideoView;->onErrorListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 4

    .line 118
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->stop()V

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 126
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/innioasis/y1/view/VideoView;->isRelease:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9500\u6bc1\u89c6\u9891\u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-static {p0, v0, v1, v2}, Lcom/innioasis/y1/view/VideoView;->showAndHideProgress$default(Lcom/innioasis/y1/view/VideoView;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setOnCompletionListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCompletionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->onCompletionListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnErrorListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onErrorListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->onErrorListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPlayStateListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onPlayStateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->onPlayStateListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnProgressShowListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onVideoViewListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView;->onVideoViewListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setTipText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ViewVideoBinding;->tipText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final showAndHideProgress(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/view/VideoView;->showProgress(Z)V

    .line 318
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    return-void

    .line 321
    :cond_0
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/view/VideoView;->showProgress(Z)V

    .line 323
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ViewVideoBinding;->playPause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f08013d

    goto :goto_0

    :cond_1
    const v2, 0x7f08013f

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 326
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object p1

    const-wide/16 v2, 0x320

    invoke-virtual {p1, v1, v2, v3}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->sendEmptyMessageDelayed(IJ)Z

    .line 328
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 329
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final showProgress(Z)V
    .locals 4

    .line 336
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getVb()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ViewVideoBinding;->playPause:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/innioasis/y1/view/VideoView;->onVideoViewListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 103
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 104
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 106
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 108
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    .line 110
    invoke-static {p0, v1, v2, v0}, Lcom/innioasis/y1/view/VideoView;->showAndHideProgress$default(Lcom/innioasis/y1/view/VideoView;ZILjava/lang/Object;)V

    .line 112
    invoke-direct {p0, v1, v1}, Lcom/innioasis/y1/view/VideoView;->setProgress(II)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 238
    iget-object p1, p0, Lcom/innioasis/y1/view/VideoView;->playPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/view/VideoView;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "surfaceDestroyed surface \u9500\u6bc1"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 261
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getProgressHandler()Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/view/VideoView$progressHandler$2$1;->removeMessages(I)V

    .line 262
    invoke-direct {p0}, Lcom/innioasis/y1/view/VideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method
