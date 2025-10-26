.class public final Lcom/innioasis/y1/activity/SettingActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/SettingActivity$SettingItem;,
        Lcom/innioasis/y1/activity/SettingActivity$SleepTime;,
        Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;,
        Lcom/innioasis/y1/activity/SettingActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivitySettingBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingActivity.kt\ncom/innioasis/y1/activity/SettingActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1508:1\n766#2:1509\n857#2,2:1510\n1851#2,2:1512\n1851#2,2:1514\n1851#2,2:1516\n1851#2,2:1522\n1851#2,2:1524\n13543#3,2:1518\n13543#3,2:1520\n*S KotlinDebug\n*F\n+ 1 SettingActivity.kt\ncom/innioasis/y1/activity/SettingActivity\n*L\n259#1:1509\n259#1:1510,2\n435#1:1512,2\n779#1:1514,2\n1231#1:1516,2\n1428#1:1522,2\n1494#1:1524,2\n1237#1:1518,2\n1246#1:1520,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003vwxB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u001bH\u0002J\u0008\u0010&\u001a\u00020#H\u0002J\u0008\u0010\'\u001a\u00020#H\u0002J\u0008\u0010(\u001a\u00020#H\u0002J\u0008\u0010)\u001a\u00020#H\u0002J\u0008\u0010*\u001a\u00020#H\u0002J\u0008\u0010+\u001a\u00020#H\u0002J\u0008\u0010,\u001a\u00020#H\u0002J\u0008\u0010-\u001a\u00020#H\u0002J\u0008\u0010.\u001a\u00020#H\u0002J\u0008\u0010/\u001a\u00020#H\u0002J\u0008\u00100\u001a\u00020#H\u0002J\u0008\u00101\u001a\u00020#H\u0002J\u0008\u00102\u001a\u00020#H\u0002J\u0008\u00103\u001a\u00020#H\u0002J\u0008\u00104\u001a\u00020#H\u0002J\u0008\u00105\u001a\u00020#H\u0016J\u0008\u00106\u001a\u00020#H\u0016J\u0010\u00107\u001a\u00020#2\u0006\u00108\u001a\u000209H\u0016J\u0008\u0010:\u001a\u00020\u0002H\u0016J\u0008\u0010;\u001a\u00020#H\u0016J\u0008\u0010<\u001a\u00020#H\u0016J\"\u0010=\u001a\u00020#2\u0006\u0010>\u001a\u00020\r2\u0006\u0010?\u001a\u00020\r2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0015J\u0012\u0010B\u001a\u00020#2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0014J\u0008\u0010E\u001a\u00020#H\u0014J\u0008\u0010F\u001a\u00020#H\u0003J\u0008\u0010G\u001a\u00020#H\u0016J\u0010\u0010H\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001bH\u0007J\u0010\u0010I\u001a\u00020#2\u0006\u0010J\u001a\u00020\u001bH\u0003J\u0010\u0010K\u001a\u00020#2\u0006\u0010L\u001a\u00020MH\u0002J\u0008\u0010N\u001a\u00020#H\u0002J\u0008\u0010O\u001a\u00020#H\u0002J\u0008\u0010P\u001a\u00020#H\u0002J\u0008\u0010Q\u001a\u00020#H\u0002J\u0010\u0010R\u001a\u00020#2\u0006\u0010S\u001a\u00020TH\u0002J\u0018\u0010U\u001a\u00020#2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020WH\u0002J\u0012\u0010Y\u001a\u00020#2\u0008\u0008\u0002\u0010Z\u001a\u00020\rH\u0002J\u0008\u0010[\u001a\u00020#H\u0002J\u0008\u0010\\\u001a\u00020#H\u0002J\u0008\u0010]\u001a\u00020#H\u0002J\u0008\u0010^\u001a\u00020#H\u0002J\u0008\u0010_\u001a\u00020#H\u0002J\u0008\u0010`\u001a\u00020#H\u0003J\u0008\u0010a\u001a\u00020#H\u0002J\u0008\u0010b\u001a\u00020#H\u0002J\u0008\u0010c\u001a\u00020#H\u0002J\u0008\u0010d\u001a\u00020#H\u0002J\u0008\u0010e\u001a\u00020#H\u0002J\u0008\u0010f\u001a\u00020#H\u0003J\u0008\u0010g\u001a\u00020#H\u0002J\u0008\u0010h\u001a\u00020#H\u0002J\u0008\u0010i\u001a\u00020#H\u0003J\u0008\u0010j\u001a\u00020#H\u0002J\u0008\u0010k\u001a\u00020#H\u0002J\u0008\u0010l\u001a\u00020#H\u0002J\u0008\u0010m\u001a\u00020#H\u0002J\u0008\u0010n\u001a\u00020#H\u0002J\u0008\u0010o\u001a\u00020#H\u0002J\u0008\u0010p\u001a\u00020#H\u0002J\u0008\u0010q\u001a\u00020#H\u0003J\u0014\u0010r\u001a\u00020#2\n\u0008\u0002\u0010s\u001a\u0004\u0018\u00010tH\u0002J\u0008\u0010u\u001a\u00020#H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000R!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\t\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000R!\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001c\u0010\u0017R\u0014\u0010\u001e\u001a\u0008\u0018\u00010\u001fR\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006y"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/SettingActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivitySettingBinding;",
        "()V",
        "adapter",
        "com/innioasis/y1/activity/SettingActivity$adapter$2$1",
        "getAdapter",
        "()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "brightnessRequestCode",
        "",
        "clearDialog",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "clearFlag",
        "clearTotal",
        "eqRequestCode",
        "sleepTimeList",
        "",
        "Lcom/innioasis/y1/activity/SettingActivity$SleepTime;",
        "getSleepTimeList",
        "()Ljava/util/List;",
        "sleepTimeList$delegate",
        "timeRequestCode",
        "timeShutdownList",
        "",
        "getTimeShutdownList",
        "timeShutdownList$delegate",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "wallpaperRequestCode",
        "antiClockwise",
        "",
        "backlightTimeUtil",
        "text",
        "clickBacklight",
        "clickBatteryPercentage",
        "clickChangeTheme",
        "clickClearCache",
        "clickFileExtensions",
        "clickKeyLock",
        "clickRepeat",
        "clickReset",
        "clickRingtone",
        "clickShuffle",
        "clickShutdown",
        "clickSortLogic",
        "clickSortOrder",
        "clickTimeShutdown",
        "clickVibrator",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "profile",
        "quit",
        "refreshConfig",
        "refreshRight",
        "leftText",
        "removeDir",
        "dir",
        "Ljava/io/File;",
        "resetAllSettings",
        "resetOtherSettings",
        "selectLauncher",
        "setRecyclerData",
        "setScreenOn",
        "time",
        "",
        "setVibratorRingtone",
        "ringtone",
        "",
        "vibrator",
        "startShutdown",
        "minute",
        "test",
        "updateAbout",
        "updateBacklight",
        "updateBatteryPercentage",
        "updateBluetooth",
        "updateBrightness",
        "updateChangeTheme",
        "updateClearCache",
        "updateEq",
        "updateFileExtensions",
        "updateKeyLock",
        "updateLanguage",
        "updateLauncher",
        "updateRepeat",
        "updateReset",
        "updateRingtone",
        "updateSettingTime",
        "updateShuffle",
        "updateShutdown",
        "updateSortLogic",
        "updateSortOrder",
        "updateTest",
        "updateTimeShutdown",
        "updateVibrator",
        "textView",
        "Landroid/widget/TextView;",
        "updateWallpaper",
        "ClearUserDataObserver",
        "SettingItem",
        "SleepTime",
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
.field private final adapter$delegate:Lkotlin/Lazy;

.field private audioManager:Landroid/media/AudioManager;

.field private final brightnessRequestCode:I

.field private clearDialog:Lcom/innioasis/y1/utils/LoadingDialog;

.field private clearFlag:I

.field private clearTotal:I

.field private final eqRequestCode:I

.field private final sleepTimeList$delegate:Lkotlin/Lazy;

.field private final timeRequestCode:I

.field private final timeShutdownList$delegate:Lkotlin/Lazy;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private final wallpaperRequestCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    const/4 v0, 0x4

    .line 81
    iput v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->brightnessRequestCode:I

    const/16 v0, 0xa

    .line 82
    iput v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->timeRequestCode:I

    const/4 v0, 0x5

    .line 83
    iput v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->eqRequestCode:I

    const/4 v0, 0x6

    .line 84
    iput v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->wallpaperRequestCode:I

    .line 90
    new-instance v0, Lcom/innioasis/y1/activity/SettingActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2;-><init>(Lcom/innioasis/y1/activity/SettingActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 699
    new-instance v0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;-><init>(Lcom/innioasis/y1/activity/SettingActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->sleepTimeList$delegate:Lkotlin/Lazy;

    .line 791
    new-instance v0, Lcom/innioasis/y1/activity/SettingActivity$timeShutdownList$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/SettingActivity$timeShutdownList$2;-><init>(Lcom/innioasis/y1/activity/SettingActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->timeShutdownList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/y1/activity/SettingActivity;)Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClearDialog$p(Lcom/innioasis/y1/activity/SettingActivity;)Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/innioasis/y1/activity/SettingActivity;->clearDialog:Lcom/innioasis/y1/utils/LoadingDialog;

    return-object p0
.end method

.method public static final synthetic access$getClearFlag$p(Lcom/innioasis/y1/activity/SettingActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/innioasis/y1/activity/SettingActivity;->clearFlag:I

    return p0
.end method

.method public static final synthetic access$getClearTotal$p(Lcom/innioasis/y1/activity/SettingActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/innioasis/y1/activity/SettingActivity;->clearTotal:I

    return p0
.end method

.method public static final synthetic access$getTimeShutdownList(Lcom/innioasis/y1/activity/SettingActivity;)Ljava/util/List;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWakeLock$p(Lcom/innioasis/y1/activity/SettingActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/innioasis/y1/activity/SettingActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static final synthetic access$refreshRight(Lcom/innioasis/y1/activity/SettingActivity;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->refreshRight(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$resetAllSettings(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->resetAllSettings()V

    return-void
.end method

.method public static final synthetic access$resetOtherSettings(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->resetOtherSettings()V

    return-void
.end method

.method public static final synthetic access$setClearFlag$p(Lcom/innioasis/y1/activity/SettingActivity;I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/innioasis/y1/activity/SettingActivity;->clearFlag:I

    return-void
.end method

.method public static final synthetic access$setWakeLock$p(Lcom/innioasis/y1/activity/SettingActivity;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static final synthetic access$startShutdown(Lcom/innioasis/y1/activity/SettingActivity;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->startShutdown(I)V

    return-void
.end method

.method public static final synthetic access$updateTimeShutdown(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateTimeShutdown()V

    return-void
.end method

.method private final backlightTimeUtil(Ljava/lang/String;)I
    .locals 4

    const v0, 0x7f110002

    .line 1264
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "s"

    const/4 v3, 0x0

    .line 1265
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eqz v0, :cond_1

    .line 1266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 1268
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    :goto_0
    mul-int/lit16 p1, p1, 0x3e8

    :goto_1
    return p1
.end method

.method private final clickBacklight()V
    .locals 7

    .line 759
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 761
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getSleepTimeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 762
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getSleepTimeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getS()I

    move-result v4

    if-ne v4, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 763
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getSleepTimeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    .line 765
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getSleepTimeList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getS()I

    move-result v4

    .line 764
    invoke-static {v5, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBacklight()V

    return-void
.end method

.method private final clickBatteryPercentage()V
    .locals 2

    .line 983
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getBatteryPercentage()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setBatteryPercentage(Z)V

    .line 984
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBatteryPercentage()V

    .line 985
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBatteryPercentageBase()V

    return-void
.end method

.method private final clickChangeTheme()V
    .locals 3

    .line 1459
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final clickClearCache()V
    .locals 9

    .line 1412
    new-instance v8, Lcom/innioasis/y1/utils/LoadingDialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v0, 0x7f110020

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.add_req_clearing_cache)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/innioasis/y1/utils/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Lcom/innioasis/y1/activity/SettingActivity;->clearDialog:Lcom/innioasis/y1/utils/LoadingDialog;

    .line 1413
    invoke-virtual {v8}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    .line 1414
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v2, "packageManager.getInstalledPackages(0)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    :try_start_0
    const-class v2, Landroid/content/pm/PackageManager;

    const-string v3, "deleteApplicationCacheFiles"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 1419
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Landroid/content/pm/IPackageDataObserver;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1417
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "PackageManager::class.ja\u2026:class.java\n            )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/innioasis/y1/activity/SettingActivity;->clearTotal:I

    .line 1427
    iput v1, p0, Lcom/innioasis/y1/activity/SettingActivity;->clearFlag:I

    .line 1428
    check-cast v0, Ljava/lang/Iterable;

    .line 1522
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1429
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v6, v1

    new-instance v3, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;-><init>(Lcom/innioasis/y1/activity/SettingActivity;)V

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1423
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "dl"

    invoke-virtual {v2, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final clickFileExtensions()V
    .locals 2

    .line 1482
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isFileExtensions()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setFileExtensions(Z)V

    .line 1483
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateFileExtensions()V

    return-void
.end method

.method private final clickKeyLock()V
    .locals 3

    .line 1331
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isKeyLock()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setKeyLock(Z)V

    .line 1332
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickKeyLock isKeyLock value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isKeyLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateKeyLock()V

    return-void
.end method

.method private final clickRepeat()V
    .locals 3

    .line 594
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicRepeatMode()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setMusicRepeatMode(I)V

    .line 602
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v1, 0x7f110188

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.setting_repeat_one)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setMusicRepeatMode(I)V

    .line 608
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v1, 0x7f110187

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.setting_repeat_off)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setMusicRepeatMode(I)V

    .line 597
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v1, 0x7f110186

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.setting_repeat_all)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 611
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateRepeat()V

    return-void
.end method

.method private final clickReset()V
    .locals 7

    .line 1139
    new-instance v6, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f11016d

    .line 1140
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.reset_dialog_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11016c

    .line 1141
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.reset_dialog_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    new-instance v2, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;-><init>(Lcom/innioasis/y1/activity/SettingActivity;)V

    check-cast v2, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    .line 1139
    invoke-virtual {v6, v0, v1, v2}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitleWarning(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;)V

    return-void
.end method

.method private final clickRingtone()V
    .locals 3

    .line 1004
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getRingtone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1005
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setRingtone(Z)V

    .line 1006
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->profile()V

    const-string v1, "vb.rightImage"

    if-eqz v0, :cond_0

    .line 1008
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080106

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1009
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1011
    :cond_0
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080105

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1012
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (b) {\n            vb.\u2026g(R.string.Off)\n        }"

    .line 1011
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final clickShuffle()V
    .locals 4

    .line 581
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicIsShuffle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 582
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    if-eqz v0, :cond_0

    const v2, 0x7f11013e

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.on)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f11013d

    .line 583
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.off)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    :goto_0
    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 584
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setMusicIsShuffle(Z)V

    .line 585
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateShuffle()V

    return-void
.end method

.method private final clickShutdown()V
    .locals 9

    .line 960
    new-instance v6, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f11018a

    .line 961
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(R.string.setting_shutdown)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f11007c

    .line 962
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.dialog_confirm_shutdown)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 963
    new-instance v0, Lcom/innioasis/y1/activity/SettingActivity$clickShutdown$1;

    invoke-direct {v0}, Lcom/innioasis/y1/activity/SettingActivity$clickShutdown$1;-><init>()V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v0, v6

    move v6, v7

    move-object v7, v8

    .line 960
    invoke-static/range {v0 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private final clickSortLogic()V
    .locals 2

    .line 1314
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortLogic(Z)V

    .line 1315
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateSortLogic()V

    return-void
.end method

.method private final clickSortOrder()V
    .locals 3

    .line 1276
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortLogic(Z)V

    goto :goto_0

    .line 1278
    :cond_0
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortByName(Z)V

    .line 1280
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortLogic(Z)V

    goto :goto_0

    .line 1281
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1282
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortLogic(Z)V

    goto :goto_0

    .line 1284
    :cond_2
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortByName(Z)V

    .line 1285
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortLogic(Z)V

    .line 1287
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateSortOrder()V

    return-void
.end method

.method private final clickTimeShutdown()V
    .locals 3

    .line 802
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getShutdownTime()I

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_6

    const/16 v2, 0x14

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1e

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x78

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 834
    :cond_0
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 835
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "timeShutdownList[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 829
    :cond_1
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 830
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "timeShutdownList[6]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 824
    :cond_2
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 825
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "timeShutdownList[5]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 819
    :cond_3
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 820
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "timeShutdownList[4]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    :cond_4
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 815
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "timeShutdownList[3]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_5
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 810
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "timeShutdownList[2]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_6
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 805
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getTimeShutdownList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "timeShutdownList[1]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 838
    :goto_0
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getShutdownTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->startShutdown(I)V

    .line 839
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateTimeShutdown()V

    return-void
.end method

.method private final clickVibrator()V
    .locals 3

    .line 1022
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVibrator()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1023
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setVibrator(Z)V

    .line 1024
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->profile()V

    const-string v1, "vb.rightImage"

    if-eqz v0, :cond_0

    .line 1026
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08011c

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1027
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1029
    :cond_0
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08011b

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1030
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (b) {\n            vb.\u2026g(R.string.Off)\n        }"

    .line 1029
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    return-object v0
.end method

.method private final getSleepTimeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/SettingActivity$SleepTime;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->sleepTimeList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getTimeShutdownList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->timeShutdownList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final profile()V
    .locals 2

    .line 1072
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateVibratorRingtone()V

    .line 1074
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getRingtone()Z

    move-result v0

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVibrator()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->setVibratorRingtone(ZZ)V

    return-void
.end method

.method private final refreshRight(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f110177

    .line 481
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->bztView:Lcom/innioasis/y1/utils/AboutView;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/AboutView;->setVisibility(I)V

    .line 483
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->bztView:Lcom/innioasis/y1/utils/AboutView;

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/utils/AboutView;->setVisibility(I)V

    .line 486
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "test"

    .line 500
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateTest()V

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f1100d9

    .line 501
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBluetooth()V

    goto/16 :goto_1

    :cond_2
    const v1, 0x7f11019d

    .line 502
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateShuffle()V

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f11016a

    .line 503
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateRepeat()V

    goto/16 :goto_1

    :cond_4
    const v1, 0x7f110190

    .line 504
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateTimeShutdown()V

    goto/16 :goto_1

    :cond_5
    const v1, 0x7f11017a

    .line 505
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBrightness()V

    goto/16 :goto_1

    :cond_6
    const v1, 0x7f11018c

    .line 506
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBacklight()V

    goto/16 :goto_1

    .line 507
    :cond_7
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateAbout()V

    goto/16 :goto_1

    :cond_8
    const v0, 0x7f110184

    .line 508
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateLanguage()V

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f110189

    .line 509
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateReset()V

    goto/16 :goto_1

    :cond_a
    const v0, 0x7f11017d

    .line 510
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateSettingTime()V

    goto/16 :goto_1

    :cond_b
    const v0, 0x7f11017e

    .line 511
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateEq()V

    goto/16 :goto_1

    :cond_c
    const v0, 0x7f11017c

    .line 512
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateRingtone()V

    goto/16 :goto_1

    :cond_d
    const v0, 0x7f110193

    .line 513
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/innioasis/y1/activity/SettingActivity;->updateVibrator$default(Lcom/innioasis/y1/activity/SettingActivity;Landroid/widget/TextView;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    const v0, 0x7f11018a

    .line 514
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateShutdown()V

    goto/16 :goto_1

    :cond_f
    const v0, 0x7f110179

    .line 515
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBatteryPercentage()V

    goto/16 :goto_1

    :cond_10
    const v0, 0x7f110194

    .line 516
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateWallpaper()V

    goto/16 :goto_1

    :cond_11
    const v0, 0x7f11018e

    .line 517
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateSortOrder()V

    goto :goto_1

    :cond_12
    const v0, 0x7f11018d

    .line 518
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateSortLogic()V

    goto :goto_1

    :cond_13
    const v0, 0x7f110181

    .line 519
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateKeyLock()V

    goto :goto_1

    :cond_14
    const v0, 0x7f11001e

    .line 520
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateClearCache()V

    goto :goto_1

    :cond_15
    const v0, 0x7f11017b

    .line 521
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateChangeTheme()V

    goto :goto_1

    :cond_16
    const v0, 0x7f110180

    .line 522
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateFileExtensions()V

    goto :goto_1

    :cond_17
    const v0, 0x7f110185

    .line 523
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateLauncher()V

    :cond_18
    :goto_1
    return-void
.end method

.method private final removeDir(Ljava/io/File;)V
    .locals 5

    .line 1245
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1520
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-string v4, "it"

    .line 1247
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/innioasis/y1/activity/SettingActivity;->removeDir(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1250
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private final resetAllSettings()V
    .locals 7

    .line 1225
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {v0}, Lcom/innioasis/music/util/Other;->clearPairedBle()V

    .line 1227
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "/data/data/com.innioasis.y1"

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "cache"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "databases"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "files"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "shared_prefs"

    aput-object v4, v1, v2

    .line 1228
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1230
    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->clear()V

    .line 1231
    check-cast v1, Ljava/lang/Iterable;

    .line 1516
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1232
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1233
    invoke-direct {p0, v4}, Lcom/innioasis/y1/activity/SettingActivity;->removeDir(Ljava/io/File;)V

    goto :goto_1

    .line 1236
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/sdcard1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1518
    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    const-string v4, "it"

    .line 1238
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/innioasis/y1/activity/SettingActivity;->removeDir(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1240
    :cond_3
    sget-object v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->Companion:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "/storage/sdcard0"

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$Companion;->formatStorage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final resetOtherSettings()V
    .locals 5

    .line 1194
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->updateLanguage(Ljava/util/Locale;)V

    .line 1197
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    .line 1196
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1200
    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->setVibratorRingtone(ZZ)V

    .line 1202
    new-instance v2, Ljava/util/Date;

    sget-wide v3, Landroid/os/Build;->TIME:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/16 v3, 0xc

    .line 1203
    invoke-virtual {v2, v3}, Ljava/util/Date;->setHours(I)V

    .line 1204
    invoke-virtual {v2, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 1205
    invoke-virtual {v2, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 1206
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    const-string v2, "audio"

    .line 1210
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x3

    .line 1211
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 1212
    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1214
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0x80

    .line 1213
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1216
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->initSort()V

    .line 1217
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setKeyLock(Z)V

    return-void
.end method

.method private final selectLauncher()V
    .locals 4

    .line 1489
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1490
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 1491
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 1493
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "pm.queryIntentActivities\u2026nager.MATCH_DEFAULT_ONLY)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1494
    check-cast v2, Ljava/lang/Iterable;

    .line 1524
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1495
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1496
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 1498
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1499
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final setRecyclerData()V
    .locals 10

    .line 160
    new-instance v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v3

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    .line 171
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v6, 0x7f11018a

    .line 172
    invoke-virtual {p0, v6}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.setting_shutdown)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {v5, v6, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 174
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f110190

    .line 175
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.setting_time_shutdown)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v5, v4, v2

    .line 179
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f11019d

    .line 180
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.shuffle)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 182
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f11016a

    .line 183
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.repeat)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v7, 0x3

    aput-object v5, v4, v7

    .line 185
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f11017e

    .line 186
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.setting_eq)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {v5, v7, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v7, 0x4

    aput-object v5, v4, v7

    .line 188
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f110180

    .line 189
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.setting_file_extensions)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v7, 0x5

    aput-object v5, v4, v7

    .line 203
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f110181

    .line 204
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.setting_key_lock)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v7, 0x6

    aput-object v5, v4, v7

    .line 208
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f11017c

    .line 209
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.setting_clicker)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v7, 0x7

    aput-object v5, v4, v7

    .line 213
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f110193

    .line 214
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.setting_vibrate)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v7, 0x8

    aput-object v5, v4, v7

    .line 218
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f110194

    .line 219
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.setting_wallpaper)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {v5, v7, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v7, 0x9

    aput-object v5, v4, v7

    .line 221
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f11018c

    .line 222
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.setting_sleeptime)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v7, 0xa

    aput-object v5, v4, v7

    .line 226
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f11017a

    .line 227
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.setting_brightness)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {v5, v7, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v7, 0xb

    aput-object v5, v4, v7

    .line 229
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v7, 0x7f110179

    .line 230
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.setting_battery_percentage)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-direct {v5, v8, v6, v7}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v6, 0xc

    aput-object v5, v4, v6

    .line 234
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v6, 0x7f11017d

    .line 235
    invoke-virtual {p0, v6}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.setting_data_and_time)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {v5, v6, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v6, 0xd

    aput-object v5, v4, v6

    .line 237
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v6, 0x7f11017b

    .line 238
    invoke-virtual {p0, v6}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.setting_change_theme)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-direct {v5, v6, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v6, 0xe

    aput-object v5, v4, v6

    .line 242
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v6, 0x7f110184

    .line 243
    invoke-virtual {p0, v6}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.setting_language)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {v5, v6, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v6, 0xf

    aput-object v5, v4, v6

    .line 245
    sget-object v5, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v5}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v5, 0x7f110185

    .line 246
    invoke-virtual {p0, v5}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.setting_launcher)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {v0, v5, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    const/16 v5, 0x10

    aput-object v0, v4, v5

    const/16 v0, 0x11

    .line 250
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v6, 0x7f110189

    .line 251
    invoke-virtual {p0, v6}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.setting_reset_settings)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {v5, v6, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v5, v4, v0

    const/16 v0, 0x12

    .line 253
    new-instance v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v6, 0x7f11001e

    invoke-virtual {p0, v6}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.add_req_clear_cache)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v5, v4, v0

    const/16 v0, 0x13

    .line 254
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    const v5, 0x7f110177

    .line 255
    invoke-virtual {p0, v5}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.setting_about)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, v5}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(R.string.setting_about)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/innioasis/y1/activity/SettingActivity;->refreshConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-direct {v1, v6, v2, v5}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v1, v4, v0

    .line 162
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1510
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    .line 260
    invoke-virtual {v5}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1511
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 1509
    check-cast v1, Ljava/util/Collection;

    .line 161
    invoke-virtual {v3, v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    return-void
.end method

.method private final setScreenOn(J)V
    .locals 7

    const-string v0, "alarm"

    .line 947
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/AlarmManager;

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 950
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    .line 951
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/innioasis/y1/receiver/AutoShutdownReceiver;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    .line 949
    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 953
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    const/4 p1, 0x2

    .line 955
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private final setVibratorRingtone(ZZ)V
    .locals 10

    const-string v0, "mtk_audioprofile_general"

    const-string v1, "mProfileManager::class.j\u2026:class.java\n            )"

    .line 1037
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u60c5\u666f\u6a21\u5f0f  \u6309\u952e\u97f3\u72b6\u6001 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  \u9707\u52a8\u72b6\u6001 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string v3, "getSystemService"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 1042
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "Activity::class.java.get\u2026ice\", String::class.java)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    const-class v3, Landroid/content/Context;

    const-string v6, "AUDIOPROFILE_SERVICE"

    .line 1044
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v6, "Context::class.java.getD\u2026d(\"AUDIOPROFILE_SERVICE\")"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1049
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "setHapticFeedbackEnabled"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    .line 1050
    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    .line 1049
    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 1053
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v6, v5

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v3, "setSoundEffectEnabled"

    new-array v6, v7, [Ljava/lang/Class;

    .line 1057
    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v5

    .line 1056
    invoke-virtual {p2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 1060
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p2, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1062
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, p1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final startShutdown(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 890
    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->setScreenOn(J)V

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 892
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 894
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 895
    :cond_0
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1, v2}, Lcom/innioasis/y1/Y1Application$Companion;->setTimer(Landroid/os/CountDownTimer;)V

    .line 897
    :cond_1
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    return-void

    .line 900
    :cond_2
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 901
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 902
    :cond_3
    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/Y1Application$Companion;->setTimer(Landroid/os/CountDownTimer;)V

    .line 905
    :cond_4
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    new-instance v3, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;

    invoke-direct {v3, v0, v1, p0}, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;-><init>(JLcom/innioasis/y1/activity/SettingActivity;)V

    check-cast v3, Landroid/os/CountDownTimer;

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/Y1Application$Companion;->setTimer(Landroid/os/CountDownTimer;)V

    .line 942
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 943
    :cond_5
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, p1}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    return-void
.end method

.method static synthetic startShutdown$default(Lcom/innioasis/y1/activity/SettingActivity;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 888
    :cond_0
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->startShutdown(I)V

    return-void
.end method

.method private final test()V
    .locals 8

    .line 1360
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u590d\u5236\u6587\u4ef6\u4e2d..."

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1359
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1362
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$test$1;

    const/4 v4, 0x0

    invoke-direct {v1, v0, p0, v4}, Lcom/innioasis/y1/activity/SettingActivity$test$1;-><init>(Landroid/app/ProgressDialog;Lcom/innioasis/y1/activity/SettingActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final updateAbout()V
    .locals 12

    .line 539
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const v1, 0x7f110177

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.setting_about)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "/storage/sdcard0"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/16 v4, 0x400

    int-to-float v4, v4

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    const/high16 v5, 0x42800000    # 64.0f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    const-string v5, "128G"

    goto :goto_0

    :cond_0
    const-string v5, "64G"

    .line 544
    :goto_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v8, v0

    mul-long v6, v6, v8

    long-to-float v0, v6

    div-float/2addr v0, v3

    div-float/2addr v0, v4

    div-float/2addr v0, v4

    sub-float v3, v2, v0

    .line 546
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v4, v4, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f110191

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v8, 0x7f110192

    invoke-virtual {p0, v8}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 549
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v1

    .line 548
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v9, "%.1fG"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "format(format, *args)"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v3, 0x7f110178

    .line 551
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v8, [Ljava/lang/Object;

    .line 553
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v3, v1

    .line 552
    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0x7f11018f

    .line 555
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    sget-object v1, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Constant;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 546
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->bztView:Lcom/innioasis/y1/utils/AboutView;

    div-float/2addr v0, v2

    const/16 v2, 0x168

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/AboutView;->setData(F)V

    return-void
.end method

.method private final updateBacklight()V
    .locals 6

    .line 777
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 779
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getSleepTimeList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1514
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 780
    invoke-virtual {v2}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getS()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 783
    sget-object v3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v4, v4, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v5, "vb.rightImage"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getRes()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 784
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getInfo()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final updateBatteryPercentage()V
    .locals 3

    .line 989
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getBatteryPercentage()Z

    move-result v0

    const-string v1, "vb.rightImage"

    if-eqz v0, :cond_0

    .line 990
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0800e7

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 991
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 993
    :cond_0
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0800e6

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 994
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (batteryPercentage) {\u2026g(R.string.Off)\n        }"

    .line 993
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private final updateBluetooth()V
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const v1, 0x7f0800e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final updateBrightness()V
    .locals 3

    .line 641
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0800e8

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 643
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/16 v1, 0xff

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 644
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateChangeTheme()V
    .locals 3

    .line 1463
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080113

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1464
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeManager;->getThemeUIName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    const v1, 0x7f1101b8

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateClearCache()V
    .locals 3

    .line 1452
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0800e9

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1453
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f11001e

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateEq()V
    .locals 5

    .line 681
    sget-object v0, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/EqSPUtils;->getEqualizerInt()I

    move-result v0

    .line 682
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eq \u8bbe\u7f6e\u9884\u8bbe\u503c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/EqSPUtils;->getEqualizerInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 684
    :cond_0
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v3, "vb.rightImage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getIcon()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 685
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getStr()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateFileExtensions()V
    .locals 3

    .line 1470
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1471
    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isFileExtensions()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0800f6

    goto :goto_0

    :cond_0
    const v2, 0x7f0800f5

    .line 1470
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1475
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isFileExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f11013e

    goto :goto_1

    :cond_1
    const v0, 0x7f11013d

    :goto_1
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "if (isFileExtensions) ge\u2026e getString(R.string.off)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    const v1, 0x7f110180

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateKeyLock()V
    .locals 4

    .line 1337
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    const v1, 0x7f110181

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isKeyLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110002

    goto :goto_0

    :cond_0
    const v0, 0x7f110001

    :goto_0
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "if (isKeyLock) getString\u2026e getString(R.string.Off)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isKeyLock()Z

    move-result v1

    const-string v2, "vb.rightImage"

    if-eqz v1, :cond_1

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0800d8

    invoke-virtual {v1, v3, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 1342
    :cond_1
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0800d7

    invoke-virtual {v1, v3, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1343
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateLanguage()V
    .locals 3

    .line 655
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0800f7

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 657
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/y1/activity/LanguageActivity;->Companion:Lcom/innioasis/y1/activity/LanguageActivity$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/LanguageActivity$Companion;->getLanguageList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateLauncher()V
    .locals 3

    .line 1503
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110185

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1505
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080100

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private final updateRepeat()V
    .locals 3

    .line 618
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicRepeatMode()I

    move-result v0

    const-string v1, "vb.rightImage"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080101

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 626
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f110186

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 630
    :cond_1
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080103

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 631
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f110188

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 620
    :cond_2
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080102

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 621
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f110187

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final updateReset()V
    .locals 3

    .line 1188
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080104

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1189
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f110189

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateRingtone()V
    .locals 3

    .line 1081
    sget-object v0, Lcom/innioasis/y1/utils/Utils;->INSTANCE:Lcom/innioasis/y1/utils/Utils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/Utils;->initKeyToneState(Landroid/app/Activity;)V

    .line 1083
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getRingtone()Z

    move-result v0

    const-string v1, "vb.rightImage"

    if-eqz v0, :cond_0

    .line 1084
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080106

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1085
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1087
    :cond_0
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080105

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1088
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final updateSettingTime()V
    .locals 9

    .line 663
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->is24()Z

    move-result v0

    .line 664
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v3, "vb.rightImage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0800ea

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 665
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/utils/TimeUtils;->getWeekOfDate(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    sget-object v1, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/TimeUtils;->getNowTimeM()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, ":"

    const/4 v8, 0x0

    aput-object v4, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 667
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 668
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x3a

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0xc

    if-lt v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pm"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " am"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final updateShuffle()V
    .locals 3

    .line 567
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicIsShuffle()Z

    move-result v0

    const-string v1, "vb.rightImage"

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080108

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 569
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f11013e

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 571
    :cond_0
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080107

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 572
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f11013d

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final updateShutdown()V
    .locals 3

    .line 975
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080109

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 976
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateSortLogic()V
    .locals 3

    .line 1320
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11013f

    goto :goto_0

    :cond_0
    const v0, 0x7f11016e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "if (isSortLogic) getStri\u2026g(R.string.reverse_order)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    const v2, 0x7f11018d

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1325
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private final updateSortOrder()V
    .locals 3

    .line 1292
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1293
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110132

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f110133

    .line 1294
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1296
    :cond_1
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1101c0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f1101bf

    .line 1297
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (isSortByName) {\n    \u2026g.time_new)\n            }"

    .line 1292
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    const v2, 0x7f11018e

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1303
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08011e

    goto :goto_1

    :cond_3
    const v0, 0x7f08011f

    goto :goto_1

    .line 1306
    :cond_4
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f080120

    goto :goto_1

    :cond_5
    const v0, 0x7f080121

    .line 1309
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final updateTest()V
    .locals 3

    .line 1403
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightTitle:Landroid/widget/TextView;

    const-string v1, ""

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final updateTimeShutdown()V
    .locals 3

    .line 847
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getShutdownTime()I

    move-result v0

    const-string v1, "vb.rightImage"

    if-eqz v0, :cond_6

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    const/16 v2, 0x14

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x78

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v2, "120m"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080116

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 874
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v2, "90m"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08011a

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 869
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v2, "60m"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080119

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 864
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v2, "30m"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080118

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 859
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v2, "20m"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080117

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 854
    :cond_5
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v2, "10m"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080115

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 849
    :cond_6
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080114

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 850
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const v1, 0x7f110001

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final updateVibrator(Landroid/widget/TextView;)V
    .locals 7

    const-class v0, Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 1098
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getSystemService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "Activity::class.java.get\u2026ice\", String::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroid/content/Context;

    const-string v3, "AUDIOPROFILE_SERVICE"

    .line 1100
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "Context::class.java.getD\u2026d(\"AUDIOPROFILE_SERVICE\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 1106
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v5, "getHapticFeedbackEnabled"

    .line 1105
    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "mProfileManager::class.j\u2026ing::class.java\n        )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "mtk_audioprofile_general"

    aput-object v5, v1, v4

    .line 1110
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1109
    invoke-virtual {v3, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setVibrator(Z)V

    const v0, 0x7f110002

    const v1, 0x7f110001

    if-eqz p1, :cond_1

    .line 1114
    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1114
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    :cond_1
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVibrator()Z

    move-result p1

    const-string v2, "vb.rightImage"

    if-eqz p1, :cond_2

    .line 1122
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08011c

    invoke-virtual {p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1123
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1126
    :cond_2
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08011b

    invoke-virtual {p1, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 1127
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method static synthetic updateVibrator$default(Lcom/innioasis/y1/activity/SettingActivity;Landroid/widget/TextView;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1096
    :cond_0
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->updateVibrator(Landroid/widget/TextView;)V

    return-void
.end method

.method private final updateWallpaper()V
    .locals 3

    .line 691
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->rightImage:Landroid/widget/ImageView;

    const-string v2, "vb.rightImage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08011d

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 692
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->infoStateTv:Landroid/widget/TextView;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->setMark(I)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 278
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->notifyDataSetChanged()V

    return-void
.end method

.method public clockwise()V
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->setMark(I)V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 270
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->notifyDataSetChanged()V

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 286
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    .line 287
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->test()V

    goto/16 :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f110177

    .line 289
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f11019d

    .line 293
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickShuffle()V

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f11016a

    .line 294
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickRepeat()V

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f11018e

    .line 295
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickSortOrder()V

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f11018d

    .line 299
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickSortLogic()V

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f110190

    .line 303
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickTimeShutdown()V

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f11017a

    .line 304
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 305
    new-instance v0, Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/BrightnessActivity;

    .line 305
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    iget v1, p0, Lcom/innioasis/y1/activity/SettingActivity;->brightnessRequestCode:I

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f11017e

    .line 310
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 311
    new-instance v0, Landroid/content/Intent;

    .line 312
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/EqActivity;

    .line 311
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    iget v1, p0, Lcom/innioasis/y1/activity/SettingActivity;->eqRequestCode:I

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f110194

    .line 316
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 317
    new-instance v0, Landroid/content/Intent;

    .line 318
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/WallpaperListActivity;

    .line 317
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    iget v1, p0, Lcom/innioasis/y1/activity/SettingActivity;->wallpaperRequestCode:I

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_a
    const v1, 0x7f110180

    .line 322
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickFileExtensions()V

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f11018c

    .line 323
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickBacklight()V

    goto/16 :goto_0

    :cond_c
    const v1, 0x7f11017c

    .line 324
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickRingtone()V

    goto/16 :goto_0

    :cond_d
    const v1, 0x7f110193

    .line 325
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickVibrator()V

    goto/16 :goto_0

    :cond_e
    const v1, 0x7f110184

    .line 326
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-class v0, Lcom/innioasis/y1/activity/LanguageActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_f
    const v1, 0x7f110189

    .line 327
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickReset()V

    goto/16 :goto_0

    :cond_10
    const v1, 0x7f11017d

    .line 328
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/DateOneLevelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/innioasis/y1/activity/SettingActivity;->timeRequestCode:I

    .line 328
    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_11
    const v1, 0x7f11018a

    .line 332
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickShutdown()V

    goto :goto_0

    :cond_12
    const v1, 0x7f110179

    .line 333
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickBatteryPercentage()V

    goto :goto_0

    :cond_13
    const v1, 0x7f110181

    .line 334
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickKeyLock()V

    goto :goto_0

    :cond_14
    const v1, 0x7f11001e

    .line 335
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickClearCache()V

    goto :goto_0

    :cond_15
    const v1, 0x7f11017b

    .line 336
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->clickChangeTheme()V

    goto :goto_0

    :cond_16
    const v1, 0x7f110185

    .line 337
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->selectLauncher()V

    .line 339
    :cond_17
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->notifyItemChanged(I)V

    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/innioasis/y1/activity/SettingActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivitySettingBinding;
    .locals 2

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->setTransparent(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f1100e2

    .line 135
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.main_setting)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 138
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 139
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->setRecyclerData()V

    .line 143
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySettingBinding;->back:Landroid/widget/ImageView;

    const-string v2, "vb.back"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setSettingMask(Landroid/widget/ImageView;)V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 363
    invoke-super {p0, p1, p2, p3}, Lcom/innioasis/y1/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    .line 366
    iget p2, p0, Lcom/innioasis/y1/activity/SettingActivity;->brightnessRequestCode:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateBrightness()V

    goto :goto_0

    .line 368
    :cond_0
    iget p2, p0, Lcom/innioasis/y1/activity/SettingActivity;->timeRequestCode:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateSettingTime()V

    goto :goto_0

    .line 370
    :cond_1
    iget p2, p0, Lcom/innioasis/y1/activity/SettingActivity;->eqRequestCode:I

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateEq()V

    goto :goto_0

    .line 372
    :cond_2
    iget p2, p0, Lcom/innioasis/y1/activity/SettingActivity;->wallpaperRequestCode:I

    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->updateWallpaper()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "audio"

    .line 123
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity;->audioManager:Landroid/media/AudioManager;

    .line 124
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 147
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 148
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isInTitle()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1100e2

    .line 149
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.main_setting)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getAdapter()Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11017b

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.setting_change_theme)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->refreshRight(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final refreshConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f11019d

    .line 387
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getString(R.string.On)"

    const-string v2, "getString(R.string.Off)"

    const v3, 0x7f110002

    const v4, 0x7f110001

    if-eqz v0, :cond_1

    .line 388
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicIsShuffle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    :cond_1
    const v0, 0x7f11016a

    .line 392
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicRepeatMode()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto/16 :goto_b

    :cond_2
    const p1, 0x7f110186

    .line 394
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.setting_repeat_all)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const p1, 0x7f110188

    .line 395
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.setting_repeat_one)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const p1, 0x7f110187

    .line 396
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.setting_repeat_off)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const v0, 0x7f11018e

    .line 400
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 401
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 402
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f110132

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const p1, 0x7f110133

    .line 403
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string/jumbo v0, "{\n                    if\u2026z_to_a)\n                }"

    .line 401
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 405
    :cond_7
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f1101c0

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    const p1, 0x7f1101bf

    .line 406
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string/jumbo v0, "{\n                    if\u2026me_new)\n                }"

    .line 404
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p1

    :cond_9
    const v0, 0x7f11018d

    .line 410
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 411
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f11013f

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.order)"

    goto :goto_4

    :cond_a
    const p1, 0x7f11016e

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.reverse_order)"

    :goto_4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_b
    const v0, 0x7f110180

    .line 414
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "{\n                    ge\u2026ng.Off)\n                }"

    if-eqz v0, :cond_d

    .line 415
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isFileExtensions()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 416
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{\n                    ge\u2026ing.On)\n                }"

    .line 415
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 418
    :cond_c
    invoke-virtual {p0, v4}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    return-object p1

    :cond_d
    const v0, 0x7f110190

    .line 423
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 424
    sget-object p1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p1}, Lcom/innioasis/music/objects/Global;->getShutdownTime()I

    move-result p1

    if-nez p1, :cond_e

    .line 425
    invoke-virtual {p0, v4}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 427
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getShutdownTime()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    return-object p1

    :cond_f
    const v0, 0x7f11018c

    .line 431
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 433
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_off_timeout"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 435
    invoke-direct {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getSleepTimeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1512
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 436
    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getS()I

    move-result v2

    if-ne v2, p1, :cond_10

    .line 438
    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const v0, 0x7f11017c

    .line 443
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "{\n                    re\u2026ing.On)\n                }"

    const-string/jumbo v6, "{\n                    re\u2026ng.Off)\n                }"

    if-eqz v0, :cond_13

    .line 445
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getRingtone()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 446
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 448
    :cond_12
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    return-object p1

    :cond_13
    const v0, 0x7f110193

    .line 452
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 453
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVibrator()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 454
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 456
    :cond_14
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    return-object p1

    :cond_15
    const v0, 0x7f110179

    .line 460
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 461
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getBatteryPercentage()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 462
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 464
    :cond_16
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    return-object p1

    :cond_17
    const v0, 0x7f110181

    .line 468
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 469
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isKeyLock()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_18
    invoke-virtual {p0, v4}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    return-object p1

    :cond_19
    :goto_b
    const-string p1, ""

    return-object p1
.end method
