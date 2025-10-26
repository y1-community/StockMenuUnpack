.class public final Lcom/innioasis/y1/receiver/PlayControllerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayControllerReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/innioasis/y1/receiver/PlayControllerReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field public static final Companion:Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;

.field private static final GO_TO_SLEEP:I = 0x400

.field private static downCount:I

.field private static lock:Z

.field private static final timer:Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;

.field private static wasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->Companion:Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion;

    .line 41
    new-instance v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;

    invoke-direct {v0}, Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;-><init>()V

    sput-object v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->timer:Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWasPlaying$cp()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->wasPlaying:Z

    return v0
.end method

.method public static final synthetic access$setLock$cp(Z)V
    .locals 0

    .line 18
    sput-boolean p0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->lock:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "android.intent.extra.KEY_EVENT"

    .line 53
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 56
    :goto_2
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1\u606f\u5c4f\u6309\u952e  count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  keyCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u606f\u5c4f\u6309\u952e  sdcardIsReady: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v6}, Lcom/innioasis/music/objects/Global;->getSdcardIsReady()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u606f\u5c4f\u6309\u952e  isEq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/activity/EqActivity$Companion;->isEq()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v4, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v4}, Lcom/innioasis/music/objects/Global;->getSdcardIsReady()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    .line 61
    :cond_4
    sget-object v4, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/EqActivity$Companion;->isEq()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    .line 62
    :cond_5
    sget-object v4, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isKeyLock()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    if-eqz p1, :cond_6

    const-string v4, "power"

    .line 64
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    instance-of v4, p1, Landroid/os/PowerManager;

    if-eqz v4, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/os/PowerManager;

    :cond_7
    if-eqz v0, :cond_8

    .line 66
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_9

    return-void

    :cond_9
    if-nez v2, :cond_b

    .line 70
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v4, "2\u606f\u5c4f\u6309\u952e  count:"

    invoke-virtual {p1, v4, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    .line 71
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    :goto_6
    sput p1, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->downCount:I

    .line 73
    :cond_b
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "3\u606f\u5c4f\u6309\u952e  count:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->downCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v2, v5, :cond_11

    .line 74
    sget p1, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->downCount:I

    if-nez p1, :cond_11

    .line 75
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "4\u606f\u5c4f\u6309\u952e  count:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->downCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object p1, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->timer:Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;

    invoke-virtual {p1}, Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;->cancel()V

    .line 77
    invoke-virtual {p1}, Lcom/innioasis/y1/receiver/PlayControllerReceiver$Companion$timer$1;->start()Landroid/os/CountDownTimer;

    .line 78
    sget-boolean p1, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->lock:Z

    if-nez p1, :cond_d

    .line 79
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->isPlaying()Z

    move-result p1

    goto :goto_7

    :cond_c
    const/4 p1, 0x1

    :goto_7
    sput-boolean p1, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->wasPlaying:Z

    .line 80
    sput-boolean v5, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->lock:Z

    .line 82
    :cond_d
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 84
    :cond_e
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result p1

    if-ne v3, p1, :cond_f

    .line 85
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->prevSong()V

    goto :goto_8

    .line 87
    :cond_f
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result p1

    if-ne v3, p1, :cond_10

    .line 88
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto :goto_8

    .line 90
    :cond_10
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v3, p1, :cond_12

    .line 91
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->playOrPause()V

    goto :goto_8

    :cond_11
    if-nez v2, :cond_12

    .line 94
    sget p1, Lcom/innioasis/y1/receiver/PlayControllerReceiver;->downCount:I

    if-lez p1, :cond_12

    .line 96
    sget-object p1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result p1

    if-ne v3, p1, :cond_12

    .line 97
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->longClickPlayBtnToStop()V

    :cond_12
    :goto_8
    return-void
.end method
