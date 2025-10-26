.class public final Lcom/innioasis/music/MusicPlayerActivity;
.super Lcom/innioasis/y1/base/BasePlayerActivity;
.source "MusicPlayerActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0014J\u0008\u0010\u0008\u001a\u00020\u0004H\u0017\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/innioasis/music/MusicPlayerActivity;",
        "Lcom/innioasis/y1/base/BasePlayerActivity;",
        "()V",
        "initView",
        "",
        "longPressEnter",
        "longPressMenu",
        "onResume",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 6

    .line 20
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getMusicList()Ljava/util/List;

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

    .line 21
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f110137

    invoke-virtual {p0, v3}, Lcom/innioasis/music/MusicPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "Log22222222222"

    invoke-virtual {v0, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u97f3\u4e50\u64ad\u653e\u5668\uff1a\u65e0\u64ad\u653e "

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

    invoke-virtual {v5}, Lcom/innioasis/y1/service/PlayerService;->getMusicList()Ljava/util/List;

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

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getMusicList()Ljava/util/List;

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

    .line 25
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->finish()V

    return-void

    .line 29
    :cond_3
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, ""

    :cond_5
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1101b0

    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->finish()V

    return-void

    .line 35
    :cond_6
    invoke-super {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->initView()V

    const v0, 0x7f1100df

    .line 36
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.main_now)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicPlayerActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    const/16 v4, 0xc

    invoke-static {v0, v4, v1, v3, v2}, Lcom/innioasis/y1/service/PlayerService;->pause$default(Lcom/innioasis/y1/service/PlayerService;IZILjava/lang/Object;)V

    .line 39
    :cond_7
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v4}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    .line 40
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v2

    :goto_2
    sget-object v5, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq v0, v5, :cond_a

    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, v2

    :goto_3
    sget-object v5, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-ne v0, v5, :cond_c

    .line 41
    :cond_a
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0, v1, v4, v2}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V

    .line 42
    :cond_b
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService;->resetSoundChannel()V

    .line 46
    :cond_c
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    sget-object v5, Lcom/innioasis/y1/service/PlayerService$Playing;->Music:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v0, v5}, Lcom/innioasis/y1/service/PlayerService;->setPlaying(Lcom/innioasis/y1/service/PlayerService$Playing;)V

    .line 49
    :goto_4
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "from_now_playing"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicPlayerActivity;->setFromNowPlaying(Z)V

    .line 52
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicIsShuffle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->isShuffle:Landroid/widget/ImageView;

    const v5, 0x7f0e002a

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 55
    :cond_e
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->isShuffle:Landroid/widget/ImageView;

    const v5, 0x7f0e0027

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :goto_5
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicRepeatMode()I

    move-result v0

    if-eq v0, v4, :cond_10

    if-eq v0, v3, :cond_f

    .line 65
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->repeatMode:Landroid/widget/ImageView;

    const v3, 0x7f0e0026

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 59
    :cond_f
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->repeatMode:Landroid/widget/ImageView;

    const v3, 0x7f0e0028

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 62
    :cond_10
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->repeatMode:Landroid/widget/ImageView;

    const v3, 0x7f0e0029

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :goto_6
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_11

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/service/PlayerService;->setSpeed(F)V

    .line 70
    :cond_11
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->isFromNowPlaying()Z

    move-result v0

    if-nez v0, :cond_13

    .line 71
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0, v1, v4, v2}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    .line 72
    :cond_12
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->stopRepeatForUI()V

    goto :goto_7

    .line 74
    :cond_13
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setShutdown(Z)V

    .line 76
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->restartPlay(Z)V

    .line 78
    :cond_14
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0, v1, v4, v2}, Lcom/innioasis/y1/service/PlayerService;->play$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    .line 79
    :cond_15
    invoke-virtual {p0, v1}, Lcom/innioasis/music/MusicPlayerActivity;->setFromNowPlaying(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->refreshABUI()V

    :goto_7
    return-void
.end method

.method public longPressEnter()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->sleepScreen()V

    .line 117
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->askShutdown()V

    return-void
.end method

.method public longPressMenu()V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->abRepeatEnable()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 108
    invoke-super {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->onResume()V

    .line 109
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getMusicList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getMusicList()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f110137

    invoke-virtual {p0, v1}, Lcom/innioasis/music/MusicPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->finish()V

    :cond_3
    return-void
.end method

.method public refreshUI()V
    .locals 4

    .line 88
    invoke-super {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->refreshUI()V

    .line 90
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingMusic()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/database/Y1Repository;->fileToSong(Ljava/io/File;)Lcom/innioasis/y1/database/Song;

    move-result-object v0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

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

    .line 95
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

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

    .line 96
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

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

    .line 97
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

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

    .line 98
    invoke-virtual {p0}, Lcom/innioasis/music/MusicPlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvIndexOfSongs:Landroid/widget/TextView;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getMusicIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getMusicList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/innioasis/music/MusicPlayerActivity;->refreshCover(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicPlayerActivity;->refreshLyric(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
