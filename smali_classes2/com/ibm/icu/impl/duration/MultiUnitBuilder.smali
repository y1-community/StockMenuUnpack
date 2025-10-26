.class Lcom/ibm/icu/impl/duration/MultiUnitBuilder;
.super Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private nPeriods:I


# direct methods
.method constructor <init>(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 494
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 495
    iput p1, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    return-void
.end method

.method public static get(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/MultiUnitBuilder;
    .locals 1

    if-lez p0, :cond_0

    if-eqz p1, :cond_0

    .line 500
    new-instance v0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;-><init>(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
    .locals 8

    .line 515
    iget-object p3, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    .line 516
    :goto_0
    sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v2, v2

    if-ge p4, v2, :cond_5

    const/4 v2, 0x1

    shl-int/2addr v2, p4

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    .line 518
    sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v2, v2, p4

    .line 519
    iget v3, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 522
    :cond_0
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    if-lez v0, :cond_4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    long-to-double v5, p1

    long-to-double v3, v3

    .line 525
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    .line 526
    iget v7, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ge v0, v7, :cond_2

    .line 527
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    .line 528
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-long v3, v3

    sub-long/2addr p1, v3

    :cond_2
    if-nez v1, :cond_3

    double-to-float v1, v5

    .line 531
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v1

    goto :goto_1

    :cond_3
    double-to-float v3, v5

    .line 533
    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/duration/Period;->and(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v1

    :cond_4
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1
.end method

.method protected withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .locals 1

    .line 507
    iget v0, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->get(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/MultiUnitBuilder;

    move-result-object p1

    return-object p1
.end method
