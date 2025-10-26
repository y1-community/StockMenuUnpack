.class public Lcom/ibm/icu/util/IndianCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "IndianCalendar.java"


# static fields
.field public static final AGRAHAYANA:I = 0x8

.field public static final ASADHA:I = 0x3

.field public static final ASVINA:I = 0x6

.field public static final BHADRA:I = 0x5

.field public static final CHAITRA:I = 0x0

.field public static final IE:I = 0x0

.field private static final INDIAN_ERA_START:I = 0x4e

.field private static final INDIAN_YEAR_START:I = 0x50

.field public static final JYAISTHA:I = 0x2

.field public static final KARTIKA:I = 0x7

.field private static final LIMITS:[[I

.field public static final MAGHA:I = 0xa

.field public static final PAUSA:I = 0x9

.field public static final PHALGUNA:I = 0xb

.field public static final SRAVANA:I = 0x4

.field public static final VAISAKHA:I = 0x1

.field private static final serialVersionUID:J = 0x3235383330303532L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 402
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v3, [I

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/util/IndianCalendar;->LIMITS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
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
        0x1
        0x1
        0x34
        0x35
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1e
        0x1f
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x16d
        0x16e
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_7
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_8
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/IndianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 257
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x2

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 260
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2

    .line 286
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x2

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 289
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    const/16 p1, 0xb

    .line 290
    invoke-virtual {p0, p1, p4}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    const/16 p1, 0xc

    .line 291
    invoke-virtual {p0, p1, p5}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    const/16 p1, 0xd

    .line 292
    invoke-virtual {p0, p1, p6}, Lcom/ibm/icu/util/IndianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .locals 1

    .line 177
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/IndianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/IndianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/IndianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 199
    invoke-static {p1}, Lcom/ibm/icu/util/TimeZone;->forULocaleOrDefault(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/IndianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 239
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/IndianCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 188
    invoke-static {p1}, Lcom/ibm/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/IndianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method private IndianToJD(III)D
    .locals 7

    add-int/lit8 p1, p1, 0x4e

    .line 475
    invoke-static {p1}, Lcom/ibm/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result v0

    const/16 v1, 0x1f

    const/16 v2, 0x1e

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    .line 477
    invoke-direct {p0, p1, v3, v0}, Lcom/ibm/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v3

    const/16 p1, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    .line 480
    invoke-direct {p0, p1, v3, v0}, Lcom/ibm/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v3

    const/16 p1, 0x1e

    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sub-int/2addr p3, v0

    int-to-double p1, p3

    .line 484
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    add-double/2addr v3, p1

    goto :goto_2

    :cond_1
    int-to-double v5, p1

    .line 486
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    add-int/lit8 p1, p2, -0x2

    const/4 v5, 0x5

    .line 488
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    int-to-double v5, p1

    .line 489
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    const/16 p1, 0x8

    if-lt p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x7

    mul-int/lit8 p2, p2, 0x1e

    int-to-double p1, p2

    .line 492
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, p1

    :cond_2
    sub-int/2addr p3, v0

    int-to-double p1, p3

    .line 494
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :goto_2
    return-wide v3
.end method

.method private gregorianToJD(III)D
    .locals 2

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/IndianCalendar;->computeGregorianMonthStart(II)I

    move-result p1

    add-int/2addr p1, p3

    int-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "indian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 8

    .line 362
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/IndianCalendar;->computeGregorianFields(I)V

    .line 363
    invoke-virtual {p0}, Lcom/ibm/icu/util/IndianCalendar;->getGregorianYear()I

    move-result v0

    add-int/lit8 v1, v0, -0x4e

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 366
    invoke-direct {p0, v0, v2, v3}, Lcom/ibm/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v4

    int-to-double v6, p1

    .line 367
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v4

    double-to-int p1, v6

    const/16 v4, 0x1f

    const/16 v5, 0x1e

    const/16 v6, 0x50

    if-ge p1, v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v3

    .line 372
    invoke-static {v0}, Lcom/ibm/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    add-int/lit16 v6, v0, 0x9b

    add-int/lit8 v6, v6, 0x5a

    add-int/lit8 v6, v6, 0xa

    add-int/2addr p1, v6

    goto :goto_2

    .line 375
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    goto :goto_1

    :cond_2
    const/16 v0, 0x1e

    :goto_1
    add-int/lit8 p1, p1, -0x50

    :goto_2
    const/4 v6, 0x6

    if-ge p1, v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    sub-int v0, p1, v0

    const/16 v7, 0x9b

    if-ge v0, v7, :cond_4

    .line 385
    div-int/lit8 v5, v0, 0x1f

    add-int/2addr v5, v3

    .line 386
    rem-int/2addr v0, v4

    add-int/2addr v0, v3

    goto :goto_3

    :cond_4
    add-int/lit16 v0, v0, -0x9b

    .line 389
    div-int/lit8 v4, v0, 0x1e

    add-int/2addr v4, v6

    .line 390
    rem-int/2addr v0, v5

    add-int/2addr v0, v3

    move v5, v4

    .line 394
    :goto_3
    invoke-virtual {p0, v2, v2}, Lcom/ibm/icu/util/IndianCalendar;->internalSet(II)V

    const/16 v2, 0x13

    .line 395
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/IndianCalendar;->internalSet(II)V

    .line 396
    invoke-virtual {p0, v3, v1}, Lcom/ibm/icu/util/IndianCalendar;->internalSet(II)V

    const/4 v1, 0x2

    .line 397
    invoke-virtual {p0, v1, v5}, Lcom/ibm/icu/util/IndianCalendar;->internalSet(II)V

    const/4 v1, 0x5

    .line 398
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/IndianCalendar;->internalSet(II)V

    add-int/2addr p1, v3

    .line 399
    invoke-virtual {p0, v6, p1}, Lcom/ibm/icu/util/IndianCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0xb

    if-le p2, p3, :cond_1

    .line 449
    :cond_0
    div-int/lit8 p3, p2, 0xc

    add-int/2addr p1, p3

    .line 450
    rem-int/lit8 p2, p2, 0xc

    :cond_1
    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 455
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/IndianCalendar;->IndianToJD(III)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/IndianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/IndianCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/IndianCalendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .line 435
    sget-object v0, Lcom/ibm/icu/util/IndianCalendar;->LIMITS:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method protected handleGetMonthLength(II)I
    .locals 3

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/16 v1, 0xb

    if-le p2, v1, :cond_1

    :cond_0
    new-array v1, v0, [I

    const/16 v2, 0xc

    .line 340
    invoke-static {p2, v2, v1}, Lcom/ibm/icu/util/IndianCalendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    aget p2, v1, p2

    :cond_1
    add-int/lit8 p1, p1, 0x4e

    .line 344
    invoke-static {p1}, Lcom/ibm/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result p1

    const/16 v1, 0x1f

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    return v1

    :cond_2
    if-lt p2, v0, :cond_3

    const/4 p1, 0x5

    if-gt p2, p1, :cond_3

    return v1

    :cond_3
    const/16 p1, 0x1e

    return p1
.end method

.method protected handleGetYearLength(I)I
    .locals 0

    .line 330
    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I

    move-result p1

    return p1
.end method
