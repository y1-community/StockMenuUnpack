.class public Lcom/ibm/icu/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final AM_PM_MIDNIGHT_NOON:Lcom/ibm/icu/text/DateFormat$Field;

.field private static final CAL_FIELDS:[Lcom/ibm/icu/text/DateFormat$Field;

.field private static final CAL_FIELD_COUNT:I

.field public static final DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final ERA:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field private static final FIELD_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLEXIBLE_DAY_PERIOD:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR0:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR1:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final RELATED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECOND:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final TIME_SEPARATOR:Lcom/ibm/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final YEAR:Lcom/ibm/icu/text/DateFormat$Field;

.field public static final YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;

.field private static final serialVersionUID:J = -0x325750c275d0f8cdL


# instance fields
.field private final calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2352
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    .line 2353
    invoke-virtual {v0}, Lcom/ibm/icu/util/GregorianCalendar;->getFieldCount()I

    move-result v0

    sput v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    .line 2354
    new-array v1, v0, [Lcom/ibm/icu/text/DateFormat$Field;

    sput-object v1, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELDS:[Lcom/ibm/icu/text/DateFormat$Field;

    .line 2355
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/ibm/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    .line 2364
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "am pm"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2370
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2376
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "day of week"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2382
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "day of week in month"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2389
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "day of year"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2395
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->ERA:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2401
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "hour of day"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2407
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "hour of day 1"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2413
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "hour"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR0:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2419
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "hour 1"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->HOUR1:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2425
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "millisecond"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2431
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "minute"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2437
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "month"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2443
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "second"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2449
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "time zone"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2455
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "week of month"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2462
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "week of year"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2468
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "year"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2477
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "local day of week"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2483
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "extended year"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2490
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "Julian day"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2496
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "milliseconds in day"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2503
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "year for week of year"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2509
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "quarter"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2517
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "related year"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->RELATED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2523
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "am/pm/midnight/noon"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2529
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "flexible day period"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Lcom/ibm/icu/text/DateFormat$Field;

    .line 2537
    new-instance v0, Lcom/ibm/icu/text/DateFormat$Field;

    const-string v1, "time separator"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$Field;->TIME_SEPARATOR:Lcom/ibm/icu/text/DateFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2563
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 2564
    iput p2, p0, Lcom/ibm/icu/text/DateFormat$Field;->calendarField:I

    .line 2565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ibm/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_0

    .line 2566
    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    .line 2567
    sget p1, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p2, p1, :cond_0

    .line 2568
    sget-object p1, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELDS:[Lcom/ibm/icu/text/DateFormat$Field;

    aput-object p0, p1, p2

    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Lcom/ibm/icu/text/DateFormat$Field;
    .locals 1

    if-ltz p0, :cond_0

    .line 2587
    sget v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p0, v0, :cond_0

    .line 2590
    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->CAL_FIELDS:[Lcom/ibm/icu/text/DateFormat$Field;

    aget-object p0, v0, p0

    return-object p0

    .line 2588
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Calendar field number is out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 1

    .line 2603
    iget v0, p0, Lcom/ibm/icu/text/DateFormat$Field;->calendarField:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2616
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ibm/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_1

    .line 2621
    sget-object v0, Lcom/ibm/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ibm/icu/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2624
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Unknown attribute name."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2617
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "A subclass of DateFormat.Field must implement readResolve."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
