.class public Lcom/ibm/icu/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;,
        Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    }
.end annotation


# static fields
.field public static final ABBREVIATED:I = 0x0

.field static final ALTERNATE_TIME_SEPARATOR:Ljava/lang/String; = "."

.field private static final CALENDAR_CLASSES:[[Ljava/lang/String;

.field private static final DAY_PERIOD_KEYS:[Ljava/lang/String;

.field static final DEFAULT_TIME_SEPARATOR:Ljava/lang/String; = ":"

.field private static DFSCACHE:Lcom/ibm/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateFormatSymbols;",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field public static final DT_CONTEXT_COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_ABBREV:I = 0x1

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_NARROW:I = 0x2

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_WIDE:I = 0x0

.field static final DT_LEAP_MONTH_PATTERN_NUMERIC:I = 0x6

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_ABBREV:I = 0x4

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_NARROW:I = 0x5

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_WIDE:I = 0x3

.field static final DT_MONTH_PATTERN_COUNT:I = 0x7

.field public static final DT_WIDTH_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT:I = 0x0

.field private static final LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

.field public static final NARROW:I = 0x2

.field public static final NUMERIC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHORT:I = 0x3

.field public static final STANDALONE:I = 0x1

.field public static final WIDE:I = 0x1

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field abbreviatedDayPeriods:[Ljava/lang/String;

.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field ampms:[Ljava/lang/String;

.field ampmsNarrow:[Ljava/lang/String;

.field capitalization:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            "[Z>;"
        }
    .end annotation
.end field

.field eraNames:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field leapMonthPatterns:[Ljava/lang/String;

.field localPatternChars:Ljava/lang/String;

.field months:[Ljava/lang/String;

.field narrowDayPeriods:[Ljava/lang/String;

.field narrowEras:[Ljava/lang/String;

.field narrowMonths:[Ljava/lang/String;

.field narrowWeekdays:[Ljava/lang/String;

.field quarters:[Ljava/lang/String;

.field private requestedLocale:Lcom/ibm/icu/util/ULocale;

.field shortMonths:[Ljava/lang/String;

.field shortQuarters:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field shortYearNames:[Ljava/lang/String;

.field shortZodiacNames:[Ljava/lang/String;

.field shorterWeekdays:[Ljava/lang/String;

.field standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

.field standaloneMonths:[Ljava/lang/String;

.field standaloneNarrowDayPeriods:[Ljava/lang/String;

.field standaloneNarrowMonths:[Ljava/lang/String;

.field standaloneNarrowWeekdays:[Ljava/lang/String;

.field standaloneQuarters:[Ljava/lang/String;

.field standaloneShortMonths:[Ljava/lang/String;

.field standaloneShortQuarters:[Ljava/lang/String;

.field standaloneShortWeekdays:[Ljava/lang/String;

.field standaloneShorterWeekdays:[Ljava/lang/String;

.field standaloneWeekdays:[Ljava/lang/String;

.field standaloneWideDayPeriods:[Ljava/lang/String;

.field private timeSeparator:Ljava/lang/String;

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field weekdays:[Ljava/lang/String;

.field wideDayPeriods:[Ljava/lang/String;

.field private zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "GregorianCalendar"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "gregorian"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "JapaneseCalendar"

    aput-object v3, v2, v4

    const-string v3, "japanese"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "BuddhistCalendar"

    aput-object v3, v2, v4

    const-string v3, "buddhist"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "TaiwanCalendar"

    aput-object v3, v2, v4

    const-string v3, "roc"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "PersianCalendar"

    aput-object v6, v2, v4

    const-string v6, "persian"

    aput-object v6, v2, v5

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "IslamicCalendar"

    aput-object v7, v2, v4

    const-string v7, "islamic"

    aput-object v7, v2, v5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "HebrewCalendar"

    aput-object v8, v2, v4

    const-string v8, "hebrew"

    aput-object v8, v2, v5

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/String;

    const-string v9, "ChineseCalendar"

    aput-object v9, v2, v4

    const-string v9, "chinese"

    aput-object v9, v2, v5

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/String;

    const-string v10, "IndianCalendar"

    aput-object v10, v2, v4

    const-string v10, "indian"

    aput-object v10, v2, v5

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/String;

    const-string v11, "CopticCalendar"

    aput-object v11, v2, v4

    const-string v11, "coptic"

    aput-object v11, v2, v5

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/String;

    const-string v12, "EthiopicCalendar"

    aput-object v12, v2, v4

    const-string v12, "ethiopic"

    aput-object v12, v2, v5

    const/16 v12, 0xa

    aput-object v2, v0, v12

    .line 657
    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    .line 697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    .line 698
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "month-format-except-narrow"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "month-standalone-except-narrow"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "month-narrow"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "day-format-except-narrow"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "day-standalone-except-narrow"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "day-narrow"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "era-name"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "era-abbr"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "era-narrow"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "zone-long"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "zone-short"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "metazone-long"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v13, "metazone-short"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateFormatSymbols$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DFSCACHE:Lcom/ibm/icu/impl/CacheBase;

    new-array v0, v9, [Ljava/lang/String;

    .line 2073
    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const-string v2, "monthPatterns/format/wide"

    aput-object v2, v0, v4

    const-string v2, "monthPatterns/format/abbreviated"

    aput-object v2, v0, v5

    const-string v2, "monthPatterns/format/narrow"

    aput-object v2, v0, v1

    const-string v2, "monthPatterns/stand-alone/wide"

    aput-object v2, v0, v3

    const-string v2, "monthPatterns/stand-alone/abbreviated"

    aput-object v2, v0, v6

    const-string v2, "monthPatterns/stand-alone/narrow"

    aput-object v2, v0, v7

    const-string v2, "monthPatterns/numeric/all"

    aput-object v2, v0, v8

    new-array v0, v12, [Ljava/lang/String;

    const-string v2, "midnight"

    aput-object v2, v0, v4

    const-string v2, "noon"

    aput-object v2, v0, v5

    const-string v2, "morning1"

    aput-object v2, v0, v1

    const-string v1, "afternoon1"

    aput-object v1, v0, v3

    const-string v1, "evening1"

    aput-object v1, v0, v6

    const-string v1, "night1"

    aput-object v1, v0, v7

    const-string v1, "morning2"

    aput-object v1, v0, v8

    const-string v1, "afternoon2"

    aput-object v1, v0, v9

    const-string v1, "evening2"

    aput-object v1, v0, v10

    const-string v1, "night2"

    aput-object v1, v0, v11

    .line 2107
    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 230
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 411
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 440
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 553
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 598
    move-object v1, v0

    check-cast v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 616
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2189
    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 2

    .line 2175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 411
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 440
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 553
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 598
    move-object v1, v0

    check-cast v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 616
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2176
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 411
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 440
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 553
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 598
    move-object v1, v0

    check-cast v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 616
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 256
    invoke-static {p1}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 2

    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 411
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 440
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 553
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 598
    move-object v1, v0

    check-cast v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 616
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1855
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ibm/icu/util/Calendar;",
            ">;",
            "Lcom/ibm/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 2208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 411
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 440
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 553
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 598
    move-object v1, v0

    check-cast v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 616
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2209
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 2210
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 2211
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2213
    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 2214
    aget-object v7, v6, v4

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2215
    aget-object v0, v6, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Calendar"

    const-string v1, ""

    .line 2220
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2223
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ibm/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 2199
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 2244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 411
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 440
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 553
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 598
    move-object v1, v0

    check-cast v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 616
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2245
    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-static {p2}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .locals 0

    .line 2234
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private static final arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 2091
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    .line 2095
    :cond_2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 2096
    aget-object v0, p0, v1

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method private final duplicate([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 2137
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final duplicate([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3

    .line 2142
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2143
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2144
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 320
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 337
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatBundle(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateFormatBundle(Lcom/ibm/icu/util/Calendar;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ibm/icu/util/Calendar;",
            ">;",
            "Lcom/ibm/icu/util/ULocale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ibm/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 1

    .line 271
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 1

    .line 303
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 1

    .line 287
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2116
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2118
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2119
    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2403
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1446
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1450
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1475
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1476
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1477
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 1478
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1479
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1480
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1481
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1482
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1483
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1484
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1485
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1486
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1487
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1488
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1489
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1490
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1491
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1492
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1493
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1494
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1495
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1496
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1497
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1498
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1499
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1500
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1501
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1502
    invoke-static {v2, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    .line 1506
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object p1, p1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1507
    invoke-static {v2, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEraNames()[Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeapMonthPattern(II)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_4

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_4

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_4

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_8

    .line 1241
    aget-object p1, v0, v1

    return-object p1

    .line 1239
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad context or width argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 2350
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonths(II)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 819
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 812
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_0

    .line 816
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_7

    goto :goto_0

    .line 805
    :cond_5
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 798
    :cond_6
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_0

    .line 802
    :cond_7
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    :goto_0
    if-eqz v3, :cond_8

    .line 827
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 825
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad context or width argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNarrowEras()[Ljava/lang/String;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuarters(II)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 1070
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    goto :goto_0

    .line 1055
    :cond_4
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_0

    .line 1059
    :cond_5
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    :cond_6
    :goto_0
    if-eqz v3, :cond_7

    .line 1085
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1083
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad context or width argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSeparatorString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1327
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeekdays(II)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_1

    goto :goto_2

    .line 947
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz p1, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    :goto_1
    move-object v3, p1

    goto :goto_2

    .line 950
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_2

    .line 941
    :cond_4
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_2

    .line 944
    :cond_5
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_b

    if-eq p2, v2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_7

    goto :goto_2

    .line 931
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_1

    .line 934
    :cond_9
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_2

    .line 925
    :cond_a
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_2

    .line 928
    :cond_b
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    :goto_2
    if-eqz v3, :cond_c

    .line 958
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 956
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad context or width argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getYearNames(II)[Ljava/lang/String;
    .locals 0

    .line 1142
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1143
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getZodiacNames(II)[Ljava/lang/String;
    .locals 0

    .line 1172
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1173
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 15

    .line 1368
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1369
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1372
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v1

    .line 1374
    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneNames;->loadAllDisplayNames()V

    const/4 v2, 0x4

    new-array v9, v2, [Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 1375
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const/4 v3, 0x1

    aput-object v2, v9, v3

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const/4 v4, 0x2

    aput-object v2, v9, v4

    const/4 v2, 0x3

    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v5, v9, v2

    .line 1379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1380
    array-length v2, v0

    const/4 v5, 0x5

    new-array v4, v4, [I

    aput v5, v4, v3

    aput v2, v4, v10

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [[Ljava/lang/String;

    const/4 v14, 0x0

    .line 1381
    :goto_0
    array-length v2, v0

    if-ge v14, v2, :cond_2

    .line 1382
    aget-object v2, v0, v14

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1384
    aget-object v2, v0, v14

    :cond_1
    move-object v3, v2

    .line 1387
    aget-object v2, v13, v14

    aget-object v4, v0, v14

    aput-object v4, v2, v10

    .line 1388
    aget-object v7, v13, v14

    const/4 v8, 0x1

    move-object v2, v1

    move-object v4, v9

    move-wide v5, v11

    invoke-virtual/range {v2 .. v8}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Lcom/ibm/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1391
    :cond_2
    iput-object v13, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    return-object v13
.end method

.method public hashCode()I
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V
    .locals 1

    .line 1562
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 1563
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1564
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 1565
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1566
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1567
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1568
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1569
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1570
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1571
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1572
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1573
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1574
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1575
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1576
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1577
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1578
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1579
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1580
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1581
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1582
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 1583
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 1584
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 1585
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 1586
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 1587
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 1588
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 1589
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1590
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1591
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1592
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1593
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1594
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1596
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1597
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1599
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1601
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 1602
    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1603
    iget-object p1, p1, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method protected initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1871
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;-><init>()V

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "gregorian"

    if-nez p2, :cond_0

    .line 1874
    invoke-static {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/ICUResourceBundle;

    :cond_0
    :goto_0
    const-string v3, ""

    if-eqz p3, :cond_4

    .line 1881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calendar/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1883
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1885
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    :goto_1
    move-object p3, v2

    goto :goto_0

    .line 1888
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The \'gregorian\' calendar type wasn\'t found for the locale: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 1891
    :cond_2
    invoke-virtual {v0, p3}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->preEnumerate(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {v4, v3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 1895
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 1900
    :cond_3
    iget-object p3, v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 1905
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    goto :goto_1

    .line 1909
    :cond_4
    :goto_2
    iget-object p2, v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    .line 1910
    iget-object p3, v0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    const-string v0, "eras/abbreviated"

    .line 1912
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const-string v0, "eras/wide"

    .line 1913
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const-string v0, "eras/narrow"

    .line 1914
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const-string v0, "monthNames/format/wide"

    .line 1916
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    const-string v0, "monthNames/format/abbreviated"

    .line 1917
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    const-string v0, "monthNames/format/narrow"

    .line 1918
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    const-string v0, "monthNames/stand-alone/wide"

    .line 1920
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    const-string v0, "monthNames/stand-alone/abbreviated"

    .line 1921
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    const-string v0, "monthNames/stand-alone/narrow"

    .line 1922
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    const-string v0, "dayNames/format/wide"

    .line 1924
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    .line 1925
    iput-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 1927
    array-length v6, v0

    const/4 v7, 0x1

    invoke-static {v0, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/format/abbreviated"

    .line 1929
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    .line 1930
    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    aput-object v3, v6, v5

    .line 1932
    array-length v8, v4

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v4, "dayNames/format/short"

    .line 1934
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    .line 1935
    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    aput-object v3, v6, v5

    .line 1937
    array-length v8, v4

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v4, "dayNames/format/narrow"

    .line 1939
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v6, "dayNames/stand-alone/narrow"

    if-nez v4, :cond_6

    .line 1941
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_6

    .line 1944
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_5

    goto :goto_3

    .line 1947
    :cond_5
    new-instance p1, Ljava/util/MissingResourceException;

    .line 1948
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Resource not found"

    invoke-direct {p1, p3, p2, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    new-array v0, v2, [Ljava/lang/String;

    .line 1952
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    aput-object v3, v0, v5

    .line 1954
    array-length v8, v4

    invoke-static {v4, v5, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/stand-alone/wide"

    .line 1957
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 1958
    iput-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    aput-object v3, v4, v5

    .line 1960
    array-length v8, v0

    invoke-static {v0, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/stand-alone/abbreviated"

    .line 1963
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 1964
    iput-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    aput-object v3, v4, v5

    .line 1966
    array-length v8, v0

    invoke-static {v0, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/stand-alone/short"

    .line 1969
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 1970
    iput-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    aput-object v3, v4, v5

    .line 1972
    array-length v8, v0

    invoke-static {v0, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1975
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    .line 1976
    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    aput-object v3, v2, v5

    .line 1978
    array-length v3, v0

    invoke-static {v0, v5, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "AmPmMarkers"

    .line 1980
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const-string v0, "AmPmMarkersNarrow"

    .line 1981
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const-string v0, "quarters/format/wide"

    .line 1983
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const-string v0, "quarters/format/abbreviated"

    .line 1984
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    const-string v0, "quarters/stand-alone/wide"

    .line 1986
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    const-string v0, "quarters/stand-alone/abbreviated"

    .line 1987
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    const-string v0, "dayPeriod/format/abbreviated"

    .line 1989
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/format/wide"

    .line 1990
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/format/narrow"

    .line 1991
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/stand-alone/abbreviated"

    .line 1992
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/stand-alone/wide"

    .line 1993
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/stand-alone/narrow"

    .line 1994
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    const/4 v2, 0x7

    if-ge v0, v2, :cond_9

    .line 1997
    sget-object v3, Lcom/ibm/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    .line 1999
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_8

    const-string v4, "leap"

    .line 2001
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 2003
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-nez v4, :cond_7

    new-array v2, v2, [Ljava/lang/String;

    .line 2004
    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 2006
    :cond_7
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aput-object v3, v2, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const-string p3, "cyclicNameSets/years/format/abbreviated"

    .line 2012
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const-string p3, "cyclicNameSets/zodiacs/format/abbreviated"

    .line 2013
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 2015
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    .line 2018
    invoke-static {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string p3, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    .line 2021
    iput-object p3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 2024
    invoke-virtual {p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p3

    .line 2025
    invoke-virtual {p0, p3, p3}, Lcom/ibm/icu/text/DateFormatSymbols;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 2027
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    const/4 p3, 0x2

    new-array v0, p3, [Z

    .line 2028
    fill-array-data v0, :array_0

    .line 2031
    invoke-static {}, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->values()[Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-result-object v1

    .line 2032
    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 2033
    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :try_start_0
    const-string v0, "contextTransforms"

    .line 2037
    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_e

    .line 2043
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 2044
    :cond_b
    :goto_7
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2045
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 2046
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v2

    .line 2047
    array-length v3, v2

    if-lt v3, p3, :cond_b

    .line 2048
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2049
    sget-object v3, Lcom/ibm/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    if-eqz v1, :cond_b

    new-array v3, p3, [Z

    .line 2052
    aget v4, v2, v5

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    aput-boolean v4, v3, v5

    .line 2053
    aget v2, v2, v7

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :goto_9
    aput-boolean v2, v3, v7

    .line 2054
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2060
    :cond_e
    invoke-static {p1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "latn"

    goto :goto_a

    .line 2061
    :cond_f
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2062
    :goto_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NumberElements/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/symbols/timeSeparator"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2064
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    const-string p1, ":"

    .line 2066
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V

    :goto_b
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 3

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "numbers"

    .line 1548
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1552
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DFSCACHE:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {v0, p2, p1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1553
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V

    return-void
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 0

    .line 1316
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    return-void
.end method

.method public setEraNames([Ljava/lang/String;)V
    .locals 0

    .line 754
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    return-void
.end method

.method public setLeapMonthPattern(Ljava/lang/String;II)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_7

    if-eq p3, v3, :cond_3

    if-eq p3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_7

    if-eq p3, v3, :cond_6

    if-eq p3, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_8

    .line 1296
    aput-object p1, v0, v1

    :cond_8
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 0

    .line 1435
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

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

    .line 2379
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 2380
    iput-object p2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void

    .line 2374
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 0

    .line 836
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    return-void
.end method

.method public setMonths([Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 873
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 867
    :cond_2
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_0

    .line 870
    :cond_3
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_7

    if-eq p3, v1, :cond_6

    if-eq p3, v0, :cond_5

    goto :goto_0

    .line 858
    :cond_5
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 852
    :cond_6
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_0

    .line 855
    :cond_7
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setNarrowEras([Ljava/lang/String;)V
    .locals 0

    .line 772
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    return-void
.end method

.method public setQuarters([Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 1116
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_0

    .line 1119
    :cond_2
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    if-eq p3, v0, :cond_4

    goto :goto_0

    .line 1101
    :cond_4
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_0

    .line 1104
    :cond_5
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 0

    .line 897
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 0

    .line 1039
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    return-void
.end method

.method public setTimeSeparatorString(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1338
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 0

    .line 1014
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 996
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 999
    :cond_2
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 990
    :cond_3
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 993
    :cond_4
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_9

    if-eq p3, v2, :cond_8

    if-eq p3, v1, :cond_7

    if-eq p3, v0, :cond_6

    goto :goto_0

    .line 980
    :cond_6
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 983
    :cond_7
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 974
    :cond_8
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    .line 977
    :cond_9
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setYearNames([Ljava/lang/String;II)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1157
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setZodiacNames([Ljava/lang/String;II)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1187
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    return-void
.end method
