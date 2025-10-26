.class public final Lcom/ibm/icu/text/ScientificNumberFormatter;
.super Ljava/lang/Object;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;,
        Lcom/ibm/icu/text/ScientificNumberFormatter$MarkupStyle;,
        Lcom/ibm/icu/text/ScientificNumberFormatter$Style;
    }
.end annotation


# static fields
.field private static final SUPER_SCRIPT:Lcom/ibm/icu/text/ScientificNumberFormatter$Style;


# instance fields
.field private final fmt:Lcom/ibm/icu/text/DecimalFormat;

.field private final preExponent:Ljava/lang/String;

.field private final style:Lcom/ibm/icu/text/ScientificNumberFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 327
    new-instance v0, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>(Lcom/ibm/icu/text/ScientificNumberFormatter$1;)V

    sput-object v0, Lcom/ibm/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Lcom/ibm/icu/text/ScientificNumberFormatter$Style;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/DecimalFormat;Ljava/lang/String;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/ibm/icu/text/ScientificNumberFormatter;->fmt:Lcom/ibm/icu/text/DecimalFormat;

    .line 332
    iput-object p2, p0, Lcom/ibm/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    .line 333
    iput-object p3, p0, Lcom/ibm/icu/text/ScientificNumberFormatter;->style:Lcom/ibm/icu/text/ScientificNumberFormatter$Style;

    return-void
.end method

.method private static getInstance(Lcom/ibm/icu/text/DecimalFormat;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)Lcom/ibm/icu/text/ScientificNumberFormatter;
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/ibm/icu/text/ScientificNumberFormatter;

    .line 314
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-static {v0}, Lcom/ibm/icu/text/ScientificNumberFormatter;->getPreExponent(Lcom/ibm/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lcom/ibm/icu/text/ScientificNumberFormatter;-><init>(Lcom/ibm/icu/text/DecimalFormat;Ljava/lang/String;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)V

    return-object v1
.end method

.method private static getInstanceForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)Lcom/ibm/icu/text/ScientificNumberFormatter;
    .locals 2

    .line 320
    invoke-static {p0}, Lcom/ibm/icu/text/DecimalFormat;->getScientificInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DecimalFormat;

    .line 321
    new-instance v0, Lcom/ibm/icu/text/ScientificNumberFormatter;

    .line 323
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/ScientificNumberFormatter;->getPreExponent(Lcom/ibm/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ibm/icu/text/ScientificNumberFormatter;-><init>(Lcom/ibm/icu/text/DecimalFormat;Ljava/lang/String;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)V

    return-object v0
.end method

.method public static getMarkupInstance(Lcom/ibm/icu/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 106
    new-instance v0, Lcom/ibm/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter;->getInstance(Lcom/ibm/icu/text/DecimalFormat;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)Lcom/ibm/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getMarkupInstance(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 86
    new-instance v0, Lcom/ibm/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)Lcom/ibm/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static getPreExponent(Lcom/ibm/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentMultiplicationSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object p0

    const/4 v1, 0x1

    .line 306
    aget-char v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperscriptInstance(Lcom/ibm/icu/text/DecimalFormat;)Lcom/ibm/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 69
    sget-object v0, Lcom/ibm/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Lcom/ibm/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter;->getInstance(Lcom/ibm/icu/text/DecimalFormat;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)Lcom/ibm/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperscriptInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 54
    sget-object v0, Lcom/ibm/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Lcom/ibm/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ScientificNumberFormatter$Style;)Lcom/ibm/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/ibm/icu/text/ScientificNumberFormatter;->fmt:Lcom/ibm/icu/text/DecimalFormat;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/ScientificNumberFormatter;->style:Lcom/ibm/icu/text/ScientificNumberFormatter$Style;

    iget-object v2, p0, Lcom/ibm/icu/text/ScientificNumberFormatter;->fmt:Lcom/ibm/icu/text/DecimalFormat;

    .line 121
    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    iget-object v2, p0, Lcom/ibm/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, p1, v2}, Lcom/ibm/icu/text/ScientificNumberFormatter$Style;->format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
