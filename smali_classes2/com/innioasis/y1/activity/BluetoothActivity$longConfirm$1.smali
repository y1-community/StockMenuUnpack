.class public final Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "BluetoothActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/BluetoothActivity;->longConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothActivity.kt\ncom/innioasis/y1/activity/BluetoothActivity$longConfirm$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,550:1\n1851#2,2:551\n*S KotlinDebug\n*F\n+ 1 BluetoothActivity.kt\ncom/innioasis/y1/activity/BluetoothActivity$longConfirm$1\n*L\n511#1:551,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/activity/BluetoothActivity$longConfirm$1",
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
.field final synthetic $selDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/innioasis/y1/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/innioasis/y1/activity/BluetoothActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;->$selDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    .line 505
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 7

    .line 507
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    iget-object v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;->$selDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->unPair(Landroid/bluetooth/BluetoothDevice;)V

    .line 508
    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 509
    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->setMark(I)V

    .line 510
    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$showItemTips(Lcom/innioasis/y1/activity/BluetoothActivity;)V

    .line 511
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BLUtils;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    .line 551
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 512
    sget-object v4, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v4, v3}, Lcom/innioasis/y1/utils/BLUtils;->getConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 513
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u627e\u5230\u5df2\u8fde\u63a5\u7684\u8bbe\u5907 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x7f110033

    .line 514
    invoke-virtual {v2, v4}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.bl_connect)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$setDeviceState$p(Lcom/innioasis/y1/activity/BluetoothActivity;Ljava/lang/String;)V

    .line 515
    invoke-static {v2, v3}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$setDevice$p(Lcom/innioasis/y1/activity/BluetoothActivity;Landroid/bluetooth/BluetoothDevice;)V

    .line 517
    :cond_0
    invoke-virtual {v2}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/innioasis/y1/base/BaseBindingAdapter;->addData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
