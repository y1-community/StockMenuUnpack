.class public final Lcom/innioasis/y1/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rJ\u0008\u0010\u0011\u001a\u00020\rH\u0002J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/Utils;",
        "",
        "()V",
        "FORCE_NONE",
        "",
        "FORCE_SPEAKER",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "audioManager$delegate",
        "Lkotlin/Lazy;",
        "changeToBT",
        "",
        "changeToBl",
        "changeToHeadset",
        "changeToReceiver",
        "changeToSpeaker",
        "initKeyToneState",
        "activity",
        "Landroid/app/Activity;",
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
.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final INSTANCE:Lcom/innioasis/y1/utils/Utils;

.field private static final audioManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/Utils;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/Utils;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Utils;->INSTANCE:Lcom/innioasis/y1/utils/Utils;

    .line 16
    sget-object v0, Lcom/innioasis/y1/utils/Utils$audioManager$2;->INSTANCE:Lcom/innioasis/y1/utils/Utils$audioManager$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/utils/Utils;->audioManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final changeToSpeaker()V
    .locals 4

    .line 26
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/Static;->getBluetoothValue()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_1

    :goto_0
    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 28
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 29
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 30
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/innioasis/y1/utils/Utils;->audioManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public final changeToBT()V
    .locals 6

    .line 64
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "changeToBT"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.media.AudioSystem"

    .line 65
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 66
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "setForceUse"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final changeToBl()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 39
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 40
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 41
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public final changeToHeadset()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 49
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 50
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 51
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public final changeToReceiver()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 60
    invoke-direct {p0}, Lcom/innioasis/y1/utils/Utils;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method

.method public final initKeyToneState(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 72
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getSystemService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "Activity::class.java.get\u2026ice\", String::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroid/content/Context;

    const-string v3, "AUDIOPROFILE_SERVICE"

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "Context::class.java.getD\u2026d(\"AUDIOPROFILE_SERVICE\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 76
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 80
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "getSoundEffectEnabled"

    .line 79
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "mProfileManager::class.j\u2026ing::class.java\n        )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "mtk_audioprofile_general"

    aput-object v3, v1, v4

    .line 84
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 83
    invoke-virtual {v2, p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setRingtone(Z)V

    return-void
.end method
