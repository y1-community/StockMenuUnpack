.class public Lcom/ibm/icu/text/UnicodeSetSpanner;
.super Ljava/lang/Object;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;,
        Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;
    }
.end annotation


# instance fields
.field private final unicodeSet:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2

    .line 136
    sget-object v0, Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1
.end method

.method public countIn(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;)I
    .locals 1

    .line 151
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1
.end method

.method public countIn(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 6

    .line 172
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 174
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eq v3, v1, :cond_4

    .line 177
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v3, v0}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_2

    .line 181
    :cond_1
    sget-object v5, Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p2, v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v3, p3}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 186
    new-instance v2, Lcom/ibm/icu/util/OutputInt;

    invoke-direct {v2}, Lcom/ibm/icu/util/OutputInt;-><init>()V

    .line 188
    :cond_3
    iget-object v5, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v3, p3, v2}, Lcom/ibm/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v3

    .line 189
    iget v5, v2, Lcom/ibm/icu/util/OutputInt;->value:I

    add-int/2addr v4, v5

    goto :goto_1

    :cond_4
    :goto_2
    return v4
.end method

.method public deleteFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 205
    sget-object v0, Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ibm/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFrom(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 2

    .line 220
    sget-object v0, Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/ibm/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    instance-of v0, p1, Lcom/ibm/icu/text/UnicodeSetSpanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    check-cast p1, Lcom/ibm/icu/text/UnicodeSetSpanner;

    iget-object p1, p1, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getUnicodeSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 236
    sget-object v0, Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;)Ljava/lang/String;
    .locals 1

    .line 254
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 7

    .line 275
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 277
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 278
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-eq v2, v4, :cond_8

    .line 286
    sget-object v6, Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v2, p4}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    goto :goto_3

    :cond_2
    if-nez v5, :cond_3

    .line 290
    new-instance v5, Lcom/ibm/icu/util/OutputInt;

    invoke-direct {v5}, Lcom/ibm/icu/util/OutputInt;-><init>()V

    .line 292
    :cond_3
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v2, p4, v5}, Lcom/ibm/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v2

    :goto_3
    if-nez v1, :cond_6

    if-nez v2, :cond_4

    goto :goto_5

    .line 296
    :cond_4
    sget-object v6, Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Lcom/ibm/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v6, :cond_5

    .line 297
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 299
    :cond_5
    iget v6, v5, Lcom/ibm/icu/util/OutputInt;->value:I

    :goto_4
    if-lez v6, :cond_6

    .line 300
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ne v2, v4, :cond_7

    goto :goto_6

    .line 306
    :cond_7
    iget-object v6, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v6

    .line 307
    invoke-interface {p1, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v2, v6

    goto :goto_2

    .line 309
    :cond_8
    :goto_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 356
    sget-object v0, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public trim(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;)Ljava/lang/CharSequence;
    .locals 1

    .line 380
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public trim(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;
    .locals 3

    .line 407
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 408
    sget-object v1, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p1, p3}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 416
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v2, :cond_2

    .line 417
    iget-object p2, p0, Lcom/ibm/icu/text/UnicodeSetSpanner;->unicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p2, p1, p3}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    if-nez v1, :cond_3

    if-ne p2, v0, :cond_3

    goto :goto_1

    .line 421
    :cond_3
    invoke-interface {p1, v1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    return-object p1
.end method
