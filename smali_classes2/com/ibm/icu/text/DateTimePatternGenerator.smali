.class public Lcom/ibm/icu/text/DateTimePatternGenerator;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;,
        Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/DateTimePatternGenerator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final APPENDITEM_WIDTH:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

.field private static final APPENDITEM_WIDTH_INT:I

.field private static final CANONICAL_ITEMS:[Ljava/lang/String;

.field private static final CANONICAL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLDR_FIELD_APPEND:[Ljava/lang/String;

.field private static final CLDR_FIELD_NAME:[Ljava/lang/String;

.field private static final CLDR_FIELD_WIDTH:[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

.field private static final DATE_MASK:I = 0x3ff

.field public static final DAY:I = 0x7

.field public static final DAYPERIOD:I = 0xa

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x9

.field public static final DAY_OF_YEAR:I = 0x8

.field private static final DEBUG:Z = false

.field private static final DELTA:I = 0x10

.field private static DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateTimePatternGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:I = 0x0

.field private static final EXTRA_FIELD:I = 0x10000

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FRACTIONAL_MASK:I = 0x4000

.field public static final FRACTIONAL_SECOND:I = 0xe

.field public static final HOUR:I = 0xb

.field private static final LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

.field static final LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG:I = -0x104

.field public static final MATCH_ALL_FIELDS_LENGTH:I = 0xffff

.field public static final MATCH_HOUR_FIELD_LENGTH:I = 0x800

.field public static final MATCH_MINUTE_FIELD_LENGTH:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_NO_OPTIONS:I = 0x0

.field public static final MATCH_SECOND_FIELD_LENGTH:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:I = 0xc

.field private static final MISSING_FIELD:I = 0x1000

.field public static final MONTH:I = 0x3

.field private static final NARROW:I = -0x101

.field private static final NONE:I = 0x0

.field private static final NUMERIC:I = 0x100

.field public static final QUARTER:I = 0x2

.field public static final SECOND:I = 0xd

.field private static final SECOND_AND_FRACTIONAL_MASK:I = 0x6000

.field private static final SHORT:I = -0x103

.field private static final SHORTER:I = -0x102

.field private static final TIME_MASK:I = 0xfc00

.field public static final TYPE_LIMIT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKDAY:I = 0x6

.field public static final WEEK_OF_MONTH:I = 0x5

.field public static final WEEK_OF_YEAR:I = 0x4

.field public static final YEAR:I = 0x1

.field public static final ZONE:I = 0xf

.field private static final types:[[I


# instance fields
.field private transient _distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

.field private allowedHourFormats:[Ljava/lang/String;

.field private appendItemFormats:[Ljava/lang/String;

.field private basePattern_pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field

.field private cldrAvailableFormatKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field private dateTimeFormat:Ljava/lang/String;

.field private decimal:Ljava/lang/String;

.field private defaultHourFormatChar:C

.field private fieldDisplayNames:[[Ljava/lang/String;

.field private transient fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

.field private volatile frozen:Z

.field private skeleton2pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "H"

    aput-object v3, v1, v2

    .line 344
    sput-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    .line 477
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 478
    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v5, "com/ibm/icu/impl/data/icudt69b"

    const-string v6, "supplementalData"

    invoke-static {v5, v6, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 483
    new-instance v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;-><init>(Ljava/util/HashMap;Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    const-string v6, "timeData"

    .line 484
    invoke-virtual {v4, v6, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 486
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    .line 1247
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    sput-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1248
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->ordinal()I

    move-result v1

    sput v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH_INT:I

    .line 1249
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->values()[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_WIDTH:[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 2010
    new-instance v1, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v1}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache;

    const/16 v1, 0x10

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "Era"

    aput-object v5, v4, v2

    const-string v6, "Year"

    aput-object v6, v4, v0

    const/4 v7, 0x2

    const-string v8, "Quarter"

    aput-object v8, v4, v7

    const-string v9, "Month"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    const-string v9, "Week"

    const/4 v11, 0x4

    aput-object v9, v4, v11

    const/4 v9, 0x5

    const-string v12, "*"

    aput-object v12, v4, v9

    const-string v13, "Day-Of-Week"

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const-string v13, "Day"

    const/4 v15, 0x7

    aput-object v13, v4, v15

    const/16 v13, 0x8

    aput-object v12, v4, v13

    const/16 v16, 0x9

    aput-object v12, v4, v16

    const/16 v17, 0xa

    aput-object v12, v4, v17

    const-string v18, "Hour"

    const/16 v19, 0xb

    aput-object v18, v4, v19

    const-string v18, "Minute"

    const/16 v20, 0xc

    aput-object v18, v4, v20

    const-string v18, "Second"

    const/16 v21, 0xd

    aput-object v18, v4, v21

    const/16 v18, 0xe

    aput-object v12, v4, v18

    const-string v22, "Timezone"

    const/16 v23, 0xf

    aput-object v22, v4, v23

    .line 2292
    sput-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    const-string v22, "era"

    aput-object v22, v4, v2

    const-string v22, "year"

    aput-object v22, v4, v0

    const-string v22, "quarter"

    aput-object v22, v4, v7

    const-string v22, "month"

    aput-object v22, v4, v10

    const-string v22, "week"

    aput-object v22, v4, v11

    const-string v22, "weekOfMonth"

    aput-object v22, v4, v9

    const-string v22, "weekday"

    aput-object v22, v4, v14

    const-string v22, "day"

    aput-object v22, v4, v15

    const-string v22, "dayOfYear"

    aput-object v22, v4, v13

    const-string v22, "weekdayOfMonth"

    aput-object v22, v4, v16

    const-string v22, "dayperiod"

    aput-object v22, v4, v17

    const-string v22, "hour"

    aput-object v22, v4, v19

    const-string v22, "minute"

    aput-object v22, v4, v20

    const-string v22, "second"

    aput-object v22, v4, v21

    aput-object v12, v4, v18

    const-string v12, "zone"

    aput-object v12, v4, v23

    .line 2298
    sput-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v6, v4, v0

    aput-object v8, v4, v7

    const-string v5, "Month"

    aput-object v5, v4, v10

    const-string v5, "Week_in_Year"

    aput-object v5, v4, v11

    const-string v5, "Week_in_Month"

    aput-object v5, v4, v9

    const-string v5, "Weekday"

    aput-object v5, v4, v14

    const-string v5, "Day"

    aput-object v5, v4, v15

    const-string v5, "Day_Of_Year"

    aput-object v5, v4, v13

    const-string v5, "Day_of_Week_in_Month"

    aput-object v5, v4, v16

    const-string v5, "Dayperiod"

    aput-object v5, v4, v17

    const-string v5, "Hour"

    aput-object v5, v4, v19

    const-string v5, "Minute"

    aput-object v5, v4, v20

    const-string v5, "Second"

    aput-object v5, v4, v21

    const-string v5, "Fractional_Second"

    aput-object v5, v4, v18

    const-string v5, "Zone"

    aput-object v5, v4, v23

    .line 2304
    sput-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "G"

    aput-object v5, v4, v2

    const-string v5, "y"

    aput-object v5, v4, v0

    const-string v5, "Q"

    aput-object v5, v4, v7

    const-string v5, "M"

    aput-object v5, v4, v10

    const-string v5, "w"

    aput-object v5, v4, v11

    const-string v5, "W"

    aput-object v5, v4, v9

    const-string v5, "E"

    aput-object v5, v4, v14

    const-string v5, "d"

    aput-object v5, v4, v15

    const-string v5, "D"

    aput-object v5, v4, v13

    const-string v5, "F"

    aput-object v5, v4, v16

    const-string v5, "a"

    aput-object v5, v4, v17

    aput-object v3, v4, v19

    const-string v3, "m"

    aput-object v3, v4, v20

    const-string v3, "s"

    aput-object v3, v4, v21

    const-string v3, "S"

    aput-object v3, v4, v18

    const-string v3, "v"

    aput-object v3, v4, v23

    .line 2311
    sput-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    .line 2337
    new-instance v3, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    const/16 v3, 0x53

    new-array v3, v3, [[I

    new-array v4, v9, [I

    .line 2416
    fill-array-data v4, :array_0

    aput-object v4, v3, v2

    new-array v2, v11, [I

    fill-array-data v2, :array_1

    aput-object v2, v3, v0

    new-array v0, v11, [I

    fill-array-data v0, :array_2

    aput-object v0, v3, v7

    new-array v0, v9, [I

    fill-array-data v0, :array_3

    aput-object v0, v3, v10

    new-array v0, v9, [I

    fill-array-data v0, :array_4

    aput-object v0, v3, v11

    new-array v0, v9, [I

    fill-array-data v0, :array_5

    aput-object v0, v3, v9

    new-array v0, v9, [I

    fill-array-data v0, :array_6

    aput-object v0, v3, v14

    new-array v0, v9, [I

    fill-array-data v0, :array_7

    aput-object v0, v3, v15

    new-array v0, v11, [I

    fill-array-data v0, :array_8

    aput-object v0, v3, v13

    new-array v0, v11, [I

    fill-array-data v0, :array_9

    aput-object v0, v3, v16

    new-array v0, v9, [I

    fill-array-data v0, :array_a

    aput-object v0, v3, v17

    new-array v0, v11, [I

    fill-array-data v0, :array_b

    aput-object v0, v3, v19

    new-array v0, v11, [I

    fill-array-data v0, :array_c

    aput-object v0, v3, v20

    new-array v0, v11, [I

    fill-array-data v0, :array_d

    aput-object v0, v3, v21

    new-array v0, v9, [I

    fill-array-data v0, :array_e

    aput-object v0, v3, v18

    new-array v0, v11, [I

    fill-array-data v0, :array_f

    aput-object v0, v3, v23

    new-array v0, v11, [I

    fill-array-data v0, :array_10

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_15

    const/16 v1, 0x15

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_16

    const/16 v1, 0x16

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_17

    const/16 v1, 0x17

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_18

    const/16 v1, 0x18

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_19

    const/16 v1, 0x19

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_1a

    const/16 v1, 0x1a

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_1b

    const/16 v1, 0x1b

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_1c

    const/16 v1, 0x1c

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_1d

    const/16 v1, 0x1d

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_1e

    const/16 v1, 0x1e

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_1f

    const/16 v1, 0x1f

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_20

    const/16 v1, 0x20

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_21

    const/16 v1, 0x21

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_22

    const/16 v1, 0x22

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_23

    const/16 v1, 0x23

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_24

    const/16 v1, 0x24

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_25

    const/16 v1, 0x25

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_26

    const/16 v1, 0x26

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_27

    const/16 v1, 0x27

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_28

    const/16 v1, 0x28

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_29

    const/16 v1, 0x29

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_2a

    const/16 v1, 0x2a

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_2b

    const/16 v1, 0x2b

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_2c

    const/16 v1, 0x2c

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_2d

    const/16 v1, 0x2d

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_2e

    const/16 v1, 0x2e

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_2f

    const/16 v1, 0x2f

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_30

    const/16 v1, 0x30

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_31

    const/16 v1, 0x31

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_32

    const/16 v1, 0x32

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_33

    const/16 v1, 0x33

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_34

    const/16 v1, 0x34

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_35

    const/16 v1, 0x35

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_36

    const/16 v1, 0x36

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_37

    const/16 v1, 0x37

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_38

    const/16 v1, 0x38

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_39

    const/16 v1, 0x39

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_3a

    const/16 v1, 0x3a

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_3b

    const/16 v1, 0x3b

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_3c

    const/16 v1, 0x3c

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_3d

    const/16 v1, 0x3d

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_3e

    const/16 v1, 0x3e

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_3f

    const/16 v1, 0x3f

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_40

    const/16 v1, 0x40

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_41

    const/16 v1, 0x41

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_42

    const/16 v1, 0x42

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_43

    const/16 v1, 0x43

    aput-object v0, v3, v1

    new-array v0, v9, [I

    fill-array-data v0, :array_44

    const/16 v1, 0x44

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_45

    const/16 v1, 0x45

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_46

    const/16 v1, 0x46

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_47

    const/16 v1, 0x47

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_48

    const/16 v1, 0x48

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_49

    const/16 v1, 0x49

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_4a

    const/16 v1, 0x4a

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_4b

    const/16 v1, 0x4b

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_4c

    const/16 v1, 0x4c

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_4d

    const/16 v1, 0x4d

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_4e

    const/16 v1, 0x4e

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_4f

    const/16 v1, 0x4f

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_50

    const/16 v1, 0x50

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_51

    const/16 v1, 0x51

    aput-object v0, v3, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_52

    const/16 v1, 0x52

    aput-object v0, v3, v1

    sput-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I

    return-void

    :array_0
    .array-data 4
        0x47
        0x0
        -0x103
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x47
        0x0
        -0x104
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x47
        0x0
        -0x101
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x79
        0x1
        0x100
        0x1
        0x14
    .end array-data

    :array_4
    .array-data 4
        0x59
        0x1
        0x110
        0x1
        0x14
    .end array-data

    :array_5
    .array-data 4
        0x75
        0x1
        0x120
        0x1
        0x14
    .end array-data

    :array_6
    .array-data 4
        0x72
        0x1
        0x130
        0x1
        0x14
    .end array-data

    :array_7
    .array-data 4
        0x55
        0x1
        -0x103
        0x1
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x55
        0x1
        -0x104
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x55
        0x1
        -0x101
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x51
        0x2
        0x100
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x51
        0x2
        -0x103
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x51
        0x2
        -0x104
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x51
        0x2
        -0x101
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x71
        0x2
        0x110
        0x1
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x2
        -0x113
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x71
        0x2
        -0x114
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x71
        0x2
        -0x111
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x4d
        0x3
        0x100
        0x1
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x4d
        0x3
        -0x103
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x4d
        0x3
        -0x104
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x4d
        0x3
        -0x101
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x4c
        0x3
        0x110
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x4c
        0x3
        -0x113
        0x3
    .end array-data

    :array_18
    .array-data 4
        0x4c
        0x3
        -0x114
        0x4
    .end array-data

    :array_19
    .array-data 4
        0x4c
        0x3
        -0x111
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x6c
        0x3
        0x110
        0x1
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x77
        0x4
        0x100
        0x1
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x57
        0x5
        0x100
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x45
        0x6
        -0x103
        0x1
        0x3
    .end array-data

    :array_1e
    .array-data 4
        0x45
        0x6
        -0x104
        0x4
    .end array-data

    :array_1f
    .array-data 4
        0x45
        0x6
        -0x101
        0x5
    .end array-data

    :array_20
    .array-data 4
        0x45
        0x6
        -0x102
        0x6
    .end array-data

    :array_21
    .array-data 4
        0x63
        0x6
        0x120
        0x1
        0x2
    .end array-data

    :array_22
    .array-data 4
        0x63
        0x6
        -0x123
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x63
        0x6
        -0x124
        0x4
    .end array-data

    :array_24
    .array-data 4
        0x63
        0x6
        -0x121
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x63
        0x6
        -0x122
        0x6
    .end array-data

    :array_26
    .array-data 4
        0x65
        0x6
        0x110
        0x1
        0x2
    .end array-data

    :array_27
    .array-data 4
        0x65
        0x6
        -0x113
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x65
        0x6
        -0x114
        0x4
    .end array-data

    :array_29
    .array-data 4
        0x65
        0x6
        -0x111
        0x5
    .end array-data

    :array_2a
    .array-data 4
        0x65
        0x6
        -0x112
        0x6
    .end array-data

    :array_2b
    .array-data 4
        0x64
        0x7
        0x100
        0x1
        0x2
    .end array-data

    :array_2c
    .array-data 4
        0x67
        0x7
        0x110
        0x1
        0x14
    .end array-data

    :array_2d
    .array-data 4
        0x44
        0x8
        0x100
        0x1
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x46
        0x9
        0x100
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x61
        0xa
        -0x103
        0x1
        0x3
    .end array-data

    :array_30
    .array-data 4
        0x61
        0xa
        -0x104
        0x4
    .end array-data

    :array_31
    .array-data 4
        0x61
        0xa
        -0x101
        0x5
    .end array-data

    :array_32
    .array-data 4
        0x62
        0xa
        -0x113
        0x1
        0x3
    .end array-data

    :array_33
    .array-data 4
        0x62
        0xa
        -0x114
        0x4
    .end array-data

    :array_34
    .array-data 4
        0x62
        0xa
        -0x111
        0x5
    .end array-data

    :array_35
    .array-data 4
        0x42
        0xa
        -0x133
        0x1
        0x3
    .end array-data

    :array_36
    .array-data 4
        0x42
        0xa
        -0x134
        0x4
    .end array-data

    :array_37
    .array-data 4
        0x42
        0xa
        -0x131
        0x5
    .end array-data

    :array_38
    .array-data 4
        0x48
        0xb
        0x1a0
        0x1
        0x2
    .end array-data

    :array_39
    .array-data 4
        0x6b
        0xb
        0x1b0
        0x1
        0x2
    .end array-data

    :array_3a
    .array-data 4
        0x68
        0xb
        0x100
        0x1
        0x2
    .end array-data

    :array_3b
    .array-data 4
        0x4b
        0xb
        0x110
        0x1
        0x2
    .end array-data

    :array_3c
    .array-data 4
        0x6d
        0xc
        0x100
        0x1
        0x2
    .end array-data

    :array_3d
    .array-data 4
        0x73
        0xd
        0x100
        0x1
        0x2
    .end array-data

    :array_3e
    .array-data 4
        0x41
        0xd
        0x110
        0x1
        0x3e8
    .end array-data

    :array_3f
    .array-data 4
        0x53
        0xe
        0x100
        0x1
        0x3e8
    .end array-data

    :array_40
    .array-data 4
        0x76
        0xf
        -0x123
        0x1
    .end array-data

    :array_41
    .array-data 4
        0x76
        0xf
        -0x124
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x7a
        0xf
        -0x103
        0x1
        0x3
    .end array-data

    :array_43
    .array-data 4
        0x7a
        0xf
        -0x104
        0x4
    .end array-data

    :array_44
    .array-data 4
        0x5a
        0xf
        -0x111
        0x1
        0x3
    .end array-data

    :array_45
    .array-data 4
        0x5a
        0xf
        -0x114
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x5a
        0xf
        -0x113
        0x5
    .end array-data

    :array_47
    .array-data 4
        0x4f
        0xf
        -0x113
        0x1
    .end array-data

    :array_48
    .array-data 4
        0x4f
        0xf
        -0x114
        0x4
    .end array-data

    :array_49
    .array-data 4
        0x56
        0xf
        -0x113
        0x1
    .end array-data

    :array_4a
    .array-data 4
        0x56
        0xf
        -0x114
        0x2
    .end array-data

    :array_4b
    .array-data 4
        0x56
        0xf
        -0x115
        0x3
    .end array-data

    :array_4c
    .array-data 4
        0x56
        0xf
        -0x116
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x58
        0xf
        -0x111
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x58
        0xf
        -0x113
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x58
        0xf
        -0x114
        0x4
    .end array-data

    :array_50
    .array-data 4
        0x78
        0xf
        -0x111
        0x1
    .end array-data

    :array_51
    .array-data 4
        0x78
        0xf
        -0x113
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x78
        0xf
        -0x114
        0x4
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1989
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    .line 1990
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    const-string v0, "?"

    .line 1991
    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    const-string v0, "{1} {0}"

    .line 1992
    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    .line 1993
    iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    .line 1994
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->access$100()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    const/16 v0, 0x48

    .line 1995
    iput-char v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 1998
    iput-boolean v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z

    .line 2000
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2001
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2002
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    .line 2338
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/UResource$Key;)I
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCLDRFieldAndWidthNumber(Lcom/ibm/icu/impl/UResource$Key;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Ljava/lang/String;Z)I
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500()[[I
    .locals 1

    .line 57
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(IC)C
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalChar(IC)C

    move-result p0

    return p0
.end method

.method static synthetic access$200()[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;
    .locals 1

    .line 57
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_WIDTH:[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    return-object v0
.end method

.method static synthetic access$2200(I)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/DateTimePatternGenerator;ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/DateTimePatternGenerator;Ljava/lang/String;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->isAvailableFormatSet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/DateTimePatternGenerator;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setAvailableFormat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    return-object v0
.end method

.method private addCLDRData(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Lcom/ibm/icu/util/ULocale;)V
    .locals 6

    const-string v0, "calendar/"

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    .line 295
    invoke-static {v1, p2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 296
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCalendarTypeToUse(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p2

    .line 306
    new-instance v2, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    .line 308
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/appendItems"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :catch_0
    new-instance v2, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    :try_start_1
    const-string v3, "fields"

    .line 317
    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    :catch_1
    new-instance v2, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;

    invoke-direct {v2, p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)V

    .line 326
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/availableFormats"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method private addCanonicalItems()V
    .locals 5

    .line 2083
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2085
    :goto_0
    sget-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 2086
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addICUPatterns(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Lcom/ibm/icu/util/ULocale;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 177
    invoke-static {v1, p2}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 178
    invoke-virtual {v3}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    .line 179
    invoke-static {v1, p2}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/SimpleDateFormat;

    .line 180
    invoke-virtual {v3}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    if-ne v1, v2, :cond_0

    .line 183
    invoke-virtual {v3}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->consumeShortTimePattern(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustFieldTypes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 2144
    iget-object v4, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    iget-object v5, v1, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2146
    iget-object v5, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2147
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 2148
    iget-object v7, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2150
    :cond_0
    check-cast v6, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;

    .line 2152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v8

    .line 2162
    sget-object v9, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v2, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0xd

    if-eqz v9, :cond_1

    if-ne v8, v10, :cond_1

    .line 2163
    iget-object v6, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1700(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v6

    const/16 v8, 0xe

    invoke-virtual {v6, v8, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendFieldTo(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 2165
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1800(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I

    move-result-object v9

    aget v9, v9, v8

    if-eqz v9, :cond_12

    .line 2192
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1700(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result v9

    .line 2193
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1700(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldLength(I)I

    move-result v11

    const/16 v12, 0x45

    const/4 v13, 0x3

    if-ne v9, v12, :cond_2

    if-ge v11, v13, :cond_2

    const/4 v11, 0x3

    .line 2198
    :cond_2
    iget-object v12, v1, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/16 v14, 0xb

    if-ne v8, v14, :cond_3

    and-int/lit16 v15, v3, 0x800

    if-eqz v15, :cond_5

    :cond_3
    const/16 v15, 0xc

    if-ne v8, v15, :cond_4

    and-int/lit16 v15, v3, 0x1000

    if-eqz v15, :cond_5

    :cond_4
    if-ne v8, v10, :cond_6

    and-int/lit16 v10, v3, 0x2000

    if-nez v10, :cond_6

    .line 2202
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_9

    .line 2204
    invoke-static {v12}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1700(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldLength(I)I

    move-result v10

    .line 2205
    invoke-virtual {v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->isNumeric()Z

    move-result v6

    .line 2206
    invoke-virtual {v12, v8}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->fieldIsNumeric(I)Z

    move-result v12

    if-eq v10, v11, :cond_8

    if-eqz v6, :cond_7

    if-eqz v12, :cond_8

    :cond_7
    if-eqz v12, :cond_9

    if-nez v6, :cond_9

    .line 2211
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    :cond_9
    :goto_1
    if-eq v8, v14, :cond_b

    if-eq v8, v13, :cond_b

    const/4 v6, 0x6

    if-eq v8, v6, :cond_b

    const/4 v6, 0x1

    if-ne v8, v6, :cond_a

    const/16 v6, 0x59

    if-ne v9, v6, :cond_b

    :cond_a
    move v6, v9

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    .line 2219
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    :goto_2
    const/16 v7, 0x6b

    const/16 v10, 0x4b

    const/16 v12, 0x48

    const/16 v13, 0x68

    if-ne v8, v14, :cond_11

    .line 2228
    sget-object v8, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v2, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    iget-char v8, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    if-ne v9, v8, :cond_c

    goto :goto_3

    :cond_c
    if-ne v9, v13, :cond_d

    if-ne v8, v10, :cond_d

    const/16 v6, 0x4b

    goto :goto_4

    :cond_d
    if-ne v9, v12, :cond_e

    if-ne v8, v7, :cond_e

    const/16 v6, 0x6b

    goto :goto_4

    :cond_e
    if-ne v9, v7, :cond_f

    if-ne v8, v12, :cond_f

    const/16 v6, 0x48

    goto :goto_4

    :cond_f
    if-ne v9, v10, :cond_11

    if-ne v8, v13, :cond_11

    const/16 v6, 0x68

    goto :goto_4

    .line 2229
    :cond_10
    :goto_3
    iget-char v6, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 2240
    :cond_11
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    if-lez v11, :cond_12

    .line 2241
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 2243
    :cond_12
    :goto_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2247
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkFrozen()V
    .locals 2

    .line 2013
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2014
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeShortTimePattern(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)V
    .locals 0

    .line 210
    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->hackTimes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V

    return-void
.end method

.method private fillInMissing()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 257
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendItemFormat(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "{0} \u251c{2}: {1}\u2524"

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V

    .line 260
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 261
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    .line 263
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 264
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    sget-object v2, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    .line 266
    :cond_2
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->NARROW:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 267
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->NARROW:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    sget-object v2, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getAllowedHourFormats(Lcom/ibm/icu/util/ULocale;)V
    .locals 9

    .line 374
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 384
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "und"

    .line 388
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "001"

    .line 392
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAllowedHourFormatsLangCountry(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "hours"

    .line 396
    invoke-virtual {p1, v4}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "h24"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1
    const-string v7, "h23"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_2
    const-string v7, "h12"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_3
    const-string v7, "h11"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x6b

    .line 400
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x48

    .line 403
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x68

    .line 406
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x4b

    .line 409
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :cond_8
    :goto_1
    if-nez v2, :cond_9

    .line 417
    :try_start_0
    invoke-static {v1}, Lcom/ibm/icu/util/Region;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Region;

    move-result-object p1

    .line 418
    invoke-virtual {p1}, Lcom/ibm/icu/util/Region;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAllowedHourFormatsLangCountry(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_9
    :goto_2
    if-eqz v2, :cond_b

    if-eqz v3, :cond_a

    .line 426
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result p1

    goto :goto_3

    :cond_a
    aget-object p1, v2, v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    iput-char p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 427
    array-length p1, v2

    sub-int/2addr p1, v4

    invoke-static {v2, v4, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    goto :goto_5

    .line 429
    :cond_b
    sget-object p1, Lcom/ibm/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 430
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result p1

    goto :goto_4

    :cond_c
    aget-object p1, p1, v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    iput-char p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x18c88 -> :sswitch_3
        0x18c89 -> :sswitch_2
        0x18ca9 -> :sswitch_1
        0x18caa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAllowedHourFormatsLangCountry(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_0

    .line 350
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private getAppendFormat(I)Ljava/lang/String;
    .locals 1

    .line 2058
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public static getAppendFormatNumber(Lcom/ibm/icu/impl/UResource$Key;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 584
    :goto_0
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 585
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getAppendFormatNumber(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 598
    :goto_0
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 599
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getAppendName(I)Ljava/lang/String;
    .locals 3

    .line 2055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    aget-object p1, v2, p1

    sget v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH_INT:I

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBestAppending(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "I",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 2025
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v0

    .line 2026
    invoke-direct {p0, v0, p1, p5, p6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v1

    .line 2028
    :goto_0
    iget v2, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-eqz v2, :cond_2

    .line 2032
    iget v2, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    const/16 v3, 0x6000

    and-int/2addr v2, v3

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_0

    and-int/lit16 v2, p2, 0x6000

    if-ne v2, v3, :cond_0

    .line 2034
    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 2035
    invoke-static {p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p5

    .line 2036
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {p5, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 2037
    invoke-direct {p0, v0, p1, p5, p6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v1

    .line 2038
    iget v2, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    goto :goto_0

    .line 2042
    :cond_0
    iget v2, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2043
    iget v3, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    invoke-direct {p0, p1, v3, p3, p4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v3

    .line 2044
    invoke-direct {p0, v3, p1, p5, p6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v3

    .line 2045
    iget v4, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    .line 2046
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getTopBitNumber(I)I

    move-result v2

    .line 2048
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendFormat(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v3, v6, v1

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 2047
    invoke-static {v4, v2, v5, v6}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method private getBestPattern(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;
    .locals 10

    .line 651
    const-class v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 653
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->mapSkeletonMetacharacters(Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object p1

    .line 655
    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v8, 0x0

    invoke-virtual {v1, p1, v2, v8}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 657
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object p1

    .line 658
    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v1, v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v1, v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    if-nez v1, :cond_0

    .line 660
    iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getFieldMask()I

    move-result p1

    .line 665
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    and-int/lit16 v3, p1, 0x3ff

    iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    move-object v1, p0

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestAppending(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v9

    .line 666
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const v1, 0xfc00

    and-int v3, p1, v1

    iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    move-object v1, p0

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestAppending(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object p1

    .line 667
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1

    :cond_2
    if-nez p1, :cond_3

    return-object v9

    .line 672
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getDateTimeFormat()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array v0, p3, [Ljava/lang/CharSequence;

    aput-object p1, v0, v8

    const/4 p1, 0x1

    aput-object v9, v0, p1

    .line 671
    invoke-static {p2, p3, p3, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 667
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .locals 9

    .line 2095
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    .line 2096
    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    .line 2097
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2098
    invoke-virtual {v6, p4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 2101
    :cond_1
    invoke-virtual {p1, v6, p2, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getDistance(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)I

    move-result v7

    if-lt v7, v4, :cond_2

    if-ne v7, v4, :cond_0

    .line 2111
    iget v8, v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-ge v5, v8, :cond_0

    .line 2113
    :cond_2
    iget v4, v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2114
    iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 2115
    iget-object v8, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v8, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 2118
    iget-boolean v5, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v5, :cond_3

    .line 2119
    iput-object v6, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    goto :goto_1

    .line 2121
    :cond_3
    iput-object v2, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2123
    :goto_1
    invoke-virtual {p3, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->setTo(Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    move v4, v7

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static getCLDRFieldAndWidthNumber(Lcom/ibm/icu/impl/UResource$Key;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 607
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 608
    :goto_1
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->access$100()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 609
    sget-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_WIDTH:[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->access$1100(Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->access$100()I

    move-result p0

    mul-int v1, v1, p0

    add-int/2addr v1, v2

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getCalendarTypeToUse(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const-string v0, "calendar"

    .line 191
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 193
    invoke-static {v0, p1, v1}, Lcom/ibm/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 194
    aget-object v1, p1, v0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "gregorian"

    :cond_1
    return-object v1
.end method

.method private static getCanonicalChar(IC)C
    .locals 3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_3

    const/16 v1, 0x4b

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2407
    :goto_0
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2408
    aget-object v1, v1, v0

    const/4 v2, 0x1

    .line 2409
    aget v2, v1, v2

    if-ne v2, p0, :cond_1

    .line 2410
    aget p0, v1, p1

    int-to-char p0, p0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2413
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return v0
.end method

.method private static getCanonicalIndex(Ljava/lang/String;Z)I
    .locals 8

    .line 2374
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 2378
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_2

    .line 2381
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    const/4 v5, -0x1

    .line 2386
    :goto_1
    sget-object v6, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I

    array-length v7, v6

    if-ge p0, v7, :cond_6

    .line 2387
    aget-object v6, v6, p0

    .line 2388
    aget v7, v6, v2

    if-eq v7, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    .line 2390
    aget v5, v6, v5

    if-le v5, v0, :cond_4

    goto :goto_2

    .line 2391
    :cond_4
    array-length v5, v6

    sub-int/2addr v5, v4

    aget v5, v6, v5

    if-ge v5, v0, :cond_5

    :goto_2
    move v5, p0

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return p0

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    return v1
.end method

.method public static getEmptyInstance()Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 1

    .line 69
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;-><init>()V

    .line 70
    invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addCanonicalItems()V

    .line 71
    invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->fillInMissing()V

    return-object v0
.end method

.method private static getFilteredPattern(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 4

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 559
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$1000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 560
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 561
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$1000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 562
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 563
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 565
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFrozenInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateTimePatternGenerator;

    if-eqz v1, :cond_0

    return-object v1

    .line 127
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-direct {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;-><init>()V

    const/4 v2, 0x0

    .line 128
    invoke-direct {v1, p0, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->initData(Lcom/ibm/icu/util/ULocale;Z)V

    .line 131
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->freeze()Lcom/ibm/icu/text/DateTimePatternGenerator;

    .line 132
    sget-object p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {p0, v0, v1}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getInstance()Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 1

    .line 88
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFrozenInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->cloneAsThawed()Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 0

    .line 106
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstanceNoStdPat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;-><init>()V

    const/4 v1, 0x1

    .line 148
    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->initData(Lcom/ibm/icu/util/ULocale;Z)V

    return-object v0
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 2357
    invoke-static {p0, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result p0

    .line 2358
    sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    sget-object v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v3, v2, p0

    aget v0, v3, v0

    aget-object v0, v1, v0

    .line 2359
    aget-object p0, v2, p0

    const/4 v1, 0x2

    aget p0, p0, v1

    if-gez p0, :cond_0

    .line 2360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":S"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2363
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":N"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSet(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1953
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object p1

    .line 1954
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1955
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1956
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "G"

    .line 1957
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1960
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getTopBitNumber(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private hackTimes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V
    .locals 7

    .line 508
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 512
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$1000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x73

    if-ge v1, v3, :cond_5

    .line 513
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$1000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 514
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_4

    .line 516
    iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 519
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_1

    .line 522
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-ne v5, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 527
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    goto :goto_2

    :cond_3
    if-nez v2, :cond_5

    const/16 v3, 0x7a

    if-eq v5, v3, :cond_5

    const/16 v3, 0x5a

    if-eq v5, v3, :cond_5

    const/16 v3, 0x76

    if-eq v5, v3, :cond_5

    const/16 v3, 0x56

    if-ne v5, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_5
    :goto_2
    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2}, Ljava/util/BitSet;-><init>()V

    .line 538
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    const/4 v2, 0x0

    .line 539
    :goto_3
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$1000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 540
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$1000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 541
    instance-of v5, v3, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v5, :cond_8

    .line 542
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 543
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_6

    const/16 v5, 0x53

    if-ne v3, v5, :cond_8

    .line 545
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v2, -0x1

    :goto_4
    if-ltz v3, :cond_8

    .line 547
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 548
    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 553
    :cond_9
    iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {p2, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFilteredPattern(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p2

    .line 554
    invoke-virtual {p0, p2, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    return-void
.end method

.method private initData(Lcom/ibm/icu/util/ULocale;Z)V
    .locals 1

    .line 156
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    .line 158
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addCanonicalItems()V

    if-nez p2, :cond_0

    .line 160
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addICUPatterns(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Lcom/ibm/icu/util/ULocale;)V

    .line 162
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addCLDRData(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Lcom/ibm/icu/util/ULocale;)V

    if-nez p2, :cond_1

    .line 164
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setDateTimeFromCalendar(Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    :cond_1
    const-string p2, "{1} {0}"

    .line 167
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setDateTimeFormat(Ljava/lang/String;)V

    .line 169
    :goto_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setDecimalSymbols(Lcom/ibm/icu/util/ULocale;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAllowedHourFormats(Lcom/ibm/icu/util/ULocale;)V

    .line 171
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->fillInMissing()V

    return-void
.end method

.method private isAvailableFormatSet(Ljava/lang/String;)Z
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static isSingleField(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1416
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1417
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1418
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private mapSkeletonMetacharacters(Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 685
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 686
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    xor-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_0
    if-nez v3, :cond_c

    const/16 v5, 0x48

    const/16 v7, 0x6a

    if-eq v4, v7, :cond_3

    const/16 v8, 0x43

    if-ne v4, v8, :cond_1

    goto :goto_1

    :cond_1
    const/16 v7, 0x4a

    if-ne v4, v7, :cond_2

    .line 729
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    sget-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {p2, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 732
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_3
    :goto_1
    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v9, v2, 0x1

    .line 698
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v4, :cond_4

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_2

    :cond_4
    and-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v6

    const/4 v10, 0x2

    if-ge v8, v10, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    shr-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x3

    :goto_3
    const/16 v10, 0x61

    if-ne v4, v7, :cond_6

    .line 707
    iget-char v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    goto :goto_4

    .line 709
    :cond_6
    iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 710
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 712
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x62

    if-eq v4, v11, :cond_7

    const/16 v11, 0x42

    if-ne v4, v11, :cond_8

    :cond_7
    move v10, v4

    :cond_8
    move v4, v7

    :goto_4
    if-eq v4, v5, :cond_9

    const/16 v5, 0x6b

    if-ne v4, v5, :cond_a

    :cond_9
    const/4 v8, 0x0

    :cond_a
    :goto_5
    add-int/lit8 v5, v8, -0x1

    if-lez v8, :cond_b

    .line 721
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v5

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v5, v9, -0x1

    if-lez v9, :cond_c

    .line 724
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v5

    goto :goto_6

    :cond_c
    :goto_7
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 736
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setAvailableFormat(Ljava/lang/String;)V
    .locals 1

    .line 1430
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1431
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setDateTimeFromCalendar(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 334
    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/util/Calendar;->getDateTimePattern(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setDateTimeFormat(Ljava/lang/String;)V

    return-void
.end method

.method private setDecimalSymbols(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 340
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    .line 341
    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setDecimal(Ljava/lang/String;)V

    return-void
.end method

.method private setFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1384
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->ordinal()I

    move-result p2

    aput-object p3, p1, p2

    :cond_0
    return-void
.end method

.method private static showMask(I)Ljava/lang/String;
    .locals 3

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    goto :goto_1

    .line 2284
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " | "

    .line 2285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 2287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2289
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 796
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object p1

    return-object p1
.end method

.method public addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 815
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 818
    new-instance v2, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v0

    goto :goto_0

    .line 820
    :cond_0
    new-instance v2, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v2, p2, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v0

    .line 822
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    move-result-object v2

    .line 830
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 831
    iget-boolean v5, v3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v5, :cond_1

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 832
    :cond_1
    iput v4, p4, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    .line 833
    iget-object v3, v3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v3, p4, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    if-nez p3, :cond_2

    return-object p0

    .line 842
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz v3, :cond_4

    const/4 v5, 0x2

    .line 844
    iput v5, p4, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    .line 845
    iget-object v5, v3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v5, p4, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    if-eqz p3, :cond_3

    if-eqz p2, :cond_4

    .line 846
    iget-boolean p3, v3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz p3, :cond_4

    :cond_3
    return-object p0

    .line 848
    :cond_4
    iput v1, p4, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    const-string p3, ""

    .line 849
    iput-object p3, p4, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    .line 850
    new-instance p3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p3, p1, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;-><init>(Ljava/lang/String;Z)V

    .line 854
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {p1, v0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {p1, v2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1488
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/DateTimePatternGenerator;

    .line 1489
    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    .line 1490
    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    .line 1491
    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    .line 1492
    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    invoke-virtual {v1}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    .line 1493
    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1494
    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    .line 1495
    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iput-object v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;

    const/4 v1, 0x0

    .line 1497
    iput-boolean v1, v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1501
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    const-string v2, "Internal Error"

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 2

    .line 1474
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/DateTimePatternGenerator;

    const/4 v1, 0x0

    .line 1475
    iput-boolean v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->cloneAsThawed()Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/text/DateTimePatternGenerator;
    .locals 1

    const/4 v0, 0x1

    .line 1464
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->freeze()Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getAppendItemFormat(I)Ljava/lang/String;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAppendItemName(I)Ljava/lang/String;
    .locals 1

    .line 1355
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBaseSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 919
    monitor-enter p0

    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 921
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 922
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBaseSkeletons(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 961
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public getBestPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 628
    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBestPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 644
    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCanonicalSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 901
    monitor-enter p0

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 903
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toCanonicalString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 904
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDateTimeFormat()Ljava/lang/String;
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimal()Ljava/lang/String;
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultHourCycle()Lcom/ibm/icu/text/DateFormat$HourCycle;
    .locals 2

    .line 1363
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getDefaultHourFormatChar()C

    move-result v0

    const/16 v1, 0x48

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 1366
    sget-object v0, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_24:Lcom/ibm/icu/text/DateFormat$HourCycle;

    return-object v0

    .line 1368
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1364
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_12:Lcom/ibm/icu/text/DateFormat$HourCycle;

    return-object v0

    .line 1367
    :cond_2
    sget-object v0, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_11:Lcom/ibm/icu/text/DateFormat$HourCycle;

    return-object v0

    .line 1365
    :cond_3
    sget-object v0, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_23:Lcom/ibm/icu/text/DateFormat$HourCycle;

    return-object v0
.end method

.method public getDefaultHourFormatChar()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-char v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    return v0
.end method

.method public getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fieldDisplayNames:[[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public getFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2267
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2269
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2270
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2271
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2273
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2276
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRedundants(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1077
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1079
    :try_start_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1082
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 1083
    iget-object v2, v2, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 1084
    sget-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1087
    :cond_2
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1113
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 868
    monitor-enter p0

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 870
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 871
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    monitor-enter p0

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 886
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 887
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSkeletons(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 942
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 945
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 946
    iget-object v2, v2, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 947
    sget-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 950
    :cond_1
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public isFrozen()Z
    .locals 1

    .line 1455
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z

    return v0
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 980
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 999
    monitor-enter p0

    .line 1000
    :try_start_0
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    .line 1001
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object p1

    const-class p2, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1002
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAppendItemFormat(ILjava/lang/String;)V
    .locals 1

    .line 1313
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1314
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public setAppendItemName(ILjava/lang/String;)V
    .locals 1

    .line 1341
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->APPENDITEM_WIDTH:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .locals 0

    .line 1024
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1025
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public setDecimal(Ljava/lang/String;)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1051
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    return-void
.end method

.method public setDefaultHourFormatChar(C)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    iput-char p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    return-void
.end method

.method public skeletonsAreSimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1931
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1935
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object p1

    .line 1936
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object p2

    .line 1937
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 1940
    :cond_1
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1941
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1942
    invoke-static {v0, v3}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v0

    .line 1943
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1944
    invoke-static {v2, v3}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v2

    .line 1945
    sget-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v0, v4, v0

    aget v0, v0, v1

    aget-object v2, v4, v2

    aget v2, v2, v1

    if-eq v0, v2, :cond_2

    return v3

    :cond_3
    return v1
.end method
