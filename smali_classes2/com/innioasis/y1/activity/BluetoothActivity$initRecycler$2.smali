.class public final Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "BluetoothActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/BluetoothActivity;->initRecycler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/BluetoothActivity$initRecycler$2",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
        "init",
        "",
        "binding",
        "bean",
        "pos",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/BluetoothActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 141
    check-cast p1, Lcom/innioasis/y1/databinding/ItemBlutoothBinding;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->init(Lcom/innioasis/y1/databinding/ItemBlutoothBinding;Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemBlutoothBinding;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemBlutoothBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/ItemBlutoothBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 145
    iget-object v2, p0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    if-ne p3, v2, :cond_0

    const v2, 0x7f08005a

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 146
    :goto_0
    iget-object v5, p0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v5}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v5

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {v6}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    if-ne p3, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 144
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 148
    iget-object p3, p0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-static {p3}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getDevice$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;->this$0:Lcom/innioasis/y1/activity/BluetoothActivity;

    .line 149
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 150
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemBlutoothBinding;->tvState:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->access$getDeviceState$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 152
    :cond_2
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemBlutoothBinding;->tvState:Landroid/widget/TextView;

    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method
