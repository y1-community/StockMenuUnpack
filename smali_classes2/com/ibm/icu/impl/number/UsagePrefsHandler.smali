.class public Lcom/ibm/icu/impl/number/UsagePrefsHandler;
.super Ljava/lang/Object;
.source "UsagePrefsHandler.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field private fUnitsRouter:Lcom/ibm/icu/impl/units/UnitsRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Ljava/lang/String;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p4, p0, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    .line 23
    new-instance p4, Lcom/ibm/icu/impl/units/UnitsRouter;

    .line 24
    invoke-virtual {p2}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p2, p1, p3}, Lcom/ibm/icu/impl/units/UnitsRouter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->fUnitsRouter:Lcom/ibm/icu/impl/units/UnitsRouter;

    return-void
.end method

.method protected static mixedMeasuresToMicros(Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->measures:Ljava/util/List;

    iput-object v0, p2, Lcom/ibm/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    .line 34
    iget p0, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->indexOfQuantity:I

    iput p0, p2, Lcom/ibm/icu/impl/number/MicroProps;->indexOfQuantity:I

    .line 35
    iget-object p0, p2, Lcom/ibm/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    iget p2, p2, Lcom/ibm/icu/impl/number/MicroProps;->indexOfQuantity:I

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Measure;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;

    invoke-interface {p1, p0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->setToBigDecimal(Ljava/math/BigDecimal;)V

    return-void
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

    .line 46
    iget-object v0, p0, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->fUnitsRouter:Lcom/ibm/icu/impl/units/UnitsRouter;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/UnitsRouter;->getOutputUnits()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    .line 61
    iget-object v1, p0, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->fUnitsRouter:Lcom/ibm/icu/impl/units/UnitsRouter;

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/units/UnitsRouter;->route(Ljava/math/BigDecimal;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;

    move-result-object v1

    .line 62
    iget-object v2, v1, Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;->outputUnit:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/impl/number/MicroProps;->outputUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 63
    iget-object v1, v1, Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;->complexConverterResult:Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    invoke-static {v1, p1, v0}, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->mixedMeasuresToMicros(Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)V

    return-object v0
.end method
