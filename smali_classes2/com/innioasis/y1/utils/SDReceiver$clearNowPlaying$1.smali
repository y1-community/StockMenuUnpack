.class final Lcom/innioasis/y1/utils/SDReceiver$clearNowPlaying$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SDReceiver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/utils/SDReceiver;->clearNowPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/utils/SDReceiver;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/utils/SDReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/utils/SDReceiver$clearNowPlaying$1;->this$0:Lcom/innioasis/y1/utils/SDReceiver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/SDReceiver$clearNowPlaying$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 85
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getSdcardIsReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v1, v0

    const-wide/16 v2, 0x7d0

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 98
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService;->resetSoundChannel()V

    .line 99
    :cond_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync(Z)V

    .line 101
    :cond_3
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getMusicList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    :cond_4
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    :cond_5
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setMusicIndex(I)V

    .line 104
    :goto_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setAudiobookIndex(I)V

    .line 105
    :goto_1
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V

    .line 106
    :goto_2
    iget-object v0, p0, Lcom/innioasis/y1/utils/SDReceiver$clearNowPlaying$1;->this$0:Lcom/innioasis/y1/utils/SDReceiver;

    invoke-static {v0}, Lcom/innioasis/y1/utils/SDReceiver;->access$getHandler$p(Lcom/innioasis/y1/utils/SDReceiver;)Lcom/innioasis/y1/utils/SDReceiver$handler$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SDReceiver$handler$1;->sendEmptyMessage(I)Z

    .line 107
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Global;->setCoverBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setAudiobookPlayTime(J)V

    .line 110
    sget-object v0, Lcom/innioasis/y1/Y1Application;->timer2:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 111
    :cond_9
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    sput-object v1, Lcom/innioasis/y1/Y1Application;->timer2:Landroid/os/CountDownTimer;

    return-void
.end method
