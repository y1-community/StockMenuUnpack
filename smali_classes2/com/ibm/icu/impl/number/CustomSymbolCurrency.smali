.class public Lcom/ibm/icu/impl/number/CustomSymbolCurrency;
.super Lcom/ibm/icu/util/Currency;
.source "CustomSymbolCurrency.java"


# static fields
.field private static final serialVersionUID:J = 0x22a8e0aa9d9a4e46L


# instance fields
.field private symbol1:Ljava/lang/String;

.field private symbol2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/Currency;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    return-void
.end method

.method public static resolve(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/util/Currency;
    .locals 3

    if-nez p0, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "XXX"

    .line 21
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    .line 26
    :cond_2
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p0}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    .line 31
    :cond_4
    :goto_0
    new-instance p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;

    invoke-direct {p0, v1, p1, v0}, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;

    iget-object v0, p1, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    iget-object v0, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 46
    aput-boolean p1, p3, p1

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    return-object p1

    .line 50
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/ibm/icu/util/Currency;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
