.class Lcom/ibm/icu/impl/duration/FixedUnitBuilder;
.super Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private unit:Lcom/ibm/icu/impl/duration/TimeUnit;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 386
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 387
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    return-void
.end method

.method public static get(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/FixedUnitBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;-><init>(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
    .locals 0

    .line 398
    iget-object p3, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 401
    :cond_0
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide p3

    long-to-double p1, p1

    long-to-double p3, p3

    .line 402
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    double-to-float p1, p1

    iget-object p2, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    .line 403
    invoke-virtual {p1, p5}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    return-object p1
.end method

.method protected withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->get(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/FixedUnitBuilder;

    move-result-object p1

    return-object p1
.end method
