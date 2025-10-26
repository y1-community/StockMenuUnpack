.class public abstract Lcom/ibm/icu/text/NumberFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/NumberFormat$Field;,
        Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;,
        Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;,
        Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACCOUNTINGCURRENCYSTYLE:I = 0x7

.field public static final CASHCURRENCYSTYLE:I = 0x8

.field public static final CURRENCYSTYLE:I = 0x1

.field public static final FRACTION_FIELD:I = 0x1

.field public static final INTEGERSTYLE:I = 0x4

.field public static final INTEGER_FIELD:I = 0x0

.field public static final ISOCURRENCYSTYLE:I = 0x5

.field public static final NUMBERSTYLE:I = 0x0

.field public static final PERCENTSTYLE:I = 0x2

.field public static final PLURALCURRENCYSTYLE:I = 0x6

.field public static final SCIENTIFICSTYLE:I = 0x3

.field public static final STANDARDCURRENCYSTYLE:I = 0x9

.field static final currentSerialVersion:I = 0x2

.field private static final doubleCurrencySign:[C

.field private static final doubleCurrencyStr:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x20094c40ec82f818L

.field private static shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;


# instance fields
.field private capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

.field private currency:Lcom/ibm/icu/util/Currency;

.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private parseStrict:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1699
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencySign:[C

    .line 1700
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sput-object v1, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1882
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x1

    .line 1714
    iput-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    const/16 v1, 0x28

    .line 1732
    iput-byte v1, p0, Lcom/ibm/icu/text/NumberFormat;->maxIntegerDigits:B

    .line 1750
    iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minIntegerDigits:B

    const/4 v2, 0x3

    .line 1768
    iput-byte v2, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B

    const/4 v3, 0x0

    .line 1786
    iput-byte v3, p0, Lcom/ibm/icu/text/NumberFormat;->minFractionDigits:B

    .line 1794
    iput-boolean v3, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    .line 1806
    iput v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1816
    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1826
    iput v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1836
    iput v3, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    const/4 v0, 0x2

    .line 1870
    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->serialVersionOnStream:I

    .line 1892
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    return-void
.end method

.method static createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 8

    .line 1445
    invoke-static {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 1446
    new-instance v1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v1, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v5, 0x7

    if-eq p1, v5, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v5, 0x9

    if-ne p1, v5, :cond_1

    .line 1454
    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v0, v5

    :cond_1
    if-ne p1, v3, :cond_2

    .line 1463
    sget-object v3, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    const-string v5, "\u00a4"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1467
    :cond_2
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 1474
    invoke-virtual {v3}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1481
    invoke-virtual {v3}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 1482
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1483
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1486
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v2, v4

    .line 1487
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v4

    .line 1488
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1490
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const-string p0, "SpelloutRules"

    .line 1491
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    :goto_0
    move-object p0, v0

    move v5, v4

    .line 1499
    :cond_5
    new-instance v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-direct {v0, p0, v5}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 1500
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V

    goto :goto_1

    .line 1503
    :cond_6
    new-instance v3, Lcom/ibm/icu/text/DecimalFormat;

    invoke-direct {v3, v0, v1, p1}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V

    if-ne p1, v5, :cond_7

    .line 1512
    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1513
    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1514
    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    :cond_7
    if-ne p1, v2, :cond_8

    .line 1517
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V

    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 1520
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V

    :cond_9
    move-object v0, v3

    .line 1527
    :goto_1
    sget-object p0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 1528
    sget-object p1, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 1529
    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/NumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 1071
    sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 1074
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1083
    sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    .line 1084
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrencyInstance()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .line 763
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x1

    .line 787
    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 775
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .line 602
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(I)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 643
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    .line 630
    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 1434
    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0

    .line 1425
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice should be from NUMBERSTYLE to STANDARDCURRENCYSTYLE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 616
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 0

    .line 656
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getIntegerInstance()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .line 711
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x4

    .line 750
    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 731
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getNumberInstance()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .line 669
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    .line 691
    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 680
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method protected static getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
    .locals 0

    .line 1554
    invoke-static {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPatternForStyle(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getPattern(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1543
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatternForStyle(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1569
    invoke-static {p0, v0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPatternForStyleAndNumberingSystem(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatternForStyleAndNumberingSystem(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "accountingFormat"

    const-string v1, "currencyFormat"

    const-string v2, "decimalFormat"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    move-object v0, v1

    goto :goto_1

    :pswitch_1
    const-string v0, "scientificFormat"

    goto :goto_1

    :pswitch_2
    const-string v0, "percentFormat"

    goto :goto_1

    :pswitch_3
    const-string p2, "cf"

    .line 1596
    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v2, "account"

    .line 1597
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :goto_0
    :pswitch_4
    move-object v0, v2

    :goto_1
    :pswitch_5
    const-string p2, "com/ibm/icu/impl/data/icudt69b"

    .line 1621
    invoke-static {p2, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1623
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberElements/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/patterns/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NumberElements/latn/patterns/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final getPercentInstance()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .line 800
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x2

    .line 824
    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 812
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getScientificInstance()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .line 837
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getScientificInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x3

    .line 861
    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getScientificInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 849
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method private static getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
    .locals 2

    .line 1047
    sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.ibm.icu.text.NumberFormatServiceShim"

    .line 1049
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    sput-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1058
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 1054
    throw v0

    .line 1062
    :cond_0
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1646
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1649
    iget p1, p0, Lcom/ibm/icu/text/NumberFormat;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1651
    iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxIntegerDigits:B

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1652
    iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minIntegerDigits:B

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1653
    iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1654
    iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minFractionDigits:B

    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 1658
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    .line 1664
    :cond_1
    iget p1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-gt p1, v1, :cond_2

    iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    if-gt v1, v2, :cond_2

    if-ltz p1, :cond_2

    if-ltz v1, :cond_2

    .line 1669
    iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->serialVersionOnStream:I

    return-void

    .line 1667
    :cond_2
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Digit count range invalid"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static registerFactory(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    .line 1106
    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->registerFactory(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1104
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1121
    sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1125
    :cond_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1118
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "registryKey must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/16 v0, 0x7f

    goto :goto_0

    :cond_0
    int-to-byte v0, v0

    :goto_0
    iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxIntegerDigits:B

    .line 1684
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    const/16 v0, 0x7f

    goto :goto_1

    :cond_1
    int-to-byte v0, v0

    :goto_1
    iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minIntegerDigits:B

    .line 1686
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    const/16 v0, 0x7f

    goto :goto_2

    :cond_2
    int-to-byte v0, v0

    :goto_2
    iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B

    .line 1688
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_3

    goto :goto_3

    :cond_3
    int-to-byte v1, v0

    :goto_3
    iput-byte v1, p0, Lcom/ibm/icu/text/NumberFormat;->minFractionDigits:B

    .line 1690
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1175
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1156
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 1158
    :cond_2
    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    .line 1159
    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    iget-boolean v3, p1, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v3, p1, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z

    iget-boolean v3, p1, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    iget-object p1, p1, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3

    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 322
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 323
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(Lcom/ibm/icu/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(Lcom/ibm/icu/util/CurrencyAmount;)Ljava/lang/String;
    .locals 3

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3

    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    .line 415
    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    if-nez v2, :cond_1

    .line 418
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 419
    :cond_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 274
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 275
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 276
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 277
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 278
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 279
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 280
    :cond_2
    instance-of v0, p1, Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 281
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 282
    :cond_3
    instance-of v0, p1, Lcom/ibm/icu/util/CurrencyAmount;

    if-eqz v0, :cond_4

    .line 283
    check-cast p1, Lcom/ibm/icu/util/CurrencyAmount;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 284
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 285
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 287
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot format given Object as a Number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 582
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    :goto_0
    return-object p1
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/ibm/icu/text/NumberFormat;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method protected getEffectiveCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1369
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1371
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1373
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 1375
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .line 1283
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    .line 1219
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    .line 1315
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .line 1251
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getRoundingMode()I
    .locals 2

    .line 1389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRoundingMode must be implemented by the subclass implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 1137
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    .line 1190
    iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public isParseStrict()Z
    .locals 1

    .line 557
    iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 460
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 461
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 462
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparseable number: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 1

    .line 488
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 489
    :cond_0
    new-instance p2, Lcom/ibm/icu/util/CurrencyAmount;

    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat;->getEffectiveCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 2

    .line 568
    invoke-virtual {p1}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_0

    .line 569
    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    :cond_0
    return-void
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 0

    .line 1347
    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormat;->currency:Lcom/ibm/icu/util/Currency;

    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 0

    .line 1201
    iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1299
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1300
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge p1, v0, :cond_0

    .line 1301
    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1235
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1236
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, p1, :cond_0

    .line 1237
    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1331
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1332
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    if-ge v0, p1, :cond_0

    .line 1333
    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1267
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1268
    iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le p1, v0, :cond_0

    .line 1269
    iput p1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0

    .line 521
    iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z

    return-void
.end method

.method public setParseStrict(Z)V
    .locals 0

    .line 547
    iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z

    return-void
.end method

.method public setRoundingMode(I)V
    .locals 1

    .line 1403
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setRoundingMode must be implemented by the subclass implementation."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
