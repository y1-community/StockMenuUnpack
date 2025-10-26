.class public final Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1;
.super Landroid/os/Handler;
.source "Y1Repository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/Y1Repository;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/innioasis/y1/database/Y1Repository$deleteHandler$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 479
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "OnDelete"

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto/16 :goto_1

    .line 488
    :cond_0
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "\u5220\u9664\u4e86\u6b63\u5728\u64ad\u653e\u7684\u6b4c\u66f2"

    invoke-virtual {p1, v4, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 490
    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlayList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 491
    :cond_1
    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlayIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlayList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 492
    invoke-virtual {p1, v2}, Lcom/innioasis/y1/service/PlayerService;->setPlayIndex(I)V

    .line 493
    :cond_2
    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v1

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$deleteHandler$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 495
    :cond_3
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAudiobookIsShuffle()Z

    move-result v1

    goto :goto_0

    .line 494
    :cond_4
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getMusicIsShuffle()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_5

    .line 498
    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->nextSong()V

    goto :goto_1

    .line 499
    :cond_5
    invoke-static {p1, v2, v3, v0}, Lcom/innioasis/y1/service/PlayerService;->restartPlay$default(Lcom/innioasis/y1/service/PlayerService;ZILjava/lang/Object;)V

    goto :goto_1

    .line 481
    :cond_6
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {p1, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "\u5217\u8868\u6e05\u7a7a\u4e86"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    :cond_7
    sget-object p1, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    if-eq v0, p1, :cond_8

    .line 483
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->stop()V

    :cond_8
    :goto_1
    return-void
.end method
