.class public Lcom/ibm/icu/impl/number/UnitConversionHandler;
.super Ljava/lang/Object;
.source "UnitConversionHandler.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# instance fields
.field private fComplexUnitConverter:Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

.field private fOutputUnit:Lcom/ibm/icu/util/MeasureUnit;

.field private final fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ibm/icu/impl/number/UnitConversionHandler;->fOutputUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 30
    iput-object p2, p0, Lcom/ibm/icu/impl/number/UnitConversionHandler;->fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    .line 31
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

    new-instance v0, Lcom/ibm/icu/impl/units/ConversionRates;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/ConversionRates;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V

    iput-object p2, p0, Lcom/ibm/icu/impl/number/UnitConversionHandler;->fComplexUnitConverter:Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

    return-void
.end method


# virtual methods
.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/ibm/icu/impl/number/UnitConversionHandler;->fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 42
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    .line 43
    iget-object v1, p0, Lcom/ibm/icu/impl/number/UnitConversionHandler;->fComplexUnitConverter:Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

    .line 44
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v3, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;->convert(Ljava/math/BigDecimal;Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/ibm/icu/impl/number/UnitConversionHandler;->fOutputUnit:Lcom/ibm/icu/util/MeasureUnit;

    iput-object v2, v0, Lcom/ibm/icu/impl/number/MicroProps;->outputUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 47
    invoke-static {v1, p1, v0}, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->mixedMeasuresToMicros(Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)V

    return-object v0
.end method
