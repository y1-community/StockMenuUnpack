.class public final Lcom/innioasis/y1/utils/EqUtils;
.super Ljava/lang/Object;
.source "EqUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rJ\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/EqUtils;",
        "",
        "()V",
        "equalizer2",
        "Landroid/media/audiofx/Equalizer;",
        "getEqualizer2",
        "()Landroid/media/audiofx/Equalizer;",
        "equalizer2$delegate",
        "Lkotlin/Lazy;",
        "initEq",
        "",
        "saveMusicEqData",
        "p",
        "Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;",
        "setBand",
        "equalizer",
        "bandIndex",
        "",
        "level",
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
.field public static final INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

.field private static final equalizer2$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/EqUtils;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/EqUtils;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/EqUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils;

    .line 12
    sget-object v0, Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/utils/EqUtils;->equalizer2$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEqualizer2()Landroid/media/audiofx/Equalizer;
    .locals 1

    .line 12
    sget-object v0, Lcom/innioasis/y1/utils/EqUtils;->equalizer2$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/Equalizer;

    return-object v0
.end method

.method public final initEq()V
    .locals 5

    .line 24
    sget-object v0, Lcom/innioasis/y1/activity/EqActivity;->Companion:Lcom/innioasis/y1/activity/EqActivity$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$Companion;->getEqList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/EqSPUtils;->getEqualizerInt()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/EqActivity$EqData;->getEqParameter()Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v0

    .line 25
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u673a \u521d\u59cb\u5316Eq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz60()S

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 28
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz230()S

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 29
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz910()S

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 30
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz3600()S

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 31
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz14000()S

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    return-void
.end method

.method public final saveMusicEqData(Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V
    .locals 5

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveMusicEqData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz60()S

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/innioasis/y1/utils/EqUtils;->setBand(Landroid/media/audiofx/Equalizer;SS)V

    .line 42
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz230()S

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/innioasis/y1/utils/EqUtils;->setBand(Landroid/media/audiofx/Equalizer;SS)V

    .line 43
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz910()S

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/innioasis/y1/utils/EqUtils;->setBand(Landroid/media/audiofx/Equalizer;SS)V

    .line 44
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz3600()S

    move-result v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/innioasis/y1/utils/EqUtils;->setBand(Landroid/media/audiofx/Equalizer;SS)V

    .line 45
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils;->getEqualizer2()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->getHz14000()S

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/innioasis/y1/utils/EqUtils;->setBand(Landroid/media/audiofx/Equalizer;SS)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setBand(Landroid/media/audiofx/Equalizer;SS)V
    .locals 2

    const-string v0, "equalizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v0

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    goto :goto_1

    .line 63
    :cond_1
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u65e0\u6548\u7684 bandIndex "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
