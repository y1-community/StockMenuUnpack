.class public Lcom/ibm/icu/impl/number/Grouper;
.super Ljava/lang/Object;
.source "Grouper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final GROUPER_AUTO:Lcom/ibm/icu/impl/number/Grouper;

.field private static final GROUPER_INDIC:Lcom/ibm/icu/impl/number/Grouper;

.field private static final GROUPER_INDIC_MIN2:Lcom/ibm/icu/impl/number/Grouper;

.field private static final GROUPER_MIN2:Lcom/ibm/icu/impl/number/Grouper;

.field private static final GROUPER_NEVER:Lcom/ibm/icu/impl/number/Grouper;

.field private static final GROUPER_ON_ALIGNED:Lcom/ibm/icu/impl/number/Grouper;

.field private static final GROUPER_WESTERN:Lcom/ibm/icu/impl/number/Grouper;

.field private static final GROUPER_WESTERN_MIN2:Lcom/ibm/icu/impl/number/Grouper;


# instance fields
.field private final grouping1:S

.field private final grouping2:S

.field private final minGrouping:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v1, v2}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_NEVER:Lcom/ibm/icu/impl/number/Grouper;

    .line 18
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    const/4 v1, -0x3

    invoke-direct {v0, v2, v2, v1}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_MIN2:Lcom/ibm/icu/impl/number/Grouper;

    .line 19
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    invoke-direct {v0, v2, v2, v2}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_AUTO:Lcom/ibm/icu/impl/number/Grouper;

    .line 20
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    const/4 v1, -0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_ON_ALIGNED:Lcom/ibm/icu/impl/number/Grouper;

    .line 22
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1, v2}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_WESTERN:Lcom/ibm/icu/impl/number/Grouper;

    .line 23
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_INDIC:Lcom/ibm/icu/impl/number/Grouper;

    .line 24
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    invoke-direct {v0, v1, v1, v3}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_WESTERN_MIN2:Lcom/ibm/icu/impl/number/Grouper;

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    invoke-direct {v0, v1, v3, v3}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_INDIC_MIN2:Lcom/ibm/icu/impl/number/Grouper;

    return-void
.end method

.method private constructor <init>(SSS)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-short p1, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping1:S

    .line 117
    iput-short p2, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping2:S

    .line 118
    iput-short p3, p0, Lcom/ibm/icu/impl/number/Grouper;->minGrouping:S

    return-void
.end method

.method public static forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/Grouper;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getGroupingUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_NEVER:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0

    int-to-short v0, v0

    .line 55
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v1

    int-to-short v1, v1

    .line 56
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result p0

    int-to-short p0, p0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 59
    :goto_1
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/Grouper;->getInstance(SSS)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object p0

    return-object p0
.end method

.method public static forStrategy(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;)Lcom/ibm/icu/impl/number/Grouper;
    .locals 1

    .line 31
    sget-object v0, Lcom/ibm/icu/impl/number/Grouper$1;->$SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 41
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_WESTERN:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 39
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_ON_ALIGNED:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    .line 37
    :cond_2
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_AUTO:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    .line 35
    :cond_3
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_MIN2:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    .line 33
    :cond_4
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_NEVER:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0
.end method

.method public static getInstance(SSS)Lcom/ibm/icu/impl/number/Grouper;
    .locals 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 64
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_NEVER:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 66
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_WESTERN:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v1, :cond_2

    if-ne p1, v2, :cond_2

    if-ne p2, v0, :cond_2

    .line 68
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_INDIC:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    :cond_2
    if-ne p0, v1, :cond_3

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    .line 70
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_WESTERN_MIN2:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    :cond_3
    if-ne p0, v1, :cond_4

    if-ne p1, v2, :cond_4

    if-ne p2, v2, :cond_4

    .line 72
    sget-object p0, Lcom/ibm/icu/impl/number/Grouper;->GROUPER_INDIC_MIN2:Lcom/ibm/icu/impl/number/Grouper;

    return-object p0

    .line 74
    :cond_4
    new-instance v0, Lcom/ibm/icu/impl/number/Grouper;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/number/Grouper;-><init>(SSS)V

    return-object v0
.end method

.method private static getMinGroupingForLocale(Lcom/ibm/icu/util/ULocale;)S
    .locals 1

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    .line 81
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v0, "NumberElements/minimumGroupingDigits"

    .line 82
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method


# virtual methods
.method public getPrimary()S
    .locals 1

    .line 164
    iget-short v0, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping1:S

    return v0
.end method

.method public getSecondary()S
    .locals 1

    .line 168
    iget-short v0, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping2:S

    return v0
.end method

.method public groupAtPosition(ILcom/ibm/icu/impl/number/DecimalQuantity;)Z
    .locals 3

    .line 153
    iget-short v0, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping1:S

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    .line 158
    iget-short v1, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping2:S

    rem-int/2addr p1, v1

    if-nez p1, :cond_1

    .line 160
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getUpperDisplayMagnitude()I

    move-result p1

    iget-short p2, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping1:S

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    iget-short p2, p0, Lcom/ibm/icu/impl/number/Grouper;->minGrouping:S

    if-lt p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public withLocaleData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Lcom/ibm/icu/impl/number/Grouper;
    .locals 7

    .line 123
    iget-short v0, p0, Lcom/ibm/icu/impl/number/Grouper;->minGrouping:S

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 124
    invoke-static {p1}, Lcom/ibm/icu/impl/number/Grouper;->getMinGroupingForLocale(Lcom/ibm/icu/util/ULocale;)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, -0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    .line 126
    invoke-static {p1}, Lcom/ibm/icu/impl/number/Grouper;->getMinGroupingForLocale(Lcom/ibm/icu/util/ULocale;)S

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-short v0, p1

    .line 131
    :cond_1
    :goto_0
    iget-short p1, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping1:S

    const/4 v2, -0x4

    if-eq p1, v1, :cond_3

    iget-short v1, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping2:S

    if-eq v1, v2, :cond_3

    .line 132
    iget-short p2, p0, Lcom/ibm/icu/impl/number/Grouper;->minGrouping:S

    if-ne v0, p2, :cond_2

    return-object p0

    .line 135
    :cond_2
    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/number/Grouper;->getInstance(SSS)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object p1

    return-object p1

    .line 138
    :cond_3
    iget-object p1, p2, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v3, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int p1, v3

    int-to-short p1, p1

    .line 139
    iget-object v1, p2, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v3, v1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v1, 0x10

    ushr-long/2addr v3, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-short v1, v1

    .line 140
    iget-object p2, p2, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v3, p2, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 p2, 0x20

    ushr-long/2addr v3, p2

    and-long/2addr v3, v5

    long-to-int p2, v3

    int-to-short p2, p2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 142
    iget-short p1, p0, Lcom/ibm/icu/impl/number/Grouper;->grouping1:S

    if-ne p1, v2, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    :cond_5
    :goto_1
    if-ne p2, v3, :cond_6

    move v1, p1

    .line 148
    :cond_6
    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/number/Grouper;->getInstance(SSS)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object p1

    return-object p1
.end method
