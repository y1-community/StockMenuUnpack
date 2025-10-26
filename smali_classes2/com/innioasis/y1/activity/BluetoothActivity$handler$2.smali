.class final Lcom/innioasis/y1/activity/BluetoothActivity$handler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/BluetoothActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "com/innioasis/y1/activity/BluetoothActivity$handler$2$1",
        "invoke",
        "()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;"
    }
    k = 0x3
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
.method constructor <init>(Lcom/innioasis/y1/activity/BluetoothActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;
    .locals 3

    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    iget-object v2, p0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-direct {v1, v2, v0}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;-><init>(Lcom/innioasis/y1/activity/BluetoothActivity;Landroid/os/Looper;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2;->invoke()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    move-result-object v0

    return-object v0
.end method
