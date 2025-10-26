.class Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureUnitImplComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/impl/units/MeasureUnitImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final conversionRates:Lcom/ibm/icu/impl/units/ConversionRates;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 0

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-object p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Lcom/ibm/icu/impl/units/ConversionRates;

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;)I
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Lcom/ibm/icu/impl/units/ConversionRates;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/units/ConversionRates;->getFactorToBase(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object p1

    .line 751
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Lcom/ibm/icu/impl/units/ConversionRates;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/units/ConversionRates;->getFactorToBase(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object p2

    .line 753
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 741
    check-cast p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    check-cast p2, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->compare(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;)I

    move-result p1

    return p1
.end method
