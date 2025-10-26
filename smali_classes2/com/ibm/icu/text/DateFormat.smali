.class public abstract Lcom/ibm/icu/text/DateFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DateFormat$Field;,
        Lcom/ibm/icu/text/DateFormat$HourCycle;,
        Lcom/ibm/icu/text/DateFormat$BooleanAttribute;
    }
.end annotation


# static fields
.field public static final ABBR_GENERIC_TZ:Ljava/lang/String; = "v"

.field public static final ABBR_MONTH:Ljava/lang/String; = "MMM"

.field public static final ABBR_MONTH_DAY:Ljava/lang/String; = "MMMd"

.field public static final ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMEd"

.field public static final ABBR_QUARTER:Ljava/lang/String; = "QQQ"

.field public static final ABBR_SPECIFIC_TZ:Ljava/lang/String; = "z"

.field public static final ABBR_STANDALONE_MONTH:Ljava/lang/String; = "LLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBR_UTC_TZ:Ljava/lang/String; = "ZZZZ"

.field public static final ABBR_WEEKDAY:Ljava/lang/String; = "E"

.field public static final AM_PM_FIELD:I = 0xe

.field public static final AM_PM_MIDNIGHT_NOON_FIELD:I = 0x23

.field public static final DATE_FIELD:I = 0x3

.field public static final DATE_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:Ljava/lang/String; = "d"

.field public static final DAY_OF_WEEK_FIELD:I = 0x9

.field public static final DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final DAY_OF_YEAR_FIELD:I = 0xa

.field public static final DEFAULT:I = 0x2

.field public static final DOW_LOCAL_FIELD:I = 0x13

.field public static final ERA_FIELD:I = 0x0

.field public static final EXTENDED_YEAR_FIELD:I = 0x14

.field public static final FIELD_COUNT:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLEXIBLE_DAY_PERIOD_FIELD:I = 0x24

.field public static final FRACTIONAL_SECOND_FIELD:I = 0x8

.field public static final FULL:I = 0x0

.field public static final GENERIC_TZ:Ljava/lang/String; = "vvvv"

.field public static final HOUR:Ljava/lang/String; = "j"

.field public static final HOUR0_FIELD:I = 0x10

.field public static final HOUR1_FIELD:I = 0xf

.field public static final HOUR24:Ljava/lang/String; = "H"

.field public static final HOUR24_MINUTE:Ljava/lang/String; = "Hm"

.field public static final HOUR24_MINUTE_SECOND:Ljava/lang/String; = "Hms"

.field public static final HOUR_GENERIC_TZ:Ljava/lang/String; = "jv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_MINUTE:Ljava/lang/String; = "jm"

.field public static final HOUR_MINUTE_GENERIC_TZ:Ljava/lang/String; = "jmv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_MINUTE_SECOND:Ljava/lang/String; = "jms"

.field public static final HOUR_MINUTE_TZ:Ljava/lang/String; = "jmz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final HOUR_TZ:Ljava/lang/String; = "jz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JP_ERA_2019_JA:Ljava/lang/String; = "\u4ee4\u548c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JP_ERA_2019_NARROW:Ljava/lang/String; = "R"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JP_ERA_2019_ROOT:Ljava/lang/String; = "Reiwa"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JULIAN_DAY_FIELD:I = 0x15

.field public static final LOCATION_TZ:Ljava/lang/String; = "VVVV"

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final MILLISECONDS_IN_DAY_FIELD:I = 0x16

.field public static final MILLISECOND_FIELD:I = 0x8

.field public static final MINUTE:Ljava/lang/String; = "m"

.field public static final MINUTE_FIELD:I = 0x6

.field public static final MINUTE_SECOND:Ljava/lang/String; = "ms"

.field public static final MONTH:Ljava/lang/String; = "MMMM"

.field public static final MONTH_DAY:Ljava/lang/String; = "MMMMd"

.field public static final MONTH_FIELD:I = 0x2

.field public static final MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMMEEEEd"

.field public static final NONE:I = -0x1

.field public static final NUM_MONTH:Ljava/lang/String; = "M"

.field public static final NUM_MONTH_DAY:Ljava/lang/String; = "Md"

.field public static final NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MEd"

.field public static final QUARTER:Ljava/lang/String; = "QQQQ"

.field public static final QUARTER_FIELD:I = 0x1b

.field static final RELATED_YEAR:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RELATIVE:I = 0x80

.field public static final RELATIVE_DEFAULT:I = 0x82

.field public static final RELATIVE_FULL:I = 0x80

.field public static final RELATIVE_LONG:I = 0x81

.field public static final RELATIVE_MEDIUM:I = 0x82

.field public static final RELATIVE_SHORT:I = 0x83

.field public static final SECOND:Ljava/lang/String; = "s"

.field public static final SECOND_FIELD:I = 0x7

.field public static final SHORT:I = 0x3

.field public static final SPECIFIC_TZ:Ljava/lang/String; = "zzzz"

.field public static final STANDALONE_DAY_FIELD:I = 0x19

.field public static final STANDALONE_MONTH:Ljava/lang/String; = "LLLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH_FIELD:I = 0x1a

.field public static final STANDALONE_QUARTER_FIELD:I = 0x1c

.field public static final TIMEZONE_FIELD:I = 0x11

.field public static final TIMEZONE_GENERIC_FIELD:I = 0x18

.field public static final TIMEZONE_ISO_FIELD:I = 0x20

.field public static final TIMEZONE_ISO_LOCAL_FIELD:I = 0x21

.field public static final TIMEZONE_LOCALIZED_GMT_OFFSET_FIELD:I = 0x1f

.field public static final TIMEZONE_RFC_FIELD:I = 0x17

.field public static final TIMEZONE_SPECIAL_FIELD:I = 0x1d

.field public static final TIME_SEPARATOR:I = 0x25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKDAY:Ljava/lang/String; = "EEEE"

.field public static final WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final YEAR:Ljava/lang/String; = "y"

.field public static final YEAR_ABBR_MONTH:Ljava/lang/String; = "yMMM"

.field public static final YEAR_ABBR_MONTH_DAY:Ljava/lang/String; = "yMMMd"

.field public static final YEAR_ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMEd"

.field public static final YEAR_ABBR_QUARTER:Ljava/lang/String; = "yQQQ"

.field public static final YEAR_FIELD:I = 0x1

.field public static final YEAR_MONTH:Ljava/lang/String; = "yMMMM"

.field public static final YEAR_MONTH_DAY:Ljava/lang/String; = "yMMMMd"

.field public static final YEAR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMMEEEEd"

.field public static final YEAR_NAME_FIELD:I = 0x1e

.field public static final YEAR_NUM_MONTH:Ljava/lang/String; = "yM"

.field public static final YEAR_NUM_MONTH_DAY:Ljava/lang/String; = "yMd"

.field public static final YEAR_NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMEd"

.field public static final YEAR_QUARTER:Ljava/lang/String; = "yQQQQ"

.field public static final YEAR_WOY_FIELD:I = 0x12

.field public static final ZONE_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field private booleanAttributes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/DateFormat$BooleanAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected calendar:Lcom/ibm/icu/util/Calendar;

.field private capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

.field protected numberFormat:Lcom/ibm/icu/text/NumberFormat;

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "y"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "QQQQ"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "QQQ"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "yQQQQ"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "yQQQ"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "MMMM"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "MMM"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "M"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "yMMMM"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "yMMM"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const/16 v1, 0xa

    const-string v12, "yM"

    aput-object v12, v0, v1

    const/16 v1, 0xb

    const-string v12, "d"

    aput-object v12, v0, v1

    const/16 v1, 0xc

    const-string v12, "yMMMMd"

    aput-object v12, v0, v1

    const/16 v1, 0xd

    const-string v12, "yMMMd"

    aput-object v12, v0, v1

    const/16 v1, 0xe

    const-string v12, "yMd"

    aput-object v12, v0, v1

    const/16 v1, 0xf

    const-string v12, "EEEE"

    aput-object v12, v0, v1

    const/16 v1, 0x10

    const-string v12, "E"

    aput-object v12, v0, v1

    const/16 v1, 0x11

    const-string v12, "yMMMMEEEEd"

    aput-object v12, v0, v1

    const/16 v1, 0x12

    const-string v12, "yMMMEd"

    aput-object v12, v0, v1

    const/16 v1, 0x13

    const-string v12, "yMEd"

    aput-object v12, v0, v1

    const/16 v1, 0x14

    const-string v12, "MMMMd"

    aput-object v12, v0, v1

    const/16 v1, 0x15

    const-string v12, "MMMd"

    aput-object v12, v0, v1

    const/16 v1, 0x16

    const-string v12, "Md"

    aput-object v12, v0, v1

    const/16 v1, 0x17

    const-string v12, "MMMMEEEEd"

    aput-object v12, v0, v1

    const/16 v1, 0x18

    const-string v12, "MMMEd"

    aput-object v12, v0, v1

    const/16 v1, 0x19

    const-string v12, "MEd"

    aput-object v12, v0, v1

    .line 1114
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/DateFormat;->DATE_SKELETONS:Ljava/util/List;

    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "j"

    aput-object v1, v0, v2

    const-string v1, "H"

    aput-object v1, v0, v3

    const-string v1, "m"

    aput-object v1, v0, v4

    const-string v1, "jm"

    aput-object v1, v0, v5

    const-string v1, "Hm"

    aput-object v1, v0, v6

    const-string v1, "s"

    aput-object v1, v0, v7

    const-string v1, "jms"

    aput-object v1, v0, v8

    const-string v1, "Hms"

    aput-object v1, v0, v9

    const-string v1, "ms"

    aput-object v1, v0, v10

    .line 1214
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/DateFormat;->TIME_SKELETONS:Ljava/util/List;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "VVVV"

    aput-object v1, v0, v2

    const-string v1, "vvvv"

    aput-object v1, v0, v3

    const-string v1, "v"

    aput-object v1, v0, v4

    const-string v1, "zzzz"

    aput-object v1, v0, v5

    const-string v1, "z"

    aput-object v1, v0, v6

    const-string v1, "ZZZZ"

    aput-object v1, v0, v7

    .line 1290
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/DateFormat;->ZONE_SKELETONS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1923
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 536
    const-class v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    .line 574
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    const/4 v0, 0x1

    .line 592
    iput v0, p0, Lcom/ibm/icu/text/DateFormat;->serialVersionOnStream:I

    return-void
.end method

.method static fixNumberFormatForDates(Lcom/ibm/icu/text/NumberFormat;)V
    .locals 2

    const/4 v0, 0x0

    .line 1637
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 1638
    instance-of v1, p0, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v1, :cond_0

    .line 1639
    move-object v1, p0

    check-cast v1, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    :cond_0
    const/4 v1, 0x1

    .line 1641
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 1642
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method private static get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    and-int/lit16 v1, p1, 0x80

    if-gtz v1, :cond_1

    :cond_0
    if-eq p0, v0, :cond_2

    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_2

    .line 1865
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/ibm/icu/impl/RelativeDateFormat;-><init>(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)V

    return-object v0

    :cond_2
    if-lt p1, v0, :cond_5

    const/4 v1, 0x3

    if-gt p1, v1, :cond_5

    if-lt p0, v0, :cond_4

    if-gt p0, v1, :cond_4

    if-nez p3, :cond_3

    .line 1877
    invoke-static {p2}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object p3

    .line 1881
    :cond_3
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->getDateTimeFormat(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    .line 1882
    sget-object p1, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    sget-object p2, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    .line 1883
    invoke-virtual {p3, p2}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    .line 1882
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1888
    :catch_0
    new-instance p0, Lcom/ibm/icu/text/SimpleDateFormat;

    const-string p1, "M/d/yy h:mm a"

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1873
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal date style "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1870
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal time style "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 1588
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1598
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance()Lcom/ibm/icu/text/DateFormat;
    .locals 4

    .line 1439
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(I)Lcom/ibm/icu/text/DateFormat;
    .locals 3

    .line 1457
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1495
    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .line 1476
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(Lcom/ibm/icu/util/Calendar;I)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 2104
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    const/4 v0, -0x1

    .line 1965
    invoke-static {p0, p1, v0, p2}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(Lcom/ibm/icu/util/Calendar;ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 1947
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance()Lcom/ibm/icu/text/DateFormat;
    .locals 3

    .line 1507
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v1, v0, v2}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(II)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .line 1529
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 1569
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 1549
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(Lcom/ibm/icu/util/Calendar;II)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 2140
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    if-eqz p0, :cond_0

    .line 2054
    invoke-static {p1, p2, p3, p0}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0

    .line 2052
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Calendar must be supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2027
    invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x3

    .line 1578
    invoke-static {v0, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(II)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 2089
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/DateFormat;->getInstance(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x3

    .line 2078
    invoke-static {p0, v0, v0, p1}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/Calendar;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 2066
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p0, v0, v0, p1}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceForSkeleton(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    if-eqz p0, :cond_0

    .line 2228
    invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calendar"

    invoke-virtual {p2, v1, v0}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    .line 2230
    :cond_0
    invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 2231
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2232
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 2233
    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/SimpleDateFormat;->setCalendar(Lcom/ibm/icu/util/Calendar;)V

    return-object v0
.end method

.method public static final getInstanceForSkeleton(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2207
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->getPatternInstance(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 2154
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 2186
    invoke-static {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 2187
    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2188
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2170
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2325
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->getInstanceForSkeleton(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2304
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->getInstanceForSkeleton(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2250
    invoke-static {p0}, Lcom/ibm/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2284
    invoke-static {p0, p1}, Lcom/ibm/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 0

    .line 2267
    invoke-static {p0, p1}, Lcom/ibm/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance()Lcom/ibm/icu/text/DateFormat;
    .locals 4

    .line 1380
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(I)Lcom/ibm/icu/text/DateFormat;
    .locals 3

    .line 1395
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1427
    invoke-static {v0, p0, p1, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .line 1411
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(Lcom/ibm/icu/util/Calendar;I)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 2120
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    const/4 v0, -0x1

    .line 2003
    invoke-static {p0, v0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(Lcom/ibm/icu/util/Calendar;ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 1984
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1906
    iget p1, p0, Lcom/ibm/icu/text/DateFormat;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1908
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    .line 1912
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    if-nez p1, :cond_1

    .line 1913
    const-class p1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    .line 1916
    :cond_1
    iput v0, p0, Lcom/ibm/icu/text/DateFormat;->serialVersionOnStream:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1844
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateFormat;

    .line 1845
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Calendar;

    iput-object v1, v0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 1846
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-eqz v1, :cond_0

    .line 1847
    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    iput-object v1, v0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1828
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1829
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/DateFormat;

    .line 1830
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-nez v2, :cond_2

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    if-eqz v3, :cond_6

    .line 1831
    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-nez v2, :cond_4

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-eqz v3, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-eqz v3, :cond_6

    .line 1833
    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    iget-object p1, p1, Lcom/ibm/icu/text/DateFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 706
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 626
    instance-of v0, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_0

    .line 627
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 628
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 629
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 630
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 631
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 634
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot format given Object ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as a Date"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 695
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z
    .locals 1

    .line 1775
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    if-ne p1, v0, :cond_0

    .line 1776
    sget-object p1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCalendar()Lcom/ibm/icu/util/Calendar;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    return-object v0
.end method

.method public getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 1804
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/DateFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    :goto_0
    return-object p1
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCalendarLenient()Z
    .locals 1

    .line 1738
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 1713
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    .line 1714
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DateFormat;->getBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 745
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 746
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 747
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 748
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparseable date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 749
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 3

    .line 830
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 831
    iget-object v1, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 832
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->clear()V

    .line 833
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, p1, v2, p2}, Lcom/ibm/icu/text/DateFormat;->parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V

    .line 834
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 836
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 842
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_0
    const/4 p1, 0x0

    .line 846
    :goto_0
    iget-object p2, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p2, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    return-object p1
.end method

.method public abstract parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 860
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public setBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;Z)Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .line 1750
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    sget-object p1, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    :cond_0
    if-eqz p2, :cond_1

    .line 1755
    iget-object p2, p0, Lcom/ibm/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1759
    :cond_1
    iget-object p2, p0, Lcom/ibm/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public setCalendar(Lcom/ibm/icu/util/Calendar;)V
    .locals 0

    .line 1609
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    return-void
.end method

.method public setCalendarLenient(Z)V
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    return-void
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 2

    .line 1790
    invoke-virtual {p1}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_0

    .line 1791
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormat;->capitalizationSetting:Lcom/ibm/icu/text/DisplayContext;

    :cond_0
    return-void
.end method

.method public setLenient(Z)V
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    .line 1701
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/text/DateFormat;->setBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;Z)Lcom/ibm/icu/text/DateFormat;

    .line 1702
    sget-object v0, Lcom/ibm/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Lcom/ibm/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/text/DateFormat;->setBooleanAttribute(Lcom/ibm/icu/text/DateFormat$BooleanAttribute;Z)Lcom/ibm/icu/text/DateFormat;

    return-void
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
    .locals 0

    .line 1629
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1630
    invoke-static {p1}, Lcom/ibm/icu/text/DateFormat;->fixNumberFormatForDates(Lcom/ibm/icu/text/NumberFormat;)V

    return-void
.end method

.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    return-void
.end method
