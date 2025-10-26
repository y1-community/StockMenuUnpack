.class public Lcom/ibm/icu/impl/duration/BasicDurationFormat;
.super Lcom/ibm/icu/text/DurationFormat;
.source "BasicDurationFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x2bac5567544cfb24L


# instance fields
.field transient formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

.field transient pformatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

.field transient pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/ibm/icu/text/DurationFormat;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    .line 51
    invoke-static {}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    .line 52
    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Lcom/ibm/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/DurationFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    .line 53
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pformatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DurationFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    .line 60
    invoke-static {}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    .line 61
    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Lcom/ibm/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/DurationFormatterFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/DurationFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    .line 62
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pfs:Lcom/ibm/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pformatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/duration/BasicDurationFormat;
    .locals 1

    .line 32
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 36
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_0

    .line 37
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 39
    :cond_0
    instance-of p3, p1, Ljava/util/Date;

    if-eqz p3, :cond_1

    .line 40
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 42
    :cond_1
    instance-of p3, p1, Ljavax/xml/datatype/Duration;

    if-eqz p3, :cond_2

    .line 43
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatDuration(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot format given Object as a Duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public formatDuration(Ljava/lang/Object;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x6

    new-array v2, v1, [Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 93
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-array v3, v1, [Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 101
    sget-object v10, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;

    aput-object v10, v3, v4

    sget-object v10, Lcom/ibm/icu/impl/duration/TimeUnit;->MONTH:Lcom/ibm/icu/impl/duration/TimeUnit;

    aput-object v10, v3, v5

    sget-object v10, Lcom/ibm/icu/impl/duration/TimeUnit;->DAY:Lcom/ibm/icu/impl/duration/TimeUnit;

    aput-object v10, v3, v6

    sget-object v6, Lcom/ibm/icu/impl/duration/TimeUnit;->HOUR:Lcom/ibm/icu/impl/duration/TimeUnit;

    aput-object v6, v3, v7

    sget-object v6, Lcom/ibm/icu/impl/duration/TimeUnit;->MINUTE:Lcom/ibm/icu/impl/duration/TimeUnit;

    aput-object v6, v3, v8

    sget-object v6, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    aput-object v6, v3, v9

    .line 110
    move-object/from16 v6, p1

    check-cast v6, Ljavax/xml/datatype/Duration;

    .line 114
    invoke-virtual {v6}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    if-gez v7, :cond_0

    .line 115
    invoke-virtual {v6}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v6

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    move-object v10, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    .line 121
    aget-object v11, v2, v4

    invoke-virtual {v6, v11}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 122
    aget-object v11, v2, v4

    invoke-virtual {v6, v11}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v11

    .line 123
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-nez v12, :cond_1

    if-nez v9, :cond_1

    goto :goto_4

    .line 128
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v9

    const/4 v11, 0x0

    .line 134
    aget-object v12, v3, v4

    sget-object v13, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    if-ne v12, v13, :cond_2

    float-to-double v12, v9

    .line 136
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    .line 137
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v16

    const-wide/16 v16, 0x0

    cmpl-double v18, v12, v16

    if-lez v18, :cond_2

    .line 139
    sget-object v9, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    double-to-float v11, v12

    double-to-float v12, v14

    move/from16 v19, v11

    move-object v11, v9

    move v9, v12

    move/from16 v12, v19

    goto :goto_2

    :cond_2
    move-object v11, v8

    const/4 v12, 0x0

    :goto_2
    if-nez v10, :cond_3

    .line 146
    aget-object v10, v3, v4

    invoke-static {v9, v10}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v9

    goto :goto_3

    .line 148
    :cond_3
    aget-object v13, v3, v4

    invoke-virtual {v10, v9, v13}, Lcom/ibm/icu/impl/duration/Period;->and(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v9

    :goto_3
    move-object v10, v9

    if-eqz v11, :cond_4

    .line 152
    invoke-virtual {v10, v12, v11}, Lcom/ibm/icu/impl/duration/Period;->and(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v10

    :cond_4
    const/4 v9, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-nez v10, :cond_7

    const-wide/16 v1, 0x0

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    if-eqz v7, :cond_8

    .line 162
    invoke-virtual {v10}, Lcom/ibm/icu/impl/duration/Period;->inPast()Lcom/ibm/icu/impl/duration/Period;

    move-result-object v1

    goto :goto_5

    .line 164
    :cond_8
    invoke-virtual {v10}, Lcom/ibm/icu/impl/duration/Period;->inFuture()Lcom/ibm/icu/impl/duration/Period;

    move-result-object v1

    .line 169
    :goto_5
    iget-object v2, v0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->pformatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    invoke-interface {v2, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatter;->format(Lcom/ibm/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/duration/DurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/impl/duration/DurationFormatter;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->formatter:Lcom/ibm/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/DurationFormatter;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
