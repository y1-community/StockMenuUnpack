.class public Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;
.super Ljava/lang/Object;
.source "CombinedCurrencyMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field private final afterPrefixInsert:Ljava/lang/String;

.field private final beforeSuffixInsert:Ljava/lang/String;

.field private final currency1:Ljava/lang/String;

.field private final currency2:Ljava/lang/String;

.field private final isoCode:Ljava/lang/String;

.field private final localLongNames:[Ljava/lang/String;

.field private final longNameTrie:Lcom/ibm/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final symbolTrie:Lcom/ibm/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p2, v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    const/4 v2, 0x1

    .line 54
    invoke-virtual {p2, v0, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    and-int/lit16 p3, p3, 0x2000

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 60
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ibm/icu/util/Currency;->getParsingTrie(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/TextTrieMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Lcom/ibm/icu/impl/TextTrieMap;

    .line 61
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ibm/icu/util/Currency;->getParsingTrie(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/TextTrieMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->symbolTrie:Lcom/ibm/icu/impl/TextTrieMap;

    .line 62
    iput-object v3, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    goto :goto_1

    .line 65
    :cond_0
    iput-object v3, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Lcom/ibm/icu/impl/TextTrieMap;

    .line 66
    iput-object v3, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->symbolTrie:Lcom/ibm/icu/impl/TextTrieMap;

    .line 67
    sget p3, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    .line 68
    :goto_0
    sget p3, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    if-ge v1, p3, :cond_1

    .line 69
    sget-object p3, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object p3

    .line 70
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    .line 71
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p1, v4, v0, p3, v3}, Lcom/ibm/icu/util/Currency;->getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/DecimalFormatSymbols;I)Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;
    .locals 1

    .line 44
    new-instance v0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;-><init>(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V

    return-object v0
.end method

.method private matchCurrency(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 8

    .line 134
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->getCaseSensitivePrefixLength(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 139
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 140
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 141
    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    iput-object v1, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 142
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 143
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    return v2

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v1

    :cond_3
    if-nez v2, :cond_5

    .line 155
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v0

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 156
    :goto_3
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 157
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    iput-object v2, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 158
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 159
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    return v0

    .line 163
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Lcom/ibm/icu/impl/TextTrieMap;

    if-eqz v1, :cond_c

    .line 165
    new-instance v1, Lcom/ibm/icu/impl/TextTrieMap$Output;

    invoke-direct {v1}, Lcom/ibm/icu/impl/TextTrieMap$Output;-><init>()V

    .line 166
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v2, p1, v4, v1}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object v2

    if-nez v0, :cond_8

    .line 167
    iget-boolean v0, v1, Lcom/ibm/icu/impl/TextTrieMap$Output;->partialMatch:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-nez v2, :cond_b

    .line 169
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->symbolTrie:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v2, p1, v4, v1}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object v2

    if-nez v0, :cond_a

    .line 170
    iget-boolean v0, v1, Lcom/ibm/icu/impl/TextTrieMap$Output;->partialMatch:Z

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :cond_a
    :goto_6
    move v0, v3

    :cond_b
    if-eqz v2, :cond_12

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-virtual {v2}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 174
    iget v1, v1, Lcom/ibm/icu/impl/TextTrieMap$Output;->matchLength:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 175
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    return v0

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 182
    :goto_7
    sget v5, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    if-ge v1, v5, :cond_11

    .line 183
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 184
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_9

    .line 187
    :cond_d
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v6

    .line 188
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_e

    .line 189
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    :cond_e
    if-nez v0, :cond_10

    if-lez v6, :cond_f

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v0, 0x1

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    if-lez v2, :cond_12

    .line 194
    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    iput-object v1, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 196
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    :cond_12
    return v0
.end method


# virtual methods
.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 5

    .line 93
    iget-object v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 100
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 102
    iget-object v4, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 103
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->matchCurrency(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 111
    :goto_2
    iget-object v4, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 112
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    return v2

    .line 117
    :cond_5
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 118
    iget-object p2, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result p2

    .line 119
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 120
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    :cond_6
    if-nez v2, :cond_7

    .line 123
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result p1

    if-ne p2, p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    move v2, v1

    :cond_9
    return v2
.end method

.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 0

    return-void
.end method

.method public smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<CombinedCurrencyMatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
