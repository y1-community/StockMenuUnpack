.class public final Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;
.super Landroid/content/BroadcastReceiver;
.source "FMMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2;->invoke()Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/fm/FMMainActivity$broadcastReceiver$2$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/FMMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 75
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x213d772b

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p2, v0, :cond_6

    const v0, 0x9e69aed

    if-eq p2, v0, :cond_2

    const v0, 0x560269b2

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "android.intent.action.MY_PLAY_SONG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 77
    :cond_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "\u63a5\u6536\u5e7f\u64ad  \u5168\u5c40\u4e0a\u4e0b\u66f2"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p2

    invoke-static {p1, p2}, Lcom/innioasis/fm/FMMainActivity;->access$scrollRuler(Lcom/innioasis/fm/FMMainActivity;F)V

    .line 79
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p1}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object p1, p1, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->mainDiantai:Landroid/widget/TextView;

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "com.mediatek.fm.SAVE_A_RECORDING"

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 89
    :cond_3
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecorderStateChanged \u63a5\u53d7\u5e7f\u64ad SAVE_A_RECORDING isRecord:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$isRecord$p(Lcom/innioasis/fm/FMMainActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$isRecord$p(Lcom/innioasis/fm/FMMainActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 91
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p2}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/innioasis/fm/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    .line 93
    :cond_5
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1$onReceive$1;

    iget-object p2, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-direct {p1, p2, v1}, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1$onReceive$1;-><init>(Lcom/innioasis/fm/FMMainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_6
    const-string p2, "com.innioasis.y1.ABOUT_SHUT_DOWN"

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 82
    :cond_7
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "\u63a5\u6536\u5e7f\u64ad  \u5373\u5c06\u5173\u673a"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$isRecord$p(Lcom/innioasis/fm/FMMainActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 84
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1, v2}, Lcom/innioasis/fm/FMMainActivity;->access$setSoundRecordingState(Lcom/innioasis/fm/FMMainActivity;Z)V

    .line 85
    iget-object p1, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p1}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/innioasis/fm/FMMainActivity$broadcastReceiver$2$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {p2}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/innioasis/fm/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {p1, v1}, Lcom/innioasis/fm/FmRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
