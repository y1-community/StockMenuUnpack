.class public Lcom/ibm/icu/util/CurrencyAmount;
.super Lcom/ibm/icu/util/Measure;
.source "CurrencyAmount.java"


# direct methods
.method public constructor <init>(DLcom/ibm/icu/util/Currency;)V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0, p3}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(DLjava/util/Currency;)V
    .locals 0

    .line 64
    invoke-static {p3}, Lcom/ibm/icu/util/Currency;->fromJavaCurrency(Ljava/util/Currency;)Lcom/ibm/icu/util/Currency;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(DLcom/ibm/icu/util/Currency;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/util/Currency;)V
    .locals 0

    .line 54
    invoke-static {p2}, Lcom/ibm/icu/util/Currency;->fromJavaCurrency(Ljava/util/Currency;)Lcom/ibm/icu/util/Currency;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V

    return-void
.end method


# virtual methods
.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/ibm/icu/util/CurrencyAmount;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency;

    return-object v0
.end method
