.class abstract Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/PeriodBuilder;


# instance fields
.field protected settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method protected constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-void
.end method


# virtual methods
.method public approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J
    .locals 2

    .line 331
    invoke-static {p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public create(J)Lcom/ibm/icu/impl/duration/Period;
    .locals 2

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->createWithReferenceDate(JJ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    return-object p1
.end method

.method public createWithReferenceDate(JJ)Lcom/ibm/icu/impl/duration/Period;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    neg-long p1, p1

    :cond_1
    move-wide v2, p1

    .line 340
    iget-object p1, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p1, v2, v3, v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->createLimited(JZ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    if-nez p1, :cond_2

    move-object v1, p0

    move-wide v4, p3

    move v6, v0

    .line 342
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 344
    iget-object p2, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Lcom/ibm/icu/impl/duration/TimeUnit;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/duration/Period;->lessThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method protected abstract handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
.end method

.method public withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    .line 359
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    if-eq p1, v0, :cond_0

    .line 360
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method protected abstract withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .locals 0

    return-object p0
.end method
