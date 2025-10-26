.class public Lcom/ibm/icu/impl/number/parse/NumberParserImpl;
.super Ljava/lang/Object;
.source "NumberParserImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private frozen:Z

.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final parseFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    .line 281
    iput p1, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->frozen:Z

    return-void
.end method

.method public static createDefaultParserForLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;
    .locals 2

    .line 117
    invoke-static {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object p0

    const-string v0, "0"

    .line 118
    invoke-static {v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    invoke-static {v0, p0, v1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    move-result-object p0

    return-object p0
.end method

.method public static createParserFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;
    .locals 10

    .line 139
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 140
    invoke-static {p0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/AffixPatternProvider;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->resolve(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/util/Currency;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseMode()Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 144
    sget-object v3, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 146
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/number/Grouper;->forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object v4

    .line 148
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseCaseSensitive()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 151
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseIntegerOnly()Z

    move-result v7

    if-eqz v7, :cond_1

    or-int/lit8 v5, v5, 0x10

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseToBigDecimal()Z

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit16 v5, v5, 0x1000

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit16 v5, v5, 0x400

    .line 160
    :cond_3
    sget-object v7, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->JAVA_COMPATIBILITY:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v7, :cond_4

    or-int/lit8 v5, v5, 0x4

    or-int/lit16 v5, v5, 0x100

    or-int/lit16 v5, v5, 0x200

    const/high16 v7, 0x10000

    :goto_0
    or-int/2addr v5, v7

    goto :goto_1

    .line 165
    :cond_4
    sget-object v7, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v7, :cond_5

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x4

    or-int/lit16 v5, v5, 0x100

    or-int/lit16 v5, v5, 0x200

    const v7, 0x8000

    goto :goto_0

    :cond_5
    or-int/lit16 v5, v5, 0x80

    .line 174
    :goto_1
    invoke-virtual {v4}, Lcom/ibm/icu/impl/number/Grouper;->getPrimary()S

    move-result v7

    if-gtz v7, :cond_6

    or-int/lit8 v5, v5, 0x20

    :cond_6
    if-nez p2, :cond_7

    .line 177
    invoke-interface {v1}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    or-int/lit8 v5, v5, 0x2

    :cond_8
    if-nez p2, :cond_9

    or-int/lit16 v5, v5, 0x2000

    .line 184
    :cond_9
    new-instance v7, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    invoke-direct {v7, v5}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;-><init>(I)V

    .line 185
    invoke-static {v5}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getInstance(I)Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object v8

    .line 187
    new-instance v9, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-direct {v9}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;-><init>()V

    .line 188
    iput-object v2, v9, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->currency:Lcom/ibm/icu/util/Currency;

    .line 189
    iput-object p1, v9, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 190
    iput-object v8, v9, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    .line 191
    iput-object v0, v9, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->locale:Lcom/ibm/icu/util/ULocale;

    .line 192
    iput v5, v9, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->parseFlags:I

    .line 199
    invoke-static {v1, v7, v9, v8, v5}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->createMatchers(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/impl/number/parse/NumberParserImpl;Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;I)V

    if-nez p2, :cond_a

    .line 205
    invoke-interface {v1}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 206
    :cond_a
    invoke-static {v2, p1, v5}, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->getInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/DecimalFormatSymbols;I)Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 215
    :cond_b
    sget-object v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v0, :cond_c

    const/4 v0, -0x3

    invoke-interface {v1, v0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 216
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/PercentMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/PercentMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 218
    :cond_c
    sget-object v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-ne v3, v0, :cond_d

    const/4 v0, -0x4

    invoke-interface {v1, v0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 219
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/PermilleMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/PermilleMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 226
    :cond_d
    sget-object v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    const/4 v1, 0x0

    if-ne v3, v0, :cond_e

    .line 227
    invoke-static {p1, v1}, Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 228
    invoke-static {p1, v1}, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 230
    :cond_e
    invoke-static {p1, v5}, Lcom/ibm/icu/impl/number/parse/NanMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;I)Lcom/ibm/icu/impl/number/parse/NanMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 231
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/InfinityMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 232
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 233
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 234
    invoke-static {v0}, Lcom/ibm/icu/impl/number/parse/PaddingMatcher;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/impl/number/parse/PaddingMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 236
    :cond_f
    invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 237
    invoke-static {p1, v4, v5}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;I)Lcom/ibm/icu/impl/number/parse/DecimalMatcher;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 239
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseNoExponent()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0

    if-lez v0, :cond_11

    .line 240
    :cond_10
    invoke-static {p1, v4}, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;)Lcom/ibm/icu/impl/number/parse/ScientificMatcher;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 247
    :cond_11
    new-instance p1, Lcom/ibm/icu/impl/number/parse/RequireNumberValidator;

    invoke-direct {p1}, Lcom/ibm/icu/impl/number/parse/RequireNumberValidator;-><init>()V

    invoke-virtual {v7, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 248
    sget-object p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    if-eq v3, p1, :cond_12

    .line 249
    new-instance p1, Lcom/ibm/icu/impl/number/parse/RequireAffixValidator;

    invoke-direct {p1}, Lcom/ibm/icu/impl/number/parse/RequireAffixValidator;-><init>()V

    invoke-virtual {v7, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    :cond_12
    if-eqz p2, :cond_13

    .line 252
    new-instance p1, Lcom/ibm/icu/impl/number/parse/RequireCurrencyValidator;

    invoke-direct {p1}, Lcom/ibm/icu/impl/number/parse/RequireCurrencyValidator;-><init>()V

    invoke-virtual {v7, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 254
    :cond_13
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getDecimalPatternMatchRequired()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 255
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result p1

    if-nez p1, :cond_15

    .line 256
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_2

    :cond_14
    const/4 v6, 0x0

    .line 257
    :cond_15
    :goto_2
    invoke-static {v6}, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;->getInstance(Z)Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 260
    :cond_16
    invoke-static {p0}, Lcom/ibm/icu/impl/number/RoundingUtils;->scaleFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/number/Scale;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 262
    new-instance p1, Lcom/ibm/icu/impl/number/parse/MultiplierParseHandler;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/number/parse/MultiplierParseHandler;-><init>(Lcom/ibm/icu/number/Scale;)V

    invoke-virtual {v7, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 265
    :cond_17
    invoke-virtual {v7}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->freeze()V

    return-object v7
.end method

.method public static createSimpleParser(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;
    .locals 5

    .line 41
    new-instance v0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    invoke-direct {v0, p2}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;-><init>(I)V

    const-string v1, "USD"

    .line 42
    invoke-static {v1}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v1

    .line 43
    invoke-static {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v2

    .line 44
    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getInstance(I)Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object v3

    .line 46
    new-instance v4, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-direct {v4}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;-><init>()V

    .line 47
    iput-object v1, v4, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->currency:Lcom/ibm/icu/util/Currency;

    .line 48
    iput-object v2, v4, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 49
    iput-object v3, v4, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    .line 50
    iput-object p0, v4, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->locale:Lcom/ibm/icu/util/ULocale;

    .line 51
    iput p2, v4, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->parseFlags:I

    .line 53
    invoke-static {p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object p1

    .line 54
    invoke-static {p1, v0, v4, v3, p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->createMatchers(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/impl/number/parse/NumberParserImpl;Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;I)V

    .line 56
    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v4}, Lcom/ibm/icu/impl/number/Grouper;->forStrategy(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/ibm/icu/impl/number/Grouper;->withLocaleData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object p0

    .line 58
    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 59
    invoke-static {v2, p0, p2}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;I)Lcom/ibm/icu/impl/number/parse/DecimalMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    const/4 p1, 0x0

    .line 60
    invoke-static {v2, p1}, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 61
    invoke-static {v2, p1}, Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 62
    invoke-static {v2}, Lcom/ibm/icu/impl/number/parse/PercentMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/PercentMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 63
    invoke-static {v2}, Lcom/ibm/icu/impl/number/parse/PermilleMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/PermilleMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 64
    invoke-static {v2, p2}, Lcom/ibm/icu/impl/number/parse/NanMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;I)Lcom/ibm/icu/impl/number/parse/NanMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 65
    invoke-static {v2}, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/InfinityMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    const-string p1, "@"

    .line 66
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/PaddingMatcher;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/impl/number/parse/PaddingMatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 67
    invoke-static {v2, p0}, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;)Lcom/ibm/icu/impl/number/parse/ScientificMatcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 68
    invoke-static {v1, v2, p2}, Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;->getInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/DecimalFormatSymbols;I)Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 69
    new-instance p0, Lcom/ibm/icu/impl/number/parse/RequireNumberValidator;

    invoke-direct {p0}, Lcom/ibm/icu/impl/number/parse/RequireNumberValidator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 71
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->freeze()V

    return-object v0
.end method

.method private parseGreedy(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 343
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 345
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;

    .line 349
    invoke-interface {v2, p1}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v3

    .line 355
    invoke-interface {v2, p1, p2}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    .line 356
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseLongestRecursive(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;I)V
    .locals 9

    .line 372
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 382
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 383
    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->copyFrom(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 384
    new-instance v1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 386
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 387
    :goto_0
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 388
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;

    .line 389
    invoke-interface {v5, p1}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 394
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 395
    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/StringSegment;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 398
    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->copyFrom(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 399
    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/StringSegment;->setLength(I)V

    .line 400
    invoke-interface {v5, p1, v1}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    move-result v7

    .line 401
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->resetLength()V

    .line 404
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v8

    sub-int/2addr v8, v2

    if-ne v8, v6, :cond_4

    add-int/lit8 v8, p3, 0x1

    .line 405
    invoke-direct {p0, p1, v1, v8}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseLongestRecursive(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;I)V

    .line 406
    invoke-virtual {v1, p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->isBetterThan(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 407
    invoke-virtual {p2, v1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->copyFrom(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 413
    :cond_4
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    if-nez v7, :cond_3

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static parseStatic(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {p2, p3, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    move-result-object p2

    .line 84
    new-instance p3, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-direct {p3}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;-><init>()V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p2, p0, v0, p3}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;ZLcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 86
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 87
    iget p0, p3, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 88
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->getNumber()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 90
    :cond_0
    iget p0, p3, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseStaticCurrency(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-static {p2, p3, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    move-result-object p2

    .line 104
    new-instance p3, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-direct {p3}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 105
    invoke-virtual {p2, p0, v0, p3}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;ZLcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 106
    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    iget p0, p3, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 109
    new-instance p0, Lcom/ibm/icu/util/CurrencyAmount;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->getNumber()Ljava/lang/Number;

    move-result-object p1

    iget-object p2, p3, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    invoke-static {p2}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V

    return-object p0

    .line 111
    :cond_0
    iget p0, p3, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMatchers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;",
            ">;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->frozen:Z

    return-void
.end method

.method public getParseFlags()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    return v0
.end method

.method public parse(Ljava/lang/String;IZLcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 3

    .line 323
    new-instance v0, Lcom/ibm/icu/impl/StringSegment;

    iget v1, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/StringSegment;-><init>(Ljava/lang/String;Z)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    if-eqz p3, :cond_1

    .line 327
    invoke-direct {p0, v0, p4}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseGreedy(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    goto :goto_1

    .line 328
    :cond_1
    iget p1, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseFlags:I

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_2

    .line 330
    invoke-direct {p0, v0, p4, v2}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseLongestRecursive(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;I)V

    goto :goto_1

    :cond_2
    const/16 p1, -0x64

    .line 333
    invoke-direct {p0, v0, p4, p1}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parseLongestRecursive(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;I)V

    .line 335
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;

    .line 336
    invoke-interface {p2, p4}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    goto :goto_2

    .line 338
    :cond_3
    invoke-virtual {p4}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->postProcess()V

    return-void
.end method

.method public parse(Ljava/lang/String;ZLcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;IZLcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NumberParserImpl matchers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->matchers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
