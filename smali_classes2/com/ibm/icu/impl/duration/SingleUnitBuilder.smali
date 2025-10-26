.class Lcom/ibm/icu/impl/duration/SingleUnitBuilder;
.super Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-void
.end method

.method public static get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/SingleUnitBuilder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 416
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
    .locals 4

    .line 427
    iget-object p3, p0, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result p3

    const/4 p4, 0x0

    .line 428
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v0, v0

    if-ge p4, v0, :cond_1

    const/4 v0, 0x1

    shl-int/2addr v0, p4

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v0, v0, p4

    .line 431
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    long-to-double p1, p1

    long-to-double p3, v1

    .line 433
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    double-to-float p1, p1

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    .line 434
    invoke-virtual {p1, p5}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 421
    invoke-static {p1}, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;->get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/SingleUnitBuilder;

    move-result-object p1

    return-object p1
.end method
