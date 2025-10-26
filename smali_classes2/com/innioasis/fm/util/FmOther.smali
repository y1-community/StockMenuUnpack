.class public final Lcom/innioasis/fm/util/FmOther;
.super Ljava/lang/Object;
.source "FmOther.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFmOther.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FmOther.kt\ncom/innioasis/fm/util/FmOther\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1851#2,2:106\n1851#2,2:108\n*S KotlinDebug\n*F\n+ 1 FmOther.kt\ncom/innioasis/fm/util/FmOther\n*L\n84#1:106,2\n100#1:108,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\r2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\r2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/fm/util/FmOther;",
        "",
        "()V",
        "addFrequency",
        "",
        "frequency",
        "",
        "addSearchFrequency",
        "myRound",
        "data",
        "ws",
        "",
        "removeCurrentFrequency",
        "",
        "removeSearchFrequency",
        "switchNextFrequency",
        "lastTimeFrequency",
        "mode",
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
.field public static final INSTANCE:Lcom/innioasis/fm/util/FmOther;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/fm/util/FmOther;

    invoke-direct {v0}, Lcom/innioasis/fm/util/FmOther;-><init>()V

    sput-object v0, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic myRound$default(Lcom/innioasis/fm/util/FmOther;FIILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/fm/util/FmOther;->myRound(FI)F

    move-result p0

    return p0
.end method

.method public static synthetic removeCurrentFrequency$default(Lcom/innioasis/fm/util/FmOther;FILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/fm/util/FmOther;->removeCurrentFrequency(F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic removeSearchFrequency$default(Lcom/innioasis/fm/util/FmOther;FILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/fm/util/FmOther;->removeSearchFrequency(F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addFrequency(F)Z
    .locals 2

    .line 51
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentRegionalFrequency()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 57
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->setCurrentRegionalFrequency(Ljava/util/List;)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final addSearchFrequency(F)Z
    .locals 2

    .line 63
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentSearchFrequency()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 69
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1, v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->setCurrentSearchFrequency(Ljava/util/List;)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final myRound(FI)F
    .locals 4

    int-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    mul-float p1, p1, p2

    float-to-double v0, p1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float p1, v0

    div-float/2addr p1, p2

    return p1
.end method

.method public final removeCurrentFrequency(F)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 96
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setCurrentRegionalFrequency(Ljava/util/List;)V

    return-object p1

    .line 99
    :cond_1
    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentRegionalFrequency()Ljava/util/List;

    move-result-object v1

    .line 100
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 108
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 100
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f85\u5220\u9664  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setCurrentRegionalFrequency(Ljava/util/List;)V

    return-object v1
.end method

.method public final removeSearchFrequency(F)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 80
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0, p1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setCurrentSearchFrequency(Ljava/util/List;)V

    return-object p1

    .line 83
    :cond_1
    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentRegionalFrequency()Ljava/util/List;

    move-result-object v1

    .line 84
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 106
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 84
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f85\u5220\u9664  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    sget-object p1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {p1, v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->setCurrentSearchFrequency(Ljava/util/List;)V

    return-object v1
.end method

.method public final switchNextFrequency(FI)F
    .locals 4

    .line 21
    sget-object v0, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v0}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentRegionalFrequency()Ljava/util/List;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentSearchFrequency()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    if-lez p2, :cond_3

    const/4 p2, 0x0

    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge p2, v2, :cond_2

    .line 30
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_1

    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    .line 38
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    const/4 v2, -0x1

    if-ge v2, v1, :cond_5

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_4

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    return p2
.end method
