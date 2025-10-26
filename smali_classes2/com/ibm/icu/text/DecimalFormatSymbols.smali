.class public Lcom/ibm/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;,
        Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;
    }
.end annotation


# static fields
.field public static final CURRENCY_SPC_CURRENCY_MATCH:I = 0x0

.field public static final CURRENCY_SPC_INSERT:I = 0x2

.field public static final CURRENCY_SPC_SURROUNDING_MATCH:I = 0x1

.field private static final DEF_DECIMAL_SEPARATOR:C = '.'

.field private static final DEF_DIGIT_CHARS_ARRAY:[C

.field private static final DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

.field private static final DEF_GROUPING_SEPARATOR:C = ','

.field private static final DEF_MINUS_SIGN:C = '-'

.field private static final DEF_PERCENT:C = '%'

.field private static final DEF_PERMILL:C = '\u2030'

.field private static final DEF_PLUS_SIGN:C = '+'

.field private static final LATIN_NUMBERING_SYSTEM:Ljava/lang/String; = "latn"

.field private static final NUMBER_ELEMENTS:Ljava/lang/String; = "NumberElements"

.field private static final SYMBOLS:Ljava/lang/String; = "symbols"

.field private static final SYMBOL_DEFAULTS:[Ljava/lang/String;

.field private static final SYMBOL_KEYS:[Ljava/lang/String;

.field private static final cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x8

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private transient codePointZero:I

.field private transient currency:Lcom/ibm/icu/util/Currency;

.field private currencyPattern:Ljava/lang/String;

.field private currencySpcAfterSym:[Ljava/lang/String;

.field private currencySpcBeforeSym:[Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private decimalSeparatorString:Ljava/lang/String;

.field private digit:C

.field private digitStrings:[Ljava/lang/String;

.field private digits:[C

.field private exponentMultiplicationSign:Ljava/lang/String;

.field private exponentSeparator:Ljava/lang/String;

.field private exponential:C

.field private groupingSeparator:C

.field private groupingSeparatorString:Ljava/lang/String;

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private minusSign:C

.field private minusString:Ljava/lang/String;

.field private monetaryGroupingSeparator:C

.field private monetaryGroupingSeparatorString:Ljava/lang/String;

.field private monetarySeparator:C

.field private monetarySeparatorString:Ljava/lang/String;

.field private padEscape:C

.field private patternSeparator:C

.field private perMill:C

.field private perMillString:Ljava/lang/String;

.field private percent:C

.field private percentString:Ljava/lang/String;

.field private plusSign:C

.field private plusString:Ljava/lang/String;

.field private requestedLocale:Ljava/util/Locale;

.field private serialVersionOnStream:I

.field private sigDigit:C

.field private ulocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "decimal"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "group"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "percentSign"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "minusSign"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "plusSign"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "exponential"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "perMille"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "infinity"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "nan"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "currencyDecimal"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "currencyGroup"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "superscriptingExponent"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 1295
    sput-object v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v3

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v7

    const-string v2, "5"

    aput-object v2, v1, v8

    const-string v2, "6"

    aput-object v2, v1, v9

    const-string v2, "7"

    aput-object v2, v1, v10

    const-string v2, "8"

    aput-object v2, v1, v11

    const-string v2, "9"

    aput-object v2, v1, v12

    .line 1313
    sput-object v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    new-array v1, v13, [C

    .line 1316
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x2e

    .line 1333
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x2c

    .line 1334
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x25

    .line 1335
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x2d

    .line 1336
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x2b

    .line 1337
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "E"

    aput-object v1, v0, v8

    const/16 v1, 0x2030

    .line 1339
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "\u221e"

    aput-object v1, v0, v10

    const-string v1, "NaN"

    aput-object v1, v0, v11

    const/4 v1, 0x0

    aput-object v1, v0, v12

    aput-object v1, v0, v13

    const-string v1, "\u00d7"

    aput-object v1, v0, v14

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    .line 1923
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1875
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v1, 0x8

    .line 1918
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1934
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1875
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v1, 0x8

    .line 1918
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1934
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Lcom/ibm/icu/text/NumberingSystem;)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->loadData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object p0

    return-object p0
.end method

.method public static forNumberingSystem(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 169
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)V

    return-object v0
.end method

.method public static forNumberingSystem(Ljava/util/Locale;Lcom/ibm/icu/text/NumberingSystem;)Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 150
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;Lcom/ibm/icu/text/NumberingSystem;)V

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 187
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 205
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 97
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 131
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 114
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V
    .locals 1

    .line 1500
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->getBeforeSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1501
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->getAfterSymbols()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    return-void
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)V
    .locals 1

    .line 1389
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1390
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "numbers"

    invoke-virtual {p1, v0, p2}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 1396
    :goto_0
    sget-object p2, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    .line 1398
    iget-object p2, p1, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v0, p1, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p2, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 1399
    iget-object p2, p1, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    .line 1400
    iget-object p1, p1, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 1403
    aget-object p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setDecimalSeparatorString(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1404
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setGroupingSeparatorString(Ljava/lang/String;)V

    const/16 v0, 0x3b

    .line 1406
    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    const/4 v0, 0x2

    .line 1407
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPercentString(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1408
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMinusSignString(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 1409
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPlusSignString(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1410
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 1411
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setPerMillString(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1412
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1413
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 1414
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1415
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 1416
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setExponentMultiplicationSign(Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 1418
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    const/16 p1, 0x2a

    .line 1419
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 p1, 0x40

    .line 1420
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    .line 1422
    sget-object p1, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-interface {p1, v0, p2}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p1

    .line 1423
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    .line 1425
    iget-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p2}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrencyOrNull(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;)V

    return-void
.end method

.method private static loadData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
    .locals 12

    .line 1431
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "latn"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getRadix()I

    move-result v5

    if-ne v5, v1, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1434
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ibm/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1435
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 1438
    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 1439
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v7

    .line 1440
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    .line 1443
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1446
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    move-object v0, v3

    :goto_1
    const-string v5, "com/ibm/icu/impl/data/icudt69b"

    .line 1453
    invoke-static {v5, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1455
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    .line 1457
    sget-object v6, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v6, v6

    new-array v7, v6, [Ljava/lang/String;

    .line 1460
    new-instance v8, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;

    invoke-direct {v8, v7}, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;-><init>([Ljava/lang/String;)V

    .line 1462
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NumberElements/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "symbols"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x1

    if-ge v9, v6, :cond_3

    .line 1470
    aget-object v11, v7, v9

    if-nez v11, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_4

    .line 1476
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "NumberElements/latn/symbols"

    .line 1477
    invoke-virtual {p0, v0, v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    :cond_4
    const/4 p0, 0x0

    .line 1481
    :goto_4
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_6

    .line 1482
    aget-object v0, v7, p0

    if-nez v0, :cond_5

    .line 1483
    sget-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    aget-object v0, v0, p0

    aput-object v0, v7, p0

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_6
    const/16 p0, 0x9

    .line 1489
    aget-object v0, v7, p0

    if-nez v0, :cond_7

    .line 1490
    aget-object v0, v7, v4

    aput-object v0, v7, p0

    .line 1492
    :cond_7
    aget-object p0, v7, v1

    if-nez p0, :cond_8

    .line 1493
    aget-object p0, v7, v10

    aput-object p0, v7, v1

    .line 1496
    :cond_8
    new-instance p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;

    invoke-direct {p0, v5, v2, v7}, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;-><init>(Lcom/ibm/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1518
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1521
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1524
    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    const/16 v1, 0x45

    .line 1525
    iput-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponential:C

    :cond_0
    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    const/16 p1, 0x2a

    .line 1528
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 p1, 0x2b

    .line 1529
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 1530
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponential:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1537
    :cond_1
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 1543
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1545
    :cond_2
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_3

    .line 1547
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 1549
    :cond_3
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x5

    if-ge p1, v2, :cond_4

    .line 1551
    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :cond_4
    const/4 v2, 0x6

    if-ge p1, v2, :cond_7

    .line 1555
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    if-nez p1, :cond_5

    new-array p1, v1, [Ljava/lang/String;

    .line 1556
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1558
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    if-nez p1, :cond_6

    new-array p1, v1, [Ljava/lang/String;

    .line 1559
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1561
    :cond_6
    sget-object p1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initSpacingInfo(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    .line 1563
    :cond_7
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x7

    if-ge p1, v1, :cond_9

    .line 1565
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 1566
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1568
    :cond_8
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    if-nez p1, :cond_9

    .line 1569
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1572
    :cond_9
    iget p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/16 v1, 0x8

    if-ge p1, v1, :cond_a

    .line 1573
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, "\u00d7"

    .line 1574
    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    :cond_a
    const/16 v2, 0x9

    if-ge p1, v2, :cond_13

    .line 1579
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    if-nez p1, :cond_d

    const/16 p1, 0xa

    new-array v2, p1, [Ljava/lang/String;

    .line 1580
    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 1581
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    array-length v4, v2

    if-ne v4, p1, :cond_b

    .line 1582
    aget-char v0, v2, v3

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    :goto_0
    if-ge v3, p1, :cond_d

    .line 1584
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1587
    :cond_b
    iget-char v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    if-nez v2, :cond_c

    new-array v2, p1, [C

    .line 1589
    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    :cond_c
    :goto_1
    if-ge v3, p1, :cond_d

    .line 1592
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char v4, v2, v3

    .line 1593
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/2addr v4, v0

    int-to-char v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1600
    :cond_d
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_e

    .line 1601
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 1603
    :cond_e
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_f

    .line 1604
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 1606
    :cond_f
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    if-nez p1, :cond_10

    .line 1607
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 1609
    :cond_10
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    if-nez p1, :cond_11

    .line 1610
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 1612
    :cond_11
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    if-nez p1, :cond_12

    .line 1613
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 1615
    :cond_12
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_13

    .line 1616
    iget-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 1620
    :cond_13
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1623
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    .line 1626
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    return-void
.end method

.method private setCurrencyOrNull(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;)V
    .locals 1

    .line 898
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    if-nez p1, :cond_0

    const-string p1, "XXX"

    .line 901
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string p1, "\u00a4"

    .line 902
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    const/4 p1, 0x0

    .line 903
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-void

    .line 907
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 908
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 910
    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 912
    iget-object p2, p1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryDecimalSeparator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    .line 913
    iget-object p2, p1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    .line 914
    iget-object p1, p1, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1215
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1219
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1230
    instance-of v0, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 1236
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_4

    .line 1238
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 1241
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    :cond_4
    iget-object v2, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    .line 1248
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v3, v3, v2

    iget-char v4, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v4, v2

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1252
    :cond_6
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 1256
    :cond_7
    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1263
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 1265
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 1266
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1267
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1268
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1271
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1272
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    iget-char v3, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    iget-object p1, p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1275
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getCodePointZero()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->codePointZero:I

    return v0
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method public getCurrencyPattern()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .line 462
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDecimalSeparatorString()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getDigit()C
    .locals 1

    .line 626
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getDigitStrings()[Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDigitStringsLocal()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public getDigits()[C
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getExponentMultiplicationSign()Ljava/lang/String;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-object v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    .line 406
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method public getGroupingSeparatorString()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1960
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    .line 710
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    .line 925
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getMonetaryDecimalSeparatorString()Ljava/lang/String;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getMonetaryGroupingSeparator()C
    .locals 1

    .line 980
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return v0
.end method

.method public getMonetaryGroupingSeparatorString()Ljava/lang/String;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    return-object v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPadEscape()C
    .locals 1

    .line 1091
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    return v0
.end method

.method public getPatternForCurrencySpacing(IZ)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 1154
    iget-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1

    .line 1156
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1

    .line 1151
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown currency spacing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getPatternSeparator()C
    .locals 1

    .line 645
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .locals 1

    .line 517
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPerMillString()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()C
    .locals 1

    .line 572
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    return-object v0
.end method

.method public getPlusSign()C
    .locals 1

    .line 771
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    return v0
.end method

.method public getPlusSignString()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-object v0
.end method

.method public getSignificantDigit()C
    .locals 1

    .line 387
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    return v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getZeroDigit()C
    .locals 1

    .line 216
    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1285
    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1286
    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 3

    .line 888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 893
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    .line 894
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrencyOrNull(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;)V

    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0

    .line 471
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 472
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 501
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 506
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    :goto_0
    return-void

    .line 499
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input decimal separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDigit(C)V
    .locals 0

    .line 635
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    return-void
.end method

.method public setDigitStrings([Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_9

    .line 323
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    new-array v2, v1, [C

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-ge v5, v1, :cond_6

    .line 333
    aget-object v7, p1, v5

    if-eqz v7, :cond_5

    .line 337
    aput-object v7, v0, v5

    .line 339
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, -0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 343
    :cond_0
    aget-object v8, p1, v5

    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 344
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 346
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x0

    if-ne v9, v7, :cond_3

    const/4 v7, 0x1

    if-ne v9, v7, :cond_1

    if-eqz v2, :cond_1

    int-to-char v7, v8

    .line 350
    aput-char v7, v2, v5

    goto :goto_2

    :cond_1
    move-object v2, v10

    :goto_2
    if-nez v5, :cond_2

    move v6, v8

    goto :goto_4

    :cond_2
    add-int v7, v6, v5

    if-eq v8, v7, :cond_4

    goto :goto_3

    :cond_3
    move-object v2, v10

    :goto_3
    const/4 v6, -0x1

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 335
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input digit string array contains a null element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_6
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 369
    iput v6, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->codePointZero:I

    if-nez v2, :cond_7

    .line 373
    sget-object p1, Lcom/ibm/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    aget-char v0, p1, v4

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 374
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    goto :goto_5

    .line 376
    :cond_7
    aget-char p1, v2, v4

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 377
    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    :goto_5
    return-void

    .line 324
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of digit strings is not 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input digit string array is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public setExponentMultiplicationSign(Ljava/lang/String;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0

    .line 416
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 417
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 446
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 451
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    :goto_0
    return-void

    .line 444
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input grouping separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-void
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    .line 1989
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1990
    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void

    .line 1984
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMinusSign(C)V
    .locals 0

    .line 721
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    .line 722
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-void
.end method

.method public setMinusSignString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 751
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 752
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 753
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d

    .line 756
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    :goto_0
    return-void

    .line 749
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input minus sign is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 0

    .line 934
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 935
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setMonetaryDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 964
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 965
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 966
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 969
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    :goto_0
    return-void

    .line 962
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input monetary decimal separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMonetaryGroupingSeparator(C)V
    .locals 0

    .line 989
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 990
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setMonetaryGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1019
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 1020
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1021
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 1024
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :goto_0
    return-void

    .line 1017
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input monetary grouping separator is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-void
.end method

.method public setPadEscape(C)V
    .locals 0

    .line 1106
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    return-void
.end method

.method public setPatternForCurrencySpacing(IZLjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 1182
    iget-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1183
    aput-object p3, p2, p1

    goto :goto_0

    .line 1185
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1186
    aput-object p3, p2, p1

    :goto_0
    return-void

    .line 1179
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown currency spacing: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setPatternSeparator(C)V
    .locals 0

    .line 655
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return-void
.end method

.method public setPerMill(C)V
    .locals 0

    .line 526
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    .line 527
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    return-void
.end method

.method public setPerMillString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 556
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2030

    .line 561
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    :goto_0
    return-void

    .line 554
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input permille string is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPercent(C)V
    .locals 0

    .line 581
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    .line 582
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    return-void
.end method

.method public setPercentString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 611
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x25

    .line 616
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    :goto_0
    return-void

    .line 609
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input percent sign is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusSign(C)V
    .locals 0

    .line 784
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 785
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-void
.end method

.method public setPlusSignString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 814
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 815
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 816
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2b

    .line 819
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    :goto_0
    return-void

    .line 812
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The input plus sign is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSignificantDigit(C)V
    .locals 0

    .line 396
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 4

    .line 241
    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 245
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    .line 249
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 250
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char p1, v0, v2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    int-to-char v1, v1

    .line 255
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 256
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    iput p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->codePointZero:I

    return-void
.end method
