.class public interface abstract Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;
.super Ljava/lang/Object;
.source "BLUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/utils/BLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlStateChangedListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;",
        "",
        "onBlConnectError",
        "",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "errorCode",
        "",
        "onBlDeviceState",
        "state",
        "Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;",
        "bluetoothDevice",
        "onBlState",
        "Lcom/innioasis/y1/utils/BLUtils$State;",
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


# virtual methods
.method public abstract onBlConnectError(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBlState(Lcom/innioasis/y1/utils/BLUtils$State;)V
.end method
