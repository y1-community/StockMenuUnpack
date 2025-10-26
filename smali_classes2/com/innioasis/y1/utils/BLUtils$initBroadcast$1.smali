.class public final Lcom/innioasis/y1/utils/BLUtils$initBroadcast$1;
.super Landroid/content/BroadcastReceiver;
.source "BLUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/utils/BLUtils;->initBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BLUtils.kt\ncom/innioasis/y1/utils/BLUtils$initBroadcast$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,548:1\n13543#2,2:549\n*S KotlinDebug\n*F\n+ 1 BLUtils.kt\ncom/innioasis/y1/utils/BLUtils$initBroadcast$1\n*L\n213#1:549,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/utils/BLUtils$initBroadcast$1",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u6536\u5e7f\u64ad   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/utils/BLUtils;->setIntent(Landroid/content/Intent;)V

    .line 164
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/innioasis/y1/utils/BLUtils;->access$setDevice$p(Landroid/bluetooth/BluetoothDevice;)V

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 198
    :cond_0
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-static {p1}, Lcom/innioasis/y1/utils/BLUtils;->access$blBindStateChanged(Lcom/innioasis/y1/utils/BLUtils;)V

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 206
    :cond_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_ACL_DISCONNECTED  \u65ad\u5f00\u8fde\u63a5 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils;->access$getDevice$p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils;->access$getRecordConnect$p()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 208
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u68c0\u6d4b\u5230\u914d\u5bf9\u65ad\u8fde  \u6267\u884c\u91cd\u8fde"

    invoke-virtual {p2, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    sget-object p2, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p2, p1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 194
    :cond_3
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-static {p1}, Lcom/innioasis/y1/utils/BLUtils;->access$a2dpConnectionStateChanged(Lcom/innioasis/y1/utils/BLUtils;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "android.bluetooth.device.action.FOUND"

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    .line 170
    :cond_4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_b

    .line 173
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p2

    const/16 v0, 0x400

    if-ne p2, v0, :cond_b

    .line 175
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u627e\u5230\u97f3\u9891 device name :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 177
    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils;->access$getListener$p()Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    move-result-object p2

    if-eqz p2, :cond_b

    sget-object v0, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-interface {p2, v0, p1}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    .line 196
    :cond_5
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-static {p1}, Lcom/innioasis/y1/utils/BLUtils;->access$adapterConnectionStateChanged(Lcom/innioasis/y1/utils/BLUtils;)V

    goto/16 :goto_1

    :sswitch_5
    const-string p1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_1

    .line 184
    :cond_6
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "\u5f00\u59cb\u641c\u7d22"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils;->access$getListener$p()Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_b

    sget-object p2, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_START:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-interface {p1, p2, v3}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_1

    .line 201
    :cond_7
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "ACTION_ACL_CONNECTED  \u5df2\u8fde\u63a5"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-static {v3}, Lcom/innioasis/y1/utils/BLUtils;->access$setRecordConnect$p(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :sswitch_7
    const-string p1, "android.bluetooth.device.action.UUID"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "android.bluetooth.device.extra.UUID"

    .line 213
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 549
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_b

    aget-object v2, p1, v0

    .line 214
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5e7f\u64ad\u63a5\u6536 UUID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    .line 167
    :cond_9
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-static {p1}, Lcom/innioasis/y1/utils/BLUtils;->access$actionChanged(Lcom/innioasis/y1/utils/BLUtils;)V

    goto :goto_1

    :sswitch_9
    const-string p1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    .line 190
    :cond_a
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "\u641c\u7d22\u5b8c\u6210"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils;->access$getListener$p()Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_b

    sget-object p2, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_END:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-interface {p1, p2, v3}, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;->onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V

    :cond_b
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a269925 -> :sswitch_9
        -0x5b36f014 -> :sswitch_8
        -0x16809cc6 -> :sswitch_7
        -0x11f77b4b -> :sswitch_6
        0x6724d8 -> :sswitch_5
        0x42f3be3f -> :sswitch_4
        0x459717c3 -> :sswitch_3
        0x4a286686 -> :sswitch_2
        0x6c9330ef -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch
.end method
