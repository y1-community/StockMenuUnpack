.class public Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;
.super Ljava/lang/Object;
.source "CurrencyPluralInfoAffixProvider.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/AffixPatternProvider;


# instance fields
.field private final affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/CurrencyPluralInfo;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    .line 16
    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->copyFrom(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 17
    sget-object p2, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/StandardPlural;

    .line 18
    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V

    .line 20
    iget-object v2, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    new-instance v3, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    invoke-direct {v3, v0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;-><init>(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V

    aput-object v3, v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public charAt(II)C
    .locals 2

    and-int/lit16 v0, p1, 0xff

    .line 27
    iget-object v1, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->charAt(II)C

    move-result p1

    return p1
.end method

.method public containsSymbolType(I)Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->containsSymbolType(I)Z

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    and-int/lit16 v0, p1, 0xff

    .line 39
    iget-object v1, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasBody()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasCurrencySign()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->hasCurrencySign()Z

    move-result v0

    return v0
.end method

.method public hasNegativeSubpattern()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v0

    return v0
.end method

.method public length(I)I
    .locals 2

    and-int/lit16 v0, p1, 0xff

    .line 33
    iget-object v1, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->length(I)I

    move-result p1

    return p1
.end method

.method public negativeHasMinusSign()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negativeHasMinusSign()Z

    move-result v0

    return v0
.end method

.method public positiveHasPlusSign()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->positiveHasPlusSign()Z

    move-result v0

    return v0
.end method
