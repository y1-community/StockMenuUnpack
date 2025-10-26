.class public final Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;
.super Landroid/os/CountDownTimer;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/SettingActivity;->startShutdown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/innioasis/y1/activity/SettingActivity$startShutdown$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
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
.method constructor <init>(JLcom/innioasis/y1/activity/SettingActivity;)V
    .locals 2

    iput-object p3, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const-wide/16 v0, 0x7d0

    .line 905
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .line 918
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    .line 919
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 918
    invoke-virtual {v0, v2, v1}, Lcom/innioasis/y1/activity/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "plugged"

    const/4 v2, -0x1

    .line 920
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    if-ne v0, v1, :cond_0

    .line 922
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {v0}, Lcom/innioasis/music/util/Other;->sdCardIsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 926
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "\u6b63\u5728\u5145\u7535\uff0c\u4e0d\u54cd\u5e94\u5173\u673a"

    invoke-virtual {v0, v3, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 928
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Global;->getShutdownTime()I

    move-result v1

    invoke-static {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->access$startShutdown(Lcom/innioasis/y1/activity/SettingActivity;I)V

    .line 929
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object v1, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "componentName.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/innioasis/music/util/Other;->isActivityAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 930
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/SettingActivity;->access$getAdapter(Lcom/innioasis/y1/activity/SettingActivity;)Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 931
    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {v3}, Lcom/innioasis/y1/activity/SettingActivity;->access$getAdapter(Lcom/innioasis/y1/activity/SettingActivity;)Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const v5, 0x7f110190

    invoke-virtual {v4, v5}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 932
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/SettingActivity;->access$getAdapter(Lcom/innioasis/y1/activity/SettingActivity;)Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {v3}, Lcom/innioasis/y1/activity/SettingActivity;->access$getTimeShutdownList(Lcom/innioasis/y1/activity/SettingActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "timeShutdownList[0]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/SettingActivity$SettingItem;->setText(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/SettingActivity;->access$getAdapter(Lcom/innioasis/y1/activity/SettingActivity;)Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/SettingActivity$adapter$2$1;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/SettingActivity;->access$updateTimeShutdown(Lcom/innioasis/y1/activity/SettingActivity;)V

    goto :goto_3

    .line 923
    :cond_3
    :goto_2
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/objects/Global;->setShutdownTime(I)V

    .line 924
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {v0}, Lcom/innioasis/music/util/Other;->shutdown()V

    :cond_4
    :goto_3
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 907
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   \u5173\u673a\u5012\u8ba1\u65f6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/innioasis/y1/Y1Application$Companion;->setMillisUntilFinished(J)V

    const-wide/16 v0, 0x3a98

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    .line 910
    sget-object p1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static;->getBatteryValue()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/utils/Static$Battery;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/Static$Battery;->getPlug()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 911
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "\u53d1\u9001\u5373\u5c06\u5173\u673a\u5e7f\u64ad"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$startShutdown$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.innioasis.y1.ABOUT_SHUT_DOWN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
