.class Lcom/ibm/icu/util/EasterRule;
.super Ljava/lang/Object;
.source "EasterHoliday.java"

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# instance fields
.field private calendar:Lcom/ibm/icu/util/GregorianCalendar;

.field private daysAfterEaster:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    .line 139
    iput p1, p0, Lcom/ibm/icu/util/EasterRule;->daysAfterEaster:I

    if-eqz p2, :cond_0

    .line 141
    new-instance p1, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method private computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;
    .locals 9

    if-nez p2, :cond_0

    .line 234
    iget-object p2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    .line 236
    :cond_0
    monitor-enter p2

    .line 237
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 239
    invoke-virtual {p2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 240
    rem-int/lit8 v1, v0, 0x13

    .line 244
    invoke-virtual {p2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 247
    div-int/lit8 v2, v0, 0x64

    .line 248
    div-int/lit8 v4, v2, 0x4

    sub-int v4, v2, v4

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v5, v5, 0xd

    div-int/lit8 v5, v5, 0x19

    sub-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x13

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xf

    rem-int/lit8 v4, v4, 0x1e

    .line 249
    div-int/lit8 v5, v4, 0x1c

    div-int/lit8 v6, v4, 0x1c

    const/16 v7, 0x1d

    add-int/lit8 v8, v4, 0x1

    div-int/2addr v7, v8

    mul-int v6, v6, v7

    rsub-int/lit8 v1, v1, 0x15

    div-int/lit8 v1, v1, 0xb

    mul-int v6, v6, v1

    rsub-int/lit8 v1, v6, 0x1

    mul-int v5, v5, v1

    sub-int/2addr v4, v5

    .line 250
    div-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x13

    add-int/lit8 v1, v1, 0xf

    .line 255
    rem-int/lit8 v4, v1, 0x1e

    .line 256
    div-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    rem-int/lit8 v1, v1, 0x7

    :goto_0
    sub-int/2addr v4, v1

    add-int/lit8 v1, v4, 0x28

    .line 259
    div-int/lit8 v1, v1, 0x2c

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v4, 0x1c

    .line 260
    div-int/lit8 v2, v1, 0x4

    mul-int/lit8 v2, v2, 0x1f

    sub-int/2addr v4, v2

    .line 262
    invoke-virtual {p2}, Lcom/ibm/icu/util/GregorianCalendar;->clear()V

    const/4 v2, 0x0

    .line 263
    invoke-virtual {p2, v2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    .line 264
    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    sub-int/2addr v1, p1

    .line 265
    invoke-virtual {p2, v3, v1}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 266
    invoke-virtual {p2, p1, v4}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    .line 267
    invoke-virtual {p2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 268
    iget v0, p0, Lcom/ibm/icu/util/EasterRule;->daysAfterEaster:I

    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/util/GregorianCalendar;->add(II)V

    .line 270
    invoke-virtual {p2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 271
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v1

    .line 202
    invoke-virtual {v1, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 205
    iget-object p1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    .line 206
    iget-object p1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {p1, v1, v1}, Lcom/ibm/icu/util/GregorianCalendar;->add(II)V

    .line 211
    iget-object p1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iget-object v1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 215
    invoke-virtual {v1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 217
    monitor-exit v0

    return-object p1

    .line 219
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/EasterRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

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
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 172
    iget-object p1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result p1

    .line 174
    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 176
    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
