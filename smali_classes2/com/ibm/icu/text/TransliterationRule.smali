.class Lcom/ibm/icu/text/TransliterationRule;
.super Ljava/lang/Object;
.source "TransliterationRule.java"


# static fields
.field static final ANCHOR_END:I = 0x2

.field static final ANCHOR_START:I = 0x1


# instance fields
.field private anteContext:Lcom/ibm/icu/text/StringMatcher;

.field private anteContextLength:I

.field private final data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

.field flags:B

.field private key:Lcom/ibm/icu/text/StringMatcher;

.field private keyLength:I

.field private output:Lcom/ibm/icu/text/UnicodeReplacer;

.field private pattern:Ljava/lang/String;

.field private postContext:Lcom/ibm/icu/text/StringMatcher;

.field segments:[Lcom/ibm/icu/text/UnicodeMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II[Lcom/ibm/icu/text/UnicodeMatcher;ZZLcom/ibm/icu/text/RuleBasedTransliterator$Data;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p10, p0, Lcom/ibm/icu/text/TransliterationRule;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 165
    iput v0, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_a

    .line 170
    iput p2, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    :goto_0
    if-gez p3, :cond_1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget p3, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    goto :goto_1

    .line 175
    :cond_1
    iget p2, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    if-lt p3, p2, :cond_9

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p3, p2, :cond_9

    .line 179
    iget p2, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    :goto_1
    if-gez p5, :cond_2

    .line 182
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    goto :goto_2

    .line 183
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p5, p2, :cond_8

    .line 191
    :goto_2
    iput-object p7, p0, Lcom/ibm/icu/text/TransliterationRule;->segments:[Lcom/ibm/icu/text/UnicodeMatcher;

    .line 193
    iput-object p1, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 194
    iput-byte v0, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    if-eqz p8, :cond_3

    or-int/lit8 p2, v0, 0x1

    int-to-byte p2, p2

    .line 196
    iput-byte p2, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    :cond_3
    if-eqz p9, :cond_4

    .line 199
    iget-byte p2, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    :cond_4
    const/4 p2, 0x0

    .line 202
    iput-object p2, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContext:Lcom/ibm/icu/text/StringMatcher;

    .line 203
    iget p3, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    if-lez p3, :cond_5

    .line 204
    new-instance p7, Lcom/ibm/icu/text/StringMatcher;

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p7, p1, v0, p10}, Lcom/ibm/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p7, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContext:Lcom/ibm/icu/text/StringMatcher;

    .line 208
    :cond_5
    iput-object p2, p0, Lcom/ibm/icu/text/TransliterationRule;->key:Lcom/ibm/icu/text/StringMatcher;

    .line 209
    iget p1, p0, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    if-lez p1, :cond_6

    .line 210
    new-instance p3, Lcom/ibm/icu/text/StringMatcher;

    iget-object p7, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget p8, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    add-int/2addr p1, p8

    invoke-virtual {p7, p8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, v0, p10}, Lcom/ibm/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p3, p0, Lcom/ibm/icu/text/TransliterationRule;->key:Lcom/ibm/icu/text/StringMatcher;

    .line 214
    :cond_6
    iget-object p1, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget p3, p0, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    sub-int/2addr p1, p3

    iget p7, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr p1, p7

    .line 215
    iput-object p2, p0, Lcom/ibm/icu/text/TransliterationRule;->postContext:Lcom/ibm/icu/text/StringMatcher;

    if-lez p1, :cond_7

    .line 217
    new-instance p1, Lcom/ibm/icu/text/StringMatcher;

    iget-object p2, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    add-int/2addr p7, p3

    invoke-virtual {p2, p7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0, p10}, Lcom/ibm/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p1, p0, Lcom/ibm/icu/text/TransliterationRule;->postContext:Lcom/ibm/icu/text/StringMatcher;

    .line 221
    :cond_7
    new-instance p1, Lcom/ibm/icu/text/StringReplacer;

    add-int/2addr p5, p6

    invoke-direct {p1, p4, p5, p10}, Lcom/ibm/icu/text/StringReplacer;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    iput-object p1, p0, Lcom/ibm/icu/text/TransliterationRule;->output:Lcom/ibm/icu/text/UnicodeReplacer;

    return-void

    .line 184
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid cursor position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid post context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ante context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static final posAfter(Lcom/ibm/icu/text/Replaceable;I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 343
    invoke-interface {p0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 344
    invoke-interface {p0, p1}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method static final posBefore(Lcom/ibm/icu/text/Replaceable;I)I
    .locals 1

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 338
    invoke-interface {p0, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 5

    .line 560
    iget p4, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    iget v0, p0, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    add-int/2addr p4, v0

    .line 561
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 562
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 566
    iget v2, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    :goto_0
    if-ge v2, p4, :cond_4

    .line 567
    iget-object v3, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    .line 568
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 569
    iget-object v4, p0, Lcom/ibm/icu/text/TransliterationRule;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v4

    if-nez v4, :cond_1

    .line 571
    invoke-virtual {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 577
    :cond_1
    :try_start_0
    move-object v3, v4

    check-cast v3, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->containsSome(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 580
    :cond_2
    invoke-interface {v4, v0}, Lcom/ibm/icu/text/UnicodeMatcher;->addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 582
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 583
    invoke-interface {v4, v1}, Lcom/ibm/icu/text/UnicodeMatcher;->addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 584
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->containsSome(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 587
    :cond_3
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 592
    :cond_4
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 593
    iget-object p1, p0, Lcom/ibm/icu/text/TransliterationRule;->output:Lcom/ibm/icu/text/UnicodeReplacer;

    invoke-interface {p1, p3}, Lcom/ibm/icu/text/UnicodeReplacer;->addReplacementSetTo(Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getAnteContextLength()I
    .locals 3

    .line 230
    iget v0, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    iget-byte v1, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method final getIndexValue()I
    .locals 3

    .line 240
    iget v0, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    iget-object v1, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/ibm/icu/text/TransliterationRule;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v1

    if-nez v1, :cond_1

    and-int/lit16 v2, v0, 0xff

    :cond_1
    return v2
.end method

.method public masks(Lcom/ibm/icu/text/TransliterationRule;)Z
    .locals 9

    .line 311
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 312
    iget v1, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    .line 313
    iget v2, p1, Lcom/ibm/icu/text/TransliterationRule;->anteContextLength:I

    .line 314
    iget-object v3, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 315
    iget-object v4, p1, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_3

    if-ne v3, v4, :cond_3

    .line 321
    iget v7, p0, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    iget v8, p1, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    if-gt v7, v8, :cond_3

    iget-object v7, p1, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget-object v8, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 323
    invoke-virtual {v7, v6, v8, v6, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 325
    iget-byte v0, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    iget-byte p1, p1, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    if-eq v0, p1, :cond_2

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    return v5

    :cond_3
    if-gt v1, v2, :cond_5

    if-lt v3, v4, :cond_4

    if-ne v3, v4, :cond_5

    .line 330
    iget v3, p0, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    iget v4, p1, Lcom/ibm/icu/text/TransliterationRule;->keyLength:I

    if-gt v3, v4, :cond_5

    :cond_4
    iget-object p1, p1, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/ibm/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 333
    invoke-virtual {p1, v2, v1, v6, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    return v5
.end method

.method public matchAndReplace(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)I
    .locals 8

    .line 381
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRule;->segments:[Lcom/ibm/icu/text/UnicodeMatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRule;->segments:[Lcom/ibm/icu/text/UnicodeMatcher;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 383
    aget-object v2, v2, v0

    check-cast v2, Lcom/ibm/icu/text/StringMatcher;

    invoke-virtual {v2}, Lcom/ibm/icu/text/StringMatcher;->resetMatch()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 403
    iget v3, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    invoke-static {p1, v3}, Lcom/ibm/icu/text/TransliterationRule;->posBefore(Lcom/ibm/icu/text/Replaceable;I)I

    move-result v3

    .line 408
    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-static {p1, v4}, Lcom/ibm/icu/text/TransliterationRule;->posBefore(Lcom/ibm/icu/text/Replaceable;I)I

    move-result v4

    aput v4, v2, v1

    .line 410
    iget-object v4, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContext:Lcom/ibm/icu/text/StringMatcher;

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 411
    invoke-virtual {v4, p1, v2, v3, v1}, Lcom/ibm/icu/text/StringMatcher;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I

    move-result v4

    if-eq v4, v5, :cond_1

    return v1

    :cond_1
    aget v4, v2, v1

    .line 419
    invoke-static {p1, v4}, Lcom/ibm/icu/text/TransliterationRule;->posAfter(Lcom/ibm/icu/text/Replaceable;I)I

    move-result v6

    .line 423
    iget-byte v7, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    and-int/2addr v7, v0

    if-eqz v7, :cond_2

    if-eq v4, v3, :cond_2

    return v1

    .line 429
    :cond_2
    iget v3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    aput v3, v2, v1

    .line 431
    iget-object v3, p0, Lcom/ibm/icu/text/TransliterationRule;->key:Lcom/ibm/icu/text/StringMatcher;

    if-eqz v3, :cond_3

    .line 432
    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v3, p1, v2, v4, p3}, Lcom/ibm/icu/text/StringMatcher;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I

    move-result v3

    if-eq v3, v5, :cond_3

    return v3

    :cond_3
    aget v3, v2, v1

    .line 440
    iget-object v4, p0, Lcom/ibm/icu/text/TransliterationRule;->postContext:Lcom/ibm/icu/text/StringMatcher;

    if-eqz v4, :cond_5

    if-eqz p3, :cond_4

    .line 441
    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ne v3, v4, :cond_4

    return v0

    .line 449
    :cond_4
    iget-object v4, p0, Lcom/ibm/icu/text/TransliterationRule;->postContext:Lcom/ibm/icu/text/StringMatcher;

    iget v7, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v4, p1, v2, v7, p3}, Lcom/ibm/icu/text/StringMatcher;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I

    move-result v4

    if-eq v4, v5, :cond_5

    return v4

    :cond_5
    aget v4, v2, v1

    .line 459
    iget-byte v7, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    and-int/2addr v7, v5

    if-eqz v7, :cond_7

    .line 460
    iget v7, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    if-eq v4, v7, :cond_6

    return v1

    :cond_6
    if-eqz p3, :cond_7

    return v0

    .line 473
    :cond_7
    iget-object p3, p0, Lcom/ibm/icu/text/TransliterationRule;->output:Lcom/ibm/icu/text/UnicodeReplacer;

    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-interface {p3, p1, v0, v3, v2}, Lcom/ibm/icu/text/UnicodeReplacer;->replace(Lcom/ibm/icu/text/Replaceable;II[I)I

    move-result p1

    .line 474
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    sub-int/2addr v3, p3

    sub-int/2addr p1, v3

    aget p3, v2, v1

    add-int/2addr v4, p1

    .line 478
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 479
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 481
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return v5
.end method

.method final matchesIndexValue(I)Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRule;->key:Lcom/ibm/icu/text/StringMatcher;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRule;->postContext:Lcom/ibm/icu/text/StringMatcher;

    :goto_0
    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v0, p1}, Lcom/ibm/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toRule(Z)Ljava/lang/String;
    .locals 5

    .line 492
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 497
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 501
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContext:Lcom/ibm/icu/text/StringMatcher;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRule;->postContext:Lcom/ibm/icu/text/StringMatcher;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 505
    :goto_1
    iget-byte v4, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    const/16 v4, 0x5e

    .line 506
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 510
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/text/TransliterationRule;->anteContext:Lcom/ibm/icu/text/StringMatcher;

    invoke-static {v0, v4, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    if-eqz v2, :cond_3

    const/16 v4, 0x7b

    .line 513
    invoke-static {v0, v4, v3, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 516
    :cond_3
    iget-object v4, p0, Lcom/ibm/icu/text/TransliterationRule;->key:Lcom/ibm/icu/text/StringMatcher;

    invoke-static {v0, v4, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    if-eqz v2, :cond_4

    const/16 v2, 0x7d

    .line 519
    invoke-static {v0, v2, v3, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 522
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRule;->postContext:Lcom/ibm/icu/text/StringMatcher;

    invoke-static {v0, v2, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    .line 525
    iget-byte v2, p0, Lcom/ibm/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/16 v2, 0x24

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    const-string v2, " > "

    .line 529
    invoke-static {v0, v2, v3, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 533
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRule;->output:Lcom/ibm/icu/text/UnicodeReplacer;

    invoke-interface {v2, p1}, Lcom/ibm/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    const/16 v2, 0x3b

    .line 536
    invoke-static {v0, v2, v3, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
