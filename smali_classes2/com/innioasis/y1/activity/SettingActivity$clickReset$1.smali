.class public final Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/SettingActivity;->clickReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/activity/SettingActivity$clickReset$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    .line 1142
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 9

    .line 1145
    new-instance v8, Lcom/innioasis/y1/utils/LoadingDialog;

    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const v2, 0x7f11016b

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.reset_all_setting)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/innioasis/y1/utils/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1146
    invoke-virtual {v8}, Lcom/innioasis/y1/utils/LoadingDialog;->show()V

    .line 1147
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setGenerateExampleTheme(Z)V

    const/4 v0, 0x0

    .line 1149
    :try_start_0
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 1150
    :cond_0
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 1151
    :cond_1
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getBinder()Lcom/innioasis/fm/FmRadioService$MyBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/innioasis/fm/FmRadioService$MyBinder;->getService()Lcom/innioasis/fm/FmRadioService;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :catch_0
    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;

    iget-object v5, p0, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-direct {v1, v5, v0}, Lcom/innioasis/y1/activity/SettingActivity$clickReset$1$confirm$1;-><init>(Lcom/innioasis/y1/activity/SettingActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
