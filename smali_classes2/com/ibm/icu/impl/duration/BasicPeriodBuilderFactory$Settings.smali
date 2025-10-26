.class Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Settings"
.end annotation


# instance fields
.field allowMillis:Z

.field allowZero:Z

.field inUse:Z

.field maxLimit:I

.field maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

.field minLimit:I

.field minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

.field final synthetic this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

.field uset:S

.field weeksAloneOnly:Z


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xff

    .line 39
    iput-short p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 40
    sget-object p1, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 41
    sget-object p1, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    .line 46
    iput-boolean p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-void
.end method


# virtual methods
.method public copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    .line 182
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)V

    .line 183
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    .line 184
    iget-short v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    iput-short v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 185
    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 186
    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 187
    iget v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    iput v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    .line 188
    iget v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    iput v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    .line 189
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    .line 190
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    .line 191
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-object v0
.end method

.method createLimited(JZ)Lcom/ibm/icu/impl/duration/Period;
    .locals 10

    .line 162
    iget v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    const/high16 v1, 0x447a0000    # 1000.0f

    const-wide/16 v2, 0x3e8

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v4

    mul-long v6, p1, v2

    .line 164
    iget v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    int-to-long v8, v0

    mul-long v8, v8, v4

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    int-to-float p1, v0

    div-float/2addr p1, v1

    .line 165
    iget-object p2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/duration/Period;->moreThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    if-lez v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Lcom/ibm/icu/impl/duration/TimeUnit;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v4

    .line 172
    iget-object v6, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    if-ne v0, v6, :cond_1

    iget v6, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v6, v6

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v6}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v6

    iget v8, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v8, v8

    mul-long v6, v6, v8

    div-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_0
    mul-long p1, p1, v2

    mul-long v4, v4, v6

    cmp-long v2, p1, v4

    if-gez v2, :cond_2

    long-to-float p1, v6

    div-float/2addr p1, v1

    .line 175
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/duration/Period;->lessThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method effectiveMinUnit()Lcom/ibm/icu/impl/duration/TimeUnit;
    .locals 4

    .line 89
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 94
    iget-short v2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    shl-int v3, v1, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 95
    sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v0, v1, v0

    return-object v0

    .line 98
    :cond_2
    sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    return-object v0

    .line 90
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    return-object v0
.end method

.method effectiveSet()S
    .locals 3

    .line 82
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-eqz v0, :cond_0

    .line 83
    iget-short v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    return v0

    .line 85
    :cond_0
    iget-short v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    const/4 v1, 0x1

    sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    iget-byte v2, v2, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method setAllowMilliseconds(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-ne v0, p1, :cond_0

    return-object p0

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 144
    :goto_0
    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-object v0
.end method

.method setAllowZero(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    if-ne v0, p1, :cond_0

    return-object p0

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 126
    :goto_0
    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    return-object v0
.end method

.method setInUse()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    return-object p0
.end method

.method setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-static {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->access$000(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->weeksAloneOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    return-object p1
.end method

.method setMaxLimit(F)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    :goto_0
    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return-object p0

    .line 106
    :cond_1
    iget-boolean p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p0

    .line 107
    :goto_1
    iput v0, p1, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    return-object p1
.end method

.method setMinLimit(F)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    :goto_0
    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return-object p0

    .line 116
    :cond_1
    iget-boolean p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p0

    .line 117
    :goto_1
    iput v0, p1, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    return-object p1
.end method

.method setUnits(I)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 5

    .line 49
    iget-short v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    if-ne v0, p1, :cond_0

    return-object p0

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    int-to-short v1, p1

    .line 54
    iput-short v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    and-int/lit16 v1, p1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    .line 57
    iput-short v2, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 58
    sget-object p1, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 59
    sget-object p1, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 62
    :goto_1
    sget-object v4, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    const/4 v4, 0x1

    shl-int/2addr v4, v1

    and-int/2addr v4, p1

    if-eqz v4, :cond_4

    if-ne v3, v2, :cond_3

    .line 65
    sget-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v3, v3, v1

    iput-object v3, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    :cond_3
    move v3, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-ne v3, v2, :cond_6

    const/4 p1, 0x0

    .line 72
    iput-object p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    goto :goto_2

    .line 74
    :cond_6
    sget-object p1, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object p1, p1, v3

    iput-object p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    :goto_2
    return-object v0
.end method

.method setWeeksAloneOnly(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    if-ne v0, p1, :cond_0

    return-object p0

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 135
    :goto_0
    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    return-object v0
.end method
