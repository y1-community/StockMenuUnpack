.class public Lcom/ibm/icu/impl/units/UnitsConverter;
.super Ljava/lang/Object;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/UnitsConverter$Factor;,
        Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;,
        Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private conversionRate:Ljava/math/BigDecimal;

.field private offset:Ljava/math/BigDecimal;

.field private reciprocal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1, p2, p3}, Lcom/ibm/icu/impl/units/UnitsConverter;->extractConvertibility(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    move-result-object v5

    .line 54
    invoke-virtual {p3, p1}, Lcom/ibm/icu/impl/units/ConversionRates;->getFactorToBase(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v3

    .line 55
    invoke-virtual {p3, p2}, Lcom/ibm/icu/impl/units/ConversionRates;->getFactorToBase(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v4

    .line 57
    sget-object v0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    if-ne v5, v0, :cond_0

    .line 58
    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->divide(Lcom/ibm/icu/impl/units/UnitsConverter$Factor;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Lcom/ibm/icu/impl/units/UnitsConverter$Factor;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    .line 63
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    if-ne v5, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->reciprocal:Z

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/units/ConversionRates;->getOffset(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/UnitsConverter$Factor;Lcom/ibm/icu/impl/units/UnitsConverter$Factor;Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-static {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    .line 34
    invoke-static {p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p2

    new-instance v0, Lcom/ibm/icu/impl/units/ConversionRates;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/ConversionRates;-><init>()V

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/units/UnitsConverter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V

    return-void
.end method

.method private static areDimensionsZeroes(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static extractConvertibility(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;
    .locals 1

    .line 72
    invoke-virtual {p2, p0}, Lcom/ibm/icu/impl/units/ConversionRates;->extractBaseUnits(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object p0

    .line 73
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/units/ConversionRates;->extractBaseUnits(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object p1

    .line 75
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 77
    invoke-static {p2, p0, v0}, Lcom/ibm/icu/impl/units/UnitsConverter;->insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    const/4 p0, -0x1

    .line 78
    invoke-static {p2, p1, p0}, Lcom/ibm/icu/impl/units/UnitsConverter;->insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    .line 80
    invoke-static {p2}, Lcom/ibm/icu/impl/units/UnitsConverter;->areDimensionsZeroes(Ljava/util/HashMap;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 82
    invoke-static {p2, p1, p0}, Lcom/ibm/icu/impl/units/UnitsConverter;->insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    .line 83
    invoke-static {p2}, Lcom/ibm/icu/impl/units/UnitsConverter;->areDimensionsZeroes(Ljava/util/HashMap;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    return-object p0

    .line 85
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->UNCONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    return-object p0
.end method

.method private static insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/SingleUnitImpl;",
            ">;I)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 94
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v0

    mul-int v0, v0, p2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v0

    mul-int v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 113
    iget-boolean v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->reciprocal:Z

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_0

    .line 120
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    .line 122
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public convertInverse(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->reciprocal:Z

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_0

    .line 136
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    .line 138
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getConversionInfo()Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;
    .locals 2

    .line 151
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;->conversionRate:Ljava/math/BigDecimal;

    .line 153
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;->offset:Ljava/math/BigDecimal;

    .line 154
    iget-boolean v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->reciprocal:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;->reciprocal:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnitsConverter [conversionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
