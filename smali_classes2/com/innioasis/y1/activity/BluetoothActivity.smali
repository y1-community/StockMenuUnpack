.class public final Lcom/innioasis/y1/activity/BluetoothActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "BluetoothActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;",
        ">;",
        "Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothActivity.kt\ncom/innioasis/y1/activity/BluetoothActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,550:1\n1851#2,2:551\n1851#2,2:553\n1851#2,2:555\n*S KotlinDebug\n*F\n+ 1 BluetoothActivity.kt\ncom/innioasis/y1/activity/BluetoothActivity\n*L\n102#1:551,2\n175#1:553,2\n433#1:555,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000i\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0000*\u0001\r\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0013H\u0002J\u0008\u0010%\u001a\u00020#H\u0016J\u0008\u0010&\u001a\u00020#H\u0016J\u0008\u0010\'\u001a\u00020#H\u0016J\u0010\u0010(\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020\u0002H\u0016J\u0008\u0010+\u001a\u00020#H\u0002J\u0008\u0010,\u001a\u00020#H\u0016J\u0008\u0010-\u001a\u00020#H\u0016J\u0018\u0010.\u001a\u00020#2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u0013H\u0016J\u001a\u00100\u001a\u00020#2\u0006\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u00010\u0008H\u0017J\u0010\u00104\u001a\u00020#2\u0006\u00101\u001a\u000205H\u0016J\u0008\u00106\u001a\u00020#H\u0014J\u0008\u00107\u001a\u00020#H\u0016J\u0010\u00108\u001a\u00020#2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u00109\u001a\u00020#H\u0003J\u0010\u0010:\u001a\u00020#2\u0006\u00101\u001a\u00020;H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R&\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR&\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001e\u00a8\u0006<"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/BluetoothActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;",
        "Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;",
        "()V",
        "animContinue",
        "",
        "d",
        "Landroid/bluetooth/BluetoothDevice;",
        "device",
        "deviceState",
        "",
        "handler",
        "com/innioasis/y1/activity/BluetoothActivity$handler$2$1",
        "getHandler",
        "()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;",
        "handler$delegate",
        "Lkotlin/Lazy;",
        "mag_bl_switch",
        "",
        "getMag_bl_switch",
        "()I",
        "mag_connect_classic",
        "getMag_connect_classic",
        "myItem",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
        "getMyItem",
        "()Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "setMyItem",
        "(Lcom/innioasis/y1/base/BaseBindingAdapter;)V",
        "otherItem",
        "getOtherItem",
        "setOtherItem",
        "adjustmentScrollView",
        "",
        "titleNum",
        "antiClockwise",
        "clockwise",
        "confirm",
        "direction",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initRecycler",
        "initView",
        "longConfirm",
        "onBlConnectError",
        "errorCode",
        "onBlDeviceState",
        "state",
        "Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;",
        "bluetoothDevice",
        "onBlState",
        "Lcom/innioasis/y1/utils/BLUtils$State;",
        "onDestroy",
        "quit",
        "showBreakDialog",
        "showItemTips",
        "showState",
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
.field private animContinue:Z

.field private d:Landroid/bluetooth/BluetoothDevice;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private deviceState:Ljava/lang/String;

.field private final handler$delegate:Lkotlin/Lazy;

.field private final mag_bl_switch:I

.field private final mag_connect_classic:I

.field public myItem:Lcom/innioasis/y1/base/BaseBindingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
            ">;"
        }
    .end annotation
.end field

.field public otherItem:Lcom/innioasis/y1/base/BaseBindingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    const/16 v0, 0x32

    .line 35
    iput v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_connect_classic:I

    const/16 v0, 0x33

    .line 36
    iput v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_bl_switch:I

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2;-><init>(Lcom/innioasis/y1/activity/BluetoothActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->handler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAnimContinue$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->animContinue:Z

    return p0
.end method

.method public static final synthetic access$getDevice$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static final synthetic access$getDeviceState$p(Lcom/innioasis/y1/activity/BluetoothActivity;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setDevice$p(Lcom/innioasis/y1/activity/BluetoothActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public static final synthetic access$setDeviceState$p(Lcom/innioasis/y1/activity/BluetoothActivity;Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showItemTips(Lcom/innioasis/y1/activity/BluetoothActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->showItemTips()V

    return-void
.end method

.method private final adjustmentScrollView(I)V
    .locals 5

    .line 269
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    mul-int/lit8 p1, p1, 0x19

    add-int v1, v0, p1

    .line 271
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutList:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 272
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemHeight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   titleHeight  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   vb.scrollView.height "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutList:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heigth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutList:Landroidx/core/widget/NestedScrollView;

    add-int/lit8 v1, v1, 0x28

    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->setScrollY(I)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutList:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setScrollY(I)V

    :goto_0
    return-void
.end method

.method private final getHandler()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    return-object v0
.end method

.method private final initRecycler()V
    .locals 3

    .line 122
    new-instance v0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$1;-><init>(Lcom/innioasis/y1/activity/BluetoothActivity;)V

    check-cast v0, Lcom/innioasis/y1/base/BaseBindingAdapter;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->setMyItem(Lcom/innioasis/y1/base/BaseBindingAdapter;)V

    .line 141
    new-instance v0, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/BluetoothActivity$initRecycler$2;-><init>(Lcom/innioasis/y1/activity/BluetoothActivity;)V

    check-cast v0, Lcom/innioasis/y1/base/BaseBindingAdapter;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->setOtherItem(Lcom/innioasis/y1/base/BaseBindingAdapter;)V

    .line 157
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->recyclerMyDevice:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 158
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->recyclerMyDevice:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->recyclerOtherDevice:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->recyclerOtherDevice:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final showBreakDialog(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 534
    new-instance v6, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f11007b

    .line 535
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(R.string.dialog_bl_disconnect)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/activity/BluetoothActivity$showBreakDialog$1;

    invoke-direct {v0, p1}, Lcom/innioasis/y1/activity/BluetoothActivity$showBreakDialog$1;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    .line 534
    invoke-virtual/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;

    return-void
.end method

.method private final showItemTips()V
    .locals 7

    .line 237
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 239
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 240
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v3

    const-string v4, "vb.layoutTitle"

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 242
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutTitle:Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const v3, 0x7f08014a

    invoke-virtual {v0, v1, v3, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 243
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemChanged(I)V

    .line 244
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    if-gt v5, v3, :cond_1

    if-gt v3, v0, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 248
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutTitle:Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 250
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemChanged(I)V

    .line 252
    invoke-direct {p0, v5}, Lcom/innioasis/y1/activity/BluetoothActivity;->adjustmentScrollView(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v1, v0

    add-int/2addr v1, v5

    if-gt v3, v1, :cond_3

    if-gt v4, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 255
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemChanged(I)V

    .line 256
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 257
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutTitle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    .line 260
    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->adjustmentScrollView(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final showState(B)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutList:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->setVisibility(I)V

    .line 172
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->loading:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iput-boolean v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->animContinue:Z

    .line 174
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 175
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 553
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 176
    sget-object v2, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v2, v0}, Lcom/innioasis/y1/utils/BLUtils;->getConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u5230\u5df2\u8fde\u63a5\u7684\u8bbe\u5907 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x7f110033

    .line 178
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.bl_connect)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->addData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutList:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->loading:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 189
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getHandler()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v2, v0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    iput-boolean v2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->animContinue:Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutList:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->loading:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 196
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 197
    iput-boolean v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->animContinue:Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->setMark(I)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->showItemTips()V

    :cond_1
    return-void
.end method

.method public clockwise()V
    .locals 4

    .line 208
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->setMark(I)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->showItemTips()V

    :cond_1
    return-void
.end method

.method public confirm()V
    .locals 10

    .line 420
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e2d\u952e  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v0

    if-nez v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getHandler()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    move-result-object v0

    iget v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_bl_switch:I

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 425
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getHandler()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    move-result-object v0

    iget v1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_bl_switch:I

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    if-gt v1, v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "  address:"

    const-string v5, "name:"

    if-eqz v3, :cond_5

    .line 431
    :try_start_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 433
    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BLUtils;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 555
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 434
    sget-object v7, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v7, v6}, Lcom/innioasis/y1/utils/BLUtils;->getConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 435
    sget-object v7, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u627e\u5230\u5df2\u8fde\u63a5\u7684\u8bbe\u5907 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  \u9700\u8fde\u63a5\u8bbe\u5907 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 437
    invoke-direct {p0, v6}, Lcom/innioasis/y1/activity/BluetoothActivity;->showBreakDialog(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 441
    :cond_3
    sget-object v6, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v6, v1}, Lcom/innioasis/y1/utils/BLUtils;->setActive(Z)V

    goto :goto_1

    .line 445
    :cond_4
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getHandler()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    move-result-object v1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 447
    iget v3, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_connect_classic:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 448
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v3, 0x64

    .line 446
    invoke-virtual {v1, v2, v3, v4}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 452
    :cond_5
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-gt v0, v6, :cond_6

    if-gt v3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 453
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 454
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getHandler()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    move-result-object v1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 456
    iget v3, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_connect_classic:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 457
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->finish()V

    goto :goto_0

    .line 475
    :cond_1
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils;->startDiscovery()Z

    :goto_0
    return-void
.end method

.method public final getMag_bl_switch()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_bl_switch:I

    return v0
.end method

.method public final getMag_connect_classic()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_connect_classic:I

    return v0
.end method

.method public final getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->myItem:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "myItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->otherItem:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "otherItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 6

    const v0, 0x7f110040

    .line 94
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.bluetooth)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->setStateBarLeftText(Ljava/lang/String;)V

    const v0, 0x7f110034

    .line 95
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.bl_connect_dis)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    move-object v1, p0

    check-cast v1, Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->setListener(Lcom/innioasis/y1/utils/BLUtils$BlStateChangedListener;)V

    .line 97
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->initRecycler()V

    .line 99
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BLUtils;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->showState(B)V

    .line 101
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BLUtils;->startDiscovery()Z

    .line 102
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BLUtils;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 551
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 103
    sget-object v3, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/utils/BLUtils;->getConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u627e\u5230\u5df2\u8fde\u63a5\u7684\u8bbe\u5907 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x7f110033

    .line 105
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.bl_connect)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->addData(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 112
    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->showState(B)V

    .line 113
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_1
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->layoutTitle:Landroid/widget/LinearLayout;

    const-string v3, "vb.layoutTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const v3, 0x7f08014a

    invoke-virtual {v0, v2, v3, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    return-void
.end method

.method public longConfirm()V
    .locals 9

    .line 499
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u84dd\u7259  \u957f\u6309\u4e2d\u952e  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    const/4 v3, 0x1

    if-gt v3, v1, :cond_1

    if-gt v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 502
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMark()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 503
    new-instance v7, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v1, 0x7f11003f

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.bl_unpair)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    new-instance v1, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;

    invoke-direct {v1, v0, p0}, Lcom/innioasis/y1/activity/BluetoothActivity$longConfirm$1;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/innioasis/y1/activity/BluetoothActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x18

    const/4 v8, 0x0

    const-string v3, ""

    move-object v1, v7

    move v7, v0

    .line 503
    invoke-static/range {v1 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    :cond_2
    return-void
.end method

.method public onBlConnectError(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    const-string p2, "device"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object p2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->d:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_0

    .line 378
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110035

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 379
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->d:Landroid/bluetooth/BluetoothDevice;

    .line 389
    sget-object p2, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p2, p1}, Lcom/innioasis/y1/utils/BLUtils;->connectClassic(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public onBlDeviceState(Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_3

    .line 362
    iput-object p2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    const p1, 0x7f110034

    .line 363
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.bl_connect_dis)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 365
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 350
    :pswitch_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getHandler()Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;

    move-result-object p1

    iget v0, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->mag_connect_classic:I

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/BluetoothActivity$handler$2$1;->removeMessages(I)V

    if-eqz p2, :cond_3

    .line 352
    iput-object p2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    const p1, 0x7f110033

    .line 353
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.bl_connect)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 355
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 356
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/BLUtils;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 357
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->remove(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz p2, :cond_3

    .line 342
    iput-object p2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    const p1, 0x7f110036

    .line 343
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/BluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.bl_connecting)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 345
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 337
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->addData(Ljava/lang/Object;)V

    goto :goto_1

    .line 333
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->showState(B)V

    goto :goto_1

    .line 330
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/BluetoothActivity;->showState(B)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 321
    iput-object p2, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->device:Landroid/bluetooth/BluetoothDevice;

    const-string p1, ""

    .line 322
    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->deviceState:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 324
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 325
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getMyItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 314
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getOtherItem()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBlState(Lcom/innioasis/y1/utils/BLUtils$State;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f11003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    sget-object p1, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/BLUtils;->startDiscovery()Z

    .line 295
    invoke-direct {p0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->showState(B)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-direct {p0, v2}, Lcom/innioasis/y1/activity/BluetoothActivity;->showState(B)V

    .line 288
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityBlutoothBinding;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f11003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/BluetoothActivity;->setMark(I)V

    .line 290
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->showItemTips()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 490
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onDestroy()V

    .line 491
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "base \u9500\u6bc1 \u84dd\u7259\u670d\u52a1"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    sget-object v0, Lcom/innioasis/y1/utils/BLUtils;->INSTANCE:Lcom/innioasis/y1/utils/BLUtils;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BluetoothActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/BLUtils;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final setMyItem(Lcom/innioasis/y1/base/BaseBindingAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->myItem:Lcom/innioasis/y1/base/BaseBindingAdapter;

    return-void
.end method

.method public final setOtherItem(Lcom/innioasis/y1/base/BaseBindingAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/innioasis/y1/databinding/ItemBlutoothBinding;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/innioasis/y1/activity/BluetoothActivity;->otherItem:Lcom/innioasis/y1/base/BaseBindingAdapter;

    return-void
.end method
