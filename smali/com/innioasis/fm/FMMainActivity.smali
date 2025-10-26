.class public final Lcom/innioasis/fm/FMMainActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "FMMainActivity.kt"

# interfaces
.implements Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/fm/FMMainActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/mediatek/fm/databinding/ActivityFmmainBinding;",
        ">;",
        "Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0015*\u0001\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.J\u0008\u0010/\u001a\u00020,H\u0016J\u0008\u00100\u001a\u00020,H\u0016J\u0008\u00101\u001a\u00020,H\u0016J\u0008\u00102\u001a\u00020,H\u0002J\u0010\u00103\u001a\u00020,2\u0006\u00104\u001a\u000205H\u0016J\u0008\u00106\u001a\u00020\u0002H\u0016J\u0008\u00107\u001a\u00020,H\u0002J\u0008\u00108\u001a\u00020,H\u0002J\u0008\u00109\u001a\u00020,H\u0016J\u0008\u0010:\u001a\u00020,H\u0016J\u0008\u0010;\u001a\u00020,H\u0002J\"\u0010<\u001a\u00020,2\u0006\u0010=\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u00062\u0008\u0010?\u001a\u0004\u0018\u00010@H\u0015J\u0008\u0010A\u001a\u00020,H\u0014J\u0008\u0010B\u001a\u00020,H\u0016J\u0010\u0010C\u001a\u00020,2\u0006\u0010D\u001a\u00020\u0006H\u0016J\u0010\u0010E\u001a\u00020,2\u0006\u0010F\u001a\u00020\u0006H\u0016J\u0008\u0010G\u001a\u00020,H\u0014J\u0008\u0010H\u001a\u00020,H\u0002J\u0008\u0010I\u001a\u00020,H\u0016J\u0012\u0010J\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020.H\u0002J\u0018\u0010K\u001a\u00020,2\u0006\u0010L\u001a\u00020.2\u0006\u0010M\u001a\u00020\u0018H\u0002J\u0010\u0010N\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010O\u001a\u00020,2\u0006\u0010P\u001a\u00020\u0018H\u0002J\u0010\u0010Q\u001a\u00020,2\u0006\u0010R\u001a\u00020\u0018H\u0002J\u0008\u0010S\u001a\u00020,H\u0002J\u0008\u0010T\u001a\u00020,H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006U"
    }
    d2 = {
        "Lcom/innioasis/fm/FMMainActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/mediatek/fm/databinding/ActivityFmmainBinding;",
        "Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;",
        "()V",
        "Resultearch",
        "",
        "VolumeLinearHide",
        "broadcastReceiver",
        "com/innioasis/fm/FMMainActivity$broadcastReceiver$2$1",
        "getBroadcastReceiver",
        "()Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;",
        "broadcastReceiver$delegate",
        "Lkotlin/Lazy;",
        "fmRadioService",
        "Lcom/innioasis/fm/FmRadioService;",
        "fmRadioServiceConnection",
        "Landroid/content/ServiceConnection;",
        "fmRecord",
        "fmSearchTimeout",
        "fmSlideFrequency",
        "handler",
        "Landroid/os/Handler;",
        "isRecord",
        "",
        "isRecordIcon",
        "isSearching",
        "isUsb",
        "job",
        "Lkotlinx/coroutines/Job;",
        "getJob",
        "()Lkotlinx/coroutines/Job;",
        "setJob",
        "(Lkotlinx/coroutines/Job;)V",
        "mIsPlaying",
        "mIsServiceBinded",
        "mIsServiceStarted",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "getProgressDialog",
        "()Landroid/app/ProgressDialog;",
        "setProgressDialog",
        "(Landroid/app/ProgressDialog;)V",
        "allSearch",
        "",
        "frequency",
        "",
        "antiClockwise",
        "clockwise",
        "confirm",
        "connectedService",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "headsetUnplugged",
        "initConfigs",
        "initView",
        "longConfirm",
        "markAll",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onDestroy",
        "onPlayRecordFileComplete",
        "onRecorderError",
        "error",
        "onRecorderStateChanged",
        "state",
        "onResume",
        "plugUSB",
        "quit",
        "scrollRuler",
        "setFrequency",
        "f",
        "isPlay",
        "setPlayFrequency",
        "setSoundRecordingState",
        "isStart",
        "setVolume",
        "isAdd",
        "startSearch",
        "unplugHeadphones",
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
.field private final Resultearch:I

.field private final VolumeLinearHide:I

.field private final broadcastReceiver$delegate:Lkotlin/Lazy;

.field private fmRadioService:Lcom/innioasis/fm/FmRadioService;

.field private fmRadioServiceConnection:Landroid/content/ServiceConnection;

.field private final fmRecord:I

.field private final fmSearchTimeout:I

.field private final fmSlideFrequency:I

.field private final handler:Landroid/os/Handler;

.field private isRecord:Z

.field private isRecordIcon:Z

.field private isSearching:Z

.field private isUsb:Z

.field private job:Lkotlinx/coroutines/Job;

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public static synthetic $r8$lambda$N-lum-IJa5i_pmUwCOtYzYlvE8s(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/fm/FMMainActivity;->allSearch$lambda-6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtWKYyKUyEjVfrVWjI3M1e5PCRo(Lcom/innioasis/fm/FMMainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->headsetUnplugged$lambda-2$lambda-1(Lcom/innioasis/fm/FMMainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsGSZ4SeV1ED8xhlYOwaHhZiQP4(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/y1/utils/Static$Headset;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->headsetUnplugged$lambda-2(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/y1/utils/Static$Headset;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aYsazlW-b1hCJ3CXXWLM-eJ_1go(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/y1/utils/Static$Battery;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->plugUSB$lambda-3(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/y1/utils/Static$Battery;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZvtmzZMrKg3B6zBdGxJ3-hjgig(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity;->allSearch$lambda-5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wFAleK5XbkMR6xrb_8M2y3TyOiw(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity;->connectedService$lambda-4(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    const/16 v0, 0xa

    .line 48
    iput v0, p0, Lcom/innioasis/fm/FMMainActivity;->VolumeLinearHide:I

    const/16 v0, 0x1e

    .line 49
    iput v0, p0, Lcom/innioasis/fm/FMMainActivity;->Resultearch:I

    const/16 v0, 0x28

    .line 50
    iput v0, p0, Lcom/innioasis/fm/FMMainActivity;->fmSearchTimeout:I

    const/16 v0, 0x32

    .line 51
    iput v0, p0, Lcom/innioasis/fm/FMMainActivity;->fmSlideFrequency:I

    const/16 v0, 0x3c

    .line 52
    iput v0, p0, Lcom/innioasis/fm/FMMainActivity;->fmRecord:I

    .line 72
    new-instance v0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->broadcastReceiver$delegate:Lkotlin/Lazy;

    .line 115
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/innioasis/fm/FMMainActivity$handler$1;

    invoke-direct {v1, p0, v0}, Lcom/innioasis/fm/FMMainActivity$handler$1;-><init>(Lcom/innioasis/fm/FMMainActivity;Landroid/os/Looper;)V

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    return-object p0
.end method

.method public static final synthetic access$getFmRecord$p(Lcom/innioasis/fm/FMMainActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/innioasis/fm/FMMainActivity;->fmRecord:I

    return p0
.end method

.method public static final synthetic access$getFmSearchTimeout$p(Lcom/innioasis/fm/FMMainActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/innioasis/fm/FMMainActivity;->fmSearchTimeout:I

    return p0
.end method

.method public static final synthetic access$getFmSlideFrequency$p(Lcom/innioasis/fm/FMMainActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/innioasis/fm/FMMainActivity;->fmSlideFrequency:I

    return p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/innioasis/fm/FMMainActivity;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getVolumeLinearHide$p(Lcom/innioasis/fm/FMMainActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/innioasis/fm/FMMainActivity;->VolumeLinearHide:I

    return p0
.end method

.method public static final synthetic access$initConfigs(Lcom/innioasis/fm/FMMainActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->initConfigs()V

    return-void
.end method

.method public static final synthetic access$isRecord$p(Lcom/innioasis/fm/FMMainActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    return p0
.end method

.method public static final synthetic access$isRecordIcon$p(Lcom/innioasis/fm/FMMainActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/innioasis/fm/FMMainActivity;->isRecordIcon:Z

    return p0
.end method

.method public static final synthetic access$markAll(Lcom/innioasis/fm/FMMainActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->markAll()V

    return-void
.end method

.method public static final synthetic access$scrollRuler(Lcom/innioasis/fm/FMMainActivity;F)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler(F)V

    return-void
.end method

.method public static final synthetic access$setFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/fm/FmRadioService;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    return-void
.end method

.method public static final synthetic access$setFrequency(Lcom/innioasis/fm/FMMainActivity;FZ)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/innioasis/fm/FMMainActivity;->setFrequency(FZ)V

    return-void
.end method

.method public static final synthetic access$setMIsPlaying$p(Lcom/innioasis/fm/FMMainActivity;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->mIsPlaying:Z

    return-void
.end method

.method public static final synthetic access$setPlayFrequency(Lcom/innioasis/fm/FMMainActivity;F)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->setPlayFrequency(F)V

    return-void
.end method

.method public static final synthetic access$setRecordIcon$p(Lcom/innioasis/fm/FMMainActivity;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->isRecordIcon:Z

    return-void
.end method

.method public static final synthetic access$setSoundRecordingState(Lcom/innioasis/fm/FMMainActivity;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->setSoundRecordingState(Z)V

    return-void
.end method

.method private static final allSearch$lambda-5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final allSearch$lambda-6(Landroid/content/DialogInterface;)V
    .locals 2

    .line 715
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "\u5173\u95ed\u641c\u7d22\u5f39\u7a97"

    invoke-virtual {p0, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final connectedService()V
    .locals 5

    .line 534
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110084

    invoke-virtual {p0, v1}, Lcom/innioasis/fm/FMMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const v2, 0x7f1100c7

    invoke-virtual {p0, v2}, Lcom/innioasis/fm/FMMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 533
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 536
    sget-object v1, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda3;->INSTANCE:Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 537
    :cond_0
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/innioasis/fm/FmRadioService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    new-instance v1, Lcom/innioasis/fm/FMMainActivity$connectedService$2;

    invoke-direct {v1, p0}, Lcom/innioasis/fm/FMMainActivity$connectedService$2;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    check-cast v1, Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioServiceConnection:Landroid/content/ServiceConnection;

    .line 589
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/innioasis/fm/FMMainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static final connectedService$lambda-4(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final getBroadcastReceiver()Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->broadcastReceiver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;

    return-object v0
.end method

.method private final headsetUnplugged()V
    .locals 3

    .line 432
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getHeadsetValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final headsetUnplugged$lambda-2(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/y1/utils/Static$Headset;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/innioasis/fm/FMMainActivity;->fmSearchTimeout:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static$Headset;->isPlugged()Z

    move-result p1

    if-nez p1, :cond_1

    .line 436
    iget-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    if-eqz p1, :cond_0

    .line 438
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 439
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "resources.getString(R.string.fm_recording_save)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    new-instance v0, Lcom/innioasis/fm/FMMainActivity$headsetUnplugged$1$dialog$1;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FMMainActivity$headsetUnplugged$1$dialog$1;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, ""

    move-object v0, p1

    .line 439
    invoke-virtual/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;

    move-result-object p1

    .line 459
    new-instance v0, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 461
    iget-object p0, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/innioasis/fm/FmRadioService;->stopRecordingAsync()V

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->unplugHeadphones()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final headsetUnplugged$lambda-2$lambda-1(Lcom/innioasis/fm/FMMainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->unplugHeadphones()V

    return-void
.end method

.method private final initConfigs()V
    .locals 4

    .line 500
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 501
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    sget-object v2, Lcom/innioasis/fm/configs/FrequencyRanges;->INSTANCE:Lcom/innioasis/fm/configs/FrequencyRanges;

    invoke-virtual {v2}, Lcom/innioasis/fm/configs/FrequencyRanges;->getMinFrequencyRange()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 504
    :cond_1
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    sget-object v2, Lcom/innioasis/fm/configs/FrequencyRanges;->INSTANCE:Lcom/innioasis/fm/configs/FrequencyRanges;

    invoke-virtual {v2}, Lcom/innioasis/fm/configs/FrequencyRanges;->getMaxFrequencyRange()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->setMaxFrequency(F)V

    .line 505
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    sget-object v2, Lcom/innioasis/fm/configs/FrequencyRanges;->INSTANCE:Lcom/innioasis/fm/configs/FrequencyRanges;

    invoke-virtual {v2}, Lcom/innioasis/fm/configs/FrequencyRanges;->getMinFrequencyRange()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->setMinFrequency(F)V

    .line 507
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8bbe\u7f6e\u9891\u8c31\u8303\u56f4  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMaxFrequency()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->ruler:Lcom/mediatek/view/FmView;

    sget-object v2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result v2

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMaxFrequency()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/view/FmView;->setScope(FF)V

    .line 509
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u81ea\u52a8\u641c\u53f0 isFirstUse  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->isFirstUse()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentSearchFrequency()Ljava/util/List;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 512
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->startSearch()V

    :cond_2
    const-string v0, "audio"

    .line 520
    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    .line 521
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v1, v1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeSeekbar:Landroid/widget/SeekBar;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 522
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v1, v1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 525
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->setPlayFrequency(F)V

    .line 526
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler(F)V

    return-void
.end method

.method private final markAll()V
    .locals 3

    .line 660
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->ruler:Lcom/mediatek/view/FmView;

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentSearchFrequency()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentRegionalFrequency()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/view/FmView;->setCollect(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final plugUSB()V
    .locals 3

    .line 481
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getBatteryValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final plugUSB$lambda-3(Lcom/innioasis/fm/FMMainActivity;Lcom/innioasis/y1/utils/Static$Battery;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static$Battery;->getPlug()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 485
    iget-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    iget-boolean v1, p0, Lcom/innioasis/fm/FMMainActivity;->isUsb:Z

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 486
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    .line 487
    :cond_0
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->setSoundRecordingState(Z)V

    goto :goto_0

    .line 490
    :cond_1
    iput-boolean v0, p0, Lcom/innioasis/fm/FMMainActivity;->isUsb:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private final scrollRuler(F)V
    .locals 7

    .line 642
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u79fb\u5230 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 644
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/innioasis/fm/FMMainActivity$scrollRuler$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/innioasis/fm/FMMainActivity$scrollRuler$1;-><init>(Lcom/innioasis/fm/FMMainActivity;FLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method static synthetic scrollRuler$default(Lcom/innioasis/fm/FMMainActivity;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 641
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler(F)V

    return-void
.end method

.method private final setFrequency(FZ)V
    .locals 6

    .line 669
    sget-object v0, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v1

    add-float/2addr v1, p1

    const/4 p1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/innioasis/fm/util/FmOther;->myRound$default(Lcom/innioasis/fm/util/FmOther;FIILjava/lang/Object;)F

    move-result v0

    .line 670
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8c03\u6574\u9891\u7387 isPlay"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " frequency"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result v1

    sget-object v2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMaxFrequency()F

    move-result v2

    const/4 v4, 0x1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 672
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v0

    .line 680
    :cond_1
    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 681
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v1, v1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainDiantai:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u8c03\u6574\u9891\u7387 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v5}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 685
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->setPlayFrequency(F)V

    :cond_2
    const/4 p1, 0x0

    .line 687
    invoke-static {p0, p1, v4, v3}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler$default(Lcom/innioasis/fm/FMMainActivity;FILjava/lang/Object;)V

    return-void
.end method

.method private final setPlayFrequency(F)V
    .locals 7

    .line 617
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bbe\u5b9a\u5f53\u524d\u64ad\u653e\u9891\u7387 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainDiantai:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p0, v3}, Lcom/innioasis/fm/FMMainActivity$setPlayFrequency$1;-><init>(FLcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setSoundRecordingState(Z)V
    .locals 7

    .line 814
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f55\u97f3\u72b6\u6001 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    iput-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    .line 817
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p0, v3}, Lcom/innioasis/fm/FMMainActivity$setSoundRecordingState$1;-><init>(ZLcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setVolume(Z)V
    .locals 8

    const-string v0, "audio"

    .line 772
    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    const-class v1, Landroid/media/AudioManager;

    const-string v2, "STREAM_FM"

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 775
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 776
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u97f3\u91cf\u8c03\u8282  nowVolume -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 782
    :goto_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u97f3\u91cf\u8c03\u8282  setVolume -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    invoke-virtual {v0, v1, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string p1, "android.media.AudioSystem"

    .line 786
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 788
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const-string v4, "setStreamVolumeIndex"

    .line 787
    invoke-virtual {p1, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string v1, "clazz.getMethod(\n       \u2026Int::class.java\n        )"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 791
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    const/4 v7, 0x0

    .line 790
    invoke-virtual {p1, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    .line 794
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 793
    invoke-virtual {p1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeSeekbar:Landroid/widget/SeekBar;

    if-lez v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 799
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeLinear:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 800
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeLinear:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_2
    if-lez v2, :cond_3

    .line 804
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeLeft:Landroid/widget/ImageView;

    const v0, 0x7f0e0031

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 806
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainVolumeLeft:Landroid/widget/ImageView;

    const v0, 0x7f0e0032

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 809
    :goto_2
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/innioasis/fm/FMMainActivity;->VolumeLinearHide:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/innioasis/fm/FMMainActivity;->VolumeLinearHide:I

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private final startSearch()V
    .locals 9

    .line 596
    new-instance v6, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f110080

    .line 597
    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.dialog_fm_search)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/innioasis/fm/FMMainActivity$startSearch$1;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FMMainActivity$startSearch$1;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v1, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v0, v6

    move v6, v7

    move-object v7, v8

    .line 596
    invoke-static/range {v0 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private final unplugHeadphones()V
    .locals 3

    .line 886
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    .line 885
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 888
    iget-boolean v0, p0, Lcom/innioasis/fm/FMMainActivity;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 889
    iget-boolean v0, p0, Lcom/innioasis/fm/FMMainActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 891
    iput-boolean v0, p0, Lcom/innioasis/fm/FMMainActivity;->mIsServiceBinded:Z

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final allSearch(F)V
    .locals 9

    .line 697
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110081

    .line 698
    invoke-virtual {p0, v1}, Lcom/innioasis/fm/FMMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const v2, 0x7f1100b2

    .line 699
    invoke-virtual {p0, v2}, Lcom/innioasis/fm/FMMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 696
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 703
    sget-object v1, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 707
    iput-boolean v3, p0, Lcom/innioasis/fm/FMMainActivity;->isSearching:Z

    .line 709
    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1, p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 711
    sget-object p1, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2}, Lcom/innioasis/fm/util/FmOther;->removeSearchFrequency$default(Lcom/innioasis/fm/util/FmOther;FILjava/lang/Object;)Ljava/util/List;

    .line 713
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 714
    :cond_1
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/innioasis/fm/FMMainActivity$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 718
    :cond_2
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance p1, Lcom/innioasis/fm/FMMainActivity$allSearch$3;

    invoke-direct {p1, v0, p0, v2}, Lcom/innioasis/fm/FMMainActivity$allSearch$3;-><init>(ILcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->job:Lkotlinx/coroutines/Job;

    .line 765
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 766
    iget v1, p0, Lcom/innioasis/fm/FMMainActivity;->fmSearchTimeout:I

    iput v1, p1, Landroid/os/Message;->what:I

    .line 767
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 768
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public antiClockwise()V
    .locals 5

    .line 293
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 294
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMMainActivity;->setVolume(Z)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/innioasis/fm/FMMainActivity;->fmSlideFrequency:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 301
    iget v2, p0, Lcom/innioasis/fm/FMMainActivity;->fmSlideFrequency:I

    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    .line 302
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 303
    iget-object v2, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const v0, -0x42333333    # -0.1f

    .line 304
    invoke-direct {p0, v0, v1}, Lcom/innioasis/fm/FMMainActivity;->setFrequency(FZ)V

    :goto_0
    return-void
.end method

.method public clockwise()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 278
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMMainActivity;->setVolume(Z)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/innioasis/fm/FMMainActivity;->fmSlideFrequency:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 285
    iget v2, p0, Lcom/innioasis/fm/FMMainActivity;->fmSlideFrequency:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 286
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 287
    iget-object v1, p0, Lcom/innioasis/fm/FMMainActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const v0, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    .line 288
    invoke-direct {p0, v0, v1}, Lcom/innioasis/fm/FMMainActivity;->setFrequency(FZ)V

    :goto_0
    return-void
.end method

.method public confirm()V
    .locals 11

    .line 315
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 317
    iget-boolean v0, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "\u8be2\u95ee\u4fdd\u5b58"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    new-instance v0, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 321
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "resources.getString(R.string.fm_recording_save)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v1, Lcom/innioasis/fm/FMMainActivity$confirm$1;

    invoke-direct {v1, p0}, Lcom/innioasis/fm/FMMainActivity$confirm$1;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-string v5, ""

    .line 320
    invoke-static/range {v3 .. v10}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 345
    :cond_0
    sget-object v0, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    sget-object v2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/innioasis/fm/util/FmOther;->addFrequency(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6536\u85cf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->markAll()V

    goto :goto_0

    .line 349
    :cond_1
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u53d6\u6d88\u6536\u85cf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    sget-object v0, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/util/FmOther;->removeCurrentFrequency(F)Ljava/util/List;

    .line 351
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->markAll()V

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 357
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->markAll()V

    .line 358
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/innioasis/fm/FMMainActivity$confirm$2;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/innioasis/fm/FMMainActivity$confirm$2;-><init>(Lcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 8

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/innioasis/fm/FMMainActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 386
    :cond_1
    iget-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    if-eqz p1, :cond_2

    .line 388
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 389
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "resources.getString(R.string.fm_recording_save)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lcom/innioasis/fm/FMMainActivity$direction$1;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FMMainActivity$direction$1;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v2, ""

    move-object v0, p1

    .line 388
    invoke-static/range {v0 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->finish()V

    :goto_0
    return-void
.end method

.method public final getJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->job:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getViewBinding()Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/mediatek/fm/databinding/ActivityFmmainBinding;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->soundRecordingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_FM"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->setVolumeControlStream(I)V

    .line 168
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getBatteryValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/Static$Battery;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static$Battery;->getPlug()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/innioasis/fm/FMMainActivity;->isUsb:Z

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.page_fm)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/innioasis/fm/configs/FrequencyRanges;->INSTANCE:Lcom/innioasis/fm/configs/FrequencyRanges;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/configs/FrequencyRanges;->initRanges(Landroid/content/Context;)V

    .line 175
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->headsetUnplugged()V

    .line 176
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->plugUSB()V

    .line 178
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->connectedService()V

    .line 179
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->markAll()V

    .line 181
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->getBroadcastReceiver()Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MY_PLAY_SONG"

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.innioasis.y1.ABOUT_SHUT_DOWN"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.mediatek.fm.SAVE_A_RECORDING"

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 181
    invoke-virtual {p0, v0, v1}, Lcom/innioasis/fm/FMMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    new-instance v0, Lcom/innioasis/fm/FMMainActivity$initView$2;

    invoke-direct {v0, p0}, Lcom/innioasis/fm/FMMainActivity$initView$2;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->setLongConfirmShutDown(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public longConfirm()V
    .locals 5

    .line 369
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "\u524d\u5f80\u83dc\u5355"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/innioasis/fm/MenuActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    iget-boolean v2, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    const-string v3, "isRecord"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u524d\u5f80\u83dc\u5355 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget v1, p0, Lcom/innioasis/fm/FMMainActivity;->Resultearch:I

    invoke-virtual {p0, v0, v1}, Lcom/innioasis/fm/FMMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/innioasis/y1/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    .line 199
    iget p2, p0, Lcom/innioasis/fm/FMMainActivity;->Resultearch:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p1, p2, :cond_10

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p2, "state"

    .line 201
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 202
    :goto_0
    sget-object p3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6536\u5230\u56de\u8c03 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x1

    if-nez p2, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 205
    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/innioasis/fm/FMMainActivity;->setPlayFrequency(F)V

    .line 206
    invoke-static {p0, v0, p3, p1}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler$default(Lcom/innioasis/fm/FMMainActivity;FILjava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->ruler:Lcom/mediatek/view/FmView;

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result p2

    sget-object p3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMaxFrequency()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/mediatek/view/FmView;->setScope(FF)V

    goto/16 :goto_6

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p3, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p2, p2, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 211
    invoke-static {p0, v0, p3, p1}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler$default(Lcom/innioasis/fm/FMMainActivity;FILjava/lang/Object;)V

    .line 212
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->allSearch(F)V

    goto/16 :goto_6

    :cond_4
    :goto_2
    const/4 v2, 0x2

    if-nez p2, :cond_5

    goto/16 :goto_5

    .line 214
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 216
    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentRegionalFrequency()Ljava/util/List;

    move-result-object p2

    .line 217
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p2, p2, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 219
    invoke-static {p0, v0, p3, p1}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler$default(Lcom/innioasis/fm/FMMainActivity;FILjava/lang/Object;)V

    .line 220
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/fm/FMMainActivity;->allSearch(F)V

    goto :goto_4

    .line 222
    :cond_6
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/innioasis/fm/util/FMSharedPreferences;->setLastTimeFrequency(F)V

    .line 224
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->isPowerUp()Z

    move-result p1

    if-ne p1, p3, :cond_7

    goto :goto_3

    :cond_7
    const/4 p3, 0x0

    :goto_3
    if-eqz p3, :cond_8

    .line 226
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->tuneStationAsync(F)V

    goto :goto_4

    .line 228
    :cond_8
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p1, :cond_9

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 231
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->ruler:Lcom/mediatek/view/FmView;

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result p2

    sget-object p3, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p3}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMaxFrequency()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/mediatek/view/FmView;->setScope(FF)V

    goto/16 :goto_6

    :cond_a
    :goto_5
    const/4 p1, 0x3

    if-nez p2, :cond_b

    goto :goto_6

    .line 234
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_10

    .line 235
    iget-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    if-eqz p1, :cond_c

    .line 237
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 238
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1100ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "resources.getString(R.string.fm_recording_save)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance p2, Lcom/innioasis/fm/FMMainActivity$onActivityResult$1;

    invoke-direct {p2, p0}, Lcom/innioasis/fm/FMMainActivity$onActivityResult$1;-><init>(Lcom/innioasis/fm/FMMainActivity;)V

    move-object v5, p2

    check-cast v5, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    const-string v4, ""

    .line 237
    invoke-static/range {v2 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto :goto_6

    .line 260
    :cond_c
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p1, :cond_d

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 261
    :cond_d
    invoke-direct {p0, p3}, Lcom/innioasis/fm/FMMainActivity;->setSoundRecordingState(Z)V

    .line 262
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->startRecordingAsync()V

    .line 263
    :cond_e
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->getRecordTimber()Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 264
    :cond_f
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->getRecordTimber()Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 271
    :cond_10
    :goto_6
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->markAll()V

    .line 272
    invoke-direct {p0, v0, v1}, Lcom/innioasis/fm/FMMainActivity;->setFrequency(FZ)V

    :cond_11
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 831
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onDestroy()V

    .line 832
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 834
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->getBroadcastReceiver()Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 835
    iget-boolean v0, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 838
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMMainActivity;->setSoundRecordingState(Z)V

    .line 839
    iget-object v2, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    .line 840
    :cond_4
    iget-object v2, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Lcom/innioasis/fm/FmRadioService;->setRecorderListener(Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;)V

    .line 841
    :cond_5
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "\u9500\u6bc1\uff01\uff01\uff01"

    invoke-virtual {v1, v2, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayRecordFileComplete()V
    .locals 0

    return-void
.end method

.method public onRecorderError(I)V
    .locals 4

    .line 849
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecorderError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100a9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100ac

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 861
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100ab

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 859
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100aa

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string/jumbo v1, "when (error) {\n         \u2026     else -> \"\"\n        }"

    .line 857
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 869
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 871
    :cond_5
    iget-boolean p1, p0, Lcom/innioasis/fm/FMMainActivity;->isRecord:Z

    if-eqz p1, :cond_7

    .line 872
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->fmRadioService:Lcom/innioasis/fm/FmRadioService;

    if-eqz p1, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    .line 874
    :cond_7
    invoke-direct {p0, v2}, Lcom/innioasis/fm/FMMainActivity;->setSoundRecordingState(Z)V

    return-void
.end method

.method public onRecorderStateChanged(I)V
    .locals 3

    .line 845
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecorderStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 898
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 899
    invoke-direct {p0}, Lcom/innioasis/fm/FMMainActivity;->markAll()V

    .line 900
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getNeedShowScanDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/innioasis/fm/FMMainActivity;->finish()V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final setJob(Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method
