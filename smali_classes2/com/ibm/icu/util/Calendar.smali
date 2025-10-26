.class public abstract Lcom/ibm/icu/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/Calendar$WeekDataCache;,
        Lcom/ibm/icu/util/Calendar$WeekData;,
        Lcom/ibm/icu/util/Calendar$FormatConfiguration;,
        Lcom/ibm/icu/util/Calendar$PatternData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field protected static final BASE_FIELD_COUNT:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:I = 0x5

.field static final DATE_PRECEDENCE:[[[I

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field public static final DOW_LOCAL:I = 0x12

.field static final DOW_PRECEDENCE:[[[I

.field public static final DST_OFFSET:I = 0x10

.field protected static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final ERA:I = 0x0

.field public static final EXTENDED_YEAR:I = 0x13

.field public static final FEBRUARY:I = 0x1

.field private static final FIELD_DIFF_MAX_INT:I = 0x7fffffff

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FIND_ZONE_TRANSITION_TIME_UNITS:[I

.field public static final FRIDAY:I = 0x6

.field protected static final GREATEST_MINIMUM:I = 0x1

.field private static final GREGORIAN_MONTH_COUNT:[[I

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field protected static final INTERNALLY_SET:I = 0x1

.field public static final IS_LEAP_MONTH:I = 0x16

.field public static final JANUARY:I = 0x0

.field protected static final JAN_1_1_JULIAN_DAY:I = 0x1a4452

.field public static final JULIAN_DAY:I = 0x14

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field protected static final LEAST_MAXIMUM:I = 0x2

.field private static final LIMITS:[[I

.field public static final MARCH:I = 0x2

.field protected static final MAXIMUM:I = 0x3

.field protected static final MAX_DATE:Ljava/util/Date;

.field protected static final MAX_FIELD_COUNT:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_HOURS:I = 0x224

.field protected static final MAX_JULIAN:I = 0x7f000000

.field protected static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MILLISECONDS_IN_DAY:I = 0x15

.field protected static final MINIMUM:I = 0x0

.field protected static final MINIMUM_USER_STAMP:I = 0x2

.field public static final MINUTE:I = 0xc

.field protected static final MIN_DATE:Ljava/util/Date;

.field protected static final MIN_JULIAN:I = -0x7f000000

.field protected static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field protected static final ONE_DAY:J = 0x5265c00L

.field protected static final ONE_HOUR:I = 0x36ee80

.field protected static final ONE_MINUTE:I = 0xea60

.field protected static final ONE_SECOND:I = 0x3e8

.field protected static final ONE_WEEK:J = 0x240c8400L

.field private static final PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Calendar$PatternData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PM:I = 0x1

.field private static final QUOTE:C = '\''

.field protected static final RESOLVE_REMAP:I = 0x20

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field private static STAMP_MAX:I = 0x0

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field private static final TIME_SKELETONS:[Ljava/lang/String;

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field protected static final UNSET:I = 0x0

.field public static final WALLTIME_FIRST:I = 0x1

.field public static final WALLTIME_LAST:I = 0x0

.field public static final WALLTIME_NEXT_VALID:I = 0x2

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEKDAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_CEASE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_ONSET:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WEEK_DATA_CACHE:Lcom/ibm/icu/util/Calendar$WeekDataCache;

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final YEAR_WOY:I = 0x11

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialVersionUID:J = 0x565b47a9d4dd4fcdL


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private transient areAllFieldsSet:Z

.field private transient areFieldsSet:Z

.field private transient areFieldsVirtuallySet:Z

.field private transient fields:[I

.field private firstDayOfWeek:I

.field private transient gregorianDayOfMonth:I

.field private transient gregorianDayOfYear:I

.field private transient gregorianMonth:I

.field private transient gregorianYear:I

.field private transient internalSetMask:I

.field private transient isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private transient nextStamp:I

.field private repeatedWallTime:I

.field private skippedWallTime:I

.field private transient stamp:[I

.field private time:J

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field private weekendCease:I

.field private weekendCeaseMillis:I

.field private weekendOnset:I

.field private weekendOnsetMillis:I

.field private zone:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1283
    new-instance v0, Ljava/util/Date;

    const-wide v1, -0x28ec76c40e65000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->MIN_DATE:Ljava/util/Date;

    .line 1305
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x28d47dbbf19b000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->MAX_DATE:Ljava/util/Date;

    const/16 v0, 0x2710

    .line 1489
    sput v0, Lcom/ibm/icu/util/Calendar;->STAMP_MAX:I

    .line 3499
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    const/16 v0, 0xd

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "HH:mm:ss z"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "HH:mm:ss"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "HH:mm"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const-string v3, "EEEE, yyyy MMMM dd"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const-string v3, "yyyy MMMM d"

    const/4 v8, 0x5

    aput-object v3, v1, v8

    const-string v3, "yyyy MMM d"

    const/4 v9, 0x6

    aput-object v3, v1, v9

    const-string v3, "yy/MM/dd"

    const/4 v10, 0x7

    aput-object v3, v1, v10

    const/16 v3, 0x8

    const-string v11, "{1} {0}"

    aput-object v11, v1, v3

    const/16 v12, 0x9

    aput-object v11, v1, v12

    const/16 v13, 0xa

    aput-object v11, v1, v13

    const/16 v14, 0xb

    aput-object v11, v1, v14

    const/16 v15, 0xc

    aput-object v11, v1, v15

    .line 3502
    sput-object v1, Lcom/ibm/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v11, "jmmsszzzz"

    aput-object v11, v1, v2

    const-string v11, "jmmssz"

    aput-object v11, v1, v4

    const-string v11, "jmmss"

    aput-object v11, v1, v5

    const-string v11, "jmm"

    aput-object v11, v1, v6

    .line 3518
    sput-object v1, Lcom/ibm/icu/util/Calendar;->TIME_SKELETONS:[Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [[I

    new-array v11, v2, [I

    aput-object v11, v1, v2

    new-array v11, v2, [I

    aput-object v11, v1, v4

    new-array v11, v2, [I

    aput-object v11, v1, v5

    new-array v11, v2, [I

    aput-object v11, v1, v6

    new-array v11, v2, [I

    aput-object v11, v1, v7

    new-array v11, v2, [I

    aput-object v11, v1, v8

    new-array v11, v2, [I

    aput-object v11, v1, v9

    new-array v11, v7, [I

    .line 4323
    fill-array-data v11, :array_0

    aput-object v11, v1, v10

    new-array v11, v2, [I

    aput-object v11, v1, v3

    new-array v11, v7, [I

    fill-array-data v11, :array_1

    aput-object v11, v1, v12

    new-array v11, v7, [I

    fill-array-data v11, :array_2

    aput-object v11, v1, v13

    new-array v11, v7, [I

    fill-array-data v11, :array_3

    aput-object v11, v1, v14

    new-array v11, v7, [I

    fill-array-data v11, :array_4

    aput-object v11, v1, v15

    new-array v11, v7, [I

    fill-array-data v11, :array_5

    aput-object v11, v1, v0

    new-array v11, v7, [I

    fill-array-data v11, :array_6

    const/16 v16, 0xe

    aput-object v11, v1, v16

    new-array v11, v7, [I

    fill-array-data v11, :array_7

    const/16 v17, 0xf

    aput-object v11, v1, v17

    new-array v11, v7, [I

    fill-array-data v11, :array_8

    const/16 v18, 0x10

    aput-object v11, v1, v18

    new-array v11, v2, [I

    const/16 v19, 0x11

    aput-object v11, v1, v19

    new-array v11, v7, [I

    fill-array-data v11, :array_9

    const/16 v20, 0x12

    aput-object v11, v1, v20

    new-array v11, v2, [I

    const/16 v21, 0x13

    aput-object v11, v1, v21

    const/16 v11, 0x14

    new-array v0, v7, [I

    fill-array-data v0, :array_a

    aput-object v0, v1, v11

    const/16 v0, 0x15

    new-array v11, v7, [I

    fill-array-data v11, :array_b

    aput-object v11, v1, v0

    const/16 v0, 0x16

    new-array v11, v7, [I

    fill-array-data v11, :array_c

    aput-object v11, v1, v0

    sput-object v1, Lcom/ibm/icu/util/Calendar;->LIMITS:[[I

    .line 4904
    new-instance v0, Lcom/ibm/icu/util/Calendar$WeekDataCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/Calendar$WeekDataCache;-><init>(Lcom/ibm/icu/util/Calendar$1;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar;->WEEK_DATA_CACHE:Lcom/ibm/icu/util/Calendar$WeekDataCache;

    new-array v0, v5, [[[I

    new-array v1, v13, [[I

    new-array v11, v4, [I

    aput v8, v11, v2

    aput-object v11, v1, v2

    new-array v11, v5, [I

    .line 5205
    fill-array-data v11, :array_d

    aput-object v11, v1, v4

    new-array v11, v5, [I

    fill-array-data v11, :array_e

    aput-object v11, v1, v5

    new-array v11, v5, [I

    fill-array-data v11, :array_f

    aput-object v11, v1, v6

    new-array v11, v5, [I

    fill-array-data v11, :array_10

    aput-object v11, v1, v7

    new-array v11, v5, [I

    fill-array-data v11, :array_11

    aput-object v11, v1, v8

    new-array v11, v5, [I

    fill-array-data v11, :array_12

    aput-object v11, v1, v9

    new-array v11, v4, [I

    aput v9, v11, v2

    aput-object v11, v1, v10

    new-array v11, v5, [I

    fill-array-data v11, :array_13

    aput-object v11, v1, v3

    new-array v11, v5, [I

    fill-array-data v11, :array_14

    aput-object v11, v1, v12

    aput-object v1, v0, v2

    new-array v1, v8, [[I

    new-array v11, v4, [I

    aput v6, v11, v2

    aput-object v11, v1, v2

    new-array v11, v4, [I

    aput v7, v11, v2

    aput-object v11, v1, v4

    new-array v11, v4, [I

    aput v3, v11, v2

    aput-object v11, v1, v5

    new-array v11, v5, [I

    fill-array-data v11, :array_15

    aput-object v11, v1, v6

    new-array v11, v5, [I

    fill-array-data v11, :array_16

    aput-object v11, v1, v7

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    new-array v0, v4, [[[I

    new-array v1, v5, [[I

    new-array v11, v4, [I

    aput v10, v11, v2

    aput-object v11, v1, v2

    new-array v11, v4, [I

    aput v20, v11, v2

    aput-object v11, v1, v4

    aput-object v1, v0, v2

    .line 5227
    sput-object v0, Lcom/ibm/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    new-array v0, v7, [I

    .line 5560
    fill-array-data v0, :array_17

    sput-object v0, Lcom/ibm/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    new-array v0, v15, [[I

    new-array v1, v7, [I

    .line 6240
    fill-array-data v1, :array_18

    aput-object v1, v0, v2

    new-array v1, v7, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v7, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    new-array v1, v7, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v7

    new-array v1, v7, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v8

    new-array v1, v7, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v9

    new-array v1, v7, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v10

    new-array v1, v7, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v12

    new-array v1, v7, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v13

    new-array v1, v7, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v14

    sput-object v0, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ERA"

    aput-object v1, v0, v2

    const-string v1, "YEAR"

    aput-object v1, v0, v4

    const-string v1, "MONTH"

    aput-object v1, v0, v5

    const-string v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v6

    const-string v1, "WEEK_OF_MONTH"

    aput-object v1, v0, v7

    const-string v1, "DAY_OF_MONTH"

    aput-object v1, v0, v8

    const-string v1, "DAY_OF_YEAR"

    aput-object v1, v0, v9

    const-string v1, "DAY_OF_WEEK"

    aput-object v1, v0, v10

    const-string v1, "DAY_OF_WEEK_IN_MONTH"

    aput-object v1, v0, v3

    const-string v1, "AM_PM"

    aput-object v1, v0, v12

    const-string v1, "HOUR"

    aput-object v1, v0, v13

    const-string v1, "HOUR_OF_DAY"

    aput-object v1, v0, v14

    const-string v1, "MINUTE"

    aput-object v1, v0, v15

    const-string v1, "SECOND"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "MILLISECOND"

    aput-object v1, v0, v16

    const-string v1, "ZONE_OFFSET"

    aput-object v1, v0, v17

    const-string v1, "DST_OFFSET"

    aput-object v1, v0, v18

    const-string v1, "YEAR_WOY"

    aput-object v1, v0, v19

    const-string v1, "DOW_LOCAL"

    aput-object v1, v0, v20

    const-string v1, "EXTENDED_YEAR"

    aput-object v1, v0, v21

    const/16 v1, 0x14

    const-string v2, "JULIAN_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "MILLISECONDS_IN_DAY"

    aput-object v2, v0, v1

    .line 6381
    sput-object v0, Lcom/ibm/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x7
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x17
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3b
        0x3b
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x3b
        0x3b
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x3e7
        0x3e7
    .end array-data

    :array_7
    .array-data 4
        -0x2932e00
        -0x2932e00
        0x2932e00
        0x2932e00
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x36ee80
        0x36ee80
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x7
        0x7
    .end array-data

    :array_a
    .array-data 4
        -0x7f000000
        -0x7f000000
        0x7f000000
        0x7f000000
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x5265bff
        0x5265bff
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x23
        0x11
    .end array-data

    :array_15
    .array-data 4
        0x28
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_17
    .array-data 4
        0x36ee80
        0x1b7740
        0xea60
        0x3e8
    .end array-data

    :array_18
    .array-data 4
        0x1f
        0x1f
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x1c
        0x1d
        0x1f
        0x1f
    .end array-data

    :array_1a
    .array-data 4
        0x1f
        0x1f
        0x3b
        0x3c
    .end array-data

    :array_1b
    .array-data 4
        0x1e
        0x1e
        0x5a
        0x5b
    .end array-data

    :array_1c
    .array-data 4
        0x1f
        0x1f
        0x78
        0x79
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x1e
        0x97
        0x98
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x1f
        0xb5
        0xb6
    .end array-data

    :array_1f
    .array-data 4
        0x1f
        0x1f
        0xd4
        0xd5
    .end array-data

    :array_20
    .array-data 4
        0x1e
        0x1e
        0xf3
        0xf4
    .end array-data

    :array_21
    .array-data 4
        0x1f
        0x1f
        0x111
        0x112
    .end array-data

    :array_22
    .array-data 4
        0x1e
        0x1e
        0x130
        0x131
    .end array-data

    :array_23
    .array-data 4
        0x1f
        0x1f
        0x14e
        0x14f
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1571
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1386
    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    const/4 v0, 0x0

    .line 1447
    iput v0, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    .line 1452
    iput v0, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    const/4 v0, 0x2

    .line 1486
    iput v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    .line 1593
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    .line 1596
    invoke-static {p2}, Lcom/ibm/icu/util/Calendar;->getRegionForCalendar(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/Calendar;->setWeekData(Ljava/lang/String;)V

    .line 1599
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/Calendar;->setCalendarLocale(Lcom/ibm/icu/util/ULocale;)V

    .line 1601
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->initInternal()V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 1582
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/ibm/icu/impl/ICUCache;
    .locals 1

    .line 645
    sget-object v0, Lcom/ibm/icu/util/Calendar;->PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$PatternData;
    .locals 0

    .line 645
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar;->getPatternData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$PatternData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .line 645
    sget-object v0, Lcom/ibm/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;
    .locals 0

    .line 645
    invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->getWeekDataForRegionInternal(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;

    move-result-object p0

    return-object p0
.end method

.method private compare(Ljava/lang/Object;)J
    .locals 4

    .line 2406
    instance-of v0, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_0

    .line 2407
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    .line 2408
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 2409
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2413
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2

    .line 2411
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "is not a Calendar or Date"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final computeGregorianAndDOWFields(I)V
    .locals 2

    .line 5047
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->computeGregorianFields(I)V

    .line 5050
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result p1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 5053
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x7

    .line 5057
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v1, 0x12

    aput p1, v0, v1

    return-void
.end method

.method private final computeWeekFields()V
    .locals 10

    .line 5131
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v1, 0x13

    aget v1, v0, v1

    const/4 v2, 0x7

    .line 5132
    aget v3, v0, v2

    const/4 v4, 0x6

    .line 5133
    aget v0, v0, v4

    add-int/lit8 v5, v3, 0x7

    .line 5145
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int/2addr v5, v6

    rem-int/2addr v5, v2

    sub-int v6, v3, v0

    add-int/lit16 v6, v6, 0x1b59

    .line 5146
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v6, v7

    rem-int/2addr v6, v2

    add-int/lit8 v7, v0, -0x1

    add-int/2addr v7, v6

    .line 5147
    div-int/2addr v7, v2

    rsub-int/lit8 v6, v6, 0x7

    .line 5148
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v6, v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    const/4 v6, 0x1

    if-nez v7, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 5160
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 5161
    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/Calendar;->weekNumber(II)I

    move-result v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5164
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v8

    add-int/lit8 v9, v8, -0x5

    if-lt v0, v9, :cond_3

    add-int v9, v5, v8

    sub-int/2addr v9, v0

    .line 5172
    rem-int/2addr v9, v2

    if-gez v9, :cond_2

    add-int/lit8 v9, v9, 0x7

    :cond_2
    sub-int/2addr v4, v9

    .line 5176
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v4, v9, :cond_3

    add-int/2addr v0, v2

    sub-int/2addr v0, v5

    if-le v0, v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    .line 5183
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v4, 0x3

    aput v7, v0, v4

    const/16 v4, 0x11

    .line 5184
    aput v1, v0, v4

    const/4 v1, 0x5

    .line 5187
    aget v1, v0, v1

    const/4 v4, 0x4

    .line 5188
    invoke-virtual {p0, v1, v3}, Lcom/ibm/icu/util/Calendar;->weekNumber(II)I

    move-result v3

    aput v3, v0, v4

    .line 5189
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v3, 0x8

    sub-int/2addr v1, v6

    div-int/2addr v1, v2

    add-int/2addr v1, v6

    aput v1, v0, v3

    return-void
.end method

.method private static createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 3

    .line 1801
    invoke-static {p0}, Lcom/ibm/icu/util/TimeZone;->forULocaleOrDefault(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 1802
    invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->getCalendarTypeForLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/CalType;

    move-result-object v1

    .line 1803
    sget-object v2, Lcom/ibm/icu/impl/CalType;->UNKNOWN:Lcom/ibm/icu/impl/CalType;

    if-ne v1, v2, :cond_0

    .line 1805
    sget-object v1, Lcom/ibm/icu/impl/CalType;->GREGORIAN:Lcom/ibm/icu/impl/CalType;

    .line 1808
    :cond_0
    sget-object v2, Lcom/ibm/icu/util/Calendar$1;->$SwitchMap$com$ibm$icu$impl$CalType:[I

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CalType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1864
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown calendar type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1858
    :pswitch_0
    new-instance v1, Lcom/ibm/icu/util/TaiwanCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/TaiwanCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1855
    :pswitch_1
    new-instance v1, Lcom/ibm/icu/util/PersianCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/PersianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1852
    :pswitch_2
    new-instance v1, Lcom/ibm/icu/util/JapaneseCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/JapaneseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1849
    :pswitch_3
    new-instance v1, Lcom/ibm/icu/util/IslamicCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/IslamicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1842
    :pswitch_4
    new-instance v1, Lcom/ibm/icu/util/IndianCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/IndianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1839
    :pswitch_5
    new-instance v1, Lcom/ibm/icu/util/HebrewCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1835
    :pswitch_6
    new-instance v1, Lcom/ibm/icu/util/EthiopicCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/EthiopicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 1836
    move-object p0, v1

    check-cast p0, Lcom/ibm/icu/util/EthiopicCalendar;

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/ibm/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0

    .line 1832
    :pswitch_7
    new-instance v1, Lcom/ibm/icu/util/EthiopicCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/EthiopicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1829
    :pswitch_8
    new-instance v1, Lcom/ibm/icu/util/DangiCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/DangiCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1826
    :pswitch_9
    new-instance v1, Lcom/ibm/icu/util/CopticCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/CopticCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1823
    :pswitch_a
    new-instance v1, Lcom/ibm/icu/util/ChineseCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1820
    :pswitch_b
    new-instance v1, Lcom/ibm/icu/util/BuddhistCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/BuddhistCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 1814
    :pswitch_c
    new-instance v1, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const/4 p0, 0x2

    .line 1815
    invoke-virtual {v1, p0}, Lcom/ibm/icu/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 p0, 0x4

    .line 1816
    invoke-virtual {v1, p0}, Lcom/ibm/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    goto :goto_0

    .line 1810
    :pswitch_d
    new-instance v1, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x3d

    .line 3709
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 3714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3716
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 3718
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->first()C

    move-result p0

    move v1, p0

    const/16 p0, 0x20

    :goto_0
    const v4, 0xffff

    if-eq v1, v4, :cond_4

    const/16 v4, 0x27

    if-ne v1, v4, :cond_1

    xor-int/lit8 p0, v0, 0x1

    move v0, p0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    if-eq v1, p0, :cond_3

    .line 3725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    const-string p0, ";"

    .line 3726
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3728
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "="

    .line 3729
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3730
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3718
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    move-result p0

    move v5, v1

    move v1, p0

    move p0, v5

    goto :goto_0

    .line 3734
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5579
    sget-object v2, Lcom/ibm/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    if-ge v5, v3, :cond_1

    aget v9, v2, v5

    int-to-long v9, v9

    .line 5580
    div-long v11, p4, v9

    .line 5581
    div-long v13, p2, v9

    cmp-long v15, v13, v11

    if-lez v15, :cond_0

    add-long/2addr v11, v13

    add-long/2addr v11, v6

    ushr-long v2, v11, v8

    mul-long v2, v2, v9

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    if-nez v4, :cond_2

    add-long v2, p2, p4

    ushr-long/2addr v2, v8

    :cond_2
    move-wide v9, v2

    if-eqz v4, :cond_5

    cmp-long v2, v9, p2

    if-eqz v2, :cond_4

    .line 5596
    invoke-virtual {v0, v9, v10}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    if-eq v2, v1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide v4, v9

    .line 5598
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_3
    move-wide v2, v9

    goto :goto_2

    :cond_4
    move-wide/from16 v2, p2

    :goto_2
    sub-long/2addr v9, v6

    goto :goto_3

    :cond_5
    add-long v2, p2, p4

    ushr-long/2addr v2, v8

    move-wide v9, v2

    move-wide/from16 v2, p2

    :goto_3
    cmp-long v5, v9, p4

    if-nez v5, :cond_6

    .line 5609
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 5611
    :cond_6
    invoke-virtual {v0, v9, v10}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v5

    if-eq v5, v1, :cond_8

    if-eqz v4, :cond_7

    .line 5614
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide v4, v9

    .line 5616
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide v2, v9

    move-wide/from16 v4, p4

    .line 5618
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static firstIslamicStartYearFromGrego(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x7b9

    const/4 v3, 0x1

    if-lt p0, v2, :cond_0

    add-int/lit16 v2, p0, -0x7b9

    .line 2220
    div-int/lit8 v4, v2, 0x41

    .line 2221
    rem-int/lit8 v2, v2, 0x41

    mul-int/lit8 v4, v4, 0x2

    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_0
    add-int/lit16 v2, p0, -0x7b8

    .line 2224
    div-int/lit8 v4, v2, 0x41

    sub-int/2addr v4, v3

    neg-int v2, v2

    .line 2225
    rem-int/lit8 v2, v2, 0x41

    mul-int/lit8 v4, v4, 0x2

    if-gt v2, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_1
    add-int/2addr v4, v0

    add-int/lit16 p0, p0, -0x243

    add-int/2addr p0, v4

    return p0
.end method

.method protected static final floorDivide(II)I
    .locals 0

    if-ltz p0, :cond_0

    .line 6326
    div-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    div-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method protected static final floorDivide(II[I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 6348
    rem-int v1, p0, p1

    aput v1, p2, v0

    .line 6349
    div-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 v1, p0, 0x1

    .line 6351
    div-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int p1, p1, v1

    sub-int/2addr p0, p1

    .line 6352
    aput p0, p2, v0

    return v1
.end method

.method protected static final floorDivide(JI[I)I
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    int-to-long v1, p2

    .line 6373
    rem-long v3, p0, v1

    long-to-int p2, v3

    aput p2, p3, v0

    .line 6374
    div-long/2addr p0, v1

    long-to-int p1, p0

    return p1

    :cond_0
    const-wide/16 v1, 0x1

    add-long v3, p0, v1

    int-to-long v5, p2

    .line 6376
    div-long/2addr v3, v5

    sub-long/2addr v3, v1

    long-to-int p2, v3

    int-to-long v1, p2

    mul-long v1, v1, v5

    sub-long/2addr p0, v1

    long-to-int p1, p0

    .line 6377
    aput p1, p3, v0

    return p2
.end method

.method protected static final floorDivide(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 6307
    div-long/2addr p0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    div-long/2addr p0, p2

    sub-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method private static formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;
    .locals 7

    const/4 v0, -0x1

    if-lt p3, v0, :cond_5

    const/4 v1, 0x3

    if-gt p3, v1, :cond_5

    if-lt p2, v0, :cond_4

    if-gt p2, v1, :cond_4

    .line 3534
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar$PatternData;->access$600(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;

    move-result-object v0

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    if-ltz p2, :cond_0

    .line 3541
    invoke-static {v0, p2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$700(Lcom/ibm/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 3542
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p3

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 3543
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 p2, p2, 0x4

    aget-object v6, v6, p2

    aput-object v6, v4, v5

    .line 3540
    invoke-static {v2, v3, v3, v4}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3547
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3548
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    .line 3549
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    .line 3551
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v4

    aget-object p2, v4, p2

    .line 3552
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v0

    aget-object p3, v0, p3

    .line 3550
    invoke-static {p2, p3, v1, v3}, Lcom/ibm/icu/util/Calendar;->mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    .line 3556
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p2

    aget-object v2, p2, p3

    .line 3557
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3558
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p2

    aget-object v1, p2, p3

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_3

    .line 3561
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x4

    aget-object v2, p3, p2

    .line 3562
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 3563
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p3

    aget-object v1, p3, p2

    .line 3568
    :cond_2
    :goto_0
    invoke-virtual {p0, v2, v1, p1}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    .line 3569
    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/DateFormat;->setCalendar(Lcom/ibm/icu/util/Calendar;)V

    return-object p1

    .line 3566
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No date or time style specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3531
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal date style "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3528
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal time style "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getActualHelper(III)I
    .locals 4

    if-ne p2, p3, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    if-le p3, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 2639
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Calendar;

    .line 2643
    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->complete()V

    .line 2645
    invoke-virtual {v2, v0}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2646
    :goto_1
    invoke-virtual {v2, p1, v0}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2652
    invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2658
    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    if-lez v1, :cond_3

    return p2

    :cond_3
    add-int v0, p2, v1

    .line 2665
    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 2666
    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    if-ne v0, p3, :cond_3

    :goto_2
    return p2
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 1878
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1889
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static getCalendarTypeForLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/CalType;
    .locals 5

    .line 1787
    invoke-static {p0}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1789
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1790
    invoke-static {}, Lcom/ibm/icu/impl/CalType;->values()[Lcom/ibm/icu/impl/CalType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1791
    invoke-virtual {v3}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1796
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/CalType;->UNKNOWN:Lcom/ibm/icu/impl/CalType;

    return-object p0
.end method

.method public static getDateTimePattern(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3678
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar$PatternData;->access$600(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;

    move-result-object p0

    .line 3679
    invoke-static {p0, p2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$700(Lcom/ibm/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImmediatePreviousZoneTransition(J)Ljava/lang/Long;
    .locals 3

    .line 5519
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    instance-of v1, v0, Lcom/ibm/icu/util/BasicTimeZone;

    if-eqz v1, :cond_1

    .line 5520
    check-cast v0, Lcom/ibm/icu/util/BasicTimeZone;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5522
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x6ddd00

    .line 5527
    invoke-static {v0, p1, p2, v1, v2}, Lcom/ibm/icu/util/Calendar;->getPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5529
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    const-wide/32 v1, 0x66ff300

    invoke-static {v0, p1, p2, v1, v2}, Lcom/ibm/icu/util/Calendar;->getPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/ibm/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 1702
    invoke-static {v0, v0}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/TimeZone;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 1713
    invoke-static {p0, v0}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 0

    .line 1757
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)Lcom/ibm/icu/util/Calendar;
    .locals 0

    .line 1746
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 1735
    invoke-static {v0, p0}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    .line 1724
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method private static getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 1766
    sget-object p1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    :cond_0
    if-nez p0, :cond_1

    .line 1769
    invoke-static {p1}, Lcom/ibm/icu/util/TimeZone;->forULocaleOrDefault(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    .line 1772
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    .line 1773
    invoke-virtual {p1, p0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 3

    const/4 p0, 0x1

    .line 1910
    invoke-static {p1, p0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 1913
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "supplementalData"

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "calendarPreferenceData"

    .line 1919
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 1922
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "001"

    .line 1925
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 1928
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1935
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1936
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1939
    :cond_1
    invoke-static {}, Lcom/ibm/icu/impl/CalType;->values()[Lcom/ibm/icu/impl/CalType;

    move-result-object p0

    array-length v0, p0

    :goto_2
    if-ge p2, v0, :cond_3

    aget-object v1, p0, p2

    .line 1940
    invoke-virtual {v1}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1941
    invoke-virtual {v1}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1944
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getPatternData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$PatternData;
    .locals 8

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    .line 3616
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 3617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/DateTimePatterns"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "calendar/gregorian/DateTimePatterns"

    .line 3619
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 3622
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v0

    .line 3623
    new-array v1, v0, [Ljava/lang/String;

    .line 3624
    new-array v2, v0, [Ljava/lang/String;

    .line 3627
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v3

    .line 3628
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_3

    const-string v4, "und"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3629
    new-instance v4, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v4, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 3633
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    if-eq v3, v4, :cond_3

    .line 3635
    invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 3636
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3637
    :cond_1
    invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3649
    :cond_2
    invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstanceNoStdPat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 3651
    sget-object v4, Lcom/ibm/icu/util/Calendar;->TIME_SKELETONS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-ge v3, v0, :cond_7

    .line 3658
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 3659
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v6, 0x8

    if-eq v4, v6, :cond_5

    goto :goto_2

    .line 3664
    :cond_5
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x1

    .line 3665
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    goto :goto_2

    .line 3661
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3669
    :cond_7
    new-instance p0, Lcom/ibm/icu/util/Calendar$PatternData;

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private static getPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;JJ)Ljava/lang/Long;
    .locals 8

    sub-long p3, p1, p3

    const-wide/16 v0, 0x1

    sub-long v6, p3, v0

    .line 5548
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 5549
    invoke-virtual {p0, v6, v7}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result p3

    if-ne v3, p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v2, p0

    move-wide v4, p1

    .line 5553
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/util/Calendar;->findPreviousZoneTransitionTime(Lcom/ibm/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static getRegionForCalendar(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1779
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 1780
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "001"

    :cond_0
    return-object p0
.end method

.method public static getWeekDataForRegion(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;
    .locals 1

    .line 4832
    sget-object v0, Lcom/ibm/icu/util/Calendar;->WEEK_DATA_CACHE:Lcom/ibm/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p0, p0}, Lcom/ibm/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;

    move-result-object p0

    return-object p0
.end method

.method private static getWeekDataForRegionInternal(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;
    .locals 8

    const-string v0, "001"

    if-nez p0, :cond_0

    move-object p0, v0

    .line 4868
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    const-string v3, "supplementalData"

    invoke-static {v2, v3, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "weekData"

    .line 4872
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 4876
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4878
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4880
    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 4886
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object p0

    .line 4887
    new-instance v7, Lcom/ibm/icu/util/Calendar$WeekData;

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    const/4 v0, 0x2

    aget v3, p0, v0

    const/4 v0, 0x3

    aget v4, p0, v0

    const/4 v0, 0x4

    aget v5, p0, v0

    const/4 v0, 0x5

    aget v6, p0, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v7

    .line 4882
    :cond_1
    throw v2
.end method

.method private static gregoYearFromIslamicStart(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x21

    const/16 v2, 0x575

    const/4 v3, 0x1

    if-lt p0, v2, :cond_0

    add-int/lit16 v2, p0, -0x575

    .line 2145
    div-int/lit8 v4, v2, 0x43

    .line 2146
    rem-int/lit8 v2, v2, 0x43

    mul-int/lit8 v4, v4, 0x2

    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_0
    add-int/lit16 v2, p0, -0x574

    .line 2149
    div-int/lit8 v4, v2, 0x43

    sub-int/2addr v4, v3

    neg-int v2, v2

    .line 2150
    rem-int/lit8 v2, v2, 0x43

    mul-int/lit8 v4, v4, 0x2

    if-gt v2, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_1
    add-int/2addr v4, v0

    add-int/lit16 p0, p0, 0x243

    sub-int/2addr p0, v4

    return p0
.end method

.method protected static final gregorianMonthLength(II)I
    .locals 1

    .line 6279
    sget-object v0, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object p1, v0, p1

    invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->isGregorianLeapYear(I)Z

    move-result p0

    aget p0, p1, p0

    return p0
.end method

.method protected static final gregorianPreviousMonthLength(II)I
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 6290
    invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar;->gregorianMonthLength(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1f

    :goto_0
    return p0
.end method

.method private initInternal()V
    .locals 4

    .line 1673
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleCreateFields()[I

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    if-eqz v0, :cond_1

    .line 1676
    array-length v1, v0

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    array-length v1, v0

    const/16 v3, 0x20

    if-gt v1, v3, :cond_1

    .line 1681
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const v0, 0x480067

    .line 1689
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x1

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1692
    :cond_0
    iput v0, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I

    return-void

    .line 1678
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid fields[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected static final isGregorianLeapYear(I)Z
    .locals 1

    .line 6268
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static final julianDayToDayOfWeek(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x2

    .line 6429
    rem-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x7

    :cond_0
    return p0
.end method

.method protected static final julianDayToMillis(I)J
    .locals 4

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private static mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 3690
    invoke-static {p1, p3}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p3, :cond_2

    .line 3694
    invoke-static {p0, p2}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3697
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    .line 3701
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3702
    invoke-static {p1, p3}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static final millisToJulianDay(J)I
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 6409
    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0x253d8c

    add-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4957
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4959
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->initInternal()V

    const/4 p1, 0x1

    .line 4961
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    const/4 v0, 0x0

    .line 4962
    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 4963
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    const/4 p1, 0x2

    .line 4964
    iput p1, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    return-void
.end method

.method private recalculateStamp()V
    .locals 9

    const/4 v0, 0x1

    .line 1647
    iput v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1649
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1650
    sget v3, Lcom/ibm/icu/util/Calendar;->STAMP_MAX:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1653
    :goto_1
    iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 1654
    aget v7, v6, v5

    iget v8, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    if-le v7, v8, :cond_0

    aget v7, v6, v5

    if-ge v7, v3, :cond_0

    .line 1655
    aget v3, v6, v5

    move v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-ltz v4, :cond_2

    .line 1661
    iget v3, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    aput v3, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1666
    :cond_2
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    return-void
.end method

.method private setCalendarLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 4

    .line 1615
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1617
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1619
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1622
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_"

    if-lez v2, :cond_1

    .line 1623
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1627
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1628
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "calendar"

    .line 1631
    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "@calendar="

    .line 1633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_3
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1639
    :cond_4
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/util/Calendar;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private setWeekData(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "001"

    .line 4913
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/Calendar;->WEEK_DATA_CACHE:Lcom/ibm/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p1, p1}, Lcom/ibm/icu/util/Calendar$WeekDataCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Calendar$WeekData;

    .line 4914
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->setWeekData(Lcom/ibm/icu/util/Calendar$WeekData;)Lcom/ibm/icu/util/Calendar;

    return-void
.end method

.method private updateTime()V
    .locals 2

    .line 4923
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeTime()V

    .line 4927
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    :cond_1
    const/4 v0, 0x1

    .line 4928
    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    .line 4929
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4940
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 4942
    :try_start_0
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4948
    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    :cond_0
    int-to-long v0, p2

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3294
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar.add("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    const-wide/16 p1, 0x3e8

    goto :goto_0

    :pswitch_2
    const-wide/32 p1, 0xea60

    goto :goto_0

    :pswitch_3
    const-wide/32 p1, 0x36ee80

    :goto_0
    mul-long v0, v0, p1

    :pswitch_4
    const/4 p1, 0x0

    goto :goto_3

    :pswitch_5
    const-wide/32 p1, 0x2932e00

    goto :goto_1

    :pswitch_6
    mul-long v0, v0, v2

    goto :goto_2

    :pswitch_7
    const-wide/32 p1, 0x240c8400

    :goto_1
    mul-long v0, v0, p1

    :goto_2
    const/4 p1, 0x1

    :goto_3
    const/16 p2, 0xf

    const/16 v6, 0x10

    const/16 v7, 0x15

    if-eqz p1, :cond_1

    .line 3305
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 3306
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v8

    move v11, v8

    move v8, v5

    move v5, v11

    goto :goto_4

    :cond_1
    const/4 v8, 0x0

    .line 3309
    :goto_4
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    add-long/2addr v9, v0

    invoke-virtual {p0, v9, v10}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    if-eqz p1, :cond_8

    .line 3312
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, v5, :cond_8

    .line 3317
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v0

    .line 3318
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v6, p2

    if-eq v6, v8, :cond_8

    sub-int/2addr v8, v6

    int-to-long v8, v8

    .line 3324
    rem-long/2addr v8, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v8, v2

    if-eqz p2, :cond_2

    add-long p1, v0, v8

    .line 3326
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3327
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    :cond_2
    if-eq p1, v5, :cond_8

    .line 3332
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    goto :goto_5

    :cond_3
    cmp-long p1, v8, v2

    if-lez p1, :cond_4

    .line 3344
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v0

    .line 3345
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3347
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_5

    .line 3349
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not locate a time zone transition before "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    cmp-long p1, v8, v2

    if-lez p1, :cond_8

    .line 3335
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_5

    :cond_7
    cmp-long p1, v8, v2

    if-gez p1, :cond_8

    .line 3340
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_8
    :goto_5
    return-void

    .line 3231
    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 3233
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gregorian"

    .line 3234
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "roc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "coptic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    neg-int p2, p2

    .line 3243
    :cond_a
    :pswitch_9
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    .line 3244
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 3245
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 3246
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    if-nez v0, :cond_b

    .line 3248
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->complete()V

    .line 3249
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    :cond_b
    return-void

    .line 3217
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3218
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 4

    .line 2437
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 4

    .line 2425
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2286
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2287
    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v0, v3, v1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2289
    :cond_0
    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public final clear(I)V
    .locals 2

    .line 2299
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_0

    .line 2300
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V

    .line 2302
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2303
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v1, v0, p1

    .line 2304
    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 4652
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 4654
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ibm/icu/util/Calendar;->fields:[I

    .line 4655
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    .line 4656
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4657
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    iget-object v2, v0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4659
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeZone;

    iput-object v1, v0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4664
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public compareTo(Lcom/ibm/icu/util/Calendar;)I
    .locals 4

    .line 3396
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 645
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->compareTo(Lcom/ibm/icu/util/Calendar;)I

    move-result p1

    return p1
.end method

.method protected complete()V
    .locals 1

    .line 2323
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V

    .line 2324
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    .line 2325
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V

    const/4 v0, 0x1

    .line 2326
    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    .line 2327
    iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    :cond_1
    return-void
.end method

.method protected computeFields()V
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4983
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    iget-wide v2, p0, Lcom/ibm/icu/util/Calendar;->time:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 4984
    iget-wide v1, p0, Lcom/ibm/icu/util/Calendar;->time:J

    aget v3, v0, v4

    int-to-long v5, v3

    add-long/2addr v1, v5

    const/4 v3, 0x1

    aget v5, v0, v3

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 4987
    iget v5, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I

    const/4 v6, 0x0

    .line 4988
    :goto_0
    iget-object v7, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_0

    .line 4990
    iget-object v7, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v3, v7, v6

    goto :goto_1

    .line 4992
    :cond_0
    iget-object v7, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v4, v7, v6

    :goto_1
    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0x5265c00

    .line 5006
    invoke-static {v1, v2, v5, v6}, Lcom/ibm/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide v7

    .line 5008
    iget-object v9, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    long-to-int v10, v7

    const v11, 0x253d8c    # 3.419992E-39f

    add-int/2addr v10, v11

    const/16 v11, 0x14

    aput v10, v9, v11

    .line 5010
    aget v9, v9, v11

    invoke-direct {p0, v9}, Lcom/ibm/icu/util/Calendar;->computeGregorianAndDOWFields(I)V

    .line 5016
    iget-object v9, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v9, v9, v11

    invoke-virtual {p0, v9}, Lcom/ibm/icu/util/Calendar;->handleComputeFields(I)V

    .line 5020
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->computeWeekFields()V

    mul-long v7, v7, v5

    sub-long/2addr v1, v7

    long-to-int v2, v1

    .line 5026
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    const/16 v5, 0x15

    aput v2, v1, v5

    const/16 v5, 0xe

    .line 5027
    rem-int/lit16 v6, v2, 0x3e8

    aput v6, v1, v5

    .line 5028
    div-int/lit16 v2, v2, 0x3e8

    const/16 v5, 0xd

    .line 5029
    rem-int/lit8 v6, v2, 0x3c

    aput v6, v1, v5

    .line 5030
    div-int/lit8 v2, v2, 0x3c

    .line 5031
    rem-int/lit8 v5, v2, 0x3c

    const/16 v6, 0xc

    aput v5, v1, v6

    .line 5032
    div-int/lit8 v2, v2, 0x3c

    const/16 v5, 0xb

    .line 5033
    aput v2, v1, v5

    const/16 v5, 0x9

    .line 5034
    div-int/lit8 v7, v2, 0xc

    aput v7, v1, v5

    const/16 v5, 0xa

    .line 5035
    rem-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0xf

    aget v4, v0, v4

    .line 5036
    aput v4, v1, v2

    const/16 v2, 0x10

    aget v0, v0, v3

    .line 5037
    aput v0, v1, v2

    return-void
.end method

.method protected final computeGregorianFields(I)V
    .locals 8

    const v0, 0x1a4452

    sub-int/2addr p1, v0

    int-to-long v0, p1

    const/4 p1, 0x1

    new-array v2, p1, [I

    const v3, 0x23ab1

    .line 5082
    invoke-static {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(JI[I)I

    move-result v0

    const/4 v1, 0x0

    aget v3, v2, v1

    const v4, 0x8eac

    .line 5083
    invoke-static {v3, v4, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result v3

    aget v4, v2, v1

    const/16 v5, 0x5b5

    .line 5084
    invoke-static {v4, v5, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result v4

    aget v5, v2, v1

    const/16 v6, 0x16d

    .line 5085
    invoke-static {v5, v6, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result v5

    mul-int/lit16 v0, v0, 0x190

    mul-int/lit8 v7, v3, 0x64

    add-int/2addr v0, v7

    const/4 v7, 0x4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    aget v2, v2, v1

    if-eq v3, v7, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v6, v2

    :cond_1
    :goto_0
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_3

    .line 5094
    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_2

    rem-int/lit16 v2, v0, 0x190

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    const/16 v3, 0x3c

    goto :goto_2

    :cond_4
    const/16 v3, 0x3b

    :goto_2
    const/4 v4, 0x2

    if-lt v6, v3, :cond_6

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x2

    :cond_6
    :goto_3
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x6

    .line 5100
    div-int/lit16 v1, v1, 0x16f

    .line 5101
    sget-object v3, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v3, v3, v1

    if-eqz v2, :cond_7

    const/4 v4, 0x3

    :cond_7
    aget v2, v3, v4

    sub-int v2, v6, v2

    add-int/2addr v2, p1

    .line 5104
    iput v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianYear:I

    .line 5105
    iput v1, p0, Lcom/ibm/icu/util/Calendar;->gregorianMonth:I

    .line 5106
    iput v2, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfMonth:I

    add-int/2addr v6, p1

    .line 5107
    iput v6, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfYear:I

    return-void
.end method

.method protected computeGregorianMonthStart(II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/16 v2, 0xb

    if-le p2, v2, :cond_1

    :cond_0
    new-array v2, v1, [I

    const/16 v3, 0xc

    .line 6097
    invoke-static {p2, v3, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    aget p2, v2, v0

    .line 6101
    :cond_1
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_3

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_2

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    sub-int/2addr p1, v1

    mul-int/lit16 v2, p1, 0x16d

    const/4 v3, 0x4

    .line 6106
    invoke-static {p1, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x64

    invoke-static {p1, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x190

    .line 6107
    invoke-static {p1, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I

    move-result p1

    add-int/2addr v2, p1

    const p1, 0x1a4452

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    if-eqz p2, :cond_5

    .line 6112
    sget-object p1, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object p1, p1, p2

    if-eqz v0, :cond_4

    const/4 p2, 0x3

    goto :goto_0

    :cond_4
    const/4 p2, 0x2

    :goto_0
    aget p1, p1, p2

    add-int/2addr v2, p1

    :cond_5
    return v2
.end method

.method protected computeJulianDay()I
    .locals 4

    .line 5834
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5835
    invoke-virtual {p0, v2, v0, v2}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    const/16 v2, 0x11

    const/16 v3, 0x13

    .line 5836
    invoke-virtual {p0, v2, v3, v0}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    .line 5837
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_0

    .line 5838
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    return v0

    .line 5842
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFieldResolutionTable()[[[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->resolveFields([[[I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x5

    .line 5847
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    return v0
.end method

.method protected computeMillisInDay()I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5637
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/16 v1, 0xb

    aget v2, v0, v1

    const/16 v3, 0xa

    .line 5638
    aget v4, v0, v3

    const/16 v5, 0x9

    aget v0, v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v4, 0xc

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    .line 5646
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v6, v0

    goto :goto_1

    .line 5650
    :cond_1
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, v6

    .line 5651
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int v6, v0, v1

    :cond_2
    :goto_1
    mul-int/lit8 v6, v6, 0x3c

    .line 5658
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x3c

    const/16 v0, 0xd

    .line 5660
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v6, v0

    mul-int/lit16 v6, v6, 0x3e8

    const/16 v0, 0xe

    .line 5662
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v6, v0

    return v6
.end method

.method protected computeMillisInDayLong()J
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5683
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/16 v1, 0xb

    aget v2, v0, v1

    const/16 v3, 0xa

    .line 5684
    aget v4, v0, v3

    const/16 v5, 0x9

    aget v0, v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v4, 0xc

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    .line 5692
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    goto :goto_1

    .line 5696
    :cond_1
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 5697
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long v6, v0, v2

    :cond_2
    :goto_1
    const-wide/16 v0, 0x3c

    mul-long v6, v6, v0

    .line 5704
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v6, v2

    mul-long v6, v6, v0

    const/16 v0, 0xd

    .line 5706
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    const-wide/16 v0, 0x3e8

    mul-long v6, v6, v0

    const/16 v0, 0xe

    .line 5708
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    return-wide v6
.end method

.method protected computeTime()V
    .locals 9

    .line 5407
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5408
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->validateFields()V

    .line 5412
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeJulianDay()I

    move-result v0

    .line 5414
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->julianDayToMillis(I)J

    move-result-wide v0

    .line 5423
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1

    const/16 v2, 0x9

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 5424
    invoke-virtual {p0, v2, v5, v6}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I

    move-result v2

    iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v5, v5, v3

    if-gt v2, v5, :cond_1

    .line 5425
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    .line 5427
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    .line 5428
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x224

    if-le v2, v3, :cond_2

    .line 5435
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeMillisInDayLong()J

    move-result-wide v2

    goto :goto_1

    .line 5437
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeMillisInDay()I

    move-result v2

    :goto_0
    int-to-long v2, v2

    .line 5441
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/16 v6, 0xf

    aget v7, v5, v6

    const/16 v8, 0x10

    if-ge v7, v4, :cond_9

    aget v5, v5, v8

    if-lt v5, v4, :cond_3

    goto :goto_3

    .line 5476
    :cond_3
    iget-boolean v5, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne v5, v4, :cond_4

    goto :goto_2

    :cond_4
    add-long v4, v0, v2

    .line 5505
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->computeZoneOffset(JJ)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/ibm/icu/util/Calendar;->time:J

    goto :goto_4

    .line 5480
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->computeZoneOffset(JJ)I

    move-result v4

    add-long/2addr v0, v2

    int-to-long v2, v4

    sub-long/2addr v0, v2

    .line 5483
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v2, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    if-eq v4, v2, :cond_8

    .line 5488
    iget-boolean v2, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    if-eqz v2, :cond_7

    .line 5496
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5500
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    goto :goto_4

    .line 5498
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not locate a time zone transition before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5489
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified wall time does not exist due to time zone offset transition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5502
    :cond_8
    iput-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    goto :goto_4

    :cond_9
    :goto_3
    add-long/2addr v0, v2

    .line 5443
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    :goto_4
    return-void
.end method

.method protected computeZoneOffset(JI)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    int-to-long v1, p3

    add-long/2addr p1, v1

    .line 5726
    iget-object p3, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    instance-of v1, p3, Lcom/ibm/icu/util/BasicTimeZone;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    .line 5727
    iget p3, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne p3, v8, :cond_0

    sget-object p3, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    :goto_0
    move-object v4, p3

    .line 5728
    iget p3, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    if-ne p3, v8, :cond_1

    sget-object p3, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    :goto_1
    move-object v5, p3

    .line 5729
    iget-object p3, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    move-object v1, p3

    check-cast v1, Lcom/ibm/icu/util/BasicTimeZone;

    move-wide v2, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V

    goto :goto_3

    .line 5732
    :cond_2
    invoke-virtual {p3, p1, p2, v8, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5735
    iget p3, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    if-ne p3, v8, :cond_3

    aget p3, v0, v7

    aget v1, v0, v8

    add-int/2addr p3, v1

    int-to-long v1, p3

    sub-long v1, p1, v1

    .line 5742
    iget-object p3, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    const-wide/32 v3, 0x1499700

    sub-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result p3

    aget v1, v0, v7

    aget v2, v0, v8

    add-int/2addr v1, v2

    sub-int/2addr v1, p3

    if-gez v1, :cond_3

    .line 5751
    iget-object p3, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {p3, v1, v2, v8, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_4

    .line 5754
    iget p3, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne p3, v8, :cond_4

    aget p3, v0, v7

    aget v1, v0, v8

    add-int/2addr p3, v1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    .line 5761
    iget-object p3, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {p3, p1, p2, v7, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    :cond_4
    :goto_3
    aget p1, v0, v7

    aget p2, v0, v8

    add-int/2addr p1, p2

    return p1
.end method

.method protected computeZoneOffset(JJ)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-long v2, p1, p3

    .line 5779
    iget-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    instance-of p2, p1, Lcom/ibm/icu/util/BasicTimeZone;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    .line 5780
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne p1, p4, :cond_0

    sget-object p1, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    :goto_0
    move-object v4, p1

    .line 5781
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    if-ne p1, p4, :cond_1

    sget-object p1, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    :goto_1
    move-object v5, p1

    .line 5782
    iget-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    move-object v1, p1

    check-cast v1, Lcom/ibm/icu/util/BasicTimeZone;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V

    goto :goto_3

    .line 5785
    :cond_2
    invoke-virtual {p1, v2, v3, p4, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5788
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    if-ne p1, p4, :cond_3

    aget p1, v0, p3

    aget p2, v0, p4

    add-int/2addr p1, p2

    int-to-long p1, p1

    sub-long p1, v2, p1

    .line 5795
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    const-wide/32 v4, 0x1499700

    sub-long/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    aget p2, v0, p3

    aget v1, v0, p4

    add-int/2addr p2, v1

    sub-int/2addr p2, p1

    if-gez p2, :cond_3

    .line 5804
    iget-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    int-to-long v4, p2

    add-long/2addr v4, v2

    invoke-virtual {p1, v4, v5, p4, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    .line 5807
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    if-ne p1, p4, :cond_4

    aget p1, v0, p3

    aget p2, v0, p4

    add-int/2addr p1, p2

    int-to-long p1, p1

    sub-long/2addr v2, p1

    .line 5814
    iget-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {p1, v2, v3, p3, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    :cond_4
    :goto_3
    aget p1, v0, p3

    aget p2, v0, p4

    add-int/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 2349
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 2353
    :cond_2
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    .line 2355
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2356
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public fieldDifference(Ljava/util/Date;I)I
    .locals 11

    .line 4011
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 4012
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_7

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4023
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4024
    invoke-virtual {p0, p2, v4}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 4025
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_0

    return v4

    :cond_0
    cmp-long v8, v6, v2

    if-lez v8, :cond_4

    :goto_1
    sub-int v6, v4, v5

    if-le v6, p1, :cond_3

    .line 4043
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 4044
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4045
    invoke-virtual {p0, p2, v6}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 4046
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    return v6

    :cond_1
    cmp-long v9, v7, v2

    if-lez v9, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    move v4, v5

    goto/16 :goto_5

    :cond_4
    const v5, 0x7fffffff

    if-ge v4, v5, :cond_6

    shl-int/lit8 v6, v4, 0x1

    if-gez v6, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_2
    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_0

    .line 4038
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_7
    cmp-long v5, v0, v2

    if-lez v5, :cond_d

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 4067
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4068
    invoke-virtual {p0, p2, v4}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 4069
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_8

    return v4

    :cond_8
    cmp-long v8, v6, v2

    if-gez v8, :cond_b

    move v10, v5

    move v5, v4

    move v4, v10

    :goto_4
    sub-int v6, v4, v5

    if-le v6, p1, :cond_d

    sub-int v6, v5, v4

    .line 4085
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    .line 4086
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4087
    invoke-virtual {p0, p2, v6}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 4088
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_9

    return v6

    :cond_9
    cmp-long v9, v7, v2

    if-gez v9, :cond_a

    move v5, v6

    goto :goto_4

    :cond_a
    move v4, v6

    goto :goto_4

    :cond_b
    shl-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_c

    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_3

    .line 4079
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 4099
    :cond_d
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4100
    invoke-virtual {p0, p2, v4}, Lcom/ibm/icu/util/Calendar;->add(II)V

    return v4
.end method

.method protected fieldName(I)Ljava/lang/String;
    .locals 2

    .line 6396
    :try_start_0
    sget-object v0, Lcom/ibm/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6398
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)I
    .locals 1

    .line 2019
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->complete()V

    .line 2020
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget p1, v0, p1

    return p1
.end method

.method public getActualMaximum(I)I
    .locals 4

    if-eqz p1, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 2504
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualHelper(III)I

    move-result p1

    goto :goto_0

    .line 2478
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 2479
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 2480
    invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2481
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result p1

    goto :goto_0

    .line 2469
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 2470
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 2471
    invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2472
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result p1

    goto :goto_0

    .line 2499
    :cond_2
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result p1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 2554
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualHelper(III)I

    move-result p1

    goto :goto_0

    .line 2549
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result p1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDateTimeFormat(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 3421
    invoke-static {p0, p3, p1, p2}, Lcom/ibm/icu/util/Calendar;->formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    return-object p1
.end method

.method public getDateTimeFormat(IILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 3411
    invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Lcom/ibm/icu/util/Calendar;->formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    return-object p1
.end method

.method public getDayOfWeekType(I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/4 v1, 0x7

    if-gt p1, v1, :cond_a

    .line 4539
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I

    iget v2, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    if-eq p1, v1, :cond_0

    return v4

    .line 4542
    :cond_0
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_2
    if-ge v1, v2, :cond_4

    if-lt p1, v1, :cond_3

    if-le p1, v2, :cond_5

    :cond_3
    return v4

    :cond_4
    if-le p1, v2, :cond_5

    if-ge p1, v1, :cond_5

    return v4

    :cond_5
    if-ne p1, v1, :cond_7

    .line 4554
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_7
    if-ne p1, v2, :cond_9

    .line 4557
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I

    const v1, 0x5265c00

    if-lt p1, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x3

    :cond_9
    :goto_2
    return v0

    .line 4537
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid day of week"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 3372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 3364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getFieldCount()I
    .locals 1

    .line 6218
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v0, v0

    return v0
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    .line 5859
    sget-object v0, Lcom/ibm/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 4281
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public final getGreatestMinimum(I)I
    .locals 1

    const/4 v0, 0x1

    .line 4489
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result p1

    return p1
.end method

.method protected final getGregorianDayOfMonth()I
    .locals 1

    .line 6208
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfMonth:I

    return v0
.end method

.method protected final getGregorianDayOfYear()I
    .locals 1

    .line 6198
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfYear:I

    return v0
.end method

.method protected final getGregorianMonth()I
    .locals 1

    .line 6188
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianMonth:I

    return v0
.end method

.method protected final getGregorianYear()I
    .locals 1

    .line 6178
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianYear:I

    return v0
.end method

.method public final getLeastMaximum(I)I
    .locals 1

    const/4 v0, 0x2

    .line 4500
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result p1

    return p1
.end method

.method protected getLimit(II)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 4420
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->handleGetLimit(II)I

    move-result p1

    return p1

    .line 4398
    :pswitch_1
    sget-object v0, Lcom/ibm/icu/util/Calendar;->LIMITS:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1

    :pswitch_2
    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 4404
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    goto :goto_0

    .line 4408
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result p1

    const/4 v0, 0x5

    .line 4409
    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/Calendar;->handleGetLimit(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    rsub-int/lit8 p1, p1, 0x7

    add-int/2addr v0, p1

    .line 4411
    div-int/lit8 p1, v0, 0x7

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x6

    rsub-int/lit8 p1, p1, 0x7

    add-int/2addr v0, p1

    .line 4413
    div-int/lit8 p1, v0, 0x7

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 6501
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/util/Calendar;->actualLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/util/Calendar;->validLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1
.end method

.method public final getMaximum(I)I
    .locals 1

    const/4 v0, 0x3

    .line 4478
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result p1

    return p1
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .line 4320
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public final getMinimum(I)I
    .locals 1

    const/4 v0, 0x0

    .line 4467
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I

    move-result p1

    return p1
.end method

.method public final getRelatedYear()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    .line 2162
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 2163
    sget-object v1, Lcom/ibm/icu/impl/CalType;->GREGORIAN:Lcom/ibm/icu/impl/CalType;

    .line 2164
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2165
    invoke-static {}, Lcom/ibm/icu/impl/CalType;->values()[Lcom/ibm/icu/impl/CalType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 2166
    invoke-virtual {v6}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2171
    :cond_1
    :goto_1
    sget-object v2, Lcom/ibm/icu/util/Calendar$1;->$SwitchMap$com$ibm$icu$impl$CalType:[I

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CalType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    add-int/lit16 v0, v0, 0x26e

    goto :goto_2

    .line 2193
    :pswitch_2
    invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->gregoYearFromIslamicStart(I)I

    move-result v0

    goto :goto_2

    :pswitch_3
    add-int/lit8 v0, v0, 0x4f

    goto :goto_2

    :pswitch_4
    add-int/lit16 v0, v0, -0xeb0

    goto :goto_2

    :pswitch_5
    add-int/lit16 v0, v0, -0x1574

    goto :goto_2

    :pswitch_6
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :pswitch_7
    add-int/lit16 v0, v0, -0x91d

    goto :goto_2

    :pswitch_8
    add-int/lit16 v0, v0, 0x11c

    goto :goto_2

    :pswitch_9
    add-int/lit16 v0, v0, -0xa4d

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRepeatedWallTimeOption()I
    .locals 1

    .line 4200
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    return v0
.end method

.method public getSkippedWallTimeOption()I
    .locals 1

    .line 4252
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    return v0
.end method

.method protected final getStamp(I)I
    .locals 1

    .line 5322
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getTime()Ljava/util/Date;
    .locals 3

    .line 1953
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 1975
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V

    .line 1976
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .line 4131
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public getWeekData()Lcom/ibm/icu/util/Calendar$WeekData;
    .locals 8

    .line 4842
    new-instance v7, Lcom/ibm/icu/util/Calendar$WeekData;

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    iget v2, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    iget v3, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I

    iget v4, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I

    iget v5, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I

    iget v6, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v7
.end method

.method public getWeekendTransition(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4581
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I

    if-ne p1, v0, :cond_0

    .line 4582
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I

    return p1

    .line 4583
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I

    if-ne p1, v0, :cond_1

    .line 4584
    iget p1, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I

    return p1

    .line 4586
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not weekend transition day"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected handleComputeFields(I)V
    .locals 3

    .line 6151
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianMonth()I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6152
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianDayOfMonth()I

    move-result p1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6153
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianDayOfYear()I

    move-result p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6154
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianYear()I

    move-result p1

    const/16 v0, 0x13

    .line 6155
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    rsub-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 6161
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    .line 6162
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeJulianDay(I)I
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    const/16 v5, 0x11

    .line 5970
    invoke-virtual {p0, v5, v3}, Lcom/ibm/icu/util/Calendar;->newerField(II)I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 5975
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v5

    goto :goto_2

    .line 5977
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v5

    :goto_2
    const/16 v6, 0x13

    .line 5980
    invoke-virtual {p0, v6, v5}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    .line 5982
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->getDefaultMonthInYear(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 5986
    :goto_3
    invoke-virtual {p0, v5, v7, v4}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v4

    if-ne p1, v2, :cond_5

    .line 5989
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5990
    invoke-virtual {p0, v5, v7}, Lcom/ibm/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result p1

    :goto_4
    add-int/2addr v4, p1

    return v4

    .line 5992
    :cond_4
    invoke-virtual {p0, v5, v7}, Lcom/ibm/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result p1

    goto :goto_4

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 5997
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result p1

    goto :goto_4

    .line 6000
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    add-int/lit8 v7, v4, 0x1

    .line 6014
    invoke-static {v7}, Lcom/ibm/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v7

    sub-int/2addr v7, v2

    if-gez v7, :cond_7

    add-int/lit8 v7, v7, 0x7

    .line 6022
    :cond_7
    sget-object v8, Lcom/ibm/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->resolveFields([[[I)I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_9

    const/16 v2, 0x12

    if-eq v8, v2, :cond_8

    const/4 v2, 0x0

    goto :goto_5

    .line 6027
    :cond_8
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    sub-int/2addr v2, v3

    goto :goto_5

    .line 6024
    :cond_9
    invoke-virtual {p0, v9}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v8

    sub-int v2, v8, v2

    .line 6030
    :goto_5
    rem-int/2addr v2, v9

    if-gez v2, :cond_a

    add-int/lit8 v2, v2, 0x7

    :cond_a
    rsub-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v2

    if-ne p1, v0, :cond_d

    if-ge v8, v3, :cond_b

    add-int/lit8 v8, v8, 0x7

    .line 6049
    :cond_b
    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result p1

    if-ltz p1, :cond_c

    goto :goto_6

    .line 6060
    :cond_c
    invoke-virtual {p0, v6, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I

    move-result v0

    .line 6061
    invoke-virtual {p0, v5, v0}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v0

    sub-int/2addr v0, v8

    .line 6062
    div-int/2addr v0, v9

    add-int/2addr v0, p1

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v8, v0

    goto :goto_7

    :cond_d
    rsub-int/lit8 v0, v7, 0x7

    .line 6068
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ge v0, v1, :cond_e

    add-int/lit8 v8, v8, 0x7

    .line 6073
    :cond_e
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result p1

    :goto_6
    sub-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x7

    add-int/2addr v8, p1

    :goto_7
    add-int/2addr v4, v8

    return v4
.end method

.method protected abstract handleComputeMonthStart(IIZ)I
.end method

.method protected handleCreateFields()[I
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [I

    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 3473
    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .line 3488
    new-instance v0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;-><init>(Lcom/ibm/icu/util/Calendar$1;)V

    .line 3489
    invoke-static {v0, p1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$102(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3490
    invoke-static {v0, p2}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$202(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3491
    new-instance p1, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {p1, p0, p3}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)V

    invoke-static {v0, p1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$302(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/text/DateFormatSymbols;)Lcom/ibm/icu/text/DateFormatSymbols;

    .line 3492
    invoke-static {v0, p3}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$402(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    .line 3493
    invoke-static {v0, p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$502(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/util/Calendar;

    .line 3495
    invoke-static {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getInstance(Lcom/ibm/icu/util/Calendar$FormatConfiguration;)Lcom/ibm/icu/text/SimpleDateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 3458
    invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 3436
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected abstract handleGetExtendedYear()I
.end method

.method protected abstract handleGetLimit(II)I
.end method

.method protected handleGetMonthLength(II)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    .line 5899
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 5900
    invoke-virtual {p0, p1, p2, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method protected handleGetYearLength(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    .line 5912
    invoke-virtual {p0, v0, v1, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 5913
    invoke-virtual {p0, p1, v1, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 2391
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    .line 2396
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZone;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    or-int/2addr v0, v1

    return v0
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected final internalGet(I)I
    .locals 1

    .line 2032
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final internalGet(II)I
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    iget-object p2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget p2, p2, p1

    :cond_0
    return p2
.end method

.method protected final internalGetTimeInMillis()J
    .locals 2

    .line 6441
    iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method protected final internalSet(II)V
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 6232
    iget v2, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 6236
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aput p2, v1, p1

    .line 6237
    iget-object p2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput v0, p2, p1

    return-void

    .line 6233
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subclass cannot set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6234
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z
    .locals 2

    .line 2370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2371
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2372
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2373
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2374
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLenient()Z
    .locals 1

    .line 4155
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    return v0
.end method

.method public final isSet(I)Z
    .locals 1

    .line 2314
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget p1, v0, p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isWeekend()Z
    .locals 8

    const/4 v0, 0x7

    .line 4617
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v0

    .line 4618
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->getDayOfWeekType(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/16 v4, 0xe

    .line 4630
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v5

    const/16 v6, 0xc

    .line 4631
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v6

    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    .line 4632
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->getWeekendTransition(I)I

    move-result v0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    if-lt v4, v0, :cond_1

    goto :goto_0

    :cond_0
    if-ge v4, v0, :cond_1

    :goto_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method public isWeekend(Ljava/util/Date;)Z
    .locals 0

    .line 4602
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4603
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isWeekend()Z

    move-result p1

    return p1
.end method

.method protected newerField(II)I
    .locals 2

    .line 5331
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v0, p2

    aget v0, v0, p1

    if-le v1, v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method protected newestStamp(III)I
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 5310
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v0, p1

    if-le v1, p3, :cond_0

    .line 5311
    aget p3, v0, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method protected pinField(I)V
    .locals 4

    .line 3843
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 3844
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    .line 3846
    iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v3, v2, p1

    if-le v3, v0, :cond_0

    .line 3847
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 3848
    :cond_0
    aget v0, v2, p1

    if-ge v0, v1, :cond_1

    .line 3849
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected prepareGetActual(IZ)V
    .locals 5

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 2582
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    const/4 v3, 0x7

    if-eq p1, v1, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    const/16 p2, 0x11

    if-eq p1, p2, :cond_0

    const/16 p2, 0x13

    if-eq p1, p2, :cond_5

    goto :goto_0

    .line 2591
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2601
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2602
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v3, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2612
    :cond_2
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    if-eqz p2, :cond_3

    add-int/lit8 v1, v1, 0x6

    .line 2614
    rem-int/2addr v1, v3

    if-ge v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x7

    .line 2619
    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2595
    :cond_4
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x6

    .line 2587
    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2625
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void
.end method

.method protected resolveFields([[[I)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 5264
    :goto_0
    array-length v3, p1

    const/16 v4, 0x20

    if-ge v2, v3, :cond_7

    if-gez v1, :cond_7

    .line 5265
    aget-object v3, p1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5268
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_6

    .line 5269
    aget-object v7, v3, v5

    .line 5272
    aget v8, v7, v0

    if-lt v8, v4, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    :goto_3
    array-length v10, v7

    if-ge v8, v10, :cond_2

    .line 5273
    iget-object v10, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v11, v7, v8

    aget v10, v10, v11

    if-nez v10, :cond_1

    goto :goto_4

    .line 5278
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    if-le v9, v6, :cond_5

    .line 5283
    aget v7, v7, v0

    if-lt v7, v4, :cond_3

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 5287
    iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    const/4 v10, 0x4

    aget v10, v8, v10

    aget v8, v8, v7

    if-ge v10, v8, :cond_4

    :cond_3
    move v1, v7

    :cond_4
    if-ne v1, v7, :cond_5

    move v6, v9

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-lt v1, v4, :cond_8

    and-int/lit8 v1, v1, 0x1f

    :cond_8
    return v1
.end method

.method public roll(II)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    .line 2812
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->complete()V

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x240c8400

    const-wide/32 v4, 0x5265c00

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x7

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3126
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar.roll("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3122
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void

    .line 2926
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2927
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    .line 2928
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    return-void

    .line 2852
    :pswitch_3
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2853
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    .line 2854
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result p1

    add-int/2addr p2, v2

    add-int/2addr p1, v10

    .line 2855
    rem-int/2addr p2, p1

    if-gez p2, :cond_1

    add-int/2addr p2, p1

    :cond_1
    const-wide/32 v3, 0x36ee80

    int-to-long p1, p2

    int-to-long v5, v2

    sub-long/2addr p1, v5

    mul-long p1, p1, v3

    add-long/2addr v0, p1

    .line 2859
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_4
    int-to-long p1, p2

    mul-long p1, p1, v2

    .line 3107
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v4

    sub-int/2addr v4, v10

    div-int/2addr v4, v9

    .line 3110
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 3111
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v9

    .line 3113
    iget-wide v6, p0, Lcom/ibm/icu/util/Calendar;->time:J

    int-to-long v8, v4

    mul-long v8, v8, v2

    sub-long v8, v6, v8

    add-int/2addr v4, v5

    add-int/2addr v4, v10

    int-to-long v4, v4

    mul-long v4, v4, v2

    add-long/2addr v6, p1

    sub-long/2addr v6, v8

    .line 3116
    rem-long/2addr v6, v4

    iput-wide v6, p0, Lcom/ibm/icu/util/Calendar;->time:J

    cmp-long p1, v6, v0

    if-gez p1, :cond_2

    add-long/2addr v6, v4

    .line 3117
    iput-wide v6, p0, Lcom/ibm/icu/util/Calendar;->time:J

    .line 3118
    :cond_2
    iget-wide p1, p0, Lcom/ibm/icu/util/Calendar;->time:J

    add-long/2addr p1, v8

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_5
    int-to-long v6, p2

    mul-long v6, v6, v4

    .line 3090
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result p2

    if-ne p1, v9, :cond_3

    .line 3091
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v10

    :cond_3
    sub-int/2addr p2, v10

    if-gez p2, :cond_4

    add-int/lit8 p2, p2, 0x7

    .line 3093
    :cond_4
    iget-wide v8, p0, Lcom/ibm/icu/util/Calendar;->time:J

    int-to-long p1, p2

    mul-long p1, p1, v4

    sub-long p1, v8, p1

    add-long/2addr v8, v6

    sub-long/2addr v8, p1

    .line 3094
    rem-long/2addr v8, v2

    iput-wide v8, p0, Lcom/ibm/icu/util/Calendar;->time:J

    cmp-long v4, v8, v0

    if-gez v4, :cond_5

    add-long/2addr v8, v2

    .line 3095
    iput-wide v8, p0, Lcom/ibm/icu/util/Calendar;->time:J

    .line 3096
    :cond_5
    iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_6
    int-to-long p1, p2

    mul-long p1, p1, v4

    .line 3074
    iget-wide v2, p0, Lcom/ibm/icu/util/Calendar;->time:J

    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v6

    sub-int/2addr v6, v10

    int-to-long v8, v6

    mul-long v8, v8, v4

    sub-long/2addr v2, v8

    .line 3075
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 3076
    iget-wide v7, p0, Lcom/ibm/icu/util/Calendar;->time:J

    add-long/2addr v7, p1

    sub-long/2addr v7, v2

    int-to-long p1, v6

    mul-long p1, p1, v4

    rem-long/2addr v7, p1

    iput-wide v7, p0, Lcom/ibm/icu/util/Calendar;->time:J

    cmp-long v4, v7, v0

    if-gez v4, :cond_6

    add-long/2addr v7, p1

    .line 3077
    iput-wide v7, p0, Lcom/ibm/icu/util/Calendar;->time:J

    .line 3078
    :cond_6
    iget-wide p1, p0, Lcom/ibm/icu/util/Calendar;->time:J

    add-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    .line 2962
    :pswitch_7
    invoke-virtual {p0, v9}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_7

    add-int/lit8 p1, p1, 0x7

    .line 2967
    :cond_7
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    sub-int v0, p1, v0

    add-int/2addr v0, v10

    rem-int/2addr v0, v9

    if-gez v0, :cond_8

    add-int/lit8 v0, v0, 0x7

    :cond_8
    rsub-int/lit8 v1, v0, 0x7

    .line 2975
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-ge v1, v2, :cond_9

    rsub-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_9
    rsub-int/lit8 v0, v0, 0x1

    .line 2982
    :goto_0
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 2983
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    sub-int v2, v1, v2

    add-int/2addr v2, p1

    rem-int/2addr v2, v9

    add-int/lit8 p1, v1, 0x7

    sub-int/2addr p1, v2

    sub-int/2addr p1, v0

    .line 2994
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    rem-int/2addr v2, p1

    if-gez v2, :cond_a

    add-int/2addr v2, p1

    :cond_a
    add-int/2addr v2, v0

    if-ge v2, v10, :cond_b

    goto :goto_1

    :cond_b
    move v10, v2

    :goto_1
    if-le v10, v1, :cond_c

    goto :goto_2

    :cond_c
    move v1, v10

    .line 3009
    :goto_2
    invoke-virtual {p0, v8, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void

    .line 3020
    :pswitch_8
    invoke-virtual {p0, v9}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_d

    add-int/lit8 p1, p1, 0x7

    .line 3025
    :cond_d
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    sub-int v0, p1, v0

    add-int/2addr v0, v10

    rem-int/2addr v0, v9

    if-gez v0, :cond_e

    add-int/lit8 v0, v0, 0x7

    :cond_e
    rsub-int/lit8 v1, v0, 0x7

    .line 3033
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-ge v1, v2, :cond_f

    rsub-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_f
    rsub-int/lit8 v0, v0, 0x1

    .line 3040
    :goto_3
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 3041
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    sub-int v2, v1, v2

    add-int/2addr v2, p1

    rem-int/2addr v2, v9

    add-int/lit8 p1, v1, 0x7

    sub-int/2addr p1, v2

    sub-int/2addr p1, v0

    .line 3052
    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    rem-int/2addr v2, p1

    if-gez v2, :cond_10

    add-int/2addr v2, p1

    :cond_10
    add-int/2addr v2, v0

    if-ge v2, v10, :cond_11

    goto :goto_4

    :cond_11
    move v10, v2

    :goto_4
    if-le v10, v1, :cond_12

    goto :goto_5

    :cond_12
    move v1, v10

    .line 3065
    :goto_5
    invoke-virtual {p0, v7, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 3066
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->clear(I)V

    return-void

    .line 2869
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result p1

    .line 2870
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr p1, v10

    rem-int/2addr v0, p1

    if-gez v0, :cond_13

    add-int/2addr v0, p1

    .line 2875
    :cond_13
    invoke-virtual {p0, v6, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2880
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    return-void

    :pswitch_a
    const/4 v0, 0x0

    .line 2891
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_15

    .line 2893
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gregorian"

    .line 2894
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "roc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "coptic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    neg-int p2, p2

    const/4 v0, 0x1

    .line 2899
    :cond_15
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v2, p2

    if-gtz v1, :cond_18

    if-lt v2, v10, :cond_16

    goto :goto_6

    :cond_16
    if-eqz v0, :cond_17

    goto :goto_7

    :cond_17
    move v10, v2

    goto :goto_7

    .line 2901
    :cond_18
    :goto_6
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result p2

    const v0, 0x8000

    if-ge p2, v0, :cond_1a

    if-ge v2, v10, :cond_19

    neg-int v0, v2

    .line 2905
    rem-int/2addr v0, p2

    sub-int v10, p2, v0

    goto :goto_7

    :cond_19
    if-le v2, p2, :cond_17

    add-int/lit8 v2, v2, -0x1

    .line 2907
    rem-int/2addr v2, p2

    add-int/2addr v10, v2

    goto :goto_7

    :cond_1a
    if-ge v2, v10, :cond_17

    .line 2919
    :goto_7
    invoke-virtual {p0, p1, v10}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 2920
    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    .line 2921
    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->pinField(I)V

    return-void

    .line 2826
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMinimum(I)I

    move-result v0

    .line 2827
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v10

    .line 2830
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    .line 2831
    rem-int/2addr v2, v1

    if-gez v2, :cond_1b

    add-int/2addr v2, v1

    :cond_1b
    add-int/2addr v2, v0

    .line 2837
    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method public final roll(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 2735
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->roll(II)V

    return-void
.end method

.method public final set(II)V
    .locals 2

    .line 2057
    iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 2062
    iget p2, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    sget v0, Lcom/ibm/icu/util/Calendar;->STAMP_MAX:I

    if-ne p2, v0, :cond_1

    .line 2063
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->recalculateStamp()V

    .line 2065
    :cond_1
    iget-object p2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    iget v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I

    aput v0, p2, p1

    const/4 p1, 0x0

    .line 2066
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public final set(III)V
    .locals 1

    const/4 v0, 0x1

    .line 2081
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 2082
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2083
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 2100
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 2101
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2102
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 2103
    invoke-virtual {p0, p1, p4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 2104
    invoke-virtual {p0, p1, p5}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 2123
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 2124
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2125
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 2126
    invoke-virtual {p0, p1, p4}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 2127
    invoke-virtual {p0, p1, p5}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 2128
    invoke-virtual {p0, p1, p6}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 4263
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 4267
    iput p1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    const/4 p1, 0x0

    .line 4268
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    goto :goto_0

    .line 4265
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid day of week"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setLenient(Z)V
    .locals 0

    .line 4146
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

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

    .line 6530
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 6531
    iput-object p2, p0, Lcom/ibm/icu/util/Calendar;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void

    .line 6525
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x7

    .line 4303
    :cond_1
    :goto_0
    iget v0, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    if-eq v0, p1, :cond_2

    .line 4304
    iput p1, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    const/4 p1, 0x0

    .line 4305
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    :cond_2
    return-void
.end method

.method public final setRelatedYear(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2237
    sget-object v0, Lcom/ibm/icu/impl/CalType;->GREGORIAN:Lcom/ibm/icu/impl/CalType;

    .line 2238
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2239
    invoke-static {}, Lcom/ibm/icu/impl/CalType;->values()[Lcom/ibm/icu/impl/CalType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 2240
    invoke-virtual {v5}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2245
    :cond_1
    :goto_1
    sget-object v1, Lcom/ibm/icu/util/Calendar$1;->$SwitchMap$com$ibm$icu$impl$CalType:[I

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CalType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    add-int/lit16 p1, p1, -0x26e

    goto :goto_2

    .line 2267
    :pswitch_2
    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->firstIslamicStartYearFromGrego(I)I

    move-result p1

    goto :goto_2

    :pswitch_3
    add-int/lit8 p1, p1, -0x4f

    goto :goto_2

    :pswitch_4
    add-int/lit16 p1, p1, 0xeb0

    goto :goto_2

    :pswitch_5
    add-int/lit16 p1, p1, 0x1574

    goto :goto_2

    :pswitch_6
    add-int/lit8 p1, p1, -0x8

    goto :goto_2

    :pswitch_7
    add-int/lit16 p1, p1, 0x91d

    goto :goto_2

    :pswitch_8
    add-int/lit16 p1, p1, -0x11c

    goto :goto_2

    :pswitch_9
    add-int/lit16 p1, p1, 0xa4d

    :goto_2
    const/16 v0, 0x13

    .line 2277
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRepeatedWallTimeOption(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal repeated wall time option - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4183
    :cond_1
    :goto_0
    iput p1, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    return-void
.end method

.method public setSkippedWallTimeOption(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal skipped wall time option - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4234
    :cond_1
    :goto_0
    iput p1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2

    .line 1966
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 5

    const-wide v0, -0x28ec76c40e65000L

    const-wide v2, 0x28d47dbbf19b000L

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 1989
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide p1, v2

    goto :goto_0

    .line 1992
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "millis value greater than upper bounds for a Calendar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    .line 1995
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v2

    if-eqz v2, :cond_2

    move-wide p1, v0

    goto :goto_0

    .line 1998
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "millis value less than lower bounds for a Calendar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2001
    :cond_3
    :goto_0
    iput-wide p1, p0, Lcom/ibm/icu/util/Calendar;->time:J

    const/4 p1, 0x0

    .line 2002
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    const/4 p2, 0x1

    .line 2003
    iput-boolean p2, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean p2, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    const/4 p2, 0x0

    .line 2005
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v0

    if-ge p2, v1, :cond_4

    .line 2006
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aput p1, v1, p2

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
    .locals 0

    .line 4111
    iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    const/4 p1, 0x0

    .line 4121
    iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    return-void
.end method

.method public setWeekData(Lcom/ibm/icu/util/Calendar$WeekData;)Lcom/ibm/icu/util/Calendar;
    .locals 1

    .line 4853
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 4854
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 4856
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I

    .line 4857
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I

    .line 4858
    iget v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I

    iput v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I

    .line 4859
    iget p1, p1, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iput p1, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 4679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4680
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[time="

    .line 4681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4682
    iget-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z

    const-string v2, "?"

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/ibm/icu/util/Calendar;->time:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",areFieldsSet="

    .line 4683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4684
    iget-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",areAllFieldsSet="

    .line 4685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4686
    iget-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",lenient="

    .line 4687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4688
    iget-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",zone="

    .line 4689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4690
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",firstDayOfWeek="

    .line 4691
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4692
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",minimalDaysInFirstWeek="

    .line 4693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4694
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",repeatedWallTime="

    .line 4695
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4696
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->repeatedWallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",skippedWallTime="

    .line 4697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4698
    iget v1, p0, Lcom/ibm/icu/util/Calendar;->skippedWallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4699
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    const/16 v3, 0x2c

    .line 4700
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4701
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x5d

    .line 4703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateField(I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 5379
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5373
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5376
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5374
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DAY_OF_WEEK_IN_MONTH cannot be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5369
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    .line 5370
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5365
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    const/4 v2, 0x2

    .line 5366
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/util/Calendar;->validateField(III)V

    :goto_0
    return-void
.end method

.method protected final validateField(III)V
    .locals 3

    .line 5393
    iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_0

    return-void

    .line 5395
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", valid range="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected validateFields()V
    .locals 3

    const/4 v0, 0x0

    .line 5346
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5347
    iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 5348
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->validateField(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final weekNumber(II)I
    .locals 0

    .line 3948
    invoke-virtual {p0, p1, p1, p2}, Lcom/ibm/icu/util/Calendar;->weekNumber(III)I

    move-result p1

    return p1
.end method

.method protected weekNumber(III)I
    .locals 1

    .line 3900
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    rem-int/lit8 p3, p3, 0x7

    if-gez p3, :cond_0

    add-int/lit8 p3, p3, 0x7

    :cond_0
    add-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x1

    .line 3906
    div-int/lit8 p1, p1, 0x7

    rsub-int/lit8 p2, p3, 0x7

    .line 3911
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result p3

    if-lt p2, p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method
