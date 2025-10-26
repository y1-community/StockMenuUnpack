.class public Lcom/ibm/icu/impl/units/ConversionRates;
.super Ljava/lang/Object;
.source "ConversionRates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;,
        Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;
    }
.end annotation


# instance fields
.field private mapToConversionRate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "units"

    .line 28
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 29
    new-instance v1, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;

    invoke-direct {v1}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;-><init>()V

    const-string v2, "convertUnits"

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 31
    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;->getMapToConversionRate()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    return-void
.end method

.method private checkSimpleUnit(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Z
    .locals 3

    .line 129
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->SINGLE:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 132
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v0, v1, :cond_1

    return v2

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private getFactorToBase(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 3

    .line 42
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/ibm/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->getConversionRate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->processFactor(Ljava/lang/String;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->applyPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->power(I)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public extractBaseUnits(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/units/MeasureUnitImpl;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 97
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/units/ConversionRates;->extractBaseUnits(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public extractBaseUnits(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/units/SingleUnitImpl;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->parseForIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->applyDimensionality(I)V

    .line 119
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public extractCompoundBaseUnit(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/units/ConversionRates;->extractBaseUnits(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object p1

    .line 83
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 86
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFactorToBase(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 2

    .line 53
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 56
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/units/ConversionRates;->getFactorToBase(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Lcom/ibm/icu/impl/units/UnitsConverter$Factor;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getOffset(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/UnitsConverter$Factor;Lcom/ibm/icu/impl/units/UnitsConverter$Factor;Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;)Ljava/math/BigDecimal;
    .locals 2

    .line 65
    sget-object p3, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    const-wide/16 v0, 0x0

    if-eq p5, p3, :cond_0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/units/ConversionRates;->checkSimpleUnit(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/units/ConversionRates;->checkSimpleUnit(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object p2

    .line 71
    iget-object p3, p0, Lcom/ibm/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->getOffset()Ljava/math/BigDecimal;

    move-result-object p1

    .line 72
    iget-object p3, p0, Lcom/ibm/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;->getOffset()Ljava/math/BigDecimal;

    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 75
    invoke-virtual {p4}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object p2

    sget-object p3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 66
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method
