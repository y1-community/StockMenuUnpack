.class public Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;
.super Ljava/lang/Object;
.source "UnitsRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConverterPreference"
.end annotation


# instance fields
.field final converter:Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

.field final limit:Ljava/math/BigDecimal;

.field final precision:Ljava/lang/String;

.field final targetUnit:Lcom/ibm/icu/impl/units/MeasureUnitImpl;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Ljava/lang/String;Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 8

    const-wide/16 v0, 0x1

    .line 166
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/ibm/icu/impl/units/ConversionRates;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

    invoke-direct {v0, p1, p2, p5}, Lcom/ibm/icu/impl/units/ComplexUnitsConverter;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/ConversionRates;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->converter:Lcom/ibm/icu/impl/units/ComplexUnitsConverter;

    .line 173
    iput-object p3, p0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->limit:Ljava/math/BigDecimal;

    .line 174
    iput-object p4, p0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->precision:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/ibm/icu/impl/units/UnitsRouter$ConverterPreference;->targetUnit:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    return-void
.end method
