.class public final Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;
.super Landroid/os/Handler;
.source "BluetoothActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/BluetoothActivity$handler$2;->invoke()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017\u00a8\u0006\u0006"
    }
    d2 = {
        "com/innioasis/y1/activity/BluetoothActivity$handler$2$1",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/BluetoothActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const v2, 0x7f110039

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    if-ne v0, v3, :cond_0

    .line 50
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->loading:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getAnimContinue$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v1, v4, v5}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x3

    if-ne v0, v1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->loading:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getAnimContinue$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v6, v4, v5}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    .line 58
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->loading:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getAnimContinue$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v3, v4, v5}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMag_connect_classic()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type android.bluetooth.BluetoothDevice"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMag_bl_switch()I

    move-result p1

    if-ne v0, p1, :cond_8

    .line 63
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 64
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils;->switchBl()V

    return-void

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getDeviceState$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    const v1, 0x7f110033

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 69
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getDevice$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 70
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/utils/BLUtils;->setActive(Z)V

    .line 71
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMag_bl_switch()I

    move-result p1

    invoke-virtual {p0, p1, v4, v5}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 76
    :cond_6
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getDeviceState$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    const v1, 0x7f110036

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 77
    iget-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMag_bl_switch()I

    move-result p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 79
    :cond_7
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils;->switchBl()V

    :cond_8
    :goto_0
    return-void
.end method
