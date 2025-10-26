.class public final Lcom/innioasis/y1/utils/Static;
.super Ljava/lang/Object;
.source "Static.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/utils/Static$Battery;,
        Lcom/innioasis/y1/utils/Static$Headset;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002 !B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\tJ\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cJ\u0018\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\tJ\u000e\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\tR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0007R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0007R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0007R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0007\u00a8\u0006\""
    }
    d2 = {
        "Lcom/innioasis/y1/utils/Static;",
        "",
        "()V",
        "batteryValue",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/innioasis/y1/utils/Static$Battery;",
        "getBatteryValue",
        "()Landroidx/lifecycle/LiveData;",
        "bluetoothValue",
        "",
        "getBluetoothValue",
        "headsetValue",
        "Lcom/innioasis/y1/utils/Static$Headset;",
        "getHeadsetValue",
        "mBatteryValue",
        "Landroidx/lifecycle/MutableLiveData;",
        "mBluetoothValue",
        "mHeadsetValue",
        "mPlayValue",
        "mTimeValue",
        "playValue",
        "getPlayValue",
        "timeValue",
        "getTimeValue",
        "setBatteryValue",
        "",
        "i",
        "setBluetoothValue",
        "setHeadsetValue",
        "setPlayValue",
        "from",
        "setTimeValue",
        "Battery",
        "Headset",
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


# static fields
.field public static final INSTANCE:Lcom/innioasis/y1/utils/Static;

.field private static final mBatteryValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/innioasis/y1/utils/Static$Battery;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBluetoothValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHeadsetValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/innioasis/y1/utils/Static$Headset;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPlayValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTimeValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/Static;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/Static;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Static;->mBatteryValue:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Static;->mHeadsetValue:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Static;->mTimeValue:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Static;->mBluetoothValue:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Static;->mPlayValue:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic setPlayValue$default(Lcom/innioasis/y1/utils/Static;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/utils/Static;->setPlayValue(II)V

    return-void
.end method


# virtual methods
.method public final getBatteryValue()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/innioasis/y1/utils/Static$Battery;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mBatteryValue:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getBluetoothValue()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mBluetoothValue:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getHeadsetValue()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/innioasis/y1/utils/Static$Headset;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mHeadsetValue:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getPlayValue()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mPlayValue:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getTimeValue()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mTimeValue:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setBatteryValue(Lcom/innioasis/y1/utils/Static$Battery;)V
    .locals 1

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mBatteryValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setBluetoothValue(I)V
    .locals 1

    .line 42
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mBluetoothValue:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHeadsetValue(Lcom/innioasis/y1/utils/Static$Headset;)V
    .locals 1

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mHeadsetValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlayValue(II)V
    .locals 5

    .line 49
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mPlayValue:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u6807\u66f4\u6539"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u6765\u6e90"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  \u5f53\u524d\u64ad\u653e"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setTimeValue(I)V
    .locals 1

    .line 35
    sget-object v0, Lcom/innioasis/y1/utils/Static;->mTimeValue:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
