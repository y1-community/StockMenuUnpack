.class public Lcom/ibm/icu/util/SimpleDateRule;
.super Ljava/lang/Object;
.source "SimpleDateRule.java"

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# instance fields
.field private calendar:Lcom/ibm/icu/util/Calendar;

.field private dayOfMonth:I

.field private dayOfWeek:I

.field private month:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 32
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    .line 33
    iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 59
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    .line 60
    iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    neg-int p3, p3

    .line 61
    :goto_0
    iput p3, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void
.end method

.method constructor <init>(IILcom/ibm/icu/util/Calendar;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    .line 40
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    .line 41
    iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    .line 43
    iput-object p3, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    return-void
.end method

.method private computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;
    .locals 3

    .line 178
    monitor-enter p2

    .line 179
    :try_start_0
    invoke-virtual {p2}, Lcom/ibm/icu/util/Calendar;->clear()V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p2, v0}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 182
    iget v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 183
    iget p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V

    .line 187
    iget p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    if-eqz p1, :cond_1

    .line 188
    invoke-virtual {p2}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x7

    .line 189
    invoke-virtual {p2, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    .line 195
    iget v2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I

    if-lez v2, :cond_0

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 198
    rem-int/2addr v2, p1

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 203
    rem-int/2addr v2, p1

    neg-int v2, v2

    .line 206
    :goto_0
    invoke-virtual {p2, v0, v2}, Lcom/ibm/icu/util/Calendar;->add(II)V

    .line 209
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 210
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 148
    monitor-enter v0

    .line 149
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 152
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    .line 156
    iget v4, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    if-le v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 161
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/ibm/icu/util/SimpleDateRule;->computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v4

    .line 165
    iget v5, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I

    if-ne v3, v5, :cond_1

    invoke-virtual {v4, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/2addr v2, v1

    .line 166
    invoke-direct {p0, v2, v0}, Lcom/ibm/icu/util/SimpleDateRule;->computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v4

    :cond_1
    if-eqz p2, :cond_2

    .line 169
    invoke-virtual {v4, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 170
    monitor-exit v0

    return-object p1

    .line 172
    :cond_2
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/SimpleDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 119
    monitor-enter v0

    .line 120
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x6

    .line 122
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/ibm/icu/util/SimpleDateRule;->computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
