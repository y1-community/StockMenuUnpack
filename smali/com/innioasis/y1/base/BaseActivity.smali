.class public abstract Lcom/innioasis/y1/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/base/BaseActivity$Direction;,
        Lcom/innioasis/y1/base/BaseActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseActivity.kt\ncom/innioasis/y1/base/BaseActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,862:1\n1#2:863\n13543#3,2:864\n*S KotlinDebug\n*F\n+ 1 BaseActivity.kt\ncom/innioasis/y1/base/BaseActivity\n*L\n793#1:864,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a9\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0012*\u0001L\u0008&\u0018\u0000 \u009c\u0001*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0004\u009c\u0001\u009d\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010Y\u001a\u00020>H&J\u0006\u0010Z\u001a\u00020>J/\u0010[\u001a\u00020>2\u0006\u0010\\\u001a\u00020]2\u001a\u0010^\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030`0_\"\u0006\u0012\u0002\u0008\u00030`\u00a2\u0006\u0002\u0010aJ\u0008\u0010b\u001a\u00020>H&J\u0008\u0010c\u001a\u00020>H&J\u0010\u0010d\u001a\u00020>2\u0006\u0010e\u001a\u00020fH&J\u0012\u0010g\u001a\u00020\u00122\u0008\u0010h\u001a\u0004\u0018\u00010iH\u0016J\u0006\u0010j\u001a\u00020kJ\u0006\u0010l\u001a\u00020kJ\u0006\u0010m\u001a\u00020IJ\r\u0010n\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010TJ\u0006\u0010o\u001a\u00020>J\u0008\u0010p\u001a\u00020>H&J\u0008\u0010q\u001a\u00020>H&J\u0008\u0010r\u001a\u00020>H\u0016J\u0012\u0010s\u001a\u00020>2\u0008\u0010t\u001a\u0004\u0018\u00010uH\u0014J\u0008\u0010v\u001a\u00020>H\u0014J\u0008\u0010w\u001a\u00020>H\u0015J\u0008\u0010x\u001a\u00020>H\u0014J\u0008\u0010y\u001a\u00020>H&J\u0008\u0010z\u001a\u00020>H\u0002J\u000e\u0010{\u001a\u00020>2\u0006\u0010|\u001a\u00020IJ\u000e\u0010}\u001a\u00020>2\u0006\u0010~\u001a\u00020\u0019J\u0006\u0010\u007f\u001a\u00020>J\u0010\u0010\u0080\u0001\u001a\u00020>2\u0007\u0010\u0081\u0001\u001a\u00020IJ\u0010\u0010\u0082\u0001\u001a\u00020>2\u0007\u0010\u0083\u0001\u001a\u00020\u0019J\u0010\u0010\u0084\u0001\u001a\u00020>2\u0007\u0010\u0085\u0001\u001a\u00020IJ\u0007\u0010\u0086\u0001\u001a\u00020>J\u0015\u0010\u0087\u0001\u001a\u00020>2\u000c\u0010\u0088\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0089\u0001J(\u0010\u0087\u0001\u001a\u00020>2\u000c\u0010\u0088\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0089\u00012\u0007\u0010\u008a\u0001\u001a\u00020I2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001J1\u0010\u0087\u0001\u001a\u00020>2\u000c\u0010\u0088\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0089\u00012\u0007\u0010\u008a\u0001\u001a\u00020I2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u008d\u0001\u001a\u00020\u0019J\u0007\u0010\u008e\u0001\u001a\u00020>J\u001b\u0010\u008f\u0001\u001a\u00020>2\u0007\u0010\u008b\u0001\u001a\u00020\u00192\u0007\u0010\u0090\u0001\u001a\u00020\u0019H\u0003J\u0007\u0010\u0091\u0001\u001a\u00020>J\u0012\u0010\u0092\u0001\u001a\u00020>2\u0007\u0010\u0093\u0001\u001a\u00020\u0019H\u0002J\u001b\u0010\u0094\u0001\u001a\u00020>2\u0007\u0010\u0095\u0001\u001a\u00020\u00122\u0007\u0010\u0096\u0001\u001a\u00020\u0012H\u0002J\u0012\u0010\u0097\u0001\u001a\u00020>2\u0007\u0010\u0098\u0001\u001a\u00020\u0019H\u0002J\u0012\u0010\u0099\u0001\u001a\u00020>2\t\u0008\u0002\u0010\u009a\u0001\u001a\u00020\u0012J\u0007\u0010\u009b\u0001\u001a\u00020>R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010!\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0010\u001a\u0004\u0008\"\u0010\u0016R\u001a\u0010$\u001a\u00020%X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001b\u0010*\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u0010\u001a\u0004\u0008+\u0010\u000eR\u001b\u0010-\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u0010\u001a\u0004\u0008.\u0010\u000eR\u000e\u00100\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u00020\u0012X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u000e\u00104\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u00109\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010\u0010\u001a\u0004\u0008:\u0010\u000eR \u0010<\u001a\u0008\u0012\u0004\u0012\u00020>0=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u001b\"\u0004\u0008E\u0010\u001dR\u000e\u0010F\u001a\u00020GX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010K\u001a\u0008\u0012\u0004\u0012\u00028\u00000LX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010MR\u001a\u0010N\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u00103\"\u0004\u0008P\u0010QR\u001c\u0010R\u001a\u00028\u0000X\u0086.\u00a2\u0006\u0010\n\u0002\u0010W\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u000e\u0010X\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u009e\u0001"
    }
    d2 = {
        "Lcom/innioasis/y1/base/BaseActivity;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "setActivity",
        "(Landroid/app/Activity;)V",
        "addPlaylistDialog",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "getAddPlaylistDialog",
        "()Lcom/innioasis/y1/utils/LoadingDialog;",
        "addPlaylistDialog$delegate",
        "Lkotlin/Lazy;",
        "allowUpdateTime",
        "",
        "antiClockwiseSpeedUtil",
        "Lcom/innioasis/y1/utils/SpeedUtil;",
        "getAntiClockwiseSpeedUtil",
        "()Lcom/innioasis/y1/utils/SpeedUtil;",
        "antiClockwiseSpeedUtil$delegate",
        "backHashCode",
        "",
        "getBackHashCode",
        "()I",
        "setBackHashCode",
        "(I)V",
        "baseBinding",
        "Lcom/innioasis/y1/databinding/ActivityBaseBinding;",
        "canShowShutdownDialog",
        "clockwiseSpeedUtil",
        "getClockwiseSpeedUtil",
        "clockwiseSpeedUtil$delegate",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "deletingDialog",
        "getDeletingDialog",
        "deletingDialog$delegate",
        "dialog",
        "getDialog",
        "dialog$delegate",
        "downRepeatCount",
        "enableSpeedClockwise",
        "getEnableSpeedClockwise",
        "()Z",
        "isBottomPress",
        "isCenterPress",
        "isLeftPress",
        "isRightPress",
        "isTopPress",
        "loadingDialog",
        "getLoadingDialog",
        "loadingDialog$delegate",
        "longConfirmShutDown",
        "Lkotlin/Function0;",
        "",
        "getLongConfirmShutDown",
        "()Lkotlin/jvm/functions/Function0;",
        "setLongConfirmShutDown",
        "(Lkotlin/jvm/functions/Function0;)V",
        "mark",
        "getMark",
        "setMark",
        "mediaUnmountableReceiver",
        "Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;",
        "stateBarLeftText",
        "",
        "temp",
        "timer",
        "com/innioasis/y1/base/BaseActivity$timer$1",
        "Lcom/innioasis/y1/base/BaseActivity$timer$1;",
        "transparent",
        "getTransparent",
        "setTransparent",
        "(Z)V",
        "vb",
        "getVb",
        "()Landroidx/viewbinding/ViewBinding;",
        "setVb",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "Landroidx/viewbinding/ViewBinding;",
        "wasDown",
        "antiClockwise",
        "askShutdown",
        "cancelMultiSelect",
        "lv",
        "Landroid/widget/ListView;",
        "adapters",
        "",
        "Lcom/innioasis/music/adapter/MyBaseAdapter;",
        "(Landroid/widget/ListView;[Lcom/innioasis/music/adapter/MyBaseAdapter;)V",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "getBackImageView",
        "Landroid/widget/ImageView;",
        "getPhotos",
        "getStateBarLeftText",
        "getViewBinding",
        "hideNone",
        "initView",
        "longConfirm",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "onStop",
        "quit",
        "setObserve",
        "setStateBarLeftText",
        "str",
        "setStateBarVisible",
        "visibility",
        "showNone",
        "showOrHideDialog",
        "op",
        "showOrHideNone",
        "count",
        "showToast",
        "message",
        "sleepScreen",
        "toActivity",
        "cls",
        "Ljava/lang/Class;",
        "key",
        "value",
        "",
        "requestCode",
        "updateBaseWallpaper",
        "updateBattery",
        "plug",
        "updateBatteryPercentageBase",
        "updateBluetoothConnect",
        "connectState",
        "updateHeadset",
        "isPlugged",
        "isMicrophone",
        "updatePlay",
        "state",
        "updateTime",
        "forced",
        "updateVibratorRingtone",
        "Companion",
        "Direction",
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
.field public static final Companion:Lcom/innioasis/y1/base/BaseActivity$Companion;

.field private static final runCheckThemeValid:Lkotlinx/coroutines/sync/Mutex;


# instance fields
.field public activity:Landroid/app/Activity;

.field private final addPlaylistDialog$delegate:Lkotlin/Lazy;

.field private allowUpdateTime:Z

.field private final antiClockwiseSpeedUtil$delegate:Lkotlin/Lazy;

.field private backHashCode:I

.field private baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

.field private final canShowShutdownDialog:Z

.field private final clockwiseSpeedUtil$delegate:Lkotlin/Lazy;

.field public context:Landroid/content/Context;

.field private final deletingDialog$delegate:Lkotlin/Lazy;

.field private final dialog$delegate:Lkotlin/Lazy;

.field private downRepeatCount:I

.field private final enableSpeedClockwise:Z

.field private isBottomPress:I

.field private isCenterPress:I

.field private isLeftPress:I

.field private isRightPress:I

.field private isTopPress:I

.field private final loadingDialog$delegate:Lkotlin/Lazy;

.field private longConfirmShutDown:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mark:I

.field private final mediaUnmountableReceiver:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;

.field private stateBarLeftText:Ljava/lang/String;

.field private temp:Z

.field private final timer:Lcom/innioasis/y1/base/BaseActivity$timer$1;

.field private transparent:Z

.field public vb:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field

.field private wasDown:Z


# direct methods
.method public static synthetic $r8$lambda$UlewT7YQjQ8ot8sKdIxSwYaQlvE(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setObserve$lambda-5(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-Sf1EeGVe-37nzyf_Y96c8Enls(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setObserve$lambda-7(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZsaAFn14qPKhHGZNu1zu3MGdEFk(Lcom/innioasis/y1/base/BaseActivity;Lcom/innioasis/y1/utils/Static$Headset;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setObserve$lambda-4(Lcom/innioasis/y1/base/BaseActivity;Lcom/innioasis/y1/utils/Static$Headset;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b1QRsY7hc1lstr014WKyDXZlS6M(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setObserve$lambda-6(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbM-Mb517OsQ3NKp1H1X9ssAXkY(Lcom/innioasis/y1/base/BaseActivity;Lcom/innioasis/y1/utils/Static$Battery;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setObserve$lambda-3(Lcom/innioasis/y1/base/BaseActivity;Lcom/innioasis/y1/utils/Static$Battery;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/innioasis/y1/base/BaseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/base/BaseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/base/BaseActivity;->Companion:Lcom/innioasis/y1/base/BaseActivity$Companion;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 860
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/base/BaseActivity;->runCheckThemeValid:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/innioasis/y1/base/BaseActivity;->allowUpdateTime:Z

    .line 155
    new-instance v1, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;

    invoke-direct {v1}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;-><init>()V

    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->mediaUnmountableReceiver:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;

    .line 219
    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$longConfirmShutDown$1;->INSTANCE:Lcom/innioasis/y1/base/BaseActivity$longConfirmShutDown$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->longConfirmShutDown:Lkotlin/jvm/functions/Function0;

    .line 226
    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$dialog$2;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$dialog$2;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->dialog$delegate:Lkotlin/Lazy;

    .line 527
    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$timer$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$timer$1;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->timer:Lcom/innioasis/y1/base/BaseActivity$timer$1;

    const-string v1, ""

    .line 542
    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->stateBarLeftText:Ljava/lang/String;

    .line 627
    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$deletingDialog$2;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$deletingDialog$2;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->deletingDialog$delegate:Lkotlin/Lazy;

    .line 630
    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$addPlaylistDialog$2;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$addPlaylistDialog$2;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->addPlaylistDialog$delegate:Lkotlin/Lazy;

    .line 633
    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$loadingDialog$2;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$loadingDialog$2;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1/base/BaseActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    .line 849
    iput-boolean v0, p0, Lcom/innioasis/y1/base/BaseActivity;->enableSpeedClockwise:Z

    .line 851
    sget-object v0, Lcom/innioasis/y1/base/BaseActivity$clockwiseSpeedUtil$2;->INSTANCE:Lcom/innioasis/y1/base/BaseActivity$clockwiseSpeedUtil$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->clockwiseSpeedUtil$delegate:Lkotlin/Lazy;

    .line 855
    sget-object v0, Lcom/innioasis/y1/base/BaseActivity$antiClockwiseSpeedUtil$2;->INSTANCE:Lcom/innioasis/y1/base/BaseActivity$antiClockwiseSpeedUtil$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->antiClockwiseSpeedUtil$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBaseBinding$p(Lcom/innioasis/y1/base/BaseActivity;)Lcom/innioasis/y1/databinding/ActivityBaseBinding;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    return-object p0
.end method

.method public static final synthetic access$getDialog(Lcom/innioasis/y1/base/BaseActivity;)Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRunCheckThemeValid$cp()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 81
    sget-object v0, Lcom/innioasis/y1/base/BaseActivity;->runCheckThemeValid:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public static final synthetic access$getTimer$p(Lcom/innioasis/y1/base/BaseActivity;)Lcom/innioasis/y1/base/BaseActivity$timer$1;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/innioasis/y1/base/BaseActivity;->timer:Lcom/innioasis/y1/base/BaseActivity$timer$1;

    return-object p0
.end method

.method public static final synthetic access$setAllowUpdateTime$p(Lcom/innioasis/y1/base/BaseActivity;Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/innioasis/y1/base/BaseActivity;->allowUpdateTime:Z

    return-void
.end method

.method public static final synthetic access$setStateBarLeftText$p(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->stateBarLeftText:Ljava/lang/String;

    return-void
.end method

.method private final getAddPlaylistDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->addPlaylistDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final getAntiClockwiseSpeedUtil()Lcom/innioasis/y1/utils/SpeedUtil;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->antiClockwiseSpeedUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/SpeedUtil;

    return-object v0
.end method

.method private final getClockwiseSpeedUtil()Lcom/innioasis/y1/utils/SpeedUtil;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->clockwiseSpeedUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/SpeedUtil;

    return-object v0
.end method

.method private final getDeletingDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->deletingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final getDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->dialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->loadingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/LoadingDialog;

    return-object v0
.end method

.method private final setObserve()V
    .locals 3

    .line 364
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getBatteryValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 367
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getHeadsetValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 370
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getTimeValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 373
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getBluetoothValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda4;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 376
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getPlayValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/base/BaseActivity$$ExternalSyntheticLambda3;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setObserve$lambda-3(Lcom/innioasis/y1/base/BaseActivity;Lcom/innioasis/y1/utils/Static$Battery;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static$Battery;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static$Battery;->getPlug()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/innioasis/y1/base/BaseActivity;->updateBattery(II)V

    return-void
.end method

.method private static final setObserve$lambda-4(Lcom/innioasis/y1/base/BaseActivity;Lcom/innioasis/y1/utils/Static$Headset;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static$Headset;->isPlugged()Z

    move-result v0

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static$Headset;->isMicrophone()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/innioasis/y1/base/BaseActivity;->updateHeadset(ZZ)V

    return-void
.end method

.method private static final setObserve$lambda-5(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    invoke-static {p0, p1, v0, v1}, Lcom/innioasis/y1/base/BaseActivity;->updateTime$default(Lcom/innioasis/y1/base/BaseActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final setObserve$lambda-6(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 374
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->updateBluetoothConnect(I)V

    return-void
.end method

.method private static final setObserve$lambda-7(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u64ad\u653e\u72b6\u6001\u5207\u6362   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "it"

    .line 378
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->updatePlay(I)V

    return-void
.end method

.method private final updateBattery(II)V
    .locals 8

    const/16 v0, 0x64

    const/16 v1, 0x43

    const/16 v2, 0x22

    const/4 v3, 0x1

    const-string v4, "baseBinding.battery"

    const/4 v5, 0x0

    const-string v6, "baseBinding"

    const/4 v7, 0x0

    if-nez p2, :cond_a

    if-ltz p1, :cond_0

    if-ge p1, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 425
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_1
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080128

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    :cond_2
    if-gt v2, p1, :cond_3

    if-ge p1, v1, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    .line 426
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_4
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08012a

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    :cond_5
    if-gt v1, p1, :cond_6

    if-ge p1, v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_8

    .line 427
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_7
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08012c

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    :cond_8
    if-ne p1, v0, :cond_15

    .line 428
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_9
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08012e

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    :cond_a
    if-ltz p1, :cond_b

    if-ge p1, v2, :cond_b

    const/4 p2, 0x1

    goto :goto_3

    :cond_b
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_d

    .line 432
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_c
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080129

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_6

    :cond_d
    if-gt v2, p1, :cond_e

    if-ge p1, v1, :cond_e

    const/4 p2, 0x1

    goto :goto_4

    :cond_e
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_10

    .line 433
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_f

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_f
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08012b

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_6

    :cond_10
    if-gt v1, p1, :cond_11

    if-ge p1, v0, :cond_11

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_13

    .line 434
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_12

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_12
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08012d

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_6

    :cond_13
    if-ne p1, v0, :cond_15

    .line 435
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_14

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_14
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->battery:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f08012f

    invoke-virtual {p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    .line 438
    :cond_15
    :goto_6
    iget-object p2, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p2, :cond_16

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_16
    move-object v5, p2

    :goto_7
    iget-object p2, v5, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->batteryNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateBluetoothConnect(I)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-string v2, "baseBinding"

    if-eqz p1, :cond_f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "baseBinding.bluetooth"

    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto/16 :goto_4

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 476
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    :cond_3
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e000c

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_4

    .line 468
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 469
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    :cond_8
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e000d

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_4

    .line 461
    :cond_a
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_b
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_d

    .line 462
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_c
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    :cond_d
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e000e

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_4

    .line 459
    :cond_f
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    move-object v1, p1

    :goto_3
    iget-object p1, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->bluetooth:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private final updateHeadset(ZZ)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    const/4 v1, 0x0

    const-string v2, "baseBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->headset:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "baseBinding.headset"

    if-eqz p2, :cond_3

    .line 447
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->headset:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f0800d6

    invoke-virtual {p2, v0, p1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 449
    :cond_3
    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->headset:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f0800d5

    invoke-virtual {p2, v0, p1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    :goto_3
    return-void
.end method

.method private final updatePlay(I)V
    .locals 5

    .line 488
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlay  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-string v3, "baseBinding"

    if-nez p1, :cond_2

    .line 490
    iget-object v2, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 492
    iget-object v2, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object v4, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    iget-object v4, v4, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    const/4 v0, 0x1

    const-string v2, "baseBinding.play"

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    goto/16 :goto_6

    .line 505
    :cond_6
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080133

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_6

    .line 504
    :cond_8
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080131

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_6

    .line 503
    :cond_a
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v1, v0

    :goto_3
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080135

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_6

    .line 502
    :cond_c
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v1, v0

    :goto_4
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080130

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_6

    .line 501
    :cond_e
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object v1, v0

    :goto_5
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->play:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080132

    invoke-virtual {p1, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    :goto_6
    return-void
.end method

.method public static synthetic updateTime$default(Lcom/innioasis/y1/base/BaseActivity;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->updateTime(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateTime"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract antiClockwise()V
.end method

.method public final askShutdown()V
    .locals 9

    .line 812
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BaseActivity;->canShowShutdownDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 815
    :cond_0
    new-instance v0, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v1, 0x7f11018a

    .line 816
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.setting_shutdown)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11007c

    .line 817
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getString(R.string.dialog_confirm_shutdown)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$askShutdown$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$askShutdown$1;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    .line 815
    invoke-static/range {v1 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public final varargs cancelMultiSelect(Landroid/widget/ListView;[Lcom/innioasis/music/adapter/MyBaseAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "[",
            "Lcom/innioasis/music/adapter/MyBaseAdapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 794
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    invoke-virtual {v2}, Lcom/innioasis/music/adapter/MyBaseAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 796
    :cond_0
    invoke-virtual {v2}, Lcom/innioasis/music/adapter/MyBaseAdapter;->notifyDataSetChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract clockwise()V
.end method

.method public abstract confirm()V
.end method

.method public abstract direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 667
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 668
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    if-eq v1, v0, :cond_1

    goto/16 :goto_1

    .line 717
    :cond_1
    iget p1, p0, Lcom/innioasis/y1/base/BaseActivity;->downRepeatCount:I

    if-ge p1, v3, :cond_c

    iget-boolean p1, p0, Lcom/innioasis/y1/base/BaseActivity;->wasDown:Z

    if-eqz p1, :cond_c

    .line 719
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result p1

    if-ne v2, p1, :cond_2

    .line 720
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u77ed\u6309 \u9006\u65f6\u9488  \u4e0a"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->antiClockwise()V

    .line 722
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getEnableSpeedClockwise()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 723
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getAntiClockwiseSpeedUtil()Lcom/innioasis/y1/utils/SpeedUtil;

    move-result-object p1

    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$dispatchKeyEvent$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$dispatchKeyEvent$1;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/utils/SpeedUtil;->runMultipleTimes(Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    .line 728
    :cond_2
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result p1

    if-ne v2, p1, :cond_3

    .line 729
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u77ed\u6309 \u987a\u65f6\u9488   \u4e0b"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->clockwise()V

    .line 731
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getEnableSpeedClockwise()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 732
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getClockwiseSpeedUtil()Lcom/innioasis/y1/utils/SpeedUtil;

    move-result-object p1

    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$dispatchKeyEvent$2;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/base/BaseActivity$dispatchKeyEvent$2;-><init>(Lcom/innioasis/y1/base/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/utils/SpeedUtil;->runMultipleTimes(Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    .line 737
    :cond_3
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v2, p1, :cond_5

    .line 738
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u77ed\u6309 \u5de6"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 740
    :cond_4
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->prevSong()V

    goto/16 :goto_0

    .line 743
    :cond_5
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v2, p1, :cond_7

    .line 744
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u77ed\u6309 \u53f3"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 746
    :cond_6
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto/16 :goto_0

    .line 749
    :cond_7
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p1

    if-ne v2, p1, :cond_8

    .line 750
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u77ed\u6309 \u4e0a"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    sget-object p1, Lcom/innioasis/y1/base/BaseActivity$Direction;->TOP:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V

    goto/16 :goto_0

    .line 754
    :cond_8
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v2, p1, :cond_b

    .line 755
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u77ed\u6309 \u4e0b"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v4}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 757
    :cond_9
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->playOrPause()V

    .line 758
    :cond_a
    sget-object p1, Lcom/innioasis/y1/base/BaseActivity$Direction;->BOTTOM:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V

    goto :goto_0

    .line 761
    :cond_b
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p1

    if-ne v2, p1, :cond_f

    .line 762
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u77ed\u6309 \u4e2d"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->confirm()V

    goto :goto_0

    .line 769
    :cond_c
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v2, p1, :cond_d

    .line 770
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->stopFastForward()V

    goto :goto_0

    .line 773
    :cond_d
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v2, p1, :cond_e

    .line 774
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->stopFastForward()V

    goto :goto_0

    .line 777
    :cond_e
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p1

    if-eq v2, p1, :cond_f

    .line 778
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-eq v2, p1, :cond_f

    .line 779
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    .line 784
    :cond_f
    :goto_0
    iput v4, p0, Lcom/innioasis/y1/base/BaseActivity;->downRepeatCount:I

    .line 785
    iput-boolean v4, p0, Lcom/innioasis/y1/base/BaseActivity;->wasDown:Z

    goto/16 :goto_1

    .line 672
    :cond_10
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6309\u4e0b "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/base/BaseActivity;->downRepeatCount:I

    .line 675
    iput-boolean v0, p0, Lcom/innioasis/y1/base/BaseActivity;->wasDown:Z

    if-ne p1, v3, :cond_16

    .line 679
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v2, p1, :cond_11

    .line 680
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u957f\u6309 \u5de6"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->startRewind()V

    goto :goto_1

    .line 684
    :cond_11
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v2, p1, :cond_12

    .line 685
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u957f\u6309 \u53f3"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->startFastForward()V

    goto :goto_1

    .line 689
    :cond_12
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p1

    if-ne v2, p1, :cond_13

    .line 690
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u957f\u6309 \u4e0a"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->longConfirm()V

    goto :goto_1

    .line 696
    :cond_13
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v2, p1, :cond_15

    .line 697
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u957f\u6309 \u4e0b"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->longClickPlayBtnToStop()V

    .line 699
    :cond_14
    sget-object p1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LBOTTOM:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V

    goto :goto_1

    .line 702
    :cond_15
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p1

    if-ne v2, p1, :cond_16

    .line 703
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "\u957f\u6309 \u4e2d"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->sleepScreen()V

    .line 706
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->askShutdown()V

    :cond_16
    :goto_1
    return v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBackHashCode()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/innioasis/y1/base/BaseActivity;->backHashCode:I

    return v0
.end method

.method public final getBackImageView()Landroid/widget/ImageView;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_0

    const-string v0, "baseBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->back:Landroid/widget/ImageView;

    const-string v1, "baseBinding.back"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSpeedClockwise()Z
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BaseActivity;->enableSpeedClockwise:Z

    return v0
.end method

.method public final getLongConfirmShutDown()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->longConfirmShutDown:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getMark()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/innioasis/y1/base/BaseActivity;->mark:I

    return v0
.end method

.method public final getPhotos()Landroid/widget/ImageView;
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_0

    const-string v0, "baseBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->photosImage:Landroid/widget/ImageView;

    const-string v1, "baseBinding.photosImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStateBarLeftText()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->stateBarLeftText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransparent()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BaseActivity;->transparent:Z

    return v0
.end method

.method public final getVb()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->vb:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "vb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getViewBinding()Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation
.end method

.method public final hideNone()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_0

    const-string v0, "baseBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->none:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public abstract initView()V
.end method

.method public abstract longConfirm()V
.end method

.method public onBackPressed()V
    .locals 3

    .line 593
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBackPressed"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 595
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->quit()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BaseActivity;->requestWindowFeature(I)Z

    .line 111
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 114
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getViewBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setVb(Landroidx/viewbinding/ViewBinding;)V

    .line 116
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    .line 117
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setContext(Landroid/content/Context;)V

    .line 118
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setActivity(Landroid/app/Activity;)V

    .line 119
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    const/4 v0, 0x0

    const-string v1, "baseBinding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 121
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-boolean v2, p0, Lcom/innioasis/y1/base/BaseActivity;->transparent:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 123
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070256

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_2
    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->layoutContent:Landroid/widget/LinearLayout;

    .line 128
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    invoke-interface {v4}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    .line 127
    invoke-virtual {v2, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v2, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->statusBar:Landroid/widget/LinearLayout;

    const-string v1, "baseBinding.statusBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->setStatusBarColor(Landroid/widget/LinearLayout;)V

    .line 132
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    iput v3, p0, Lcom/innioasis/y1/base/BaseActivity;->backHashCode:I

    .line 134
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "audio"

    .line 137
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    .line 138
    new-instance v0, Landroid/content/ComponentName;

    .line 139
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/receiver/PlayControllerReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 143
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->mediaUnmountableReceiver:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;

    check-cast p1, Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.innioasis.y1.ACTION_MEDIA_UNMOUNTABLE"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/innioasis/y1/base/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->initView()V

    .line 150
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->setObserve()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 170
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 171
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "gg"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "--------------destroy"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->mediaUnmountableReceiver:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 249
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 250
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onResume"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getNeedShowScanDialog()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/LoadingDialog;->isShowing()Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    .line 256
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance v0, Lcom/innioasis/y1/base/BaseActivity$onResume$1;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lcom/innioasis/y1/base/BaseActivity$onResume$1;-><init>(Lcom/innioasis/y1/base/BaseActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 294
    invoke-static {p0, v1, v2, v9}, Lcom/innioasis/y1/base/BaseActivity;->updateTime$default(Lcom/innioasis/y1/base/BaseActivity;ZILjava/lang/Object;)V

    .line 296
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    invoke-direct {p0, v1}, Lcom/innioasis/y1/base/BaseActivity;->updateBluetoothConnect(I)V

    .line 299
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/Static;->setBluetoothValue(I)V

    goto :goto_0

    .line 301
    :cond_1
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    const-string v4, "getConnectionState"

    new-array v5, v1, [Ljava/lang/Class;

    .line 303
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "BluetoothAdapter::class.\u2026hod(\"getConnectionState\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 305
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 317
    :cond_2
    invoke-direct {p0, v2}, Lcom/innioasis/y1/base/BaseActivity;->updateBluetoothConnect(I)V

    .line 318
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/Static;->setBluetoothValue(I)V

    goto :goto_0

    .line 312
    :cond_3
    invoke-direct {p0, v3}, Lcom/innioasis/y1/base/BaseActivity;->updateBluetoothConnect(I)V

    .line 313
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/utils/Static;->setBluetoothValue(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    .line 307
    invoke-direct {p0, v0}, Lcom/innioasis/y1/base/BaseActivity;->updateBluetoothConnect(I)V

    .line 308
    sget-object v3, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v3, v0}, Lcom/innioasis/y1/utils/Static;->setBluetoothValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 322
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v3, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 325
    :goto_0
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getBluetoothValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/base/BaseActivity;->updateBluetoothConnect(I)V

    .line 327
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v0}, Lcom/innioasis/y1/base/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "level"

    .line 329
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    .line 330
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    const-string v6, "plugged"

    .line 331
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v3, v3, 0x64

    .line 332
    div-int/2addr v3, v4

    invoke-direct {p0, v3, v0}, Lcom/innioasis/y1/base/BaseActivity;->updateBattery(II)V

    .line 335
    :cond_6
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    .line 336
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/innioasis/y1/base/BaseActivity;->updateHeadset(ZZ)V

    .line 338
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->updateVibratorRingtone()V

    .line 340
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getPlayValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/base/BaseActivity;->updatePlay(I)V

    .line 342
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->updateBatteryPercentageBase()V

    .line 344
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u58c1\u7eb8\u68c0\u6d4b   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/innioasis/y1/base/BaseActivity;->backHashCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget v0, p0, Lcom/innioasis/y1/base/BaseActivity;->backHashCode:I

    sget-object v2, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_9
    if-eq v0, v1, :cond_a

    .line 347
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    :cond_a
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/innioasis/y1/base/BaseActivity$onResume$4;

    invoke-direct {v0, v9}, Lcom/innioasis/y1/base/BaseActivity$onResume$4;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 162
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 163
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "save state successful"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v0, v2, :cond_1

    .line 165
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Lcom/innioasis/y1/service/PlayerService;->updateNowAudiobookProgress$default(Lcom/innioasis/y1/service/PlayerService;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public abstract quit()V
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final setBackHashCode(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/innioasis/y1/base/BaseActivity;->backHashCode:I

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->context:Landroid/content/Context;

    return-void
.end method

.method public final setLongConfirmShutDown(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->longConfirmShutDown:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setMark(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/innioasis/y1/base/BaseActivity;->mark:I

    return-void
.end method

.method public final setStateBarLeftText(Ljava/lang/String;)V
    .locals 7

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
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

    new-instance v0, Lcom/innioasis/y1/base/BaseActivity$setStateBarLeftText$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/innioasis/y1/base/BaseActivity$setStateBarLeftText$1;-><init>(Lcom/innioasis/y1/base/BaseActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setStateBarVisible(I)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_0

    const-string v0, "baseBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->statusBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final setTransparent(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/innioasis/y1/base/BaseActivity;->transparent:Z

    return-void
.end method

.method public final setVb(Landroidx/viewbinding/ViewBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->vb:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public final showNone()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_0

    const-string v0, "baseBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->none:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final showOrHideDialog(Ljava/lang/String;)V
    .locals 4

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 648
    :try_start_0
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showOrHideDialog  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xcf9

    if-eq v1, v2, :cond_a

    const/16 v2, 0xcfc

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd04

    if-eq v1, v2, :cond_6

    const/16 v2, 0xe4e

    if-eq v1, v2, :cond_4

    const/16 v2, 0xe51

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe59

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "sl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 654
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    goto/16 :goto_0

    :cond_2
    const-string v1, "sd"

    .line 649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 650
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getDeletingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    goto :goto_0

    :cond_4
    const-string v1, "sa"

    .line 649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 652
    :cond_5
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getAddPlaylistDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    goto :goto_0

    :cond_6
    const-string v1, "hl"

    .line 649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 655
    :cond_7
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getLoadingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->hide()V

    goto :goto_0

    :cond_8
    const-string v1, "hd"

    .line 649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 651
    :cond_9
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getDeletingDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->hide()V

    goto :goto_0

    :cond_a
    const-string v1, "ha"

    .line 649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    .line 653
    :cond_b
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;->getAddPlaylistDialog()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/LoadingDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 659
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showOrHideDialog  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final showOrHideNone(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "baseBinding"

    if-gtz p1, :cond_1

    .line 623
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->none:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 624
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    iget-object p1, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->none:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final sleepScreen()V
    .locals 6

    .line 840
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "dl"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sleep run"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    .line 843
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 845
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-string v5, "goToSleep"

    .line 843
    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 846
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final toActivity(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 569
    :cond_0
    instance-of p1, p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 570
    :cond_1
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final toActivity(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 579
    :cond_0
    instance-of p1, p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 580
    :cond_1
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    :cond_2
    :goto_0
    invoke-virtual {p0, v0, p4}, Lcom/innioasis/y1/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final updateBaseWallpaper()V
    .locals 4

    .line 385
    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/innioasis/y1/base/BaseActivity;->backHashCode:I

    .line 386
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateBatteryPercentageBase()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_0

    const-string v0, "baseBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->batteryNum:Landroid/widget/TextView;

    .line 524
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getBatteryPercentage()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 523
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final updateTime(Z)V
    .locals 4

    .line 399
    iget-boolean v0, p0, Lcom/innioasis/y1/base/BaseActivity;->allowUpdateTime:Z

    const/4 v1, 0x0

    const-string v2, "baseBinding"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isInTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->statusBarTime:Landroid/widget/TextView;

    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->is24()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    sget-object v3, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/TimeUtils;->getNowTimeHM24()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    .line 404
    :cond_1
    sget-object v3, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/TimeUtils;->getNowTimeHM12()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 401
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p1, :cond_5

    .line 409
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    iget-object p1, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->statusBarTime:Landroid/widget/TextView;

    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->is24()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    sget-object v0, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/TimeUtils;->getNowTimeHM24()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_2

    .line 412
    :cond_4
    sget-object v0, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/TimeUtils;->getNowTimeHM12()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 409
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public final updateVibratorRingtone()V
    .locals 6

    .line 513
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    const/4 v1, 0x0

    const-string v2, "baseBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->vibrator:Landroid/widget/ImageView;

    .line 514
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getVibrator()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 513
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity;->baseBinding:Lcom/innioasis/y1/databinding/ActivityBaseBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/innioasis/y1/databinding/ActivityBaseBinding;->ringtone:Landroid/widget/ImageView;

    .line 516
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getRingtone()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    .line 515
    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
