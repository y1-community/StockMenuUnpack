.class public final Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;
.super Landroid/os/Handler;
.source "FmRadioService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/fm/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FmRadioServiceHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;",
        "Landroid/os/Handler;",
        "looper",
        "Landroid/os/Looper;",
        "(Lcom/innioasis/fm/FmRadioService;Landroid/os/Looper;)V",
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
.field final synthetic this$0:Lcom/innioasis/fm/FmRadioService;


# direct methods
.method public constructor <init>(Lcom/innioasis/fm/FmRadioService;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FmRadioServiceHandler handek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const-string v3, "option"

    const-string v4, "msg.data"

    if-eq v0, v1, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_8

    const/16 v1, 0xd

    const/4 v5, 0x1

    if-eq v0, v1, :cond_7

    const-string v1, "frequency"

    const/16 v6, 0xf

    if-eq v0, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v0, v6, :cond_5

    const/16 v6, 0x1e

    if-eq v0, v6, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1327
    :pswitch_0
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lcom/innioasis/fm/FmRadioService;->access$stopRecording(Lcom/innioasis/fm/FmRadioService;)Z

    goto/16 :goto_0

    .line 1325
    :pswitch_1
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lcom/innioasis/fm/FmRadioService;->access$startRecording(Lcom/innioasis/fm/FmRadioService;)V

    goto/16 :goto_0

    .line 1334
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$setRecordingMode(Lcom/innioasis/fm/FmRadioService;Z)V

    goto/16 :goto_0

    .line 1269
    :pswitch_3
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lcom/innioasis/fm/FmRadioService;->access$getMIsSpeakerUsed$p(Lcom/innioasis/fm/FmRadioService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1270
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1, v2}, Lcom/innioasis/fm/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 1272
    :cond_0
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->powerDown()Z

    .line 1273
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lcom/innioasis/fm/FmRadioService;->access$closeDevice(Lcom/innioasis/fm/FmRadioService;)Z

    .line 1275
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lcom/innioasis/fm/FmRadioService;->access$getMFMPlayer$p(Lcom/innioasis/fm/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "mFMPlayer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    goto/16 :goto_0

    .line 1264
    :pswitch_4
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1}, Lcom/innioasis/fm/FmRadioService;->powerDown()Z

    goto/16 :goto_0

    .line 1245
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1246
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "performance test. service handler power up start:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 1250
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getHeadsetValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/innioasis/y1/utils/Static$Headset;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static$Headset;->isPlugged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1251
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "\u8033\u673a\u672a\u51c6\u5907\u597d"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1255
    :cond_2
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$powerUpFM(Lcom/innioasis/fm/FmRadioService;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1256
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$initDevice(Lcom/innioasis/fm/FmRadioService;F)Z

    .line 1257
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1, v2}, Lcom/innioasis/fm/FmRadioService;->access$setMPausedByTransientLossOfFocus$p(Lcom/innioasis/fm/FmRadioService;Z)V

    .line 1259
    :cond_3
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1, v2}, Lcom/innioasis/fm/FmRadioService;->access$setMIsPowerUping$p(Lcom/innioasis/fm/FmRadioService;Z)V

    .line 1260
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1, v5}, Lcom/innioasis/fm/FmRadioService;->access$setMIsShortAntennaSupport$p(Lcom/innioasis/fm/FmRadioService;Z)V

    goto/16 :goto_0

    .line 1310
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_audiofocus_changed"

    .line 1311
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1312
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$updateAudioFocus(Lcom/innioasis/fm/FmRadioService;I)V

    goto :goto_0

    .line 1339
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$saveRecording(Lcom/innioasis/fm/FmRadioService;Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 1286
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$tuneStation(Lcom/innioasis/fm/FmRadioService;F)Z

    move-result v0

    .line 1287
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "callback_flag"

    .line 1288
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_is_tune"

    .line 1292
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_tune_to_station"

    .line 1293
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1294
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1}, Lcom/innioasis/fm/FmRadioService;->access$getMIsPowerUp$p(Lcom/innioasis/fm/FmRadioService;)Z

    move-result p1

    const-string v0, "key_is_power_up"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1303
    :cond_7
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1, v5}, Lcom/innioasis/fm/FmRadioService;->access$setMIsScanning$p(Lcom/innioasis/fm/FmRadioService;Z)V

    .line 1305
    iget-object p1, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-static {p1, v2}, Lcom/innioasis/fm/FmRadioService;->access$setMIsScanning$p(Lcom/innioasis/fm/FmRadioService;Z)V

    goto :goto_0

    .line 1321
    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$setMute(Lcom/innioasis/fm/FmRadioService;Z)I

    goto :goto_0

    .line 1316
    :cond_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/innioasis/fm/FmRadioService;->access$setAudioChannel(Lcom/innioasis/fm/FmRadioService;Z)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
