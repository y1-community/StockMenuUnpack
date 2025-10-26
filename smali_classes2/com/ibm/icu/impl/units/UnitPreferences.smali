.class public Lcom/ibm/icu/impl/units/UnitPreferences;
.super Ljava/lang/Object;
.source "UnitPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;,
        Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mapToUnitPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "units"

    .line 21
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 22
    new-instance v1, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;

    invoke-direct {v1}, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;-><init>()V

    const-string v2, "unitPreferenceData"

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 24
    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;->getMapToUnitPreferences()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    return-void
.end method

.method public static formMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "++"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAllUsages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 49
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-string v1, "default"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;
    .locals 0

    .line 81
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/units/UnitPreferences;->formMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 85
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    goto :goto_0

    :cond_0
    const-string p2, "001"

    .line 87
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;
    .locals 3

    .line 60
    invoke-static {p2}, Lcom/ibm/icu/impl/units/UnitPreferences;->getAllUsages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 63
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v1, p2, v2

    .line 64
    invoke-direct {p0, p1, v1, p3}, Lcom/ibm/icu/impl/units/UnitPreferences;->getUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method
