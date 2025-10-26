.class public Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterService.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/PeriodFormatterService;


# static fields
.field private static instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;


# instance fields
.field private ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    return-void
.end method

.method public static getInstance()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
    .locals 2

    .line 31
    sget-object v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getInstance()Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;-><init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V

    sput-object v1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    .line 36
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    return-object v0
.end method


# virtual methods
.method public getAvailableLocaleNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;->getAvailableLocales()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public newDurationFormatterFactory()Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 51
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;)V

    return-object v0
.end method

.method public newPeriodBuilderFactory()Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
    .locals 2

    .line 61
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;-><init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method

.method public newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
    .locals 2

    .line 56
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;-><init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method
