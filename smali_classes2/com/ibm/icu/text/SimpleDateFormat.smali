.class public Lcom/ibm/icu/text/SimpleDateFormat;
.super Lcom/ibm/icu/text/DateFormat;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;,
        Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CALENDAR_FIELD_TO_LEVEL:[I

.field static final DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

.field private static final DECIMAL_BUF_SIZE:I = 0xa

.field static DelayedHebrewMonthCheck:Z = false

.field private static final FALLBACKPATTERN:Ljava/lang/String; = "yy/MM/dd HH:mm"

.field private static final HEBREW_CAL_CUR_MILLENIUM_END_YEAR:I = 0x1770

.field private static final HEBREW_CAL_CUR_MILLENIUM_START_YEAR:I = 0x1388

.field private static final ISOSpecialEra:I = -0x7d00

.field private static final MAX_DAYLIGHT_DETECTION_RANGE:J = 0xdc46c32800L

.field private static final NUMERIC_FORMAT_CHARS:Ljava/lang/String; = "ADdFgHhKkmrSsuWwYy"

.field private static final NUMERIC_FORMAT_CHARS2:Ljava/lang/String; = "ceLMQq"

.field private static PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_CHAR_IS_SYNTAX:[Z

.field private static final PATTERN_CHAR_TO_INDEX:[I

.field private static final PATTERN_CHAR_TO_LEVEL:[I

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final SUPPRESS_NEGATIVE_PREFIX:Ljava/lang/String; = "\uab00"

.field private static cachedDefaultLocale:Lcom/ibm/icu/util/ULocale; = null

.field private static cachedDefaultPattern:Ljava/lang/String; = null

.field static final currentSerialVersion:I = 0x2

.field private static final millisPerHour:I = 0x36ee80

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

.field private transient decDigits:[C

.field private transient decimalBuf:[C

.field private transient defaultCenturyBase:J

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Lcom/ibm/icu/text/DateFormatSymbols;

.field private transient hasHanYearChar:Z

.field private transient hasMinute:Z

.field private transient hasSecond:Z

.field private transient locale:Lcom/ibm/icu/util/ULocale;

.field private numberFormatters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private override:Ljava/lang/String;

.field private overrideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private transient patternItems:[Ljava/lang/Object;

.field private serialVersionOnStream:I

.field private volatile tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

.field private transient useFastFormat:Z

.field private transient useLocalZeroPaddingNumberFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x18

    new-array v1, v0, [I

    .line 745
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    const/16 v1, 0x80

    new-array v2, v1, [I

    .line 764
    fill-array-data v2, :array_1

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    new-array v2, v1, [Z

    .line 790
    fill-array-data v2, :array_2

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    const/4 v2, 0x0

    .line 1209
    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    .line 1210
    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    new-array v1, v1, [I

    .line 1423
    fill-array-data v1, :array_3

    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    const/16 v1, 0x25

    new-array v2, v1, [I

    .line 1447
    fill-array-data v2, :array_4

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    const/16 v2, 0x26

    new-array v3, v2, [I

    .line 1471
    fill-array-data v3, :array_5

    sput-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    new-array v2, v2, [Lcom/ibm/icu/text/DateFormat$Field;

    const/4 v3, 0x0

    .line 1494
    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->ERA:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR1:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->HOUR0:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x17

    sget-object v4, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x19

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1a

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1b

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1c

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1d

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1e

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1f

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x20

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x21

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x22

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->RELATED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x23

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x24

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->TIME_SEPARATOR:Lcom/ibm/icu/text/DateFormat$Field;

    aput-object v0, v2, v1

    sput-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    .line 2150
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 2904
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[GyYuUQqMLlwWd]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x14
        0x14
        0x1e
        0x1e
        0x14
        0x1e
        0x1e
        0x28
        0x32
        0x32
        0x3c
        0x46
        0x50
        0x0
        0x0
        0xa
        0x1e
        0xa
        0x0
        0x28
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        0x14
        0x1e
        0x1e
        0x0
        0x32
        -0x1
        -0x1
        0x32
        0x14
        0x14
        -0x1
        0x0
        -0x1
        0x14
        -0x1
        0x50
        -0x1
        0xa
        0x0
        0x1e
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        0x1e
        0x1e
        0x1e
        -0x1
        0x0
        0x32
        -0x1
        -0x1
        0x32
        -0x1
        0x3c
        -0x1
        -0x1
        -0x1
        0x14
        0xa
        0x46
        -0x1
        0xa
        0x0
        0x14
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        0x24
        -0x1
        0xa
        0x9
        0xb
        0x0
        0x5
        -0x1
        -0x1
        0x10
        0x1a
        0x2
        -0x1
        0x1f
        -0x1
        0x1b
        -0x1
        0x8
        -0x1
        0x1e
        0x1d
        0xd
        0x20
        0x12
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        0x23
        0x19
        0x3
        0x13
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x4
        -0x1
        0x6
        -0x1
        -0x1
        -0x1
        0x1c
        0x22
        0x7
        -0x1
        0x14
        0x18
        0xc
        0x21
        0x1
        0x11
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0x11
        0x12
        0x13
        0x14
        0x15
        0xf
        0xf
        0x12
        0x2
        0x2
        0x2
        0xf
        0x1
        0xf
        0xf
        0xf
        0x13
        -0x1
        -0x2
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 985
    invoke-static {}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 997
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;)V
    .locals 8

    .line 1048
    invoke-virtual {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/ibm/icu/text/DateFormatSymbols;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 1

    .line 1076
    invoke-direct {p0}, Lcom/ibm/icu/text/DateFormat;-><init>()V

    const/4 v0, 0x2

    .line 853
    iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 1077
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1078
    iput-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1079
    iput-object p3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1080
    iput-object p4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1081
    iput-object p5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1082
    iput-boolean p6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    .line 1083
    iput-object p7, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 1084
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initialize()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 8

    .line 1069
    invoke-virtual {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {p3}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/ibm/icu/util/Calendar;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/ULocale;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1058
    invoke-virtual {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/ibm/icu/text/DateFormatSymbols;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 1019
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p2

    .line 1037
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 8

    .line 1008
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(CI)Z
    .locals 0

    .line 723
    invoke-static {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->isNumeric(CI)Z

    move-result p0

    return p0
.end method

.method private allowNumericFallback(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static countDigits(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 3861
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 3862
    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3865
    :cond_0
    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private diffCalFieldValue(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;[Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4436
    aget-object v0, p3, p4

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4439
    :cond_0
    aget-object p3, p3, p4

    check-cast p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 4440
    iget-char p3, p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4441
    invoke-static {p3}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    .line 4448
    sget-object p3, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget p3, p3, p4

    if-ltz p3, :cond_1

    .line 4450
    invoke-virtual {p1, p3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    .line 4451
    invoke-virtual {p2, p3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p2

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 4443
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal pattern character \'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "\' in \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
    .locals 4

    .line 2329
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v1, v0

    if-ge v1, p4, :cond_0

    array-length p4, v0

    :cond_0
    add-int/lit8 v0, p4, -0x1

    .line 2332
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    rem-int/lit8 v3, p2, 0xa

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 2333
    div-int/lit8 p2, p2, 0xa

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int p2, p4, v0

    sub-int/2addr p3, p2

    :goto_2
    const/4 p2, 0x0

    if-lez p3, :cond_3

    if-lez v0, :cond_3

    .line 2341
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char p2, v2, p2

    aput-char p2, v1, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-lez p3, :cond_4

    .line 2347
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v1, v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 2350
    :cond_4
    iget-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, v0, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method private format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/DisplayContext;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    const/4 v14, 0x0

    .line 1379
    invoke-virtual {v12, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1380
    invoke-virtual {v12, v14}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1386
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v15

    const/4 v9, 0x0

    .line 1387
    :goto_0
    array-length v0, v15

    if-ge v9, v0, :cond_4

    .line 1388
    aget-object v0, v15, v9

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1389
    aget-object v0, v15, v9

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v16, v9

    goto/16 :goto_3

    .line 1391
    :cond_0
    aget-object v0, v15, v9

    move-object v8, v0

    check-cast v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v13, :cond_1

    .line 1395
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1397
    :goto_1
    iget-boolean v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v0, :cond_2

    .line 1398
    iget-char v2, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-char v6, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v5, v9

    move/from16 v16, v6

    move-object/from16 v6, p2

    move v14, v7

    move-object/from16 v7, p4

    move-object v12, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    goto :goto_2

    :cond_2
    move v14, v7

    move-object v12, v8

    move/from16 v16, v9

    .line 1401
    iget-char v1, v12, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v2, v12, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-char v7, v12, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v0, p0

    move/from16 v4, v16

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    if-eqz v13, :cond_3

    .line 1406
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int v1, v0, v14

    if-lez v1, :cond_3

    .line 1409
    iget-char v1, v12, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-virtual {v10, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;

    move-result-object v1

    .line 1410
    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1411
    invoke-virtual {v2, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1412
    invoke-virtual {v2, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1413
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v12, p4

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_4
    return-object v11
.end method

.method private getDefaultCenturyStart()Ljava/util/Date;
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1280
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object v0
.end method

.method private getDefaultCenturyStartYear()I
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1289
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1291
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return v0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/ibm/icu/text/SimpleDateFormat;

    monitor-enter v0

    .line 1218
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 1219
    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1220
    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    .line 1221
    invoke-static {v1}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    .line 1225
    sget-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendar/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DateTimePatterns"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "calendar/gregorian/DateTimePatterns"

    .line 1231
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    .line 1233
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 1237
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    const/16 v4, 0xd

    if-lt v3, v4, :cond_2

    const/16 v2, 0xc

    .line 1240
    :cond_2
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 1244
    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1242
    invoke-static {v2, v3, v3, v4}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "yy/MM/dd HH:mm"

    .line 1234
    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v1, "yy/MM/dd HH:mm"

    .line 1247
    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    .line 1250
    :cond_4
    :goto_1
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getIndexFromChar(C)I
    .locals 2

    .line 1443
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/Calendar$FormatConfiguration;)Lcom/ibm/icu/text/SimpleDateFormat;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1097
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1100
    :goto_0
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Lcom/ibm/icu/text/DateFormatSymbols;

    move-result-object v3

    .line 1102
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object v4

    const/4 v5, 0x0

    .line 1104
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v6

    .line 1106
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static getLevelFromChar(C)I
    .locals 2

    .line 787
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getPatternItems()[Ljava/lang/Object;
    .locals 11

    .line 2159
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2163
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    return-object v0

    .line 2170
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2176
    :goto_0
    iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_b

    .line 2177
    iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_4

    if-eqz v8, :cond_2

    .line 2180
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 2185
    new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :cond_3
    const/4 v8, 0x1

    :goto_1
    xor-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    .line 2193
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v8, 0x0

    goto :goto_4

    .line 2195
    :cond_5
    invoke-static {v9}, Lcom/ibm/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ne v9, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    .line 2201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 2202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 2206
    :cond_7
    new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    move v5, v9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    .line 2214
    new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 2217
    :cond_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-nez v5, :cond_c

    .line 2224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    .line 2229
    :cond_c
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v0, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2232
    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2234
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2236
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v0
.end method

.method private initLocalZeroPaddingNumberFormat()V
    .locals 7

    .line 2287
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2288
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 2289
    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v0

    .line 2290
    iput-boolean v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    new-array v4, v1, [C

    .line 2291
    iput-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 2293
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 2294
    iput-boolean v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_1

    .line 2297
    :cond_0
    iget-object v5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    aget-object v6, v0, v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2299
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_2

    .line 2300
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decDigits:[C

    .line 2301
    iput-boolean v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_1

    .line 2303
    :cond_2
    iput-boolean v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 2306
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_4

    new-array v0, v1, [C

    .line 2307
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_4
    return-void
.end method

.method private initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 4555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 4557
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    .line 1113
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_0

    .line 1114
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    if-nez v0, :cond_1

    .line 1117
    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-nez v0, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1122
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_5

    .line 1123
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    .line 1124
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 1129
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1131
    new-instance v2, Lcom/ibm/icu/impl/DateNumberFormat;

    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v2, v3, v1, v0}, Lcom/ibm/icu/impl/DateNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    goto :goto_1

    .line 1127
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1134
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_6

    .line 1135
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-static {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->fixNumberFormatForDates(Lcom/ibm/icu/text/NumberFormat;)V

    .line 1140
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1142
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    sget-object v1, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    sget-object v2, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 1143
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 1145
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    .line 1150
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1151
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_7

    .line 1152
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "y=jpanyear"

    .line 1153
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 1156
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1157
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V

    :cond_8
    return-void
.end method

.method private initializeDefaultCenturyStart(J)V
    .locals 1

    .line 1266
    iput-wide p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1269
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 1270
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    const/16 p2, -0x50

    .line 1271
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 1272
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1273
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private declared-synchronized initializeTimeZoneFormat(Z)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1168
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    if-nez p1, :cond_5

    .line 1169
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    const/4 p1, 0x0

    .line 1172
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_2

    .line 1173
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast p1, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object p1

    .line 1174
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object p1

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1178
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1182
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v0, v0, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_3

    .line 1183
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 1187
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1188
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1189
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    .line 1191
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->setGMTOffsetDigits(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static isFieldUnitIgnored(Ljava/lang/String;I)Z
    .locals 9

    .line 4215
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4222
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v1, v5, :cond_5

    .line 4223
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_1

    if-lez v2, :cond_1

    .line 4225
    invoke-static {v3}, Lcom/ibm/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v2

    if-gt p1, v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    const/16 v7, 0x27

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 4232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 4237
    invoke-static {v5}, Lcom/ibm/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    :cond_4
    :goto_1
    add-int/2addr v1, v6

    goto :goto_0

    :cond_5
    if-lez v2, :cond_6

    .line 4244
    invoke-static {v3}, Lcom/ibm/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result p0

    if-gt p1, p0, :cond_6

    return v0

    :cond_6
    return v6
.end method

.method private static final isNumeric(CI)Z
    .locals 1

    const-string v0, "ADdFgHhKkmrSsuWwYy"

    .line 2380
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const-string p1, "ceLMQq"

    .line 2381
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSyntaxChar(C)Z
    .locals 2

    .line 830
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget-boolean p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lowerLevel([Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4476
    aget-object v0, p1, p2

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4479
    :cond_0
    aget-object p1, p1, p2

    check-cast p1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 4480
    iget-char p1, p1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4481
    invoke-static {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-lt p2, p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 4483
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal pattern character \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in \""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "I",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v0, p4, :cond_1

    .line 3077
    aget-object v3, p3, v0

    if-eqz v3, :cond_0

    .line 3078
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 3079
    aget-object v4, p3, v0

    .line 3080
    invoke-direct {p0, p1, p2, v4, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    move v2, v0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    .line 3088
    sget-object p1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object p1, p1, v2

    iput-object p1, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    add-int/2addr p2, v1

    return p2

    :cond_2
    neg-int p1, p2

    return p1
.end method

.method private matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I
    .locals 10

    .line 2834
    aget-object v0, p3, p4

    check-cast v0, Ljava/lang/String;

    .line 2835
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2836
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v5, p2

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_6

    if-ge v5, v2, :cond_6

    .line 2839
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2840
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2841
    invoke-static {v7}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2842
    invoke-static {v8}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v1, :cond_0

    .line 2846
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    :goto_2
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v2, :cond_5

    .line 2850
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v7

    goto :goto_2

    :cond_1
    if-eq v7, v8, :cond_5

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    if-ne v5, p2, :cond_2

    if-lez p4, :cond_2

    .line 2854
    sget-object v8, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v7, p4, -0x1

    .line 2855
    aget-object v7, p3, v7

    .line 2856
    instance-of v8, v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v8, :cond_6

    .line 2857
    check-cast v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v7, v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    if-ne v7, v9, :cond_4

    .line 2863
    :cond_3
    sget-object v7, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eq v5, p2, :cond_6

    .line 2866
    sget-object v7, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v7}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_5
    add-int/2addr v4, v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_6
    if-ne v4, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 2875
    :goto_4
    aput-boolean v0, p5, v3

    .line 2876
    aget-boolean v0, p5, v3

    if-nez v0, :cond_b

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-lez p4, :cond_b

    array-length v0, p3

    sub-int/2addr v0, v6

    if-ge p4, v0, :cond_b

    if-ge p2, v2, :cond_b

    add-int/lit8 v0, p4, -0x1

    .line 2881
    aget-object v0, p3, v0

    add-int/2addr p4, v6

    .line 2882
    aget-object p3, p3, p4

    .line 2883
    instance-of p4, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz p4, :cond_b

    instance-of p4, p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz p4, :cond_b

    .line 2884
    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-char p4, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2885
    check-cast p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-char p3, p3, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2886
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p4

    invoke-virtual {v0, p3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p3

    if-eq p4, p3, :cond_b

    move v5, p2

    :goto_5
    if-ge v5, v2, :cond_9

    .line 2889
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 2890
    invoke-static {p3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    if-le v5, p2, :cond_a

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    .line 2895
    :goto_7
    aput-boolean v6, p5, v3

    :cond_b
    return v5
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 2953
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x7

    if-ne v3, v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v10, v7, :cond_3

    .line 2967
    aget-object v15, v4, v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v13, :cond_1

    .line 2970
    aget-object v11, v4, v10

    .line 2971
    invoke-direct {v0, v1, v2, v11, v15}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_1

    move v12, v10

    move v13, v11

    const/4 v14, 0x0

    :cond_1
    if-eqz v5, :cond_2

    new-array v11, v9, [Ljava/lang/CharSequence;

    .line 2978
    aget-object v15, v4, v10

    aput-object v15, v11, v8

    invoke-static {v5, v9, v9, v11}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2980
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v13, :cond_2

    .line 2982
    invoke-direct {v0, v1, v2, v11, v15}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_2

    move v12, v10

    move v13, v11

    const/4 v14, 0x1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-ltz v12, :cond_6

    if-ltz v3, :cond_5

    if-ne v3, v9, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 2996
    :cond_4
    invoke-virtual {v6, v3, v12}, Lcom/ibm/icu/util/Calendar;->set(II)V

    if-eqz v5, :cond_5

    const/16 v1, 0x16

    .line 2998
    invoke-virtual {v6, v1, v14}, Lcom/ibm/icu/util/Calendar;->set(II)V

    :cond_5
    add-int v1, v2, v13

    return v1

    :cond_6
    const/4 v1, -0x1

    xor-int/2addr v1, v2

    return v1
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 1

    .line 1257
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1258
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1259
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 5

    .line 3810
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-eqz p4, :cond_0

    .line 3812
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    goto :goto_0

    .line 3815
    :cond_0
    instance-of p4, p5, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz p4, :cond_1

    .line 3816
    move-object p4, p5

    check-cast p4, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/ibm/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uab00"

    .line 3817
    invoke-virtual {p4, v2}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 3818
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    .line 3819
    invoke-virtual {p4, v1}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 3821
    :cond_1
    instance-of p4, p5, Lcom/ibm/icu/impl/DateNumberFormat;

    if-eqz p4, :cond_2

    .line 3823
    move-object v1, p5

    check-cast v1, Lcom/ibm/icu/impl/DateNumberFormat;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    .line 3825
    :cond_2
    invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p4, :cond_3

    .line 3827
    check-cast p5, Lcom/ibm/icu/impl/DateNumberFormat;

    const/4 p4, 0x0

    invoke-virtual {p5, p4}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    :cond_3
    :goto_0
    if-lez p2, :cond_5

    .line 3834
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p4

    sub-int/2addr p4, v0

    if-le p4, p2, :cond_5

    .line 3836
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    sub-int/2addr p4, p2

    :goto_1
    if-lez p4, :cond_4

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, p2

    .line 3842
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    double-to-int p1, v1

    .line 3843
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method private parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 6

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 3798
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method private parsePattern()V
    .locals 5

    const/4 v0, 0x0

    .line 4615
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    .line 4616
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    .line 4617
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    const/4 v1, 0x0

    .line 4620
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 4621
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    xor-int/lit8 v1, v1, 0x1

    :cond_0
    const/16 v3, 0x5e74

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 4626
    iput-boolean v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    :cond_1
    if-nez v1, :cond_3

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_2

    .line 4630
    iput-boolean v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    :cond_2
    const/16 v3, 0x73

    if-ne v2, v3, :cond_3

    .line 4633
    iput-boolean v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_5

    .line 4563
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_5

    const-string v4, ";"

    .line 4574
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 4577
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, v2

    move v2, v4

    .line 4582
    :goto_1
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    .line 4583
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 4588
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4589
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 4590
    iget-object v5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    const/4 v3, 0x0

    .line 4594
    :goto_2
    new-instance v5, Lcom/ibm/icu/util/ULocale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@numbers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 4595
    invoke-static {v5, v1}, Lcom/ibm/icu/text/NumberFormat;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v5

    .line 4596
    invoke-virtual {v5, v1}, Lcom/ibm/icu/text/NumberFormat;->setGroupingUsed(Z)V

    if-eqz v3, :cond_3

    .line 4599
    invoke-virtual {p0, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V

    goto :goto_3

    .line 4603
    :cond_3
    iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    :goto_3
    if-nez v3, :cond_4

    .line 4606
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4607
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v2, v6

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4096
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4097
    iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4100
    :goto_0
    iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v0, v1, :cond_1

    .line 4102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    goto :goto_1

    .line 4107
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    :goto_1
    const/4 v0, 0x2

    .line 4109
    iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 4110
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_2

    .line 4115
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 4118
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 4120
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 4122
    invoke-static {}, Lcom/ibm/icu/text/DisplayContext;->values()[Lcom/ibm/icu/text/DisplayContext;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 4123
    invoke-virtual {v4}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 4124
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4131
    :cond_4
    :goto_3
    sget-object p1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 4132
    sget-object p1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->setBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;Z)Lcom/ibm/icu/text/DateFormat;

    .line 4135
    :cond_5
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    return-void
.end method

.method private regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 3007
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    .line 3011
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    const/4 v6, 0x0

    add-int/lit8 p4, p4, -0x1

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    .line 3012
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return p4

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private static safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 2119
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 2120
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private static safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 2125
    array-length v0, p0

    if-ge p1, v0, :cond_1

    if-nez p3, :cond_0

    .line 2127
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 2129
    aget-object p0, p0, p1

    aput-object p0, v1, v2

    invoke-static {p3, v0, v0, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2130
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/MessageFormat;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)I"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3129
    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Lcom/ibm/icu/util/Calendar;",
            "Lcom/ibm/icu/text/MessageFormat;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 3168
    new-instance v7, Ljava/text/ParsePosition;

    const/4 v15, 0x0

    invoke-direct {v7, v15}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3170
    invoke-static/range {p3 .. p3}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v11

    const/4 v5, -0x1

    if-ne v11, v5, :cond_0

    xor-int/lit8 v0, p2, -0x1

    return v0

    :cond_0
    move/from16 v0, p3

    .line 3175
    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v4

    .line 3177
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v3, v0, v11

    if-eqz v9, :cond_1

    .line 3180
    invoke-virtual {v9, v15, v4}, Lcom/ibm/icu/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    .line 3182
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chinese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dangi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v16, 0x1

    :goto_1
    move/from16 v1, p2

    .line 3187
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_4

    xor-int/lit8 v0, v1, -0x1

    return v0

    .line 3190
    :cond_4
    invoke-static {v13, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 3191
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v17

    if-nez v17, :cond_5

    goto :goto_3

    .line 3194
    :cond_5
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    .line 3196
    :cond_6
    :goto_3
    invoke-virtual {v7, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v0, 0x1a

    const/16 v17, 0x0

    const/4 v5, 0x4

    const/4 v15, 0x2

    if-eq v11, v5, :cond_a

    const/16 v5, 0xf

    if-eq v11, v5, :cond_a

    if-ne v11, v15, :cond_7

    if-le v14, v15, :cond_a

    :cond_7
    if-eq v11, v0, :cond_a

    const/16 v5, 0x13

    if-eq v11, v5, :cond_a

    const/16 v5, 0x19

    if-eq v11, v5, :cond_a

    if-eq v11, v2, :cond_a

    const/16 v5, 0x12

    if-eq v11, v5, :cond_a

    const/16 v5, 0x1e

    if-eq v11, v5, :cond_a

    if-nez v11, :cond_8

    if-nez v16, :cond_a

    :cond_8
    const/16 v5, 0x1b

    if-eq v11, v5, :cond_a

    const/16 v5, 0x1c

    if-eq v11, v5, :cond_a

    const/16 v5, 0x8

    if-ne v11, v5, :cond_9

    goto :goto_4

    :cond_9
    move v15, v1

    move/from16 v20, v3

    move-object v5, v4

    move-object/from16 v18, v17

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/16 v19, -0x1

    goto/16 :goto_8

    :cond_a
    :goto_4
    if-eqz v9, :cond_e

    if-eq v11, v15, :cond_b

    if-ne v11, v0, :cond_e

    .line 3221
    :cond_b
    invoke-virtual {v9, v13, v7}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x16

    if-eqz v0, :cond_d

    .line 3222
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    if-le v15, v1, :cond_d

    const/4 v15, 0x0

    aget-object v2, v0, v15

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_c

    .line 3224
    aget-object v0, v0, v15

    check-cast v0, Ljava/lang/Number;

    const/4 v2, 0x1

    .line 3225
    invoke-virtual {v8, v5, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x1

    goto :goto_5

    :cond_d
    const/4 v15, 0x0

    .line 3227
    :goto_5
    invoke-virtual {v7, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3228
    invoke-virtual {v8, v5, v15}, Lcom/ibm/icu/util/Calendar;->set(II)V

    :cond_e
    move-object/from16 v0, v17

    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_11

    if-eqz p5, :cond_10

    add-int v0, v1, v14

    .line 3234
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_f

    const/4 v5, -0x1

    xor-int/lit8 v0, v1, -0x1

    return v0

    :cond_f
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v15, v1

    move-object/from16 v1, p1

    const/4 v9, 0x1

    move/from16 v2, p4

    move/from16 v20, v3

    move-object v3, v7

    move-object/from16 v18, v4

    move/from16 v4, p6

    const/4 v10, 0x4

    const/16 v19, -0x1

    move-object/from16 v5, v18

    .line 3237
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_7

    :cond_10
    move v15, v1

    move/from16 v20, v3

    move-object v5, v4

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/16 v19, -0x1

    .line 3239
    invoke-direct {v12, v13, v7, v6, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_12

    .line 3241
    invoke-direct {v12, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->allowNumericFallback(I)Z

    move-result v1

    if-nez v1, :cond_12

    xor-int/lit8 v0, v15, -0x1

    return v0

    :cond_11
    move v15, v1

    move/from16 v20, v3

    move-object v5, v4

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/16 v19, -0x1

    :cond_12
    if-eqz v0, :cond_13

    .line 3248
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v18, v0

    move v4, v1

    goto :goto_8

    :cond_13
    move-object/from16 v18, v0

    const/4 v4, 0x0

    :goto_8
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x3

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move/from16 v4, v20

    if-eqz p5, :cond_88

    add-int v1, v15, v14

    .line 3757
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_87

    neg-int v0, v15

    return v0

    .line 3663
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3664
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3667
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3668
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3672
    :cond_14
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3673
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3674
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v1, -0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 3677
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v1

    move-object/from16 p6, v0

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0

    .line 3715
    :pswitch_2
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_17

    if-ne v14, v1, :cond_16

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_a

    .line 3716
    :cond_17
    :goto_9
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_18

    return v0

    .line 3722
    :cond_18
    :goto_a
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_19

    if-ne v14, v10, :cond_1a

    .line 3723
    :cond_19
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1a

    return v0

    .line 3729
    :cond_1a
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_1b

    if-ne v14, v10, :cond_1c

    .line 3730
    :cond_1b
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, p11

    invoke-direct/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1c

    :cond_1c
    return v0

    :pswitch_3
    const/16 v3, 0x61

    move-object/from16 v0, p0

    const/4 v11, 0x3

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    const/4 v13, 0x3

    move-object/from16 v11, p11

    .line 3682
    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1d

    return v0

    .line 3689
    :cond_1d
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-ne v14, v13, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c

    .line 3690
    :cond_1f
    :goto_b
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_20

    return v0

    .line 3695
    :cond_20
    :goto_c
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    const/4 v10, 0x4

    if-nez v1, :cond_21

    if-ne v14, v10, :cond_22

    .line 3696
    :cond_21
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_22

    return v0

    .line 3701
    :cond_22
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_23

    if-ne v14, v10, :cond_24

    .line 3702
    :cond_23
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, p11

    invoke-direct/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILcom/ibm/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_24

    :cond_24
    return v0

    :pswitch_4
    const/4 v13, 0x3

    if-eq v14, v9, :cond_28

    const/4 v0, 0x2

    if-eq v14, v0, :cond_27

    if-eq v14, v13, :cond_26

    if-eq v14, v10, :cond_25

    .line 3597
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3594
    :cond_25
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3591
    :cond_26
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3588
    :cond_27
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_d

    .line 3585
    :cond_28
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3600
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    move-object/from16 v13, p1

    move-object/from16 v3, p10

    invoke-virtual {v1, v0, v13, v7, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3602
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3603
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_29
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_5
    move-object/from16 v3, p10

    const/4 v11, 0x3

    if-eq v14, v9, :cond_2d

    const/4 v0, 0x2

    if-eq v14, v0, :cond_2c

    if-eq v14, v11, :cond_2b

    if-eq v14, v10, :cond_2a

    .line 3570
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3567
    :cond_2a
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3564
    :cond_2b
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3561
    :cond_2c
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3558
    :cond_2d
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3573
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3575
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3576
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_2e
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_6
    move-object/from16 v3, p10

    if-ge v14, v10, :cond_2f

    .line 3545
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_f

    :cond_2f
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3546
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 3548
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3549
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_30
    xor-int/lit8 v0, v15, -0x1

    return v0

    .line 3315
    :pswitch_7
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_31

    const/4 v3, 0x1

    .line 3316
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v10, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_32

    return v0

    :cond_31
    move v10, v4

    :cond_32
    if-eqz v18, :cond_34

    .line 3321
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v0, v0

    if-le v10, v0, :cond_34

    .line 3322
    :cond_33
    invoke-virtual {v8, v9, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3323
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_34
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_8
    move-object/from16 v3, p10

    const/4 v11, 0x3

    if-eq v14, v9, :cond_37

    const/4 v0, 0x2

    if-eq v14, v0, :cond_36

    if-eq v14, v11, :cond_35

    .line 3533
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_10

    .line 3530
    :cond_35
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_10

    .line 3527
    :cond_36
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_10

    .line 3524
    :cond_37
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3536
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3538
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3539
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_38
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_9
    move v1, v4

    const/4 v0, 0x2

    const/4 v11, 0x3

    if-le v14, v0, :cond_3f

    if-eqz v18, :cond_39

    .line 3634
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_14

    .line 3646
    :cond_39
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_3b

    if-ne v14, v10, :cond_3a

    goto :goto_11

    :cond_3a
    const/4 v0, 0x0

    goto :goto_12

    :cond_3b
    :goto_11
    const/4 v3, 0x2

    .line 3647
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_3c

    return v0

    .line 3652
    :cond_3c
    :goto_12
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_3e

    if-ne v14, v11, :cond_3d

    goto :goto_13

    :cond_3d
    return v0

    :cond_3e
    :goto_13
    const/4 v0, 0x2

    .line 3653
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0

    :cond_3f
    :goto_14
    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x3

    const/4 v0, 0x2

    .line 3639
    invoke-virtual {v8, v0, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3640
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_a
    move v1, v4

    const/4 v0, 0x2

    const/4 v11, 0x3

    if-le v14, v0, :cond_46

    if-eqz v18, :cond_40

    .line 3608
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_18

    .line 3620
    :cond_40
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_42

    if-ne v14, v10, :cond_41

    goto :goto_15

    :cond_41
    const/4 v0, 0x0

    goto :goto_16

    :cond_42
    :goto_15
    const/4 v3, 0x2

    .line 3621
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_43

    return v0

    .line 3626
    :cond_43
    :goto_16
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_45

    if-ne v14, v11, :cond_44

    goto :goto_17

    :cond_44
    return v0

    :cond_45
    :goto_17
    const/4 v0, 0x2

    .line 3627
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    return v0

    :cond_46
    :goto_18
    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x3

    const/4 v0, 0x2

    .line 3613
    invoke-virtual {v8, v0, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3614
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_b
    move v1, v4

    const/4 v11, 0x3

    if-eq v14, v9, :cond_4f

    if-eqz v18, :cond_47

    .line 3437
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto/16 :goto_1b

    .line 3444
    :cond_47
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_49

    if-ne v14, v10, :cond_48

    goto :goto_19

    :cond_48
    const/4 v0, 0x0

    const/4 v9, 0x6

    goto :goto_1a

    :cond_49
    :goto_19
    const/4 v4, 0x7

    .line 3445
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    const/4 v9, 0x6

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4a

    return v0

    .line 3449
    :cond_4a
    :goto_1a
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4b

    if-ne v14, v11, :cond_4c

    :cond_4b
    const/4 v3, 0x7

    .line 3450
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4c

    return v0

    .line 3454
    :cond_4c
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4d

    if-ne v14, v9, :cond_4e

    .line 3455
    :cond_4d
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_4e

    const/4 v3, 0x7

    .line 3456
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :cond_4e
    return v0

    :cond_4f
    :goto_1b
    move/from16 v4, v20

    .line 3439
    invoke-virtual {v8, v4, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3440
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_c
    move-object/from16 v3, p10

    if-ge v14, v10, :cond_50

    .line 3511
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1c

    :cond_50
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3512
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 3514
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3515
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_51
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_d
    move-object/from16 v3, p10

    if-ge v14, v10, :cond_52

    .line 3500
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1d

    :cond_52
    if-ne v14, v2, :cond_53

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1d

    :cond_53
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3501
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 3503
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3504
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_54
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_e
    move v1, v4

    move/from16 v4, v20

    const/4 v0, 0x2

    const/4 v9, 0x6

    const/4 v11, 0x3

    if-le v14, v0, :cond_56

    if-eqz v18, :cond_55

    .line 3400
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_1e

    :cond_55
    const/4 v7, 0x5

    goto/16 :goto_23

    .line 3402
    :cond_56
    :goto_1e
    invoke-virtual {v8, v4, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3403
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_f
    move-object/from16 v3, p10

    if-ge v14, v10, :cond_57

    .line 3490
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    goto :goto_1f

    :cond_57
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 3491
    :goto_1f
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 3493
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 3494
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_58
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_10
    move v1, v4

    const/16 v0, 0xa

    .line 3483
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v2

    add-int/2addr v2, v9

    if-ne v1, v2, :cond_59

    const/4 v15, 0x0

    goto :goto_20

    :cond_59
    move v15, v1

    .line 3486
    :goto_20
    invoke-virtual {v8, v0, v15}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3487
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    .line 3467
    :pswitch_11
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v0, :cond_5b

    if-lt v14, v2, :cond_5b

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_21

    :cond_5a
    const/4 v7, 0x5

    goto :goto_22

    :cond_5b
    :goto_21
    const/16 v3, 0x9

    .line 3468
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x5

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_5c

    return v0

    .line 3473
    :cond_5c
    :goto_22
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v0, :cond_5e

    if-ge v14, v7, :cond_5d

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5d
    const/16 v3, 0x9

    .line 3474
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_5e

    return v0

    :cond_5e
    xor-int/lit8 v0, v15, -0x1

    return v0

    :pswitch_12
    const/4 v7, 0x5

    const/4 v9, 0x6

    const/4 v11, 0x3

    .line 3410
    :goto_23
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_60

    if-ne v14, v10, :cond_5f

    goto :goto_24

    :cond_5f
    const/4 v0, 0x0

    goto :goto_25

    :cond_60
    :goto_24
    const/4 v3, 0x7

    .line 3411
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_61

    return v0

    .line 3415
    :cond_61
    :goto_25
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_62

    if-ne v14, v11, :cond_63

    :cond_62
    const/4 v3, 0x7

    .line 3416
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_63

    return v0

    .line 3420
    :cond_63
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_64

    if-ne v14, v9, :cond_65

    .line 3421
    :cond_64
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_65

    const/4 v3, 0x7

    .line 3422
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_65

    return v0

    .line 3427
    :cond_65
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_66

    if-ne v14, v7, :cond_67

    .line 3428
    :cond_66
    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_67

    const/4 v3, 0x7

    .line 3429
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_67

    :cond_67
    return v0

    :pswitch_13
    move v1, v4

    const/4 v11, 0x3

    .line 3383
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-static {v13, v15, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->countDigits(Ljava/lang/String;II)I

    move-result v0

    if-ge v0, v11, :cond_68

    move v4, v1

    :goto_26
    if-ge v0, v11, :cond_6a

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_68
    const/4 v2, 0x1

    :goto_27
    if-le v0, v11, :cond_69

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 3395
    :cond_69
    div-int v4, v1, v2

    :cond_6a
    const/16 v0, 0xe

    .line 3397
    invoke-virtual {v8, v0, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3398
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_14
    move v1, v4

    const/16 v0, 0xb

    .line 3376
    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v2

    add-int/2addr v2, v9

    if-ne v1, v2, :cond_6b

    const/4 v15, 0x0

    goto :goto_28

    :cond_6b
    move v15, v1

    .line 3379
    :goto_28
    invoke-virtual {v8, v0, v15}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3380
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_15
    move v1, v4

    const/4 v0, 0x6

    const/4 v2, 0x2

    const/4 v6, 0x3

    if-le v14, v2, :cond_79

    if-eqz v18, :cond_6c

    .line 3328
    sget-object v2, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-eqz v2, :cond_6c

    goto/16 :goto_33

    .line 3351
    :cond_6c
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_6d

    const/4 v7, 0x1

    goto :goto_29

    :cond_6d
    const/4 v7, 0x0

    .line 3354
    :goto_29
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_6f

    if-ne v14, v10, :cond_6e

    goto :goto_2a

    :cond_6e
    const/4 v0, 0x0

    const/4 v10, 0x3

    goto :goto_2e

    :cond_6f
    :goto_2a
    const/4 v0, 0x2

    if-ne v11, v0, :cond_71

    const/4 v3, 0x2

    .line 3355
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v7, :cond_70

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v5, v0

    goto :goto_2b

    :cond_70
    move-object/from16 v5, v17

    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    const/4 v10, 0x3

    move-object/from16 v6, p8

    .line 3356
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_2d

    :cond_71
    const/4 v10, 0x3

    const/4 v3, 0x2

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v7, :cond_72

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v0, v0, v10

    move-object v5, v0

    goto :goto_2c

    :cond_72
    move-object/from16 v5, v17

    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3358
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :goto_2d
    if-lez v0, :cond_73

    return v0

    .line 3365
    :cond_73
    :goto_2e
    sget-object v1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_75

    if-ne v14, v10, :cond_74

    goto :goto_2f

    :cond_74
    return v0

    :cond_75
    :goto_2f
    const/4 v0, 0x2

    if-ne v11, v0, :cond_77

    const/4 v3, 0x2

    .line 3366
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v7, :cond_76

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v0, v0, v9

    move-object v5, v0

    goto :goto_30

    :cond_76
    move-object/from16 v5, v17

    :goto_30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3367
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_32

    :cond_77
    const/4 v3, 0x2

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v7, :cond_78

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    move-object v5, v0

    goto :goto_31

    :cond_78
    move-object/from16 v5, v17

    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3369
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :goto_32
    return v0

    :cond_79
    :goto_33
    add-int/lit8 v4, v1, -0x1

    const/4 v2, 0x2

    .line 3333
    invoke-virtual {v8, v2, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3338
    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hebrew"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    if-lt v1, v0, :cond_7b

    .line 3339
    invoke-virtual {v8, v9}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 3340
    invoke-virtual {v8, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3341
    invoke-virtual {v8, v2, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_34

    .line 3344
    :cond_7a
    sput-boolean v9, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3347
    :cond_7b
    :goto_34
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_16
    move v1, v4

    move/from16 v4, v20

    .line 3288
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_7d

    const-string v2, "hebr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v2, "y=hebr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7d

    :cond_7c
    const/16 v0, 0x3e8

    if-ge v1, v0, :cond_7d

    add-int/lit16 v0, v1, 0x1388

    goto :goto_37

    :cond_7d
    const/4 v0, 0x2

    if-ne v14, v0, :cond_80

    .line 3290
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-static {v13, v15, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->countDigits(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_80

    invoke-virtual/range {p8 .. p8}, Lcom/ibm/icu/util/Calendar;->haveDefaultCentury()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3299
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v0

    const/16 v15, 0x64

    rem-int/2addr v0, v15

    if-ne v1, v0, :cond_7e

    const/4 v2, 0x1

    goto :goto_35

    :cond_7e
    const/4 v2, 0x0

    :goto_35
    const/4 v3, 0x0

    .line 3300
    aput-boolean v2, p7, v3

    .line 3301
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v2

    div-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0x64

    if-ge v1, v0, :cond_7f

    goto :goto_36

    :cond_7f
    const/4 v15, 0x0

    :goto_36
    add-int/2addr v2, v15

    add-int v0, v1, v2

    goto :goto_37

    :cond_80
    move v0, v1

    .line 3304
    :goto_37
    invoke-virtual {v8, v4, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3307
    sget-boolean v1, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    if-eqz v1, :cond_82

    .line 3308
    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_81

    const/4 v0, 0x2

    .line 3309
    invoke-virtual {v8, v0, v9}, Lcom/ibm/icu/util/Calendar;->add(II)V

    :cond_81
    const/4 v0, 0x0

    .line 3311
    sput-boolean v0, Lcom/ibm/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3313
    :cond_82
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_17
    move v1, v4

    const/4 v0, 0x0

    if-eqz v16, :cond_83

    .line 3258
    invoke-virtual {v8, v0, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3259
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_83
    if-ne v14, v2, :cond_84

    const/4 v3, 0x0

    .line 3263
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_38

    :cond_84
    const/4 v0, 0x4

    if-ne v14, v0, :cond_85

    const/4 v3, 0x0

    .line 3265
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    goto :goto_38

    :cond_85
    const/4 v3, 0x0

    .line 3267
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result v0

    :goto_38
    xor-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_86

    const/16 v0, -0x7d00

    :cond_86
    return v0

    :cond_87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object v3, v7

    move v9, v4

    move/from16 v4, p6

    .line 3758
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_39

    :cond_88
    move v9, v4

    .line 3760
    invoke-direct {v12, v13, v7, v6, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    :goto_39
    if-eqz v0, :cond_8a

    const/16 v1, 0x22

    if-eq v11, v1, :cond_89

    .line 3764
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v9, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_3a

    .line 3766
    :cond_89
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/Calendar;->setRelatedYear(I)V

    .line 3768
    :goto_3a
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_8a
    xor-int/lit8 v0, v15, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 3875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3877
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 3878
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eqz v3, :cond_0

    if-ne v4, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 3885
    :cond_1
    invoke-static {v4}, Lcom/ibm/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3886
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3888
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3894
    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 3899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3897
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unfinished quote in pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1203
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4080
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 4083
    iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    :cond_0
    const/4 v0, 0x0

    .line 4085
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 4086
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4087
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 2

    .line 3971
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3974
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 4

    .line 3933
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 3934
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->parsePattern()V

    const/4 p1, 0x0

    .line 3936
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 3938
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 3942
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_1

    .line 3943
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3944
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v1, "y=jpanyear"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    if-nez v0, :cond_0

    .line 3947
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 3948
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 3949
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    goto :goto_0

    .line 3950
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->hasHanYearChar:Z

    if-eqz p1, :cond_1

    .line 3953
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 3954
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    const/16 v0, 0x79

    .line 3955
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const-string v2, "jpanyear"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3956
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@numbers=jpanyear"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3957
    invoke-static {p1, v0}, Lcom/ibm/icu/text/NumberFormat;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    .line 3958
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 3959
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 3960
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    iput-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 4040
    invoke-super {p0}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 4041
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols;

    iput-object v1, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 4044
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [C

    .line 4045
    iput-object v1, v0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 4069
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4070
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 4071
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object p1, p1, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    .line 4072
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1351
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Calendar;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1362
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 1363
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1364
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, p1

    .line 1366
    sget-object p1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 1369
    iget-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p2, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_1
    return-object p1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 10

    .line 4149
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 4150
    instance-of v1, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v1, :cond_0

    .line 4151
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 4152
    :cond_0
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 4153
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 4154
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 4155
    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 4159
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4160
    new-instance v8, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 4161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4162
    sget-object v2, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v6

    move-object v4, p0

    move-object v7, p1

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 4164
    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 4167
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 4168
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/FieldPosition;

    .line 4169
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    .line 4170
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    invoke-virtual {v2, v3, v3, v4, p1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4173
    :cond_2
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 4157
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot format given Object as a Date"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    .line 1313
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormatSymbols()Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 1

    .line 3985
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 4184
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 4543
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 4544
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4545
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4546
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    return-object p1

    .line 4549
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-object p1
.end method

.method protected getSymbols()Lcom/ibm/icu/text/DateFormatSymbols;
    .locals 1

    .line 4003
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method public getTimeZoneFormat()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .line 4015
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->freeze()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 4058
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intervalFormatByAlgorithm(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 4279
    invoke-virtual/range {p1 .. p2}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4283
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4290
    :goto_0
    :try_start_0
    array-length v3, v15

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 4291
    invoke-direct {v11, v0, v12, v15, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->diffCalFieldValue(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;[Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v4, :cond_2

    .line 4299
    invoke-virtual {v11, v0, v13, v14}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 4303
    :cond_2
    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-lt v3, v2, :cond_4

    .line 4304
    invoke-direct {v11, v0, v12, v15, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->diffCalFieldValue(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;[Ljava/lang/Object;I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    :goto_3
    const-string v10, " \u2013 "

    if-nez v2, :cond_5

    .line 4314
    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    .line 4315
    invoke-virtual {v11, v0, v13, v14}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4316
    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4317
    invoke-virtual {v11, v12, v13, v14}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object v13

    :cond_5
    const/16 v5, 0x3e8

    move v6, v2

    :goto_4
    if-gt v6, v3, :cond_9

    .line 4325
    aget-object v7, v15, v6

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_6

    goto :goto_5

    .line 4328
    :cond_6
    aget-object v7, v15, v6

    check-cast v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 4329
    iget-char v7, v7, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4330
    invoke-static {v7}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v8

    if-eq v8, v4, :cond_8

    if-ge v8, v5, :cond_7

    move v5, v8

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 4332
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal pattern character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_b

    .line 4347
    :try_start_1
    invoke-direct {v11, v15, v4, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    move/from16 v16, v4

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    move/from16 v16, v2

    .line 4354
    :goto_7
    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    :goto_8
    if-le v2, v3, :cond_d

    .line 4355
    invoke-direct {v11, v15, v2, v5}, Lcom/ibm/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_c

    move v9, v2

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_d
    move v9, v3

    :goto_9
    if-nez v16, :cond_e

    .line 4366
    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    if-ne v9, v2, :cond_e

    .line 4367
    invoke-virtual {v11, v0, v13, v14}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4368
    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4369
    invoke-virtual {v11, v12, v13, v14}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object v13

    .line 4376
    :cond_e
    invoke-virtual {v14, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4377
    invoke-virtual {v14, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 4378
    sget-object v2, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {v11, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v17

    const/4 v8, 0x0

    :goto_a
    if-gt v8, v9, :cond_11

    .line 4382
    aget-object v1, v15, v8

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4383
    aget-object v1, v15, v8

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v19, v8

    move/from16 v20, v9

    move-object v0, v10

    goto :goto_b

    .line 4385
    :cond_f
    aget-object v1, v15, v8

    check-cast v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 4386
    iget-boolean v2, v11, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v2, :cond_10

    .line 4387
    iget-char v3, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iget-char v7, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v6, v8

    move/from16 v18, v7

    move-object/from16 v7, v17

    move/from16 v19, v8

    move-object/from16 v8, p4

    move/from16 v20, v9

    move/from16 v9, v18

    move-object v0, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    goto :goto_b

    :cond_10
    move/from16 v19, v8

    move/from16 v20, v9

    move-object v0, v10

    .line 4390
    iget-char v2, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-char v8, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v1, p0

    move/from16 v5, v19

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_b
    add-int/lit8 v8, v19, 0x1

    move-object v10, v0

    move/from16 v9, v20

    move-object/from16 v0, p1

    goto :goto_a

    :cond_11
    move-object v0, v10

    .line 4396
    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v0, v16

    .line 4399
    :goto_c
    array-length v1, v15

    if-ge v0, v1, :cond_14

    .line 4400
    aget-object v1, v15, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 4401
    aget-object v1, v15, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 4403
    :cond_12
    aget-object v1, v15, v0

    check-cast v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 4404
    iget-boolean v2, v11, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v2, :cond_13

    .line 4405
    iget-char v3, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iget-char v9, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v6, v0

    move-object/from16 v7, v17

    move-object/from16 v8, p4

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    goto :goto_d

    .line 4408
    :cond_13
    iget-char v2, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-char v8, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v1, p0

    move v5, v0

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    return-object v13

    :catch_0
    move-exception v0

    .line 4361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 4310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4280
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not format on two different calendars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method isFieldUnitIgnored(I)Z
    .locals 1

    .line 4200
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 6

    .line 3039
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3048
    aget-object v4, p4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 3051
    aget-object v5, p4, v1

    .line 3052
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    move v3, v1

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_2

    mul-int/lit8 v3, v3, 0x3

    .line 3060
    invoke-virtual {p5, p3, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    add-int/2addr p2, v2

    return p2

    :cond_2
    neg-int p1, p2

    return p1
.end method

.method protected matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 2926
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 31

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    .line 2401
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    const/4 v14, 0x0

    move-object/from16 v1, p2

    if-eq v1, v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2405
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 2406
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 2407
    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 2409
    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    move-object v10, v0

    move-object v11, v1

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object v15, v1

    move-object v10, v14

    move-object v11, v10

    .line 2412
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    const/4 v8, 0x0

    if-gez v9, :cond_1

    .line 2414
    invoke-virtual {v13, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 2422
    :cond_1
    new-instance v7, Lcom/ibm/icu/util/Output;

    invoke-direct {v7, v14}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 2424
    new-instance v6, Lcom/ibm/icu/util/Output;

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v6, v0}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x1

    new-array v4, v5, [Z

    aput-boolean v8, v4, v8

    .line 2435
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 2436
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v12, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, v12, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    move-object/from16 v16, v0

    goto :goto_1

    :cond_2
    move-object/from16 v16, v14

    .line 2439
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, -0x1

    move v1, v9

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 2441
    :goto_2
    array-length v8, v3

    if-ge v0, v8, :cond_15

    .line 2442
    aget-object v8, v3, v0

    instance-of v8, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v8, :cond_12

    .line 2444
    aget-object v8, v3, v0

    check-cast v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    .line 2445
    iget-boolean v14, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v14, :cond_3

    if-ne v5, v2, :cond_3

    add-int/lit8 v14, v0, 0x1

    .line 2455
    array-length v2, v3

    if-ge v14, v2, :cond_3

    aget-object v2, v3, v14

    instance-of v2, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_3

    aget-object v2, v3, v14

    check-cast v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v2, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v2, :cond_3

    .line 2460
    iget v2, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    move v14, v0

    move/from16 v18, v1

    move/from16 v17, v2

    goto :goto_3

    :cond_3
    move v14, v5

    :goto_3
    const/4 v2, -0x1

    if-eq v14, v2, :cond_8

    .line 2467
    iget v5, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    if-ne v14, v0, :cond_4

    move/from16 v5, v17

    .line 2473
    :cond_4
    iget-char v8, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v24, v1

    move-object/from16 v1, p1

    const/16 v25, -0x1

    move/from16 v2, v24

    move-object/from16 v26, v3

    move v3, v8

    move-object/from16 v27, v4

    move v4, v5

    const/4 v8, 0x1

    move/from16 v5, v21

    move-object/from16 p2, v6

    move/from16 v6, v22

    move-object/from16 v21, v7

    move-object/from16 v7, v27

    move-object v8, v15

    move/from16 v28, v9

    move-object/from16 v9, v16

    move/from16 v19, v14

    move-object v14, v10

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;)I

    move-result v1

    if-gez v1, :cond_7

    add-int/lit8 v17, v17, -0x1

    if-nez v17, :cond_6

    move/from16 v10, v28

    .line 2483
    invoke-virtual {v13, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2484
    invoke-virtual {v13, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_5

    .line 2486
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v6, p2

    move-object v10, v14

    move/from16 v1, v18

    move/from16 v0, v19

    move v5, v0

    move-object/from16 v7, v21

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v9, v28

    const/4 v2, -0x1

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v30, v11

    move/from16 v2, v19

    move/from16 v0, v23

    move-object/from16 v6, v26

    move/from16 v7, v28

    goto/16 :goto_8

    :cond_8
    move/from16 v23, v0

    move/from16 v24, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move/from16 v19, v14

    const/16 v25, -0x1

    move-object v14, v10

    move v10, v9

    .line 2495
    iget-char v0, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_11

    .line 2500
    iget-char v3, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v7, v27

    move-object v8, v15

    move-object/from16 v9, v16

    move/from16 v29, v10

    move-object/from16 v10, p2

    move-object/from16 v30, v11

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)I

    move-result v1

    if-gez v1, :cond_10

    const/16 v0, -0x7d00

    if-ne v1, v0, :cond_e

    add-int/lit8 v0, v23, 0x1

    move-object/from16 v6, v26

    .line 2508
    array-length v1, v6

    if-ge v0, v1, :cond_d

    .line 2513
    :try_start_0
    aget-object v1, v6, v0

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_9

    .line 2525
    aget-object v1, v6, v0

    check-cast v1, Ljava/lang/String;

    .line 2526
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_a

    .line 2533
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2534
    invoke-static {v3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    if-ne v8, v2, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v0, v23

    :goto_5
    move/from16 v1, v24

    move/from16 v7, v29

    goto :goto_7

    :catch_0
    move/from16 v7, v29

    .line 2515
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    move/from16 v9, v24

    .line 2516
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_c

    .line 2518
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_c
    return-void

    :cond_d
    move/from16 v9, v24

    move/from16 v7, v29

    move v1, v9

    goto :goto_6

    :cond_e
    move/from16 v9, v24

    move/from16 v7, v29

    .line 2547
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2548
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_f

    .line 2550
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_f
    return-void

    :cond_10
    move-object/from16 v6, v26

    move/from16 v7, v29

    :goto_6
    move/from16 v0, v23

    :goto_7
    const/4 v2, -0x1

    goto :goto_8

    :cond_11
    move v7, v10

    move-object/from16 v30, v11

    move/from16 v9, v24

    move-object/from16 v6, v26

    move v1, v9

    move/from16 v2, v19

    move/from16 v0, v23

    :goto_8
    move v5, v2

    const/4 v8, 0x1

    move v2, v1

    const/4 v1, 0x0

    goto :goto_9

    :cond_12
    move/from16 v23, v0

    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move v7, v9

    move-object v14, v10

    move-object/from16 v30, v11

    const/4 v8, 0x1

    const/16 v25, -0x1

    move v9, v1

    move-object v6, v3

    new-array v10, v8, [Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move/from16 v4, v23

    move-object v5, v10

    .line 2561
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I

    move-result v0

    const/4 v1, 0x0

    aget-boolean v2, v10, v1

    if-nez v2, :cond_14

    .line 2564
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2565
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_13

    .line 2567
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_13
    return-void

    :cond_14
    move v2, v0

    move/from16 v0, v23

    const/4 v5, -0x1

    :goto_9
    add-int/2addr v0, v8

    move v1, v2

    move-object v3, v6

    move v9, v7

    move-object v10, v14

    move-object/from16 v7, v21

    move-object/from16 v4, v27

    move-object/from16 v11, v30

    const/4 v2, -0x1

    const/4 v14, 0x0

    move-object/from16 v6, p2

    goto/16 :goto_2

    :cond_15
    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move v7, v9

    move-object v14, v10

    move-object/from16 v30, v11

    const/4 v8, 0x1

    move v9, v1

    move-object v6, v3

    const/4 v1, 0x0

    .line 2576
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_16

    move-object/from16 v0, p1

    .line 2577
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_16

    .line 2578
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_16

    array-length v0, v6

    if-eqz v0, :cond_16

    .line 2580
    array-length v0, v6

    sub-int/2addr v0, v8

    aget-object v0, v6, v0

    .line 2581
    instance-of v2, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_16

    check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v0, :cond_16

    add-int/lit8 v0, v9, 0x1

    goto :goto_a

    :cond_16
    move v0, v9

    :goto_a
    move-object/from16 v2, v21

    .line 2588
    iget-object v3, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    .line 2589
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/impl/DayPeriodRules;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;

    move-result-object v3

    const/16 v4, 0xa

    .line 2591
    invoke-virtual {v15, v4}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v5

    const/16 v6, 0xc

    const/16 v9, 0xb

    if-nez v5, :cond_18

    invoke-virtual {v15, v9}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_18

    .line 2594
    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v2

    double-to-int v4, v2

    int-to-double v10, v4

    .line 2599
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v10

    const-wide/16 v10, 0x0

    cmpl-double v5, v2, v10

    if-lez v5, :cond_17

    const/16 v2, 0x1e

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    .line 2602
    :goto_b
    invoke-virtual {v15, v9, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2603
    invoke-virtual {v15, v6, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_e

    .line 2607
    :cond_18
    invoke-virtual {v15, v9}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2608
    invoke-virtual {v15, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    goto :goto_c

    .line 2610
    :cond_19
    invoke-virtual {v15, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_1a

    const/16 v4, 0xc

    :cond_1a
    :goto_c
    if-eqz v4, :cond_1e

    const/16 v5, 0xd

    if-gt v5, v4, :cond_1b

    const/16 v5, 0x17

    if-gt v4, v5, :cond_1b

    goto :goto_d

    :cond_1b
    if-ne v4, v6, :cond_1c

    const/4 v4, 0x0

    :cond_1c
    int-to-double v4, v4

    .line 2635
    invoke-virtual {v15, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v6

    int-to-double v9, v6

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v9, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v9

    .line 2636
    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v2

    sub-double/2addr v4, v2

    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    const/16 v6, 0x9

    cmpg-double v9, v2, v4

    if-gtz v9, :cond_1d

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpg-double v9, v4, v2

    if-gez v9, :cond_1d

    .line 2643
    invoke-virtual {v15, v6, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_e

    .line 2645
    :cond_1d
    invoke-virtual {v15, v6, v8}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_e

    .line 2621
    :cond_1e
    :goto_d
    invoke-virtual {v15, v9, v4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2655
    :cond_1f
    :goto_e
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v2, p2

    .line 2680
    :try_start_1
    iget-object v2, v2, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    aget-boolean v3, v27, v1

    if-nez v3, :cond_20

    .line 2681
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v2, v3, :cond_33

    :cond_20
    aget-boolean v3, v27, v1

    if-eqz v3, :cond_21

    .line 2688
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/Calendar;

    .line 2689
    invoke-virtual {v3}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 2690
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2692
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-virtual {v15, v8, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2695
    :cond_21
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v2, v3, :cond_33

    .line 2696
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/Calendar;

    .line 2697
    invoke-virtual {v3}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v4

    .line 2699
    instance-of v5, v4, Lcom/ibm/icu/util/BasicTimeZone;

    if-eqz v5, :cond_22

    .line 2700
    move-object v5, v4

    check-cast v5, Lcom/ibm/icu/util/BasicTimeZone;

    goto :goto_f

    :cond_22
    const/4 v5, 0x0

    :goto_f
    const/16 v6, 0xf

    .line 2704
    invoke-virtual {v3, v6, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 v9, 0x10

    .line 2705
    invoke-virtual {v3, v9, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2706
    invoke-virtual {v3}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const/4 v3, 0x2

    new-array v3, v3, [I

    if-eqz v5, :cond_24

    .line 2712
    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v9, :cond_23

    .line 2713
    sget-object v19, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->STANDARD_FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    sget-object v20, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->STANDARD_LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    move-object/from16 v16, v5

    move-wide/from16 v17, v10

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V

    goto :goto_10

    .line 2716
    :cond_23
    sget-object v19, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    sget-object v20, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    move-object/from16 v16, v5

    move-wide/from16 v17, v10

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V

    goto :goto_10

    .line 2722
    :cond_24
    invoke-virtual {v4, v10, v11, v8, v3}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 2724
    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v9, :cond_25

    aget v9, v3, v8

    if-nez v9, :cond_26

    :cond_25
    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v9, :cond_27

    aget v9, v3, v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v9, :cond_27

    :cond_26
    const-wide/32 v16, 0x5265c00

    move/from16 v28, v7

    sub-long v6, v10, v16

    .line 2731
    :try_start_2
    invoke-virtual {v4, v6, v7, v8, v3}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    goto :goto_11

    :cond_27
    :goto_10
    move/from16 v28, v7

    :goto_11
    aget v6, v3, v8

    .line 2738
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v2, v7, :cond_28

    aget v2, v3, v8

    if-eqz v2, :cond_31

    const/4 v8, 0x0

    goto/16 :goto_17

    :cond_28
    aget v2, v3, v8

    if-nez v2, :cond_31

    if-eqz v5, :cond_30

    aget v2, v3, v1

    int-to-long v8, v2

    add-long/2addr v10, v8

    const-wide v7, 0xdc46c32800L

    add-long v16, v10, v7

    move-wide v7, v10

    :goto_12
    cmp-long v2, v7, v16

    if-gez v2, :cond_2b

    .line 2755
    invoke-virtual {v5, v7, v8, v1}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v2

    if-nez v2, :cond_29

    goto :goto_13

    .line 2759
    :cond_29
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-eqz v6, :cond_2a

    goto :goto_13

    .line 2763
    :cond_2a
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    goto :goto_12

    :cond_2b
    :goto_13
    if-nez v6, :cond_2f

    const-wide v7, 0xdc46c32800L

    sub-long v7, v10, v7

    :goto_14
    cmp-long v2, v10, v7

    if-lez v2, :cond_2e

    const/4 v2, 0x1

    .line 2772
    invoke-virtual {v5, v10, v11, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v4

    if-nez v4, :cond_2c

    goto :goto_15

    .line 2776
    :cond_2c
    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_15

    .line 2780
    :cond_2d
    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v9

    const-wide/16 v16, 0x1

    sub-long v9, v9, v16

    move-wide v10, v9

    goto :goto_14

    :cond_2e
    :goto_15
    if-nez v6, :cond_2f

    .line 2784
    invoke-virtual {v5}, Lcom/ibm/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v6

    :cond_2f
    move v8, v6

    goto :goto_16

    .line 2788
    :cond_30
    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I

    move-result v2

    move v8, v2

    :goto_16
    if-nez v8, :cond_32

    const v8, 0x36ee80

    goto :goto_17

    :cond_31
    move v8, v6

    :cond_32
    :goto_17
    aget v1, v3, v1

    const/16 v2, 0xf

    .line 2796
    invoke-virtual {v15, v2, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 v1, 0x10

    .line 2797
    invoke-virtual {v15, v1, v8}, Lcom/ibm/icu/util/Calendar;->set(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_18

    :catch_1
    nop

    goto :goto_19

    :cond_33
    :goto_18
    move-object/from16 v1, v30

    if-eqz v1, :cond_34

    .line 2814
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 2815
    invoke-virtual {v15}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_34
    if-eqz v14, :cond_35

    .line 2819
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_35
    return-void

    :catch_2
    move/from16 v28, v7

    .line 2804
    :goto_19
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move/from16 v0, v28

    .line 2805
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz v14, :cond_36

    .line 2807
    iget-object v0, v12, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_36
    return-void
.end method

.method protected patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;
    .locals 1

    .line 1526
    invoke-static {p1}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1528
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 0

    .line 1302
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    return-void
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 1

    .line 1327
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    .line 1328
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 1331
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    :cond_1
    return-void
.end method

.method public setDateFormatSymbols(Lcom/ibm/icu/text/DateFormatSymbols;)V
    .locals 0

    .line 3995
    invoke-virtual {p1}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DateFormatSymbols;

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    return-void
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
    .locals 1

    .line 2270
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V

    .line 2271
    invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    const/4 p1, 0x1

    .line 2272
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 2274
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2275
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 2277
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 2278
    iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setNumberFormat(Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat;)V
    .locals 6

    const/4 v0, 0x0

    .line 4508
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4512
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 4513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4515
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 4516
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    :cond_1
    const/4 v2, 0x0

    .line 4520
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4521
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    .line 4522
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4525
    iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4526
    iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4523
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal field character \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' in setNumberFormat."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4531
    :cond_3
    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    return-void
.end method

.method public setTimeZoneFormat(Lcom/ibm/icu/text/TimeZoneFormat;)V
    .locals 1

    .line 4025
    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4027
    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    goto :goto_0

    .line 4030
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->freeze()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat:Lcom/ibm/icu/text/TimeZoneFormat;

    :goto_0
    return-void
.end method

.method protected subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)Ljava/lang/String;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1568
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move-object v1, v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 1569
    invoke-virtual/range {v0 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    .line 1570
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected subFormat(CIILjava/text/FieldPosition;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1551
    sget-object v5, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p1

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v0, p2

    move/from16 v4, p3

    move/from16 v12, p4

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v9, p9

    .line 1595
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    .line 1596
    invoke-virtual/range {p9 .. p9}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 1597
    invoke-virtual/range {p9 .. p9}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1600
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v5

    const/16 v6, 0x22

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    return-void

    .line 1605
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' in \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1611
    :cond_1
    sget-object v8, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v8, v8, v5

    move-wide/from16 v16, v2

    if-ltz v8, :cond_3

    if-eq v5, v6, :cond_2

    .line 1615
    invoke-virtual {v9, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual/range {p9 .. p9}, Lcom/ibm/icu/util/Calendar;->getRelatedYear()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1618
    :goto_0
    invoke-virtual {v10, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v6

    .line 1619
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->OTHER:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const/16 v0, 0xd

    const/16 v2, 0xb

    const/16 v7, 0xc

    const/16 v19, 0x0

    const/4 v8, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    .line 2067
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_24

    .line 2051
    :pswitch_1
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x3

    goto/16 :goto_24

    .line 1964
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/DayPeriodRules;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;

    move-result-object v1

    if-nez v1, :cond_4

    const/16 v2, 0x61

    const/16 v8, 0x42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    .line 1971
    invoke-virtual/range {v0 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    return-void

    .line 1976
    :cond_4
    invoke-virtual {v9, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    .line 1979
    iget-boolean v3, v10, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v3, :cond_5

    invoke-virtual {v9, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 1980
    :goto_4
    iget-boolean v5, v10, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v5, :cond_6

    invoke-virtual {v9, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    .line 1984
    invoke-virtual {v1}, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1985
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_6

    :cond_7
    if-ne v2, v7, :cond_8

    if-nez v3, :cond_8

    if-nez v0, :cond_8

    .line 1986
    invoke-virtual {v1}, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1987
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_6

    .line 1989
    :cond_8
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    .line 2001
    :goto_6
    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_c

    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_c

    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_c

    .line 2003
    invoke-virtual {v0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v3

    if-gt v4, v8, :cond_9

    .line 2005
    iget-object v5, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    goto :goto_8

    :cond_9
    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    const/4 v5, 0x5

    if-le v4, v5, :cond_a

    goto :goto_7

    .line 2009
    :cond_a
    iget-object v5, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    goto :goto_8

    .line 2007
    :cond_b
    :goto_7
    iget-object v5, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    :cond_c
    :goto_8
    if-nez v19, :cond_11

    .line 2018
    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v0, v3, :cond_11

    .line 2021
    :cond_d
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    .line 2022
    invoke-virtual {v0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v1

    if-gt v4, v8, :cond_e

    .line 2025
    iget-object v2, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    goto :goto_a

    :cond_e
    const/4 v2, 0x4

    if-eq v4, v2, :cond_10

    const/4 v2, 0x5

    if-le v4, v2, :cond_f

    goto :goto_9

    .line 2029
    :cond_f
    iget-object v2, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    goto :goto_a

    .line 2027
    :cond_10
    :goto_9
    iget-object v2, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    :cond_11
    :goto_a
    move-object/from16 v1, v19

    .line 2034
    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v2, :cond_13

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v2, :cond_13

    if-nez v1, :cond_12

    goto :goto_b

    .line 2044
    :cond_12
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_13
    :goto_b
    const/16 v2, 0x61

    const/16 v8, 0x42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    .line 2040
    invoke-virtual/range {v0 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    return-void

    .line 1924
    :pswitch_3
    invoke-virtual {v9, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v7, :cond_19

    .line 1930
    iget-boolean v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v1, :cond_14

    .line 1931
    invoke-virtual {v9, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_19

    :cond_14
    iget-boolean v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v1, :cond_15

    .line 1932
    invoke-virtual {v9, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_19

    :cond_15
    const/16 v0, 0x9

    .line 1936
    invoke-virtual {v9, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    if-gt v4, v8, :cond_16

    .line 1939
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    goto :goto_d

    :cond_16
    const/4 v1, 0x4

    if-eq v4, v1, :cond_18

    const/4 v1, 0x5

    if-le v4, v1, :cond_17

    goto :goto_c

    .line 1943
    :cond_17
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    goto :goto_d

    .line 1941
    :cond_18
    :goto_c
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    :cond_19
    :goto_d
    move-object/from16 v0, v19

    if-nez v0, :cond_1a

    const/16 v2, 0x61

    const/16 v16, 0x62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, v16

    move-object/from16 v9, p9

    .line 1953
    invoke-virtual/range {v0 .. v9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    goto/16 :goto_1

    .line 1955
    :cond_1a
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4
    const/4 v7, 0x1

    if-ne v4, v7, :cond_1b

    .line 1862
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-wide/from16 v8, v16

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    const/4 v2, 0x3

    const/4 v5, 0x2

    goto :goto_f

    :cond_1b
    move-wide/from16 v8, v16

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    .line 1865
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    const/4 v2, 0x3

    goto :goto_f

    :cond_1c
    const/4 v2, 0x3

    if-ne v4, v2, :cond_1e

    .line 1868
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_1d
    :goto_e
    move-object/from16 v0, v19

    goto :goto_f

    :cond_1e
    const/4 v0, 0x4

    if-ne v4, v0, :cond_1f

    .line 1871
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    :cond_1f
    const/4 v0, 0x5

    if-ne v4, v0, :cond_1d

    .line 1874
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    .line 1876
    :goto_f
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_5
    move-wide/from16 v8, v16

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-ne v4, v7, :cond_21

    .line 1843
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_20
    :goto_10
    move-object/from16 v0, v19

    goto :goto_11

    :cond_21
    if-ne v4, v5, :cond_22

    .line 1846
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    :cond_22
    if-ne v4, v2, :cond_23

    .line 1849
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    :cond_23
    const/4 v0, 0x4

    if-ne v4, v0, :cond_24

    .line 1852
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    :cond_24
    const/4 v0, 0x5

    if-ne v4, v0, :cond_20

    .line 1855
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_10

    .line 1857
    :goto_11
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_6
    move-wide/from16 v8, v16

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-ne v4, v7, :cond_25

    .line 1833
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_12

    :cond_25
    const/4 v0, 0x4

    if-ne v4, v0, :cond_26

    .line 1836
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_26
    :goto_12
    move-object/from16 v0, v19

    .line 1838
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_7
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    .line 1640
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v0, v0

    if-gt v3, v0, :cond_53

    .line 1641
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    sub-int/2addr v3, v7

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :pswitch_8
    move-wide/from16 v8, v16

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-ne v4, v7, :cond_28

    .line 1816
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_27
    :goto_13
    move-object/from16 v0, v19

    goto :goto_14

    :cond_28
    if-ne v4, v5, :cond_29

    .line 1819
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_13

    :cond_29
    if-ne v4, v2, :cond_2a

    .line 1822
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_13

    :cond_2a
    const/4 v0, 0x4

    if-ne v4, v0, :cond_27

    .line 1825
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1826
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_13

    .line 1828
    :goto_14
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_18

    :pswitch_9
    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-lt v4, v0, :cond_2b

    .line 1912
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    div-int/2addr v3, v2

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :cond_2b
    if-ne v4, v2, :cond_2c

    .line 1914
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    div-int/2addr v3, v2

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1916
    :cond_2c
    div-int/2addr v3, v2

    add-int/2addr v3, v7

    const v8, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    const/4 v9, 0x3

    move-object/from16 v2, p1

    move/from16 v4, p3

    const/4 v6, 0x2

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1e

    :pswitch_a
    const/4 v0, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-lt v4, v0, :cond_2d

    .line 1903
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    div-int/2addr v3, v9

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1e

    :cond_2d
    if-ne v4, v9, :cond_2e

    .line 1905
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    div-int/2addr v3, v9

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1e

    .line 1907
    :cond_2e
    div-int/2addr v3, v9

    add-int/2addr v3, v7

    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1e

    :pswitch_b
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ge v4, v5, :cond_2f

    const/4 v4, 0x1

    const v9, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    const/4 v6, 0x3

    move v5, v9

    .line 1881
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_2f
    const/4 v0, 0x7

    const/4 v6, 0x3

    .line 1886
    invoke-virtual {v9, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v4, v1, :cond_30

    .line 1888
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1889
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :cond_30
    const/4 v1, 0x4

    if-ne v4, v1, :cond_31

    .line 1891
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1892
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :cond_31
    const/4 v1, 0x6

    if-ne v4, v1, :cond_32

    .line 1893
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 1894
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1895
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    .line 1897
    :cond_32
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1898
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :pswitch_c
    move-wide/from16 v8, v16

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v4, v7, :cond_33

    .line 1804
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1805
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_15

    :cond_33
    const/4 v0, 0x4

    if-ne v4, v0, :cond_34

    .line 1808
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1809
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :cond_34
    :goto_15
    move-object/from16 v0, v19

    .line 1811
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_18

    :pswitch_d
    move-wide/from16 v8, v16

    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ge v4, v0, :cond_35

    .line 1791
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_35
    const/4 v0, 0x5

    if-ne v4, v0, :cond_36

    .line 1794
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1797
    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1799
    :goto_16
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_e
    const/4 v5, 0x2

    const/4 v7, 0x1

    if-ge v4, v8, :cond_37

    const v9, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    const/4 v6, 0x2

    move v5, v9

    .line 1737
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_37
    const/4 v0, 0x7

    const/4 v6, 0x2

    .line 1742
    invoke-virtual {v9, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto/16 :goto_1b

    :pswitch_f
    move-wide/from16 v8, v16

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v0, :cond_38

    .line 1780
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1781
    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_17

    .line 1783
    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->tzFormat()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1784
    sget-object v1, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_17
    move-object/from16 v18, v1

    .line 1786
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_18
    move-object/from16 v0, v18

    const/4 v8, 0x0

    :goto_19
    const/4 v9, 0x3

    goto/16 :goto_25

    :pswitch_10
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-nez v3, :cond_39

    const/16 v0, 0xa

    .line 1770
    invoke-virtual {v9, v0}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const v9, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    const/4 v6, 0x3

    move v5, v9

    .line 1769
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_39
    const/4 v9, 0x3

    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    .line 1773
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1e

    :pswitch_11
    const/4 v0, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-lt v4, v0, :cond_3b

    .line 1761
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-nez v0, :cond_3a

    goto :goto_1a

    .line 1764
    :cond_3a
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1e

    .line 1762
    :cond_3b
    :goto_1a
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1e

    :pswitch_12
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v0, 0x5

    :goto_1b
    if-ne v4, v0, :cond_3c

    .line 1746
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1747
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_1c
    move-object/from16 v0, v18

    const/4 v8, 0x0

    goto/16 :goto_25

    :cond_3c
    const/4 v0, 0x4

    if-ne v4, v0, :cond_3d

    .line 1749
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1750
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1c

    :cond_3d
    const/4 v0, 0x6

    if-ne v4, v0, :cond_3e

    .line 1751
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 1752
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1753
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1c

    .line 1755
    :cond_3e
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1756
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1c

    :pswitch_13
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    .line 1720
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1721
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    if-ne v4, v7, :cond_3f

    .line 1723
    div-int/lit8 v3, v3, 0x64

    goto :goto_1d

    :cond_3f
    if-ne v4, v8, :cond_40

    .line 1725
    div-int/lit8 v3, v3, 0xa

    .line 1727
    :cond_40
    :goto_1d
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1728
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3, v11, v0}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    if-le v4, v9, :cond_42

    .line 1730
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    add-int/lit8 v2, v4, -0x3

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1731
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v11, v0}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_1e

    :pswitch_14
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-nez v3, :cond_41

    .line 1711
    invoke-virtual {v9, v2}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const v9, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    const/4 v6, 0x3

    move v5, v9

    .line 1710
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_41
    const/4 v9, 0x3

    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    .line 1714
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    :cond_42
    :goto_1e
    const/4 v8, 0x0

    goto/16 :goto_24

    :pswitch_15
    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 1665
    invoke-virtual/range {p9 .. p9}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v0, "hebrew"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1666
    invoke-virtual {v9, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_43

    if-ne v3, v1, :cond_43

    if-lt v4, v2, :cond_43

    const/16 v3, 0xd

    :cond_43
    if-nez v0, :cond_44

    if-lt v3, v1, :cond_44

    if-ge v4, v2, :cond_44

    add-int/lit8 v3, v3, -0x1

    .line 1674
    :cond_44
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_45

    const/16 v0, 0x16

    .line 1675
    invoke-virtual {v9, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    move v9, v0

    const/4 v0, 0x5

    goto :goto_1f

    :cond_45
    const/4 v0, 0x5

    const/4 v9, 0x0

    :goto_1f
    if-ne v4, v0, :cond_49

    if-ne v5, v8, :cond_47

    .line 1679
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    if-eqz v9, :cond_46

    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v8

    :cond_46
    move-object/from16 v1, v19

    invoke-static {v0, v3, v11, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_20

    .line 1681
    :cond_47
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    if-eqz v9, :cond_48

    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v19, v1, v4

    :cond_48
    move-object/from16 v1, v19

    invoke-static {v0, v3, v11, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1683
    :goto_20
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :cond_49
    const/4 v0, 0x4

    if-ne v4, v0, :cond_4d

    if-ne v5, v8, :cond_4b

    .line 1686
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v9, :cond_4a

    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v19, v1, v4

    goto :goto_21

    :cond_4a
    const/4 v4, 0x0

    :goto_21
    move-object/from16 v1, v19

    invoke-static {v0, v3, v11, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1687
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :cond_4b
    const/4 v4, 0x0

    .line 1689
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v9, :cond_4c

    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v2

    :cond_4c
    move-object/from16 v1, v19

    invoke-static {v0, v3, v11, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1690
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    :cond_4d
    const/4 v1, 0x0

    if-ne v4, v2, :cond_51

    if-ne v5, v8, :cond_4f

    .line 1694
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v9, :cond_4e

    iget-object v4, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v4, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v4, v7

    :cond_4e
    move-object/from16 v4, v19

    invoke-static {v0, v3, v11, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1695
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    .line 1697
    :cond_4f
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v9, :cond_50

    iget-object v4, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v4, v4, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v19, v4, v5

    :cond_50
    move-object/from16 v4, v19

    invoke-static {v0, v3, v11, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1698
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_18

    .line 1701
    :cond_51
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr v3, v7

    const v5, 0x7fffffff

    move-object/from16 v0, p0

    const/4 v8, 0x0

    move-object v1, v6

    const/4 v6, 0x3

    move-object/from16 v2, v16

    move/from16 v4, p3

    .line 1702
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    new-array v0, v7, [Ljava/lang/String;

    .line 1704
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    if-eqz v9, :cond_52

    .line 1705
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v19, v1, v2

    :cond_52
    move-object/from16 v1, v19

    invoke-static {v0, v8, v11, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v7, 0x1

    :cond_53
    const/4 v8, 0x0

    const/4 v9, 0x3

    .line 1647
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_55

    const-string v1, "hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string v1, "y=hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_55

    :cond_54
    const/16 v0, 0x1388

    if-le v3, v0, :cond_55

    const/16 v0, 0x1770

    if-ge v3, v0, :cond_55

    add-int/lit16 v3, v3, -0x1388

    :cond_55
    const/4 v0, 0x2

    if-ne v4, v0, :cond_56

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    .line 1658
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_24

    :cond_56
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move/from16 v4, p3

    .line 1660
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_24

    :pswitch_17
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1623
    invoke-virtual/range {p9 .. p9}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chinese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual/range {p9 .. p9}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dangi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_23

    :cond_57
    const/4 v0, 0x5

    if-ne v4, v0, :cond_58

    .line 1628
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1629
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_22
    move-object/from16 v0, v18

    goto/16 :goto_19

    :cond_58
    const/4 v0, 0x4

    if-ne v4, v0, :cond_59

    .line 1631
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1632
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_22

    .line 1634
    :cond_59
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v0, v3, v11}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1635
    sget-object v18, Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Lcom/ibm/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_22

    :cond_5a
    :goto_23
    const/4 v4, 0x1

    const/16 v9, 0x9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    const/4 v6, 0x3

    move v5, v9

    .line 1625
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_3

    :goto_24
    move-object/from16 v0, v18

    :goto_25
    if-nez p5, :cond_60

    if-eqz v13, :cond_60

    .line 2071
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v15, :cond_60

    .line 2072
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2074
    sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat$1;->$SwitchMap$com$ibm$icu$text$DisplayContext:[I

    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/text/DisplayContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v7, :cond_5e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5b

    if-eq v1, v9, :cond_5b

    goto :goto_27

    .line 2080
    :cond_5b
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    if-eqz v1, :cond_5d

    .line 2081
    iget-object v1, v10, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 2082
    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne v13, v1, :cond_5c

    aget-boolean v0, v0, v8

    goto :goto_26

    :cond_5c
    aget-boolean v0, v0, v7

    :goto_26
    move v2, v0

    goto :goto_28

    :cond_5d
    :goto_27
    const/4 v2, 0x0

    goto :goto_28

    :cond_5e
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_60

    .line 2090
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_5f

    .line 2092
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 2096
    :cond_5f
    iget-object v0, v10, Lcom/ibm/icu/text/SimpleDateFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator;

    .line 2097
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2098
    iget-object v2, v10, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const/16 v3, 0x300

    invoke-static {v2, v1, v0, v3}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    .line 2100
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v11, v15, v1, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2105
    :cond_60
    invoke-static/range {p8 .. p8}, Lcom/ibm/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v0

    .line 2106
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-ne v1, v2, :cond_62

    .line 2107
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_61

    .line 2108
    invoke-virtual {v14, v12}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/2addr v0, v12

    sub-int/2addr v0, v15

    invoke-virtual {v14, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_29

    .line 2110
    :cond_61
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v0, v2, v0

    if-ne v1, v0, :cond_62

    .line 2112
    invoke-virtual {v14, v12}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2113
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/2addr v0, v12

    sub-int/2addr v0, v15

    invoke-virtual {v14, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_62
    :goto_29
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;)I
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3119
    invoke-direct/range {v0 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    .line 3922
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, v1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    const-string v2, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    invoke-direct {p0, v0, v2, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 3907
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected zeroPaddingNumber(JII)Ljava/lang/String;
    .locals 1

    .line 2359
    iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2360
    iget-object p3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p3, p4}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 2361
    iget-object p3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2251
    iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    .line 2252
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ibm/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V

    goto :goto_0

    .line 2254
    :cond_0
    invoke-virtual {p1, p4}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2255
    invoke-virtual {p1, p5}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    int-to-long p3, p3

    .line 2256
    new-instance p5, Ljava/text/FieldPosition;

    const/4 v0, -0x1

    invoke-direct {p5, v0}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method
