.class public final Lcom/ibm/icu/number/NumberFormatter;
.super Ljava/lang/Object;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;,
        Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;,
        Lcom/ibm/icu/number/NumberFormatter$SignDisplay;,
        Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;,
        Lcom/ibm/icu/number/NumberFormatter$UnitWidth;,
        Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;
    }
.end annotation


# static fields
.field private static final BASE:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

.field static final DEFAULT_THRESHOLD:J = 0x3L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-direct {v0}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;-><init>()V

    sput-object v0, Lcom/ibm/icu/number/NumberFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forSkeleton(Ljava/lang/String;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 0

    .line 574
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->getOrCreate(Ljava/lang/String;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static fromDecimalFormat(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/number/NumberPropertyMapper;->create(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static with()Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 1

    .line 531
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    return-object v0
.end method

.method public static withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 557
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->locale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static withLocale(Ljava/util/Locale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 544
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method
