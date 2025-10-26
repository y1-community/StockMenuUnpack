.class public Lcom/ibm/icu/impl/units/UnitsRouter;
.super Ljava/lang/Object;
.source "UnitsRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;,
        Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private converterPreferences_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;",
            ">;"
        }
    .end annotation
.end field

.field private outputUnits_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsRouter;->outputUnits_:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsRouter;->converterPreferences_:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsData;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsData;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/units/UnitsData;->getCategory(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1, p3, p2}, Lcom/ibm/icu/impl/units/UnitsData;->getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    move-result-object p2

    const/4 p3, 0x0

    .line 61
    :goto_0
    array-length v1, p2

    if-ge p3, v1, :cond_2

    .line 62
    aget-object v1, p2, p3

    .line 65
    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->parseForIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v5

    .line 67
    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->getSkeleton()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "precision-increment"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Only `precision-increment` is allowed"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 78
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/units/UnitsRouter;->outputUnits_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/ibm/icu/impl/units/UnitsRouter;->converterPreferences_:Ljava/util/ArrayList;

    new-instance v9, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;

    .line 80
    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->getGeq()Ljava/math/BigDecimal;

    move-result-object v6

    .line 81
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/UnitsData;->getConversionRates()Lcom/ibm/icu/impl/units/ConversionRates;

    move-result-object v8

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/ibm/icu/impl/units/ConversionRates;)V

    .line 79
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/units/UnitsRouter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static parseSkeletonToPrecision(Ljava/lang/String;)Lcom/ibm/icu/number/Precision;
    .locals 1

    const-string v0, "precision-increment/"

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ibm/icu/number/Precision;->increment(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    new-instance p0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v0, "precisionSkeleton is only precision-increment"

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOutputUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsRouter;->outputUnits_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public route(Ljava/math/BigDecimal;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p2, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/units/UnitsRouter;->converterPreferences_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;

    .line 91
    iget-object v3, v0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->converter:Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v4

    iget-object v5, v0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->limit:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4, v5}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->greaterThanOrEqual(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    if-eqz v1, :cond_4

    .line 100
    instance-of v2, v1, Lcom/ibm/icu/number/Precision$BogusRounder;

    if-eqz v2, :cond_4

    .line 101
    check-cast v1, Lcom/ibm/icu/number/Precision$BogusRounder;

    .line 102
    iget-object v2, v0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->precision:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 103
    iget-object v2, v0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->precision:Ljava/lang/String;

    invoke-static {v2}, Lcom/ibm/icu/impl/units/UnitsRouter;->parseSkeletonToPrecision(Ljava/lang/String;)Lcom/ibm/icu/number/Precision;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/number/Precision$BogusRounder;->into(Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/number/Precision;

    move-result-object v1

    goto :goto_1

    .line 108
    :cond_3
    invoke-static {}, Lcom/ibm/icu/number/Precision;->integer()Lcom/ibm/icu/number/FractionPrecision;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/ibm/icu/number/FractionPrecision;->withMinDigits(I)Lcom/ibm/icu/number/Precision;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/number/Precision$BogusRounder;->into(Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/number/Precision;

    move-result-object v1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 113
    iput-object v1, p2, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    .line 115
    :cond_5
    new-instance p2, Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;

    iget-object v2, v0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->converter:Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

    .line 116
    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->convert(Ljava/math/BigDecimal;Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    move-result-object p1

    iget-object v0, v0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->targetUnit:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {p2, p0, p1, v0}, Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;-><init>(Lcom/ibm/icu/impl/units/UnitsRouter;Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Lcom/ibm/icu/impl/units/MeasureUnitImpl;)V

    return-object p2
.end method
