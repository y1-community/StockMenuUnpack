.class Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;
.super Ljava/lang/Object;
.source "BasicDurationFormatterFactory.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/DurationFormatterFactory;


# instance fields
.field private builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

.field private f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

.field private fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method protected createFormatter()Lcom/ibm/icu/impl/duration/BasicDurationFormatter;
    .locals 9

    .line 242
    new-instance v8, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    iget-object v2, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    iget-object v3, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    iget-wide v4, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    iget-object v6, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    iget-object v7, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;-><init>(Lcom/ibm/icu/impl/duration/PeriodFormatter;Lcom/ibm/icu/impl/duration/PeriodBuilder;Lcom/ibm/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v8
.end method

.method public getFallback()Lcom/ibm/icu/impl/duration/DateFormatter;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    return-object v0
.end method

.method public getFallbackLimit()J
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    :goto_0
    return-wide v0
.end method

.method public getFormatter()Lcom/ibm/icu/impl/duration/DurationFormatter;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DateFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    .line 165
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->createFormatter()Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    return-object v0
.end method

.method public getLocaleName()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->newPeriodBuilderFactory()Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 194
    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    .line 195
    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;->setTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;->getSingleUnitBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    return-object v0
.end method

.method public getPeriodFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 180
    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    return-void
.end method

.method public setFallback(Lcom/ibm/icu/impl/duration/DateFormatter;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 88
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    .line 89
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_2
    return-object p0
.end method

.method public setFallbackLimit(J)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 106
    iput-wide p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    .line 107
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_1
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_2
    return-object p0
.end method

.method public setPeriodBuilder(Lcom/ibm/icu/impl/duration/PeriodBuilder;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-eq p1, v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_0
    return-object p0
.end method

.method public setPeriodFormatter(Lcom/ibm/icu/impl/duration/PeriodFormatter;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    if-eq p1, v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    .line 55
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_0
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_1
    return-object p0
.end method
