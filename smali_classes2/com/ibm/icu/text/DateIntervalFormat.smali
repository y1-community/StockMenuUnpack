.class public Lcom/ibm/icu/text/DateIntervalFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;,
        Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;,
        Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;,
        Lcom/ibm/icu/text/DateIntervalFormat$SpanField;,
        Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;
    }
.end annotation


# static fields
.field private static LOCAL_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

.field private fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

.field private fDatePattern:Ljava/lang/String;

.field private fDateTimeFormat:Ljava/lang/String;

.field private fFromCalendar:Lcom/ibm/icu/util/Calendar;

.field private fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

.field private transient fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fSkeleton:Ljava/lang/String;

.field private fTimePattern:Ljava/lang/String;

.field private fToCalendar:Lcom/ibm/icu/util/Calendar;

.field private isDateIntervalInfoDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 439
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 497
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 479
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 484
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 491
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo;Lcom/ibm/icu/text/SimpleDateFormat;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 479
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 484
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 491
    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    .line 520
    iput-object p3, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    .line 522
    invoke-virtual {p2}, Lcom/ibm/icu/text/DateIntervalInfo;->freeze()Lcom/ibm/icu/text/DateIntervalInfo;

    .line 523
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 524
    iput-object p2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    const/4 p1, 0x0

    .line 525
    iput-boolean p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 526
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Calendar;

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fFromCalendar:Lcom/ibm/icu/util/Calendar;

    .line 527
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Calendar;

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fToCalendar:Lcom/ibm/icu/util/Calendar;

    .line 528
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateIntervalFormat;->initializePattern(Lcom/ibm/icu/impl/ICUCache;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/SimpleDateFormat;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 479
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 484
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 491
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    .line 534
    iput-object p3, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    .line 535
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 536
    new-instance p1, Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-direct {p1, p2}, Lcom/ibm/icu/text/DateIntervalInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateIntervalInfo;->freeze()Lcom/ibm/icu/text/DateIntervalInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    const/4 p1, 0x1

    .line 537
    iput-boolean p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 538
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Calendar;

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fFromCalendar:Lcom/ibm/icu/util/Calendar;

    .line 539
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Calendar;

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fToCalendar:Lcom/ibm/icu/util/Calendar;

    .line 540
    sget-object p1, Lcom/ibm/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalFormat;->initializePattern(Lcom/ibm/icu/impl/ICUCache;)V

    return-void
.end method

.method private static adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 11

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3a

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 2120
    invoke-static {p0, v1}, Lcom/ibm/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    .line 2121
    invoke-static {p1, v0}, Lcom/ibm/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const-string p1, "a"

    const/4 v2, -0x1

    if-eqz p4, :cond_3

    const-string p4, " a"

    .line 2123
    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, ""

    if-eq v3, v2, :cond_1

    .line 2124
    invoke-static {p2, p4, v4}, Lcom/ibm/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p4, "a "

    .line 2125
    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 2126
    invoke-static {p2, p4, v4}, Lcom/ibm/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2128
    :cond_2
    :goto_0
    invoke-static {p2, p1, v4}, Lcom/ibm/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    const/4 p4, 0x2

    const/16 v3, 0x62

    const/16 v4, 0x7a

    if-ne p3, p4, :cond_7

    .line 2131
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-eq p3, v2, :cond_4

    const-string p3, "v"

    const-string p4, "z"

    .line 2132
    invoke-static {p2, p3, p4}, Lcom/ibm/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    const/16 p3, 0x4b

    .line 2134
    invoke-virtual {p0, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-eq p3, v2, :cond_5

    const-string p3, "h"

    const-string p4, "K"

    .line 2135
    invoke-static {p2, p3, p4}, Lcom/ibm/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_5
    const/16 p3, 0x6b

    .line 2137
    invoke-virtual {p0, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-eq p3, v2, :cond_6

    const-string p3, "H"

    const-string p4, "k"

    .line 2138
    invoke-static {p2, p3, p4}, Lcom/ibm/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2140
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v2, :cond_7

    const-string p0, "b"

    .line 2141
    invoke-static {p2, p1, p0}, Lcom/ibm/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    const/16 p0, 0x61

    .line 2144
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, v2, :cond_8

    const/16 p1, 0x20

    aget p4, v0, p1

    if-nez p4, :cond_8

    aput p3, v0, p1

    .line 2147
    :cond_8
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v2, :cond_9

    const/16 p1, 0x21

    aget p4, v0, p1

    if-nez p4, :cond_9

    aput p3, v0, p1

    .line 2151
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 p4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x4d

    const/16 v8, 0x4c

    const/16 v9, 0x41

    if-ge v2, p2, :cond_13

    .line 2161
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-eq v10, v5, :cond_d

    if-lez v3, :cond_d

    if-ne v5, v8, :cond_a

    goto :goto_2

    :cond_a
    move v7, v5

    :goto_2
    sub-int/2addr v7, v9

    .line 2169
    aget v8, v0, v7

    .line 2170
    aget v7, v1, v7

    if-ne v8, v3, :cond_c

    if-le v7, v8, :cond_c

    sub-int/2addr v7, v8

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_b

    .line 2174
    invoke-virtual {p1, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v2, v7

    add-int/2addr p2, v7

    :cond_c
    const/4 v3, 0x0

    :cond_d
    const/16 v7, 0x27

    if-ne v10, v7, :cond_f

    add-int/lit8 v8, v2, 0x1

    .line 2184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-ge v8, v9, :cond_e

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_e

    move v2, v8

    goto :goto_4

    :cond_e
    xor-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    if-nez v6, :cond_12

    if-lt v10, p0, :cond_10

    if-le v10, v4, :cond_11

    :cond_10
    if-lt v10, v9, :cond_12

    const/16 v7, 0x5a

    if-gt v10, v7, :cond_12

    :cond_11
    add-int/lit8 v3, v3, 0x1

    move v5, v10

    :cond_12
    :goto_4
    add-int/2addr v2, p3

    goto :goto_1

    :cond_13
    if-lez v3, :cond_15

    if-ne v5, v8, :cond_14

    goto :goto_5

    :cond_14
    move v7, v5

    :goto_5
    sub-int/2addr v7, v9

    .line 2205
    aget p0, v0, v7

    .line 2206
    aget p2, v1, v7

    if-ne p0, v3, :cond_15

    if-le p2, p0, :cond_15

    sub-int/2addr p2, p0

    :goto_6
    if-ge p4, p2, :cond_15

    .line 2210
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 2214
    :cond_15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)V"
        }
    .end annotation

    .line 2272
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 2273
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    if-eqz v0, :cond_0

    .line 2275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p2, v3, v1

    .line 2277
    invoke-static {p1, v2, v2, v3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2280
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result p2

    .line 2279
    invoke-static {p1, p2}, Lcom/ibm/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p1

    .line 2281
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final fallbackFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/util/Calendar;",
            "Z",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    .line 1088
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    if-eqz p3, :cond_0

    .line 1089
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 1091
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v10, v1, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v12

    .line 1095
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v0, 0x0

    move-object/from16 v14, p5

    .line 1101
    :goto_1
    invoke-static {v0, v1, v12, v9}, Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;->step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J

    move-result-wide v15

    const-wide/16 v0, -0x1

    cmp-long v2, v15, v0

    if-nez v2, :cond_1

    .line 1121
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0, v13}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_3

    .line 1105
    :cond_1
    invoke-static/range {v15 .. v16}, Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;->getArgIndex(J)I

    move-result v0

    if-nez v0, :cond_2

    .line 1106
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v1, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 1107
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/DateIntervalFormat;->fallbackFormatRange(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)V

    goto :goto_2

    .line 1109
    :cond_2
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v1, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1110
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    move-object/from16 v1, p1

    move-object/from16 v7, p7

    invoke-virtual {v0, v1, v9, v14, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1113
    :goto_2
    invoke-virtual {v14}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-lez v0, :cond_3

    .line 1114
    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v11}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v14, v0

    .line 1117
    :cond_3
    iget-object v0, v8, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    move-wide v0, v15

    goto :goto_1

    :cond_4
    move-object/from16 v1, p1

    move-object/from16 v7, p7

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v4, v10

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 1123
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/DateIntervalFormat;->fallbackFormatRange(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)V

    :goto_3
    return-object v9
.end method

.method private final fallbackFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/util/Calendar;",
            "Z",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 1155
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1, p8}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1156
    invoke-direct/range {p0 .. p7}, Lcom/ibm/icu/text/DateIntervalFormat;->fallbackFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1157
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-object p4
.end method

.method private final fallbackFormatRange(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/util/Calendar;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuilder;",
            "Ljava/text/FieldPosition;",
            "Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)V"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 1038
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo;->getFallbackIntervalPattern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1037
    invoke-static {v0, p4, v1, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p4

    const-wide/16 v0, 0x0

    .line 1041
    :goto_0
    invoke-static {v0, v1, p4, p3}, Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;->step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1045
    :cond_0
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;->getArgIndex(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz p6, :cond_1

    .line 1047
    invoke-virtual {p6, v3}, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    .line 1049
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v2, p1, p3, p5, p7}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-eqz p6, :cond_3

    const/4 v2, 0x1

    .line 1052
    invoke-virtual {p6, v2}, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    .line 1054
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v2, p2, p3, p5, p7}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1057
    :goto_1
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-lez v2, :cond_4

    .line 1058
    new-instance p5, Ljava/text/FieldPosition;

    invoke-direct {p5, v3}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1061
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    sget-object v3, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    goto :goto_0
.end method

.method private static fieldExistsInSkeleton(ILjava/lang/String;)Z
    .locals 1

    .line 2297
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, v0, p0

    .line 2298
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "\'"

    .line 2227
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 2229
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2231
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ltz v1, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 2235
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_1

    .line 2237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_1
    const/4 v4, 0x0

    .line 2240
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 2241
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2243
    invoke-virtual {v4, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 2247
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2249
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized formatImpl(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/util/Calendar;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    monitor-enter p0

    .line 925
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 931
    iget-object v1, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v2, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    const/4 v1, 0x0

    .line 936
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    const/4 v9, 0x5

    const/4 v11, 0x2

    const/16 v13, 0xd

    const/16 v14, 0xc

    const/16 v15, 0xa

    const/16 v1, 0x9

    const/4 v12, 0x1

    if-eq v2, v4, :cond_0

    const/16 v2, 0xe

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 938
    :cond_0
    invoke-virtual {v0, v12}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 939
    invoke-virtual {v3, v12}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    const/16 v2, 0xe

    const/4 v9, 0x1

    goto :goto_0

    .line 941
    :cond_1
    invoke-virtual {v0, v11}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 942
    invoke-virtual {v3, v11}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_2

    const/16 v2, 0xe

    const/4 v9, 0x2

    goto :goto_0

    .line 944
    :cond_2
    invoke-virtual {v0, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 945
    invoke-virtual {v3, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_3

    const/16 v2, 0xe

    goto :goto_0

    .line 947
    :cond_3
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 948
    invoke-virtual {v3, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_4

    const/16 v2, 0xe

    const/16 v9, 0x9

    goto :goto_0

    .line 950
    :cond_4
    invoke-virtual {v0, v15}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 951
    invoke-virtual {v3, v15}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_5

    const/16 v2, 0xe

    const/16 v9, 0xa

    goto :goto_0

    .line 953
    :cond_5
    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 954
    invoke-virtual {v3, v14}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_6

    const/16 v2, 0xe

    const/16 v9, 0xc

    goto :goto_0

    .line 956
    :cond_6
    invoke-virtual {v0, v13}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 957
    invoke-virtual {v3, v13}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_7

    const/16 v2, 0xe

    const/16 v9, 0xd

    goto :goto_0

    :cond_7
    const/16 v2, 0xe

    .line 959
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    .line 960
    invoke-virtual {v3, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v9

    if-eq v4, v9, :cond_12

    const/16 v9, 0xe

    :goto_0
    if-eq v9, v1, :cond_9

    if-eq v9, v15, :cond_9

    if-eq v9, v14, :cond_9

    if-eq v9, v13, :cond_9

    if-ne v9, v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v4, 0x1

    .line 971
    :goto_2
    iget-object v1, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object v2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    if-nez v1, :cond_b

    .line 975
    iget-object v1, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v9}, Lcom/ibm/icu/text/SimpleDateFormat;->isFieldUnitIgnored(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 980
    iget-object v1, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0, v5, v6, v8}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 983
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/DateIntervalFormat;->fallbackFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 990
    :cond_b
    :try_start_2
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 993
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 992
    invoke-direct/range {v1 .. v9}, Lcom/ibm/icu/text/DateIntervalFormat;->fallbackFormat(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 997
    :cond_c
    :try_start_3
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v7, :cond_d

    .line 999
    invoke-virtual {v7, v12}, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    :cond_d
    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    goto :goto_3

    :cond_e
    if-eqz v7, :cond_f

    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v7, v2}, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    .line 1012
    :cond_f
    :goto_3
    iget-object v2, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 1013
    iget-object v4, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1014
    iget-object v4, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v4, v0, v5, v6, v8}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1016
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-lez v0, :cond_10

    .line 1017
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/text/FieldPosition;-><init>(I)V

    goto :goto_4

    :cond_10
    move-object v0, v6

    .line 1019
    :goto_4
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1020
    iget-object v4, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1022
    iget-object v1, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    sget-object v4, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    .line 1023
    iget-object v1, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v3, v5, v0, v8}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1025
    :cond_11
    iget-object v0, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1026
    monitor-exit p0

    return-object v5

    .line 966
    :cond_12
    :try_start_4
    iget-object v1, v10, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0, v5, v6, v8}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 926
    :cond_13
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not format on two different calendars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized formatIntervalImpl(Lcom/ibm/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/DateInterval;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    monitor-enter p0

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fFromCalendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/DateInterval;->getFromDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 817
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fToCalendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/DateInterval;->getToDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 818
    iget-object v4, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fFromCalendar:Lcom/ibm/icu/util/Calendar;

    iget-object v5, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fToCalendar:Lcom/ibm/icu/util/Calendar;

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/ibm/icu/text/DateIntervalFormat;->formatImpl(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Lcom/ibm/icu/text/DateTimePatternGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Lcom/ibm/icu/text/DateTimePatternGenerator;",
            ")V"
        }
    .end annotation

    .line 1585
    invoke-virtual {p4, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1590
    new-instance p4, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 1591
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p4, v1, p2, v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1592
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)",
            "Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;"
        }
    .end annotation

    .line 1979
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {v0, p3, p1}, Lcom/ibm/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x4a

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_5

    .line 1983
    invoke-static {p3, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    new-instance p2, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    iget-object p3, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    .line 1985
    invoke-virtual {p3}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 1987
    invoke-virtual {p4}, Lcom/ibm/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result p4

    invoke-direct {p2, p3, v5, p4}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1988
    sget-object p3, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-interface {p5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 1998
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    const/16 v6, 0xa

    invoke-virtual {v0, p3, v6}, Lcom/ibm/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2001
    iget-object v6, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2003
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    .line 2002
    invoke-static {p2, p3, v2, p4, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 2005
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v3

    .line 2004
    invoke-static {p2, p3, v3, p4, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    .line 2006
    new-instance p3, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    .line 2007
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result p4

    invoke-direct {p3, v2, p2, p4}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2010
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-interface {p5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v5

    .line 2022
    :cond_3
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 2024
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2025
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2028
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {v0, p3, p1}, Lcom/ibm/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez p4, :cond_4

    .line 2032
    iget-object p4, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {p4, p2}, Lcom/ibm/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object p4

    .line 2033
    iget-object v6, p4, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 2034
    iget p4, p4, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    .line 2035
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    if-eq p4, v4, :cond_4

    .line 2036
    iget-object p3, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {p3, v6, p1}, Lcom/ibm/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p3

    move-object v0, p3

    move-object p3, v6

    :cond_4
    if-eqz v0, :cond_5

    .line 2041
    new-instance v5, Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    invoke-direct {v5, p2, p3}, Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_8

    if-eqz p4, :cond_7

    .line 2046
    iget-object v6, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 2048
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    .line 2047
    invoke-static {p2, p3, v2, p4, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 2050
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v3

    .line 2049
    invoke-static {p2, p3, v3, p4, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    .line 2051
    new-instance p3, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    .line 2052
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result p4

    invoke-direct {p3, v2, p2, p4}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p3

    .line 2057
    :cond_7
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-interface {p5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v5
.end method

.method private genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ibm/icu/text/DateTimePatternGenerator;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Lcom/ibm/icu/text/DateTimePatternGenerator;",
            ")Z"
        }
    .end annotation

    .line 1890
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    move-object v6, p1

    .line 1905
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {v1, v6}, Lcom/ibm/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object v1

    .line 1906
    iget-object v7, v1, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 1907
    iget v8, v1, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    .line 1911
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1912
    invoke-virtual {p4, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 1914
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1915
    invoke-virtual {p4, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    :cond_2
    const/4 v0, -0x1

    if-ne v8, v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 1930
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    move-object v5, p3

    .line 1932
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/4 v1, 0x2

    .line 1933
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1938
    iget-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    .line 1939
    iget-object v0, v0, Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v1

    :cond_4
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    move-object v5, p3

    .line 1941
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/4 v1, 0x0

    .line 1942
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    goto :goto_1

    :cond_5
    const/16 v1, 0xc

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    move-object v5, p3

    .line 1944
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/16 v1, 0xa

    .line 1945
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/16 v1, 0x9

    .line 1946
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lcom/ibm/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private getConcatenationPattern(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    .line 1564
    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v0, "calendar/gregorian/DateTimePatterns"

    .line 1565
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    const/16 v0, 0x8

    .line 1566
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1567
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1570
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1738
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 1739
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    add-int/lit8 v9, v9, 0x1

    .line 1791
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1754
    :pswitch_2
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v8, v8, 0x1

    .line 1795
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1786
    :pswitch_4
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1746
    :pswitch_5
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1750
    :pswitch_6
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1780
    :pswitch_7
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v4, :cond_0

    move v4, v10

    goto :goto_1

    .line 1742
    :pswitch_8
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1773
    :pswitch_9
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1774
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1806
    :pswitch_a
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1807
    invoke-virtual {p4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 p0, 0x0

    :goto_2
    if-ge p0, v2, :cond_2

    const/16 p1, 0x79

    .line 1815
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x5

    const/4 p1, 0x3

    if-eqz v5, :cond_4

    const/16 p3, 0x4d

    if-ge v5, p1, :cond_3

    .line 1820
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_4

    if-ge v1, p0, :cond_4

    .line 1823
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v3, :cond_6

    const/16 p3, 0x45

    if-gt v3, p1, :cond_5

    .line 1829
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    :goto_5
    if-ge v0, v3, :cond_6

    if-ge v0, p0, :cond_6

    .line 1832
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    const/16 p0, 0x64

    .line 1837
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v4, :cond_8

    .line 1842
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v7, :cond_9

    const/16 p0, 0x6d

    .line 1845
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v9, :cond_a

    const/16 p0, 0x7a

    .line 1848
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v8, :cond_b

    const/16 p0, 0x76

    .line 1851
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalFormat;
    .locals 1

    .line 560
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo;)Lcom/ibm/icu/text/DateIntervalFormat;
    .locals 1

    .line 638
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DateIntervalInfo;)Lcom/ibm/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateIntervalFormat;
    .locals 3

    .line 615
    invoke-static {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/ibm/icu/text/DateIntervalFormat;

    new-instance v2, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    invoke-direct {v1, p0, p1, v2}, Lcom/ibm/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DateIntervalInfo;)Lcom/ibm/icu/text/DateIntervalFormat;
    .locals 3

    .line 708
    invoke-virtual {p2}, Lcom/ibm/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/DateIntervalInfo;

    .line 709
    invoke-static {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 710
    new-instance v1, Lcom/ibm/icu/text/DateIntervalFormat;

    new-instance v2, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/ibm/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo;Lcom/ibm/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateIntervalFormat;
    .locals 0

    .line 579
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;Lcom/ibm/icu/text/DateIntervalInfo;)Lcom/ibm/icu/text/DateIntervalFormat;
    .locals 0

    .line 661
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DateIntervalInfo;)Lcom/ibm/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method private initializeIntervalPattern(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/ULocale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .line 1375
    invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 1376
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1379
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getSkeleton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 1381
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DateIntervalFormat;->normalizeHourMetacharacters(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    .line 1383
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1404
    invoke-static {p1, v2, v3, v4, v5}, Lcom/ibm/icu/text/DateIntervalFormat;->getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1408
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1410
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1418
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/DateIntervalFormat;->getConcatenationPattern(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 1421
    :cond_1
    invoke-direct {p0, v3, v5, v1, v0}, Lcom/ibm/icu/text/DateIntervalFormat;->genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ibm/icu/text/DateTimePatternGenerator;)Z

    move-result p2

    const-string v3, "G"

    const-string v5, "yMd"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x5

    if-nez p2, :cond_3

    .line 1430
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 1436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1437
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1442
    new-instance v2, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v4, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 1443
    invoke-virtual {v4}, Lcom/ibm/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v4

    invoke-direct {v2, v8, p2, v4}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1444
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v12

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v11

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v10

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1454
    new-instance p2, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v0

    invoke-direct {p2, v8, p1, v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1456
    sget-object p1, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p1, v9

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    .line 1471
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    .line 1473
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_5

    .line 1486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1487
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1492
    new-instance v2, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v4, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 1493
    invoke-virtual {v4}, Lcom/ibm/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v4

    invoke-direct {v2, v8, p2, v4}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1494
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v12

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v11

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v10

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1502
    new-instance p2, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v0

    invoke-direct {p2, v8, p1, v0}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1503
    sget-object p1, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p1, v9

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1517
    :cond_5
    invoke-static {v12, v6}, Lcom/ibm/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1521
    invoke-direct {p0, v12, p1, v1, v0}, Lcom/ibm/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Lcom/ibm/icu/text/DateTimePatternGenerator;)V

    .line 1523
    :cond_6
    invoke-static {v11, v6}, Lcom/ibm/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1527
    invoke-direct {p0, v11, p1, v1, v0}, Lcom/ibm/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Lcom/ibm/icu/text/DateTimePatternGenerator;)V

    .line 1529
    :cond_7
    invoke-static {v10, v6}, Lcom/ibm/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1533
    invoke-direct {p0, v10, p1, v1, v0}, Lcom/ibm/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Lcom/ibm/icu/text/DateTimePatternGenerator;)V

    .line 1535
    :cond_8
    invoke-static {v9, v6}, Lcom/ibm/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1539
    invoke-direct {p0, v9, p1, v1, v0}, Lcom/ibm/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Lcom/ibm/icu/text/DateTimePatternGenerator;)V

    .line 1546
    :cond_9
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    if-nez p1, :cond_a

    const-string p1, "{1} {0}"

    .line 1547
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 1549
    :cond_a
    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1550
    iget-object p2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 1551
    iget-object p2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 1552
    iget-object p2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    :goto_0
    return-object v1
.end method

.method private initializePattern(Lcom/ibm/icu/impl/ICUCache;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1314
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 1315
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1319
    iget-object v2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    const-string v3, "+"

    if-eqz v2, :cond_0

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1322
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1324
    :goto_0
    invoke-interface {p1, v2}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v2, :cond_2

    .line 1327
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/DateIntervalFormat;->initializeIntervalPattern(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/util/Map;

    move-result-object v0

    .line 1328
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 1330
    invoke-interface {p1, v3, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1333
    :cond_2
    iput-object v2, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    return-void
.end method

.method private normalizeHourMetacharacters(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 11

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1620
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x6a

    if-eq v5, v6, :cond_1

    const/16 v6, 0x4a

    if-eq v5, v6, :cond_1

    const/16 v6, 0x43

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    move v4, v1

    move v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v2, :cond_11

    const/16 v1, 0x61

    .line 1639
    invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object p2

    .line 1640
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    const/16 v2, 0x27

    .line 1645
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 1646
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v6, :cond_5

    move v2, v5

    .line 1650
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_6
    const/16 v2, 0x68

    .line 1653
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v7, 0x4b

    const/16 v8, 0x48

    const/16 v9, 0x6b

    if-eq v5, v6, :cond_7

    goto :goto_4

    .line 1655
    :cond_7
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_8

    const/16 v2, 0x4b

    goto :goto_4

    .line 1657
    :cond_8
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_9

    const/16 v2, 0x6b

    goto :goto_4

    :cond_9
    const/16 v2, 0x48

    :goto_4
    const/16 v5, 0x62

    .line 1661
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/16 v10, 0x42

    if-eq v7, v6, :cond_a

    const/16 v1, 0x62

    goto :goto_5

    .line 1663
    :cond_a
    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-eq p2, v6, :cond_b

    const/16 v1, 0x42

    :cond_b
    :goto_5
    if-eq v2, v8, :cond_10

    if-ne v2, v9, :cond_c

    goto :goto_9

    .line 1670
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1671
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v5, 0x4

    if-eq v3, v2, :cond_e

    if-eq v3, v5, :cond_e

    const/4 v2, 0x5

    if-eq v3, v2, :cond_d

    const/4 v5, 0x6

    if-eq v3, v5, :cond_d

    .line 1676
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    :goto_6
    if-ge p1, v2, :cond_f

    .line 1687
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-ge p1, v5, :cond_f

    .line 1681
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    add-int/2addr v3, v4

    .line 1691
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, v3, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_10
    :goto_9
    add-int/2addr v3, v4

    .line 1668
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, v3, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    :cond_11
    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2307
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2308
    iget-boolean p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ibm/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalFormat;->initializePattern(Lcom/ibm/icu/impl/ICUCache;)V

    .line 2310
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-nez p1, :cond_1

    .line 2311
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 722
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateIntervalFormat;

    .line 723
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    .line 724
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateIntervalInfo;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 725
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fFromCalendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Calendar;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fFromCalendar:Lcom/ibm/icu/util/Calendar;

    .line 726
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fToCalendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Calendar;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fToCalendar:Lcom/ibm/icu/util/Calendar;

    .line 727
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 728
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 729
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 730
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 888
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/DateIntervalFormat;->formatImpl(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final format(Lcom/ibm/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 784
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->formatIntervalImpl(Lcom/ibm/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 759
    instance-of v0, p1, Lcom/ibm/icu/util/DateInterval;

    if-eqz v0, :cond_0

    .line 760
    check-cast p1, Lcom/ibm/icu/util/DateInterval;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateIntervalFormat;->format(Lcom/ibm/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 763
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot format given Object ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as a DateInterval"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public formatToValue(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;
    .locals 10

    .line 904
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 905
    new-instance v4, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 906
    new-instance v8, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;-><init>(Lcom/ibm/icu/text/DateIntervalFormat$1;)V

    .line 907
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v5, v8

    move-object v6, v9

    .line 908
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/DateIntervalFormat;->formatImpl(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 909
    iget p1, v8, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 910
    sget-object p1, Lcom/ibm/icu/text/DateIntervalFormat$SpanField;->DATE_INTERVAL_SPAN:Lcom/ibm/icu/text/DateIntervalFormat$SpanField;

    iget p2, v8, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    invoke-static {v9, p1, p2}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;->addOverlapSpans(Ljava/util/List;Ljava/text/Format$Field;I)V

    .line 912
    invoke-static {v9}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;->sort(Ljava/util/List;)V

    .line 914
    :cond_0
    new-instance p1, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;

    invoke-direct {p1, v7, v9}, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p1
.end method

.method public formatToValue(Lcom/ibm/icu/util/DateInterval;)Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;
    .locals 9

    .line 797
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 798
    new-instance v3, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 799
    new-instance v7, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;-><init>(Lcom/ibm/icu/text/DateIntervalFormat$1;)V

    .line 800
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v4, v7

    move-object v5, v8

    .line 801
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DateIntervalFormat;->formatIntervalImpl(Lcom/ibm/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 802
    iget p1, v7, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 803
    sget-object p1, Lcom/ibm/icu/text/DateIntervalFormat$SpanField;->DATE_INTERVAL_SPAN:Lcom/ibm/icu/text/DateIntervalFormat$SpanField;

    iget v0, v7, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    invoke-static {v8, p1, v0}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;->addOverlapSpans(Ljava/util/List;Ljava/text/Format$Field;I)V

    .line 805
    invoke-static {v8}, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;->sort(Ljava/util/List;)V

    .line 807
    :cond_0
    new-instance p1, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;

    invoke-direct {p1, v6, v8}, Lcom/ibm/icu/text/DateIntervalFormat$FormattedDateInterval;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p1
.end method

.method public getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 1290
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    :goto_0
    return-object p1
.end method

.method public declared-synchronized getDateFormat()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    monitor-enter p0

    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDateIntervalInfo()Lcom/ibm/icu/text/DateIntervalInfo;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateIntervalInfo;

    return-object v0
.end method

.method public getPatterns(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 831
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    invoke-virtual {p1, v10}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 834
    invoke-virtual {p2, v10}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 836
    :cond_1
    invoke-virtual {p1, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 837
    invoke-virtual {p2, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 839
    :cond_2
    invoke-virtual {p1, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 840
    invoke-virtual {p2, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    .line 842
    :cond_3
    invoke-virtual {p1, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 843
    invoke-virtual {p2, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_4

    const/16 v0, 0x9

    goto :goto_0

    .line 845
    :cond_4
    invoke-virtual {p1, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 846
    invoke-virtual {p2, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    const/16 v0, 0xa

    goto :goto_0

    .line 848
    :cond_5
    invoke-virtual {p1, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 849
    invoke-virtual {p2, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_6

    const/16 v0, 0xc

    goto :goto_0

    .line 851
    :cond_6
    invoke-virtual {p1, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 852
    invoke-virtual {p2, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_7

    const/16 v0, 0xd

    goto :goto_0

    .line 854
    :cond_7
    invoke-virtual {p1, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    .line 855
    invoke-virtual {p2, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p2

    if-eq p1, p2, :cond_8

    const/16 v0, 0xe

    .line 860
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object p2, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    .line 862
    invoke-virtual {p1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 863
    invoke-virtual {p1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2323
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1230
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 1234
    invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZone;

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/util/TimeZone;

    return-object v0

    .line 1237
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "parsing is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 2

    .line 1275
    invoke-virtual {p1}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_0

    .line 1276
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fCapitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    :cond_0
    return-void
.end method

.method public setDateIntervalInfo(Lcom/ibm/icu/text/DateIntervalInfo;)V
    .locals 1

    .line 1215
    invoke-virtual {p1}, Lcom/ibm/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DateIntervalInfo;

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    const/4 v0, 0x0

    .line 1216
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 1217
    invoke-virtual {p1}, Lcom/ibm/icu/text/DateIntervalInfo;->freeze()Lcom/ibm/icu/text/DateIntervalInfo;

    .line 1218
    iget-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1219
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalFormat;->initializePattern(Lcom/ibm/icu/impl/ICUCache;)V

    :cond_0
    return-void
.end method

.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
    .locals 1

    .line 1249
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    .line 1250
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fDateFormat:Lcom/ibm/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 1251
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fFromCalendar:Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_1

    .line 1256
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalFormat;->fToCalendar:Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_2

    .line 1259
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_2
    return-void
.end method
