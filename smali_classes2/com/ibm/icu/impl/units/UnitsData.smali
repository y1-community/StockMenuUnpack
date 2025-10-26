.class public Lcom/ibm/icu/impl/units/UnitsData;
.super Ljava/lang/Object;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/UnitsData$CategoriesSink;,
        Lcom/ibm/icu/impl/units/UnitsData$Categories;,
        Lcom/ibm/icu/impl/units/UnitsData$Constants;,
        Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;
    }
.end annotation


# static fields
.field private static simpleUnitCategories:[I

.field private static simpleUnits:[Ljava/lang/String;


# instance fields
.field private conversionRates:Lcom/ibm/icu/impl/units/ConversionRates;

.field private unitPreferences:Lcom/ibm/icu/impl/units/UnitPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "units"

    .line 47
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 48
    new-instance v1, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;

    invoke-direct {v1}, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;-><init>()V

    const-string v2, "convertUnits"

    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 50
    iget-object v0, v1, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnits:[Ljava/lang/String;

    sput-object v0, Lcom/ibm/icu/impl/units/UnitsData;->simpleUnits:[Ljava/lang/String;

    .line 51
    iget-object v0, v1, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    sput-object v0, Lcom/ibm/icu/impl/units/UnitsData;->simpleUnitCategories:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/ibm/icu/impl/units/ConversionRates;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/ConversionRates;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsData;->conversionRates:Lcom/ibm/icu/impl/units/ConversionRates;

    .line 37
    new-instance v0, Lcom/ibm/icu/impl/units/UnitPreferences;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitPreferences;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsData;->unitPreferences:Lcom/ibm/icu/impl/units/UnitPreferences;

    return-void
.end method

.method public static getCategoryIndexOfSimpleUnit(I)I
    .locals 1

    .line 63
    sget-object v0, Lcom/ibm/icu/impl/units/UnitsData;->simpleUnitCategories:[I

    aget p0, v0, p0

    return p0
.end method

.method public static getSimpleUnits()[Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/ibm/icu/impl/units/UnitsData;->simpleUnits:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCategory(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/UnitsData;->getConversionRates()Lcom/ibm/icu/impl/units/ConversionRates;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/units/ConversionRates;->extractCompoundBaseUnit(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/ibm/icu/util/MeasureUnit;->fromMeasureUnitImpl(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    const-string v0, "meter-per-cubic-meter"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "consumption"

    return-object p1

    .line 82
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 83
    sget-object v0, Lcom/ibm/icu/impl/units/UnitsData$Categories;->indexToCategory:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getConversionRates()Lcom/ibm/icu/impl/units/ConversionRates;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsData;->conversionRates:Lcom/ibm/icu/impl/units/ConversionRates;

    return-object v0
.end method

.method public getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsData;->unitPreferences:Lcom/ibm/icu/impl/units/UnitPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/units/UnitPreferences;->getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    move-result-object p1

    return-object p1
.end method

.method public getUnitPreferences()Lcom/ibm/icu/impl/units/UnitPreferences;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsData;->unitPreferences:Lcom/ibm/icu/impl/units/UnitPreferences;

    return-object v0
.end method
