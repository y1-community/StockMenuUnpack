.class public Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;
.super Ljava/lang/Object;
.source "AffixTokenMatcherFactory.java"


# instance fields
.field public currency:Lcom/ibm/icu/util/Currency;

.field public ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

.field public locale:Lcom/ibm/icu/util/ULocale;

.field public parseFlags:I

.field public symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currency()Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->currency:Lcom/ibm/icu/util/Currency;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget v2, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->parseFlags:I

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->getInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/DecimalFormatSymbols;I)Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object v0

    return-object v0
.end method

.method public ignorables()Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    return-object v0
.end method

.method public minusSign()Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v0

    return-object v0
.end method

.method public percent()Lcom/ibm/icu/impl/number/parse/PercentMatcher;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Lcom/ibm/icu/impl/number/parse/PercentMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/PercentMatcher;

    move-result-object v0

    return-object v0
.end method

.method public permille()Lcom/ibm/icu/impl/number/parse/PermilleMatcher;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Lcom/ibm/icu/impl/number/parse/PermilleMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/PermilleMatcher;

    move-result-object v0

    return-object v0
.end method

.method public plusSign()Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;

    move-result-object v0

    return-object v0
.end method
