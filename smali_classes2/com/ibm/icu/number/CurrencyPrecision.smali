.class public abstract Lcom/ibm/icu/number/CurrencyPrecision;
.super Lcom/ibm/icu/number/Precision;
.source "CurrencyPrecision.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ibm/icu/number/Precision;-><init>()V

    return-void
.end method


# virtual methods
.method public withCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    invoke-static {p0, p1}, Lcom/ibm/icu/number/CurrencyPrecision;->constructFromCurrency(Lcom/ibm/icu/number/CurrencyPrecision;Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/ibm/icu/number/CurrencyPrecision;->trailingZeroDisplay:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    iput-object v0, p1, Lcom/ibm/icu/number/Precision;->trailingZeroDisplay:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Currency must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
