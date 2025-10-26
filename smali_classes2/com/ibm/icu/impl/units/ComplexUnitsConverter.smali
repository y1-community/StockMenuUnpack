.class public Lcom/ibm/icu/impl/units/ComplexUnitsConverter;
.super Ljava/lang/Object;
.source "ComplexUnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EPSILON:Ljava/math/BigDecimal;

.field public static final EPSILON_MULTIPLIER:Ljava/math/BigDecimal;


# instance fields
.field private inputUnit_:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

.field private unitsConverters_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/UnitsConverter;",
            ">;"
        }
    .end annotation
.end field

.field private units_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->EPSILON:Ljava/math/BigDecimal;

    const-wide/16 v1, 0x1

    .line 26
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->extractIndividualUnitsWithIndices()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    const/4 v0, 0x0

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object p1, p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    iput-object p1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    .line 52
    new-instance p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    invoke-direct {p1, p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;-><init>(Lcom/ibm/icu/impl/units/ConversionRates;)V

    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    .line 55
    iget-object v2, v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    iget-object v3, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {p1, v2, v3}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->compare(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;)I

    move-result v2

    if-lez v2, :cond_0

    .line 56
    iget-object v1, v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    iput-object v1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->init(Lcom/ibm/icu/impl/units/ConversionRates;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    .line 94
    invoke-virtual {p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->extractIndividualUnitsWithIndices()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    .line 97
    invoke-direct {p0, p3}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->init(Lcom/ibm/icu/impl/units/ConversionRates;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-static {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    .line 75
    invoke-static {p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p2

    new-instance v0, Lcom/ibm/icu/impl/units/ConversionRates;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/ConversionRates;-><init>()V

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V

    return-void
.end method

.method private applyRounder(Ljava/util/List;Ljava/math/BigDecimal;Lcom/ibm/icu/number/Precision;)Ljava/math/BigDecimal;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/math/BigDecimal;",
            "Lcom/ibm/icu/number/Precision;",
            ")",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p2

    .line 240
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    .line 241
    invoke-virtual {p3, v0}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    .line 242
    invoke-interface {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p2

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    return-object p2

    .line 250
    :cond_1
    iget-object p3, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 251
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/units/UnitsConverter;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/units/UnitsConverter;->convertInverse(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 253
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_2

    return-object p2

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/UnitsConverter;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    .line 257
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-lez p3, :cond_4

    .line 261
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/units/UnitsConverter;

    .line 262
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/UnitsConverter;->convertInverse(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    .line 263
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 264
    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 265
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    .line 268
    :cond_3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/units/UnitsConverter;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, p3, -0x1

    .line 269
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object p2
.end method

.method private init(Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    new-instance v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;

    invoke-direct {v1, p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;-><init>(Lcom/ibm/icu/impl/units/ConversionRates;)V

    .line 107
    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-nez v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    new-instance v3, Lcom/ibm/icu/impl/units/UnitsConverter;

    iget-object v4, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    iget-object v5, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v5, v5, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v3, v4, v5, p1}, Lcom/ibm/icu/impl/units/UnitsConverter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    new-instance v3, Lcom/ibm/icu/impl/units/UnitsConverter;

    iget-object v4, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    .line 129
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v4, v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    iget-object v5, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v5, v5, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v3, v4, v5, p1}, Lcom/ibm/icu/impl/units/UnitsConverter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public convert(Ljava/math/BigDecimal;Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
    .locals 8

    .line 167
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 168
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    .line 170
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 179
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    iget-object v2, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_2

    .line 181
    iget-object v6, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/impl/units/UnitsConverter;

    invoke-virtual {v6, p1}, Lcom/ibm/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    add-int/lit8 v6, v2, -0x1

    if-ge v4, v6, :cond_1

    .line 190
    sget-object v6, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    invoke-virtual {p1, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    sget-object v7, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v6, v3, v7}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    .line 191
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 196
    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 197
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->applyRounder(Ljava/util/List;Ljava/math/BigDecimal;Lcom/ibm/icu/number/Precision;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 207
    new-instance p2, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 208
    :goto_1
    iget-object v4, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v4, 0x0

    .line 209
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_5

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_4

    .line 216
    new-instance v4, Lcom/ibm/icu/util/Measure;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v7, v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v7}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    .line 217
    iget-object v6, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget v6, v6, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->index:I

    invoke-interface {p2, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 219
    :cond_4
    iget-object v4, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget v4, v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->index:I

    .line 220
    new-instance v5, Lcom/ibm/icu/util/Measure;

    .line 221
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    iget-object v7, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    .line 222
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v7, v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v7}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    .line 223
    invoke-interface {p2, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v5, v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 227
    :cond_5
    new-instance p1, Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    invoke-direct {p1, v5, p2}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;-><init>(ILjava/util/List;)V

    return-object p1
.end method

.method public greaterThanOrEqual(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/units/UnitsConverter;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComplexUnitsConverter [unitsConverters_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", units_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
