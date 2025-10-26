.class public final Lcom/innioasis/fm/FmRadioService$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/fm/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyReceiver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/innioasis/fm/FmRadioService$MyReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "(Lcom/innioasis/fm/FmRadioService;)V",
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
.field final synthetic this$0:Lcom/innioasis/fm/FmRadioService;


# direct methods
.method public constructor <init>(Lcom/innioasis/fm/FmRadioService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 127
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "com.mediatek.fm.STOP_FM"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->powerDownStopAsync()V

    .line 148
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "FM  Service  BroadcastReceiver stop"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const-string p2, "com.mediatek.fm.PLAY_FM"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    .line 130
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "FM  Service  BroadcastReceiver play"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    const-string p2, "com.mediatek.fm.PLAY_OR_PAUSE_FM"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v3, "FM  Service  BroadcastReceiver pp"

    invoke-virtual {p1, v3, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->isPowerUp()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1, v2, v1, v0}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lcom/innioasis/fm/FmRadioService;->access$getMIsSpeakerUsed$p(Lcom/innioasis/fm/FmRadioService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->setSpeakerPhoneOn(Z)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    sget-object p2, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p2}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    goto :goto_0

    :sswitch_3
    const-string p2, "com.mediatek.fm.PAUSE_FM"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 133
    :cond_4
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyReceiver;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1, v2, v1, v0}, Lcom/innioasis/fm/FmRadioService;->powerDownAsync$default(Lcom/innioasis/fm/FmRadioService;ZILjava/lang/Object;)V

    .line 134
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "FM  Service  BroadcastReceiver pause"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e8b90d4 -> :sswitch_3
        -0x47e96283 -> :sswitch_2
        -0x336eb52a -> :sswitch_1
        0x79abf348 -> :sswitch_0
    .end sparse-switch
.end method
