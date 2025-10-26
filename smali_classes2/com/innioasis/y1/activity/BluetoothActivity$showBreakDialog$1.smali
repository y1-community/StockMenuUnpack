.class public final Lcom/innioasis/y1/activity/BluetoothActivity$showBreakDialog$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "BluetoothActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/BluetoothActivity;->showBreakDialog(Landroid/bluetooth/BluetoothDevice;)V
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
        "com/innioasis/y1/activity/BluetoothActivity$showBreakDialog$1",
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
.field final synthetic $device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$showBreakDialog$1;->$device:Landroid/bluetooth/BluetoothDevice;

    .line 535
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 538
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->setActive(Z)V

    .line 539
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    iget-object v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$showBreakDialog$1;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
