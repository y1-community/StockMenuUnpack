.class public Lcom/ibm/icu/util/TimeUnitAmount;
.super Lcom/ibm/icu/util/Measure;
.source "TimeUnitAmount.java"


# direct methods
.method public constructor <init>(DLcom/ibm/icu/util/TimeUnit;)V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0, p3}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Lcom/ibm/icu/util/TimeUnit;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    return-void
.end method


# virtual methods
.method public getTimeUnit()Lcom/ibm/icu/util/TimeUnit;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeUnitAmount;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeUnit;

    return-object v0
.end method
