.class public final Lcom/innioasis/fm/FmRadioService;
.super Landroid/app/Service;
.source "FmRadioService.kt"

# interfaces
.implements Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/fm/FmRadioService$Companion;,
        Lcom/innioasis/fm/FmRadioService$MyReceiver;,
        Lcom/innioasis/fm/FmRadioService$MyBinder;,
        Lcom/innioasis/fm/FmRadioService$Record;,
        Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFmRadioService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FmRadioService.kt\ncom/innioasis/fm/FmRadioService\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1350:1\n13557#2,2:1351\n*S KotlinDebug\n*F\n+ 1 FmRadioService.kt\ncom/innioasis/fm/FmRadioService\n*L\n1211#1:1351,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0007\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008)\u0008\u0007\u0018\u0000 \u009f\u00012\u00020\u00012\u00020\u0002:\n\u009f\u0001\u00a0\u0001\u00a1\u0001\u00a2\u0001\u00a3\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010J\u001a\u00020KJ\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020N0MJ\u0008\u0010O\u001a\u00020\u001fH\u0002J\u0010\u0010P\u001a\u00020K2\u0006\u0010Q\u001a\u00020\u001fH\u0002J\u0008\u0010R\u001a\u00020KH\u0002J\u0006\u0010S\u001a\u00020@J\u0006\u0010T\u001a\u00020\u0005J\u0006\u0010U\u001a\u00020\u001fJ\u0008\u0010V\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010W\u001a\u00020\u001fJ\u0010\u0010X\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020NH\u0002J\u0006\u0010Z\u001a\u00020KJ\u0006\u0010[\u001a\u00020KJ\u0006\u0010\\\u001a\u00020\u001fJ\u0006\u0010]\u001a\u00020\u001fJ\u0006\u0010^\u001a\u00020\u001fJ\u000e\u0010_\u001a\u00020\u001f2\u0006\u0010`\u001a\u00020aJ\u0006\u0010b\u001a\u00020\u001fJ\u0006\u0010c\u001a\u00020\u001fJ\u0010\u0010d\u001a\u00020e2\u0006\u0010`\u001a\u00020aH\u0016J\u0010\u0010f\u001a\u00020K2\u0006\u0010g\u001a\u00020hH\u0016J\u0008\u0010i\u001a\u00020KH\u0016J\u0008\u0010j\u001a\u00020KH\u0016J\u0008\u0010k\u001a\u00020KH\u0016J\u0010\u0010l\u001a\u00020K2\u0006\u0010m\u001a\u00020\u0005H\u0016J\u0010\u0010n\u001a\u00020K2\u0006\u0010o\u001a\u00020\u0005H\u0016J\"\u0010p\u001a\u00020\u00052\u0008\u0010`\u001a\u0004\u0018\u00010a2\u0006\u0010q\u001a\u00020\u00052\u0006\u0010r\u001a\u00020\u0005H\u0016J\u0006\u0010s\u001a\u00020\u001fJ\u0010\u0010t\u001a\u00020K2\u0008\u0008\u0002\u0010u\u001a\u00020\u001fJ\u0006\u0010v\u001a\u00020KJ\u000e\u0010w\u001a\u00020K2\u0006\u0010Y\u001a\u00020NJ\u0010\u0010x\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020NH\u0002J\u000e\u0010y\u001a\u00020K2\u0006\u0010z\u001a\u00020{J\u0008\u0010|\u001a\u00020KH\u0002J\u0010\u0010}\u001a\u00020K2\u0006\u0010~\u001a\u00020\u0005H\u0002J\u0008\u0010\u007f\u001a\u00020\u001fH\u0002J\u0007\u0010\u0080\u0001\u001a\u00020KJ\u0007\u0010\u0081\u0001\u001a\u00020KJ\u0014\u0010\u0082\u0001\u001a\u00020K2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010\u0084\u0001\u001a\u00020K2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0085\u0001\u001a\u00020\u001f2\u0007\u0010\u0086\u0001\u001a\u00020\u001fH\u0002J\u0012\u0010\u0087\u0001\u001a\u00020\u00052\u0007\u0010\u0088\u0001\u001a\u00020\u001fH\u0002J\u0012\u0010\u0089\u0001\u001a\u00020K2\t\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\u008b\u0001\u001a\u00020K2\u0007\u0010\u008c\u0001\u001a\u00020\u001fH\u0002J\u0010\u0010\u008d\u0001\u001a\u00020K2\u0007\u0010\u008c\u0001\u001a\u00020\u001fJ\u0012\u0010\u008e\u0001\u001a\u00020K2\u0007\u0010\u008f\u0001\u001a\u00020\u001fH\u0007J\u0010\u0010\u0090\u0001\u001a\u00020\u001f2\u0007\u0010\u0086\u0001\u001a\u00020\u001fJ\t\u0010\u0091\u0001\u001a\u00020KH\u0002J\u0007\u0010\u0092\u0001\u001a\u00020KJ\u0012\u0010\u0093\u0001\u001a\u00020K2\u0007\u0010\u0094\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u0095\u0001\u001a\u00020\u001fH\u0002J\u0007\u0010\u0096\u0001\u001a\u00020KJ\u0007\u0010\u0097\u0001\u001a\u00020\u001fJ\u0010\u0010\u0098\u0001\u001a\u00020K2\u0007\u0010\u0099\u0001\u001a\u00020\u0005J\u0011\u0010\u009a\u0001\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020NH\u0002J\u000f\u0010\u009b\u0001\u001a\u00020K2\u0006\u0010Y\u001a\u00020NJ\u000f\u0010\u009c\u0001\u001a\u00020K2\u0006\u0010z\u001a\u00020{J\u0012\u0010\u009d\u0001\u001a\u00020K2\u0007\u0010\u0094\u0001\u001a\u00020\u0005H\u0002J\u0012\u0010\u009e\u0001\u001a\u00020K2\u0007\u0010\u0094\u0001\u001a\u00020\u0005H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0008\u0018\u00010\u001cR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u000e\u0010&\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u001fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u001fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00104\u001a\u0012\u0012\u0004\u0012\u00020605j\u0008\u0012\u0004\u0012\u000206`7X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u0008\u0018\u00010;R\u00020<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010=\u001a\u00060>R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010A\u001a\u00020B\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010DR\u001a\u0010E\u001a\u00020\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010I\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Lcom/innioasis/fm/FmRadioService;",
        "Landroid/app/Service;",
        "Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;",
        "()V",
        "STREAM_FM",
        "",
        "getSTREAM_FM",
        "()I",
        "STREAM_FM$delegate",
        "Lkotlin/Lazy;",
        "TAG",
        "",
        "listener",
        "mAudioFocusChangeListener",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "mAudioManager",
        "Landroid/media/AudioManager;",
        "mDefaultSDCardPath",
        "mErrorType",
        "mFMPlayer",
        "Landroid/media/MediaPlayer;",
        "mFMRecorder",
        "Lcom/innioasis/fm/FMRecorder;",
        "getMFMRecorder",
        "()Lcom/innioasis/fm/FMRecorder;",
        "setMFMRecorder",
        "(Lcom/innioasis/fm/FMRecorder;)V",
        "mFmServiceHandler",
        "Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;",
        "mForcedUseForMedia",
        "mIsAudioFocusHeld",
        "",
        "mIsDeviceOpen",
        "mIsFirst",
        "getMIsFirst",
        "()Z",
        "setMIsFirst",
        "(Z)V",
        "mIsInRecordingMode",
        "mIsNativeScanning",
        "mIsPowerUp",
        "mIsPowerUping",
        "mIsScanning",
        "mIsSeeking",
        "mIsServiceInit",
        "mIsShortAntennaSupport",
        "mIsSpeakerUsed",
        "mIsStopScanCalled",
        "mPausedByTransientLossOfFocus",
        "mPlayerErrorListener",
        "Landroid/media/MediaPlayer$OnErrorListener;",
        "mRecordState",
        "mRecords",
        "Ljava/util/ArrayList;",
        "Lcom/innioasis/fm/FmRadioService$Record;",
        "Lkotlin/collections/ArrayList;",
        "mSDListener",
        "Landroid/content/BroadcastReceiver;",
        "mWakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "myReceiver",
        "Lcom/innioasis/fm/FmRadioService$MyReceiver;",
        "oneTimeRecord",
        "",
        "recordTimber",
        "Landroid/os/CountDownTimer;",
        "getRecordTimber",
        "()Landroid/os/CountDownTimer;",
        "self",
        "getSelf",
        "()Lcom/innioasis/fm/FmRadioService;",
        "setSelf",
        "(Lcom/innioasis/fm/FmRadioService;)V",
        "abandonAudioFocus",
        "",
        "autoScan",
        "",
        "",
        "closeDevice",
        "enableFMAudio",
        "enable",
        "exitFM",
        "getRecordTime",
        "getRecorderState",
        "getRecordingMode",
        "getRecordingName",
        "getStereoMono",
        "initDevice",
        "frequency",
        "initMediaPlay",
        "initService",
        "isDeviceOpen",
        "isPowerUp",
        "isPowerUping",
        "isRecordingCardUnmount",
        "intent",
        "Landroid/content/Intent;",
        "isServiceInit",
        "isSpeakerUsed",
        "onBind",
        "Landroid/os/IBinder;",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "onDestroy",
        "onPlayRecordFileComplete",
        "onRecorderError",
        "error",
        "onRecorderStateChanged",
        "state",
        "onStartCommand",
        "flags",
        "startId",
        "powerDown",
        "powerDownAsync",
        "isSetPlayValue",
        "powerDownStopAsync",
        "powerUpAsync",
        "powerUpFM",
        "registerFMRadioListener",
        "callback",
        "Lcom/innioasis/fm/FMRadioListener;",
        "registerSDListener",
        "remove",
        "hashCode",
        "requestAudioFocus",
        "resetSoundChannel",
        "resumeFMAudio",
        "saveRecording",
        "newName",
        "saveRecordingAsync",
        "setAudioChannel",
        "isMono",
        "setMute",
        "mute",
        "setRecorderListener",
        "fmListener",
        "setRecordingMode",
        "isRecording",
        "setRecordingModeAsync",
        "setSpeakerPhoneOn",
        "type",
        "setStereoMono",
        "startRecording",
        "startRecordingAsync",
        "stopFMFocusLoss",
        "focusState",
        "stopRecording",
        "stopRecordingAsync",
        "stopScan",
        "switchAntennaAsync",
        "antenna",
        "tuneStation",
        "tuneStationAsync",
        "unregisterFMRadioListener",
        "updateAudioFocus",
        "updateAudioFocusAync",
        "Companion",
        "FmRadioServiceHandler",
        "MyBinder",
        "MyReceiver",
        "Record",
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
.field public static final Companion:Lcom/innioasis/fm/FmRadioService$Companion;

.field private static final FM_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final OPTION:Ljava/lang/String; = "option"

.field private static final RECODING_FILE_NAME:Ljava/lang/String; = "name"

.field public static final SAVE_A_RECORDING:Ljava/lang/String; = "com.mediatek.fm.SAVE_A_RECORDING"


# instance fields
.field private final STREAM_FM$delegate:Lkotlin/Lazy;

.field private final TAG:Ljava/lang/String;

.field private listener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDefaultSDCardPath:Ljava/lang/String;

.field private mErrorType:I

.field private mFMPlayer:Landroid/media/MediaPlayer;

.field private mFMRecorder:Lcom/innioasis/fm/FMRecorder;

.field private mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

.field private final mForcedUseForMedia:I

.field private mIsAudioFocusHeld:Z

.field private mIsDeviceOpen:Z

.field private mIsFirst:Z

.field private mIsInRecordingMode:Z

.field private final mIsNativeScanning:Z

.field private mIsPowerUp:Z

.field private mIsPowerUping:Z

.field private mIsScanning:Z

.field private final mIsSeeking:Z

.field private mIsServiceInit:Z

.field private mIsShortAntennaSupport:Z

.field private mIsSpeakerUsed:Z

.field private mIsStopScanCalled:Z

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mRecordState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/innioasis/fm/FmRadioService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSDListener:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private myReceiver:Lcom/innioasis/fm/FmRadioService$MyReceiver;

.field private final oneTimeRecord:J

.field private final recordTimber:Landroid/os/CountDownTimer;

.field private self:Lcom/innioasis/fm/FmRadioService;


# direct methods
.method public static synthetic $r8$lambda$1vHlQwsX94yd_h-cuz11WyB5mEw(Lcom/innioasis/fm/FmRadioService;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/fm/FmRadioService;->resetSoundChannel$lambda-1(Lcom/innioasis/fm/FmRadioService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3Ig9UhcP5Y3B8Z_PRktJhSywUI(Lcom/innioasis/fm/FmRadioService;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/fm/FmRadioService;->mAudioFocusChangeListener$lambda-2(Lcom/innioasis/fm/FmRadioService;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/fm/FmRadioService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/fm/FmRadioService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/fm/FmRadioService;->Companion:Lcom/innioasis/fm/FmRadioService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string/jumbo v0, "y1:FmRadioService"

    .line 48
    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsShortAntennaSupport:Z

    .line 100
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsFirst:Z

    .line 113
    iput-object p0, p0, Lcom/innioasis/fm/FmRadioService;->self:Lcom/innioasis/fm/FmRadioService;

    .line 120
    sget-object v0, Lcom/innioasis/fm/FmRadioService$STREAM_FM$2;->INSTANCE:Lcom/innioasis/fm/FmRadioService$STREAM_FM$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->STREAM_FM$delegate:Lkotlin/Lazy;

    .line 723
    new-instance v0, Lcom/innioasis/fm/FmRadioService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FmRadioService$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/fm/FmRadioService;)V

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, -0x1

    .line 824
    iput v0, p0, Lcom/innioasis/fm/FmRadioService;->mRecordState:I

    .line 827
    iput v0, p0, Lcom/innioasis/fm/FmRadioService;->mErrorType:I

    .line 840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mRecords:Ljava/util/ArrayList;

    .line 1171
    new-instance v0, Lcom/innioasis/fm/FmRadioService$mPlayerErrorListener$1;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FmRadioService$mPlayerErrorListener$1;-><init>(Lcom/innioasis/fm/FmRadioService;)V

    check-cast v0, Landroid/media/MediaPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const-wide/32 v3, 0x36ee80

    .line 1225
    iput-wide v3, p0, Lcom/innioasis/fm/FmRadioService;->oneTimeRecord:J

    .line 1226
    new-instance v0, Lcom/innioasis/fm/FmRadioService$recordTimber$1;

    const-wide/32 v5, 0xea60

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/fm/FmRadioService$recordTimber$1;-><init>(Lcom/innioasis/fm/FmRadioService;JJ)V

    check-cast v0, Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->recordTimber:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static final synthetic access$closeDevice(Lcom/innioasis/fm/FmRadioService;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->closeDevice()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMFMPlayer$p(Lcom/innioasis/fm/FmRadioService;)Landroid/media/MediaPlayer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$getMIsPowerUp$p(Lcom/innioasis/fm/FmRadioService;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    return p0
.end method

.method public static final synthetic access$getMIsSpeakerUsed$p(Lcom/innioasis/fm/FmRadioService;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/innioasis/fm/FmRadioService;->mIsSpeakerUsed:Z

    return p0
.end method

.method public static final synthetic access$initDevice(Lcom/innioasis/fm/FmRadioService;F)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->initDevice(F)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$powerUpFM(Lcom/innioasis/fm/FmRadioService;F)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->powerUpFM(F)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$saveRecording(Lcom/innioasis/fm/FmRadioService;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->saveRecording(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setAudioChannel(Lcom/innioasis/fm/FmRadioService;Z)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->setAudioChannel(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMIsPowerUping$p(Lcom/innioasis/fm/FmRadioService;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUping:Z

    return-void
.end method

.method public static final synthetic access$setMIsScanning$p(Lcom/innioasis/fm/FmRadioService;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsScanning:Z

    return-void
.end method

.method public static final synthetic access$setMIsShortAntennaSupport$p(Lcom/innioasis/fm/FmRadioService;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsShortAntennaSupport:Z

    return-void
.end method

.method public static final synthetic access$setMPausedByTransientLossOfFocus$p(Lcom/innioasis/fm/FmRadioService;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mPausedByTransientLossOfFocus:Z

    return-void
.end method

.method public static final synthetic access$setMute(Lcom/innioasis/fm/FmRadioService;Z)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->setMute(Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setRecordingMode(Lcom/innioasis/fm/FmRadioService;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->setRecordingMode(Z)V

    return-void
.end method

.method public static final synthetic access$startRecording(Lcom/innioasis/fm/FmRadioService;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->startRecording()V

    return-void
.end method

.method public static final synthetic access$stopRecording(Lcom/innioasis/fm/FmRadioService;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->stopRecording()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$tuneStation(Lcom/innioasis/fm/FmRadioService;F)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->tuneStation(F)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateAudioFocus(Lcom/innioasis/fm/FmRadioService;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->updateAudioFocus(I)V

    return-void
.end method

.method private final closeDevice()Z
    .locals 5

    .line 260
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsDeviceOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 262
    iput-boolean v2, p0, Lcom/innioasis/fm/FmRadioService;->mIsDeviceOpen:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    return v0
.end method

.method private final enableFMAudio(Z)V
    .locals 6

    const-string v0, "Exception: Cannot call MediaPlayer prepare."

    .line 563
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iget-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 565
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "mFMPlayer is null in Service.enableFMAudio"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "<<< FMRadioService.enableFMAudio"

    const/4 v2, 0x0

    const-string v4, "mFMPlayer"

    if-nez p1, :cond_4

    .line 571
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 572
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "warning: FM audio is already disabled."

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 575
    :cond_2
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v5, "stop FM audio."

    invoke-virtual {p1, v5, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 577
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 580
    :cond_4
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 581
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "warning: FM audio is already enabled."

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    const/4 p1, 0x1

    .line 585
    :try_start_0
    iget-object v5, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_7
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 586
    iget-object v5, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v2, v5

    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 590
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v3

    invoke-virtual {v4, v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v2

    .line 588
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v3

    invoke-virtual {v4, v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    :goto_2
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Start FM audio."

    invoke-virtual {p1, v2, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final exitFM()V
    .locals 4

    .line 633
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "service.exitFM start"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-eqz v0, :cond_1

    .line 636
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->getState()I

    move-result v0

    const/4 v2, 0x7

    if-ne v2, v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->stopPlayback()V

    .line 639
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Stop playback FMRecorder."

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne v2, v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->discardRecording()V

    .line 642
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Discard Recording."

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsNativeScanning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_3

    .line 648
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->stopScan()Z

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 654
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 655
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "service.exitFM end"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final getSTREAM_FM()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->STREAM_FM$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final initDevice(F)Z
    .locals 3

    .line 330
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.initDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 334
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "acquire wake lock"

    invoke-virtual {p1, v2, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    iget-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->isSpeakerUsed()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 338
    iget-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, p1}, Lcom/innioasis/fm/FmRadioService;->setSpeakerPhoneOn(Z)V

    :cond_1
    const/4 p1, 0x1

    .line 340
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->enableFMAudio(Z)V

    .line 341
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getHeadsetValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/innioasis/y1/utils/Static$Headset;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static$Headset;->isPlugged()Z

    move-result v0

    if-nez v0, :cond_3

    .line 343
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->switchAntenna(I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 344
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Error while trying to switch to short antenna: "

    invoke-virtual {p1, v2, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_2
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p1

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    .line 350
    :cond_3
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FmRadioService;->setMute(Z)I

    .line 351
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.initDevice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    return p1
.end method

.method private static final mAudioFocusChangeListener$lambda-2(Lcom/innioasis/fm/FmRadioService;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 738
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AudioFocus: Audio focus change, but not need handle"

    invoke-virtual {p0, v0, p1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 735
    :cond_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FmRadioService;->updateAudioFocusAync(I)V

    goto :goto_0

    .line 727
    :cond_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FmRadioService;->stopFMFocusLoss(I)V

    goto :goto_0

    .line 731
    :cond_2
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FmRadioService;->stopFMFocusLoss(I)V

    :goto_0
    return-void
.end method

.method public static synthetic powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync(Z)V

    return-void
.end method

.method private final powerUpFM(F)Z
    .locals 9

    .line 300
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.powerUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 302
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.powerUp: already power up "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->requestAudioFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FM can\'t get audio focus when power up"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 311
    :cond_1
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result p1

    if-nez p1, :cond_2

    .line 312
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Error: powerup failed."

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 315
    :cond_2
    iput-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    .line 317
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FmRadioService;->setMute(Z)I

    .line 318
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance p1, Lcom/innioasis/fm/FmRadioService$powerUpFM$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/innioasis/fm/FmRadioService$powerUpFM$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 321
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<< FMRadioService.powerUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    return p1
.end method

.method private final registerSDListener()V
    .locals 4

    .line 1093
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "registerSDListener >>> "

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1095
    new-instance v0, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FmRadioService$registerSDListener$1;-><init>(Lcom/innioasis/fm/FmRadioService;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 1126
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "file"

    .line 1127
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 1128
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1129
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 1130
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1131
    iget-object v2, p0, Lcom/innioasis/fm/FmRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/innioasis/fm/FmRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1132
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "registerSDListener <<< "

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final remove(I)V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "mRecords.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/fm/FmRadioService$Record;

    .line 886
    invoke-virtual {v2}, Lcom/innioasis/fm/FmRadioService$Record;->getMHashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 887
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 890
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final requestAudioFocus()Z
    .locals 4

    .line 710
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsAudioFocusHeld:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 714
    iget-object v2, p0, Lcom/innioasis/fm/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->getSTREAM_FM()I

    move-result v3

    .line 713
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 716
    :goto_0
    iput-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mIsAudioFocusHeld:Z

    return v1
.end method

.method private static final resetSoundChannel$lambda-1(Lcom/innioasis/fm/FmRadioService;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FmRadioService;->setSpeakerPhoneOn(Z)V

    return-void
.end method

.method private final saveRecording(Ljava/lang/String;)V
    .locals 4

    .line 948
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">>> saveRecording"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    const-string v2, "<<< saveRecording"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 951
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Lcom/innioasis/fm/FMRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 952
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 955
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->discardRecording()V

    .line 957
    :cond_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final setAudioChannel(Z)Z
    .locals 4

    .line 600
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 602
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FM is not powered up"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 605
    :cond_0
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result p1

    return p1
.end method

.method private final setMute(Z)I
    .locals 4

    .line 489
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "FM is not powered up"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    return p1

    .line 493
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result p1

    .line 495
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private final setRecordingMode(Z)V
    .locals 4

    .line 974
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> setRecordingMode: isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    iput-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsInRecordingMode:Z

    .line 976
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    const-string v1, "<<< setRecordingMode"

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 978
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->getState()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 979
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FMRecorder;->stopRecording()V

    .line 980
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FMRecorder;->stopPlayback()V

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->resumeFMAudio()V

    .line 983
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 987
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->resetRecorder()V

    .line 989
    :cond_2
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final startRecording()V
    .locals 4

    .line 921
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">>> startRecording"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    .line 923
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sd card file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/fm/FmRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Lcom/innioasis/fm/FMRecorder;

    invoke-direct {v0}, Lcom/innioasis/fm/FMRecorder;-><init>()V

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    .line 926
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p0

    check-cast v2, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FMRecorder;->registerRecorderStateListener(Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->startRecording()V

    .line 929
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<<< startRecording"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final stopFMFocusLoss(I)V
    .locals 2

    const/4 v0, 0x0

    .line 749
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsAudioFocusHeld:Z

    .line 750
    iget-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mIsSeeking:Z

    if-eqz v1, :cond_1

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->stopScan()Z

    .line 756
    :cond_1
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->updateAudioFocusAync(I)V

    .line 757
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "need to stop FM, so powerdown FM."

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-eqz p1, :cond_2

    .line 760
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/fm/FMRecorder;->getState()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 762
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 763
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 764
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->stopRecording()Z

    :cond_2
    return-void
.end method

.method private final stopRecording()Z
    .locals 4

    .line 902
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">>> stopRecording"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-nez v0, :cond_0

    .line 904
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "stopRecording called without a valid recorder!!"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 907
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->stopRecording()V

    .line 908
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<<< stopRecording"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private final tuneStation(F)Z
    .locals 4

    .line 462
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.tune: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_1

    .line 464
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1, p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 468
    :cond_0
    invoke-direct {p0, v2}, Lcom/innioasis/fm/FmRadioService;->setMute(Z)I

    .line 469
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.tune: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 473
    :cond_1
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "FM is not powered up"

    invoke-virtual {v0, v3, v1}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUping:Z

    .line 476
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->powerUpFM(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->initDevice(F)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 480
    :goto_0
    iput-boolean v2, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUping:Z

    .line 481
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.tune: mIsPowerup:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private final updateAudioFocus(I)V
    .locals 5

    .line 790
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FMRadioService.updateAudioFocus"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 805
    :cond_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_GAIN: mPausedByTransientLossOfFocus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/innioasis/fm/FmRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    iget-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mPausedByTransientLossOfFocus:Z

    if-eqz p1, :cond_4

    .line 807
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    goto :goto_0

    .line 793
    :cond_1
    iput-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 794
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIOFOCUS_LOSS: mPausedByTransientLossOfFocus:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/innioasis/fm/FmRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    invoke-static {p0, v1, v3, v2}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V

    goto :goto_0

    .line 798
    :cond_2
    iget-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-eqz p1, :cond_3

    .line 799
    iput-boolean v3, p0, Lcom/innioasis/fm/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 801
    :cond_3
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIOFOCUS_LOSS_TRANSIENT: mPausedByTransientLossOfFocus:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/innioasis/fm/FmRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    invoke-static {p0, v1, v3, v2}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final updateAudioFocusAync(I)V
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 777
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key_audiofocus_changed"

    .line 778
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 779
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v1, "mFmServiceHandler!!.obta\u2026MSGID_AUDIOFOCUS_CHANGED)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 781
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final abandonAudioFocus()V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsAudioFocusHeld:Z

    return-void
.end method

.method public final autoScan()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1207
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "\u6536\u97f3\u673a\u5f00\u59cb\u641c\u7d22"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    :try_start_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->autoscan()[S

    move-result-object v0

    .line 1210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const-string v3, "list"

    .line 1211
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-short v5, v0, v4

    .line 1212
    sget-object v6, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v6}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result v6

    sget-object v7, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v7}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMaxFrequency()F

    move-result v7

    int-to-float v5, v5

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v5, v8

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    cmpg-float v6, v5, v7

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 1213
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1218
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    :cond_2
    return-object v2
.end method

.method public final getMFMRecorder()Lcom/innioasis/fm/FMRecorder;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    return-object v0
.end method

.method public final getMIsFirst()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsFirst:Z

    return v0
.end method

.method public final getRecordTimber()Landroid/os/CountDownTimer;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->recordTimber:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public final getRecordTime()J
    .locals 3

    .line 1029
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->recordTime()J

    move-result-wide v0

    return-wide v0

    .line 1032
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FMRecorder is null !!"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getRecorderState()I
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-eqz v0, :cond_0

    .line 1008
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->getState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getRecordingMode()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsInRecordingMode:Z

    return v0
.end method

.method public final getRecordingName()Ljava/lang/String;
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-eqz v0, :cond_0

    .line 1019
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/fm/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSelf()Lcom/innioasis/fm/FmRadioService;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->self:Lcom/innioasis/fm/FmRadioService;

    return-object v0
.end method

.method public final getStereoMono()Z
    .locals 3

    .line 614
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FMRadioService.getStereoMono"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public final initMediaPlay()V
    .locals 4

    .line 1154
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 1155
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1156
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "mFMPlayer"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/innioasis/fm/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1158
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const-string v3, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->getSTREAM_FM()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1160
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_5

    .line 1161
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1162
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    :cond_5
    return-void
.end method

.method public final initService()V
    .locals 3

    .line 687
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FMRadioService.initService: "

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 688
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsServiceInit:Z

    return-void
.end method

.method public final isDeviceOpen()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method public final isPowerUp()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    return v0
.end method

.method public final isPowerUping()Z
    .locals 3

    .line 438
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isPowerUping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUping:Z

    return v0
.end method

.method public final isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1143
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmount sd card file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1144
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final isServiceInit()Z
    .locals 3

    .line 697
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isServiceInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/innioasis/fm/FmRadioService;->mIsServiceInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsServiceInit:Z

    return v0
.end method

.method public final isSpeakerUsed()Z
    .locals 3

    .line 506
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isEarphoneUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/innioasis/fm/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance p1, Lcom/innioasis/fm/FmRadioService$MyBinder;

    invoke-direct {p1, p0}, Lcom/innioasis/fm/FmRadioService$MyBinder;-><init>(Lcom/innioasis/fm/FmRadioService;)V

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 6

    const-string v0, "setDataSource: "

    .line 167
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "FM  Service  onCreate"

    invoke-virtual {v1, v4, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v1, "audio"

    .line 170
    invoke-virtual {p0, v1}, Lcom/innioasis/fm/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "power"

    .line 172
    invoke-virtual {p0, v1}, Lcom/innioasis/fm/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/os/PowerManager;

    .line 173
    iget-object v3, p0, Lcom/innioasis/fm/FmRadioService;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 176
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 177
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 178
    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const-string v3, "mFMPlayer"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_1
    iget-object v5, p0, Lcom/innioasis/fm/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_2
    const-string v5, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->getSTREAM_FM()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 198
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FmRadioServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v1, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v3, "handlerThread.looper"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;-><init>(Lcom/innioasis/fm/FmRadioService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    .line 202
    new-instance v0, Lcom/innioasis/fm/FmRadioService$MyReceiver;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FmRadioService$MyReceiver;-><init>(Lcom/innioasis/fm/FmRadioService;)V

    iput-object v0, p0, Lcom/innioasis/fm/FmRadioService;->myReceiver:Lcom/innioasis/fm/FmRadioService$MyReceiver;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mediatek.fm.PLAY_FM"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mediatek.fm.PAUSE_FM"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mediatek.fm.PLAY_OR_PAUSE_FM"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mediatek.fm.STOP_FM"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->myReceiver:Lcom/innioasis/fm/FmRadioService$MyReceiver;

    if-nez v1, :cond_4

    const-string v1, "myReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v4, v1

    :goto_0
    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/innioasis/fm/FmRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, ">>> FMRadioService.openDevice"

    invoke-virtual {v0, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsDeviceOpen:Z

    if-nez v0, :cond_5

    .line 214
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsDeviceOpen:Z

    .line 216
    :cond_5
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.openDevice: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/innioasis/fm/FmRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FmRadioService;->setSpeakerPhoneOn(Z)V

    return-void

    :catch_0
    move-exception v1

    .line 193
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v1

    .line 190
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_2
    move-exception v1

    .line 187
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_3
    move-exception v1

    .line 183
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 222
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">>> FMRadioService.onDestroy"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unregister broadcast receiver."

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->myReceiver:Lcom/innioasis/fm/FmRadioService$MyReceiver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "myReceiver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FmRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->abandonAudioFocus()V

    .line 229
    invoke-direct {p0}, Lcom/innioasis/fm/FmRadioService;->exitFM()V

    .line 231
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    if-eqz v0, :cond_1

    .line 232
    iput-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FmRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onPlayRecordFileComplete()V
    .locals 3

    .line 1081
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "service.onPlayRecordFileComplete"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->resumeFMAudio()V

    .line 1083
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->listener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;->onPlayRecordFileComplete()V

    :cond_0
    return-void
.end method

.method public onRecorderError(I)V
    .locals 3

    .line 1060
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecorderError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    const/16 v1, 0x64

    if-ne v1, p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, p1

    .line 1062
    :goto_0
    iput v1, p0, Lcom/innioasis/fm/FmRadioService;->mErrorType:I

    if-ne v0, p1, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->resumeFMAudio()V

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->listener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;->onRecorderError(I)V

    :cond_2
    return-void
.end method

.method public onRecorderStateChanged(I)V
    .locals 3

    .line 1047
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecorderStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    iput p1, p0, Lcom/innioasis/fm/FmRadioService;->mRecordState:I

    .line 1053
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->listener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;->onRecorderStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 249
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.onStartCommand intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public final powerDown()Z
    .locals 5

    .line 388
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">>> FMRadioService.powerDown"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 390
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Error: device is already power down."

    invoke-virtual {v0, v3, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 393
    :cond_0
    invoke-direct {p0, v2}, Lcom/innioasis/fm/FmRadioService;->setMute(Z)I

    .line 394
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FmRadioService;->enableFMAudio(Z)V

    .line 395
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Error: powerdown failed."

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 400
    :cond_1
    iput-boolean v1, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    .line 402
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 405
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "release wake lock"

    invoke-virtual {v0, v4, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_2
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "<<< FMRadioService.powerDown: true"

    invoke-virtual {v0, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final powerDownAsync(Z)V
    .locals 7

    .line 361
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/fm/FmRadioService$powerDownAsync$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/innioasis/fm/FmRadioService$powerDownAsync$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 366
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 367
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 368
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 369
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 370
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 371
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final powerDownStopAsync()V
    .locals 7

    .line 375
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/fm/FmRadioService$powerDownStopAsync$1;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/innioasis/fm/FmRadioService$powerDownStopAsync$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 379
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 380
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 382
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final powerUpAsync(F)V
    .locals 4

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUping:Z

    .line 286
    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 287
    iget-object v1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 288
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "frequency"

    .line 289
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 290
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v0, "mFmServiceHandler!!.obta\u2026r.MSGID_POWERUP_FINISHED)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final registerFMRadioListener(Lcom/innioasis/fm/FMRadioListener;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 851
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 852
    iget-object v2, p0, Lcom/innioasis/fm/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 854
    iget-object v4, p0, Lcom/innioasis/fm/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/innioasis/fm/FmRadioService$Record;

    .line 855
    invoke-virtual {v4}, Lcom/innioasis/fm/FmRadioService$Record;->getMHashCode()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v4, :cond_0

    .line 856
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 859
    :cond_1
    :try_start_1
    new-instance v2, Lcom/innioasis/fm/FmRadioService$Record;

    invoke-direct {v2}, Lcom/innioasis/fm/FmRadioService$Record;-><init>()V

    .line 860
    invoke-virtual {v2, v1}, Lcom/innioasis/fm/FmRadioService$Record;->setMHashCode(I)V

    .line 861
    invoke-virtual {v2, p1}, Lcom/innioasis/fm/FmRadioService$Record;->setMCallback(Lcom/innioasis/fm/FMRadioListener;)V

    .line 862
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final resetSoundChannel()V
    .locals 4

    .line 415
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "\u626c\u58f0\u5668  \u91cd\u7f6e\u4e3a  \u8033\u673a"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    invoke-virtual {p0, v1}, Lcom/innioasis/fm/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 417
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/innioasis/fm/FmRadioService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/innioasis/fm/FmRadioService$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/fm/FmRadioService;)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final resumeFMAudio()V
    .locals 3

    .line 533
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FMRadioService.resumeFMAudio"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsAudioFocusHeld:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 537
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FmRadioService;->enableFMAudio(Z)V

    :cond_0
    return-void
.end method

.method public final saveRecordingAsync(Ljava/lang/String;)V
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 940
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "name"

    .line 941
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v1, "mFmServiceHandler!!.obta\u2026D_SAVERECORDING_FINISHED)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 944
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setMFMRecorder(Lcom/innioasis/fm/FMRecorder;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFMRecorder:Lcom/innioasis/fm/FMRecorder;

    return-void
.end method

.method public final setMIsFirst(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsFirst:Z

    return-void
.end method

.method public final setRecorderListener(Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService;->listener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    return-void
.end method

.method public final setRecordingModeAsync(Z)V
    .locals 3

    .line 964
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 966
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "option"

    .line 967
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 968
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v1, "mFmServiceHandler!!.obta\u2026MSGID_RECORD_MODE_CHANED)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 970
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setSelf(Lcom/innioasis/fm/FmRadioService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService;->self:Lcom/innioasis/fm/FmRadioService;

    return-void
.end method

.method public final setSpeakerPhoneOn(Z)V
    .locals 7

    :try_start_0
    const-string v0, "android.media.AudioSystem"

    .line 518
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForceUse"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 519
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 520
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u626c\u58f0\u5668        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v4, "\u6253\u5f00"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "\u5173\u95ed"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    .line 521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iput-boolean p1, p0, Lcom/innioasis/fm/FmRadioService;->mIsSpeakerUsed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 524
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final setStereoMono(Z)Z
    .locals 3

    .line 625
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result p1

    return p1
.end method

.method public final startRecordingAsync()V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 917
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final stopRecordingAsync()V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 898
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final stopScan()Z
    .locals 5

    .line 663
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">>> FMRadioService.stopScan"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 665
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FM is not powered up"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 670
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 671
    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsNativeScanning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Lcom/innioasis/fm/FmRadioService;->mIsStopScanCalled:Z

    .line 673
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "native stop scan:start"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    move-result v0

    .line 675
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native stop scan:end --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    :goto_1
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.stopScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final switchAntennaAsync(I)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 550
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "switch_anntenna_value"

    .line 551
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v1, "mFmServiceHandler!!.obta\u2026er.MSGID_SWITCH_ANNTENNA)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 554
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final tuneStationAsync(F)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 451
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "frequency"

    .line 452
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 453
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v1, "mFmServiceHandler!!.obta\u2026ener.MSGID_TUNE_FINISHED)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 455
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService;->mFmServiceHandler:Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unregisterFMRadioListener(Lcom/innioasis/fm/FMRadioListener;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/innioasis/fm/FmRadioService;->remove(I)V

    return-void
.end method
