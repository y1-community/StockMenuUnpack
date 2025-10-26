.class public abstract Lcom/innioasis/y1_eBook/base/BaseActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "BaseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/base/BaseActivity$Companion;,
        Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        "VM:",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel<",
        "TS;TI;>;S:",
        "Lcom/innioasis/y1_eBook/base/BaseState;",
        "I:",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        ">",
        "Lcom/innioasis/y1/base/BaseActivity<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000 G*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0004*\u0008\u0008\u0002\u0010\u0005*\u00020\u0007*\u0008\u0008\u0003\u0010\u0006*\u00020\u00082\u0008\u0012\u0004\u0012\u0002H\u00010\t:\u0002GHB\u0005\u00a2\u0006\u0002\u0010\nJ\u0008\u0010%\u001a\u00020\u001bH\u0016J\u0008\u0010&\u001a\u00020\u001bH\u0016J\u0015\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00028\u0002H&\u00a2\u0006\u0002\u0010)J\u0008\u0010*\u001a\u00020\u001bH\u0016J\u0010\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020.H&J\u0012\u0010/\u001a\u00020$2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0016\u00102\u001a\u00020\u001b2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020504H\u0016J\r\u00106\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00107J\u0008\u00108\u001a\u00020\u001bH\u0016J\u0012\u00109\u001a\u00020\u001b2\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0014J\u0008\u0010<\u001a\u00020\u001bH\u0014J\u001c\u0010=\u001a\u00020\u001b2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020$0>H\u0016J\u0008\u0010@\u001a\u00020\u001bH\u0016J\u0010\u0010A\u001a\u00020\u001b2\u0006\u00103\u001a\u00020BH\u0016J\u0013\u0010C\u001a\u00020\u001b2\u0006\u0010D\u001a\u00028\u0003\u00a2\u0006\u0002\u0010EJ\r\u0010F\u001a\u00028\u0000H&\u00a2\u0006\u0002\u00107R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000e\"\u0004\u0008\u0015\u0010\u0010RE\u0010\u0016\u001a-\u0012#\u0012!\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0000\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b0\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0012\u0010 \u001a\u00028\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "VM",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "S",
        "I",
        "Lcom/innioasis/y1_eBook/base/BaseState;",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "()V",
        "appContext",
        "Landroid/content/Context;",
        "getAppContext",
        "()Landroid/content/Context;",
        "setAppContext",
        "(Landroid/content/Context;)V",
        "downRepeatCount",
        "",
        "mContext",
        "getMContext",
        "setMContext",
        "onDestroyListener",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "it",
        "",
        "getOnDestroyListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnDestroyListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "vm",
        "getVm",
        "()Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "wasDown",
        "",
        "antiClockwise",
        "clockwise",
        "collect",
        "s",
        "(Lcom/innioasis/y1_eBook/base/BaseState;)V",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "fileResult",
        "a",
        "",
        "Landroid/net/Uri;",
        "getViewBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "longConfirm",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "permissionsResult",
        "",
        "",
        "quit",
        "result",
        "Landroidx/activity/result/ActivityResult;",
        "send",
        "i",
        "(Lcom/innioasis/y1_eBook/base/BaseIntent;)V",
        "setViewBinding",
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
.field public static final Companion:Lcom/innioasis/y1_eBook/base/BaseActivity$Companion;


# instance fields
.field public appContext:Landroid/content/Context;

.field private downRepeatCount:I

.field public mContext:Landroid/content/Context;

.field private onDestroyListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/innioasis/y1_eBook/base/BaseActivity<",
            "****>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private wasDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1_eBook/base/BaseActivity;->Companion:Lcom/innioasis/y1_eBook/base/BaseActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 132
    sget-object v0, Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;->INSTANCE:Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->onDestroyListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 0

    return-void
.end method

.method public clockwise()V
    .locals 0

    return-void
.end method

.method public abstract collect(Lcom/innioasis/y1_eBook/base/BaseState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
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

.method public abstract direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 171
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const-string v3, "\u957f\u6309 \u4e2d"

    const-string v4, "\u957f\u6309 \u4e0b"

    const-string v5, "\u957f\u6309 \u4e0a"

    const-string v6, "\u957f\u6309 \u53f3"

    const-string v7, "\u957f\u6309 \u5de6"

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v1, :cond_11

    if-eq v1, v0, :cond_1

    goto/16 :goto_1

    .line 240
    :cond_1
    iget p1, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->downRepeatCount:I

    if-ge p1, v8, :cond_b

    iget-boolean p1, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->wasDown:Z

    if-eqz p1, :cond_b

    .line 242
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result p1

    if-ne v2, p1, :cond_2

    .line 243
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "\u77ed\u6309 \u9006\u65f6\u9488  \u4e0a"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ANTI_CLOCK:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto/16 :goto_0

    .line 247
    :cond_2
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result p1

    if-ne v2, p1, :cond_3

    .line 248
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "\u77ed\u6309 \u987a\u65f6\u9488   \u4e0b"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->CLOCK:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto/16 :goto_0

    .line 252
    :cond_3
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v2, p1, :cond_5

    .line 253
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "\u77ed\u6309 \u5de6"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LEFT:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 256
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v9}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 257
    :cond_4
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->prevSong()V

    goto/16 :goto_0

    .line 262
    :cond_5
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v2, p1, :cond_7

    .line 263
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "\u77ed\u6309 \u53f3"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->RIGHT:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 265
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v9}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 266
    :cond_6
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto/16 :goto_0

    .line 270
    :cond_7
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p1

    if-ne v2, p1, :cond_8

    .line 271
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "\u77ed\u6309 \u4e0a"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->TOP:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto/16 :goto_0

    .line 275
    :cond_8
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v2, p1, :cond_a

    .line 276
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "\u77ed\u6309 \u4e0b"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->BOTTOM:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 278
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v9}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 279
    :cond_9
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->playOrPause()V

    goto/16 :goto_0

    .line 283
    :cond_a
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p1

    if-ne v2, p1, :cond_10

    .line 284
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "\u77ed\u6309 \u4e2d"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->CENTER:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_0

    .line 291
    :cond_b
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v2, p1, :cond_c

    .line 292
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v7, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_LEFT_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_0

    .line 296
    :cond_c
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v2, p1, :cond_d

    .line 297
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v6, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_RIGHT_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_0

    .line 301
    :cond_d
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p1

    if-ne v2, p1, :cond_e

    .line 302
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_TOP_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_0

    .line 305
    :cond_e
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v2, p1, :cond_f

    .line 306
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_BOTTOM_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_0

    .line 309
    :cond_f
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p1

    if-ne v2, p1, :cond_10

    .line 310
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_CENTER_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    .line 312
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;->sleepScreen()V

    .line 319
    :cond_10
    :goto_0
    iput v9, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->downRepeatCount:I

    .line 320
    iput-boolean v9, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->wasDown:Z

    goto/16 :goto_1

    .line 176
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->downRepeatCount:I

    .line 177
    iput-boolean v0, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->wasDown:Z

    if-ne p1, v8, :cond_16

    .line 181
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v2, p1, :cond_12

    .line 182
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v7, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_LEFT_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto/16 :goto_1

    .line 186
    :cond_12
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v2, p1, :cond_13

    .line 187
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v6, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_RIGHT_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto/16 :goto_1

    .line 192
    :cond_13
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p1

    if-ne v2, p1, :cond_14

    .line 193
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_TOP_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto/16 :goto_1

    .line 197
    :cond_14
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v2, p1, :cond_15

    .line 198
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_BOTTOM_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto/16 :goto_1

    .line 202
    :cond_15
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p1

    if-ne v2, p1, :cond_1b

    .line 203
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_CENTER_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_1

    :cond_16
    if-le p1, v8, :cond_1b

    .line 209
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v2, p1, :cond_17

    .line 210
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v7, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_LEFT_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_1

    .line 214
    :cond_17
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v2, p1, :cond_18

    .line 215
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v6, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_RIGHT_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_1

    .line 219
    :cond_18
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p1

    if-ne v2, p1, :cond_19

    .line 220
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_TOP_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_1

    .line 224
    :cond_19
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v2, p1, :cond_1a

    .line 225
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_BOTTOM_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    goto :goto_1

    .line 229
    :cond_1a
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p1

    if-ne v2, p1, :cond_1b

    .line 230
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    sget-object p1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_CENTER_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->direction(Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;)Z

    :cond_1b
    :goto_1
    return v0
.end method

.method public fileResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOnDestroyListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/innioasis/y1_eBook/base/BaseActivity<",
            "****>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->onDestroyListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;->setViewBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVm()Lcom/innioasis/y1_eBook/base/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 95
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->setAppContext(Landroid/content/Context;)V

    .line 106
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->setActivity(Landroid/app/Activity;)V

    .line 107
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity;->setMContext(Landroid/content/Context;)V

    .line 109
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/innioasis/y1_eBook/base/BaseActivity$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$onCreate$1;-><init>(Lcom/innioasis/y1_eBook/base/BaseActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->onDestroyListener:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public permissionsResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public result(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
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

    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseActivity$send$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/innioasis/y1_eBook/base/BaseActivity$send$1;-><init>(Lcom/innioasis/y1_eBook/base/BaseActivity;Lcom/innioasis/y1_eBook/base/BaseIntent;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setAppContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->appContext:Landroid/content/Context;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setOnDestroyListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/innioasis/y1_eBook/base/BaseActivity<",
            "****>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/innioasis/y1_eBook/base/BaseActivity;->onDestroyListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public abstract setViewBinding()Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation
.end method
