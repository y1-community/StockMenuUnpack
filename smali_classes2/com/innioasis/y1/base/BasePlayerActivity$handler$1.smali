.class public final Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;
.super Landroid/os/Handler;
.source "BasePlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BasePlayerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/innioasis/y1/base/BasePlayerActivity$handler$1",
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


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/base/BasePlayerActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    .line 317
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd3

    const-string v4, ""

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    if-eq v0, v3, :cond_1

    const/16 v2, 0x3d9

    if-eq v0, v2, :cond_0

    goto/16 :goto_7

    .line 396
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p1

    .line 400
    :catch_0
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    const/4 v7, 0x0

    new-instance p1, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;

    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-direct {p1, v4, v0, v1}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$1;-><init>(Ljava/lang/String;Lcom/innioasis/y1/base/BasePlayerActivity;Lkotlin/coroutines/Continuation;)V

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_7

    .line 445
    :cond_1
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v3, "tmptmp"

    invoke-virtual {v0, v3}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "\u62ff\u53d6\u6b4c\u8bcd"

    invoke-virtual {v0, v6, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, p1

    goto :goto_0

    :catch_1
    nop

    .line 451
    :goto_0
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "."

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lrc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->lyricLv:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 454
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$2;

    iget-object v6, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-direct {v2, v0, v6, p1, v1}, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1$handleMessage$2;-><init>(Ljava/io/File;Lcom/innioasis/y1/base/BasePlayerActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_7

    .line 367
    :cond_3
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v0

    .line 368
    iget-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->lyricLv:Lme/wcy/lrcview/LrcView;

    invoke-virtual {p1, v0, v1}, Lme/wcy/lrcview/LrcView;->updateTime(J)V

    goto/16 :goto_7

    .line 322
    :cond_4
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/innioasis/y1/service/PlayerService;->getPlayerIsPrepared()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlayerIsPrepared()Z

    move-result p1

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    const-string p1, "00:00"

    if-eqz v0, :cond_11

    .line 325
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_2

    :cond_7
    move-wide v0, v3

    .line 326
    :goto_2
    sget-object v5, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v5}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v5

    goto :goto_3

    :cond_8
    move-wide v5, v3

    .line 327
    :goto_3
    iget-object v7, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v7}, Lcom/innioasis/y1/base/BasePlayerActivity;->getProgressState()I

    move-result v7

    if-eqz v7, :cond_c

    long-to-float v7, v5

    const v8, 0x3c23d70a    # 0.01f

    mul-float v7, v7, v8

    float-to-int v7, v7

    .line 329
    iget-object v8, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v8}, Lcom/innioasis/y1/base/BasePlayerActivity;->getProgressState()I

    move-result v8

    mul-int v7, v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v9, v7, v5

    if-lez v9, :cond_9

    cmp-long v9, v5, v3

    if-ltz v9, :cond_9

    move-wide v7, v5

    .line 331
    :cond_9
    sget-object v9, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v9}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v9

    if-lez v9, :cond_b

    .line 333
    iget-object v9, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v9}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getAPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J

    move-result-wide v9

    cmp-long v11, v9, v3

    if-ltz v11, :cond_a

    iget-object v9, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v9}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getAPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_a

    sget-object v9, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v9}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/innioasis/y1/service/PlayerService;->getRepeatFlag()Z

    move-result v9

    if-nez v9, :cond_a

    .line 334
    iget-object v7, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v7}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getAPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J

    move-result-wide v7

    .line 335
    :cond_a
    iget-object v9, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v9}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getBPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J

    move-result-wide v9

    cmp-long v11, v9, v3

    if-ltz v11, :cond_b

    iget-object v9, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v9}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getBPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_b

    sget-object v9, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v9}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/innioasis/y1/service/PlayerService;->getRepeatFlag()Z

    move-result v9

    if-nez v9, :cond_b

    .line 336
    iget-object v7, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v7}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getBPoint(Lcom/innioasis/y1/base/BasePlayerActivity;)J

    move-result-wide v7

    .line 338
    :cond_b
    sget-object v9, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v9}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v7, v8}, Lcom/innioasis/y1/service/PlayerService;->setCurrentPosition(J)V

    .line 340
    :cond_c
    sget-object v7, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v2, v5, v3

    if-lez v2, :cond_e

    const-wide/32 v2, 0x3b9aca00

    cmp-long v4, v5, v2

    if-gez v4, :cond_e

    .line 346
    invoke-static {v0, v1}, Lcom/innioasis/y1/utils/TimeUtils;->time(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Lcom/innioasis/y1/utils/TimeUtils;->time(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x64

    goto :goto_4

    :cond_d
    long-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    long-to-float v3, v5

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 348
    :goto_4
    iget-object v3, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->pbPlayer:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 352
    :cond_e
    invoke-static {v0, v1}, Lcom/innioasis/y1/utils/TimeUtils;->time(J)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvPlayNow:Landroid/widget/TextView;

    const-string v2, "99:59:59"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_f
    check-cast v0, Ljava/lang/CharSequence;

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-static {v5, v6}, Lcom/innioasis/y1/utils/TimeUtils;->time(J)Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvPlayAll:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_10
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_6
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 358
    :cond_11
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->pbPlayer:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 360
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvPlayNow:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/innioasis/y1/base/BasePlayerActivity$handler$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvPlayAll:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method
