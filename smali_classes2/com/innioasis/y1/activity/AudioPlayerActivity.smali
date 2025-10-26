.class public final Lcom/innioasis/y1/activity/AudioPlayerActivity;
.super Lcom/innioasis/y1/base/BasePlayerActivity;
.source "AudioPlayerActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0008\u0010\u0011\u001a\u00020\rH\u0017R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/AudioPlayerActivity;",
        "Lcom/innioasis/y1/base/BasePlayerActivity;",
        "()V",
        "isAddToBookmarkCallback",
        "com/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1",
        "Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;",
        "progress",
        "Lcom/innioasis/y1/database/Progress;",
        "getProgress",
        "()Lcom/innioasis/y1/database/Progress;",
        "setProgress",
        "(Lcom/innioasis/y1/database/Progress;)V",
        "initView",
        "",
        "longPressEnter",
        "longPressMenu",
        "pressMenu",
        "refreshUI",
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
.field private final isAddToBookmarkCallback:Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;

.field private progress:Lcom/innioasis/y1/database/Progress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;-><init>(Lcom/innioasis/y1/activity/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/AudioPlayerActivity;->isAddToBookmarkCallback:Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;

    return-void
.end method


# virtual methods
.method public final getProgress()Lcom/innioasis/y1/database/Progress;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/innioasis/y1/activity/AudioPlayerActivity;->progress:Lcom/innioasis/y1/database/Progress;

    return-object v0
.end method

.method public initView()V
    .locals 6

    .line 52
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-gtz v0, :cond_3

    .line 53
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f110137

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->finish()V

    .line 56
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "Log22222222222"

    invoke-virtual {v0, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6709\u58f0\u8bfb\u7269\u64ad\u653e\u5668\uff1a\u65e0\u64ad\u653e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v5}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_3
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 60
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1101b0

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->finish()V

    return-void

    .line 65
    :cond_5
    invoke-super {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->initView()V

    const v0, 0x7f1100df

    .line 66
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.main_now)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "from_now_playing"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->setFromNowPlaying(Z)V

    .line 71
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    const/16 v4, 0xd

    invoke-static {v0, v4, v1, v3, v2}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 72
    :cond_6
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    sget-object v4, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/4 v5, 0x1

    if-eq v0, v4, :cond_9

    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v2

    :goto_4
    sget-object v4, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v0, v4, :cond_b

    .line 74
    :cond_9
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0, v1, v5, v2}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V

    .line 75
    :cond_a
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService;->resetSoundChannel()V

    .line 77
    :cond_b
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    sget-object v4, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v0, v4}, Lcom/innioasis/y1/service/PlayerService;->setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V

    .line 78
    :goto_5
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0, v3, v3}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    .line 80
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookIsShuffle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->isShuffle:Landroid/widget/ImageView;

    const v4, 0x7f0e002a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 83
    :cond_d
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->isShuffle:Landroid/widget/ImageView;

    const v4, 0x7f0e0027

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_6
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookRepeatMode()I

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v5, :cond_f

    if-eq v0, v3, :cond_e

    goto :goto_7

    .line 90
    :cond_e
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->repeatMode:Landroid/widget/ImageView;

    const v3, 0x7f0e0028

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 87
    :cond_f
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->repeatMode:Landroid/widget/ImageView;

    const v3, 0x7f0e0029

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 93
    :cond_10
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->repeatMode:Landroid/widget/ImageView;

    const v3, 0x7f0e0026

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :goto_7
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookPlayRate()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/service/PlayerService;->setSpeed(F)V

    .line 98
    :cond_11
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->isFromNowPlaying()Z

    move-result v0

    if-nez v0, :cond_13

    .line 99
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0, v1, v5, v2}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    .line 100
    :cond_12
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->stopRepeatForUI()V

    goto :goto_8

    .line 102
    :cond_13
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 103
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setShutdown(Z)V

    .line 104
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->restartPlay(Z)V

    .line 106
    :cond_14
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0, v1, v5, v2}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    .line 107
    :cond_15
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->setFromNowPlaying(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->refreshABUI()V

    :goto_8
    return-void
.end method

.method public longPressEnter()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->sleepScreen()V

    .line 116
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->askShutdown()V

    return-void
.end method

.method public longPressMenu()V
    .locals 5

    .line 145
    new-instance v0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;-><init>(Landroid/app/Activity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v1, 0x7f1100bf

    .line 146
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.is_add_bookmark)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/innioasis/y1/activity/AudioPlayerActivity;->isAddToBookmarkCallback:Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;

    check-cast v2, Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;)V

    .line 147
    invoke-virtual {v0}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->show()V

    return-void
.end method

.method public pressMenu()V
    .locals 3

    .line 45
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->updateNowAudiobookProgress$default(Lcom/innioasis/y1/service/PlayerService;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->pressMenu()V

    return-void
.end method

.method public refreshUI()V
    .locals 4

    .line 121
    invoke-super {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->refreshUI()V

    .line 122
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/database/Y1Repository;->fileToSong(Ljava/io/File;)Lcom/innioasis/y1/database/Song;

    move-result-object v0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvBookname:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvSongName2:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvBookplayer:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvAlbum:Landroid/widget/TextView;

    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getBookMarkProgress()Lcom/innioasis/y1/database/Bookmark;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvIndexOfSongs:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvIndexOfSongs:Landroid/widget/TextView;

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_1
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->refreshCover(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->refreshLyric(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setProgress(Lcom/innioasis/y1/database/Progress;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/innioasis/y1/activity/AudioPlayerActivity;->progress:Lcom/innioasis/y1/database/Progress;

    return-void
.end method
