.class public Lcom/ibm/icu/impl/number/AffixUtils;
.super Ljava/lang/Object;
.source "AffixUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/AffixUtils$TokenConsumer;,
        Lcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final STATE_AFTER_QUOTE:I = 0x3

.field private static final STATE_BASE:I = 0x0

.field private static final STATE_FIFTH_CURR:I = 0x8

.field private static final STATE_FIRST_CURR:I = 0x4

.field private static final STATE_FIRST_QUOTE:I = 0x1

.field private static final STATE_FOURTH_CURR:I = 0x7

.field private static final STATE_INSIDE_QUOTE:I = 0x2

.field private static final STATE_OVERFLOW_CURR:I = 0x9

.field private static final STATE_SECOND_CURR:I = 0x5

.field private static final STATE_THIRD_CURR:I = 0x6

.field private static final TYPE_CODEPOINT:I = 0x0

.field public static final TYPE_CURRENCY_DOUBLE:I = -0x6

.field public static final TYPE_CURRENCY_OVERFLOW:I = -0xf

.field public static final TYPE_CURRENCY_QUAD:I = -0x8

.field public static final TYPE_CURRENCY_QUINT:I = -0x9

.field public static final TYPE_CURRENCY_SINGLE:I = -0x5

.field public static final TYPE_CURRENCY_TRIPLE:I = -0x7

.field public static final TYPE_MINUS_SIGN:I = -0x1

.field public static final TYPE_PERCENT:I = -0x3

.field public static final TYPE_PERMILLE:I = -0x4

.field public static final TYPE_PLUS_SIGN:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    .line 452
    :cond_1
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 454
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-ltz v3, :cond_1

    .line 455
    invoke-virtual {p1, v3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public static containsType(Ljava/lang/CharSequence;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 381
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 385
    :cond_1
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 387
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 212
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 213
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x27

    if-ge v2, v4, :cond_5

    .line 214
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v7, 0x25

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_3

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_3

    const/16 v7, 0xa4

    if-eq v4, v7, :cond_3

    const/16 v7, 0x2030

    if-eq v4, v7, :cond_3

    if-ne v3, v5, :cond_1

    .line 237
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, "\'\'"

    .line 218
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 227
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 245
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_5
    if-ne v3, v5, :cond_6

    .line 249
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method public static escape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static estimateLength(Ljava/lang/CharSequence;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 133
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v1, v4, :cond_7

    .line 134
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v7, 0x3

    const/16 v8, 0x27

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v7, :cond_1

    if-ne v4, v8, :cond_6

    goto :goto_1

    .line 177
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    if-ne v4, v8, :cond_6

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    if-ne v4, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    if-ne v4, v8, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 180
    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_7
    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_8

    return v3

    .line 186
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated quote: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static getCodePoint(J)I
    .locals 1

    const/16 v0, 0x28

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final getFieldForType(I)Lcom/ibm/icu/text/NumberFormat$Field;
    .locals 1

    const/16 v0, -0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 287
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 267
    :pswitch_0
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 269
    :pswitch_1
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 271
    :pswitch_2
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 273
    :pswitch_3
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 275
    :pswitch_4
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 277
    :pswitch_5
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 279
    :pswitch_6
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 281
    :pswitch_7
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 283
    :pswitch_8
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    .line 285
    :cond_0
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOffset(J)I
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static getState(J)I
    .locals 2

    const/16 v0, 0x24

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static getType(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static getTypeOrCp(J)I
    .locals 1

    .line 667
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->getType(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->getCodePoint(J)I

    move-result p0

    goto :goto_0

    :cond_0
    neg-int p0, v0

    :goto_0
    return p0
.end method

.method public static hasCurrencySymbols(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 402
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 405
    :cond_1
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 407
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-gez v3, :cond_1

    .line 408
    invoke-static {v3}, Lcom/ibm/icu/impl/number/AffixUtils;->getFieldForType(I)Lcom/ibm/icu/text/NumberFormat$Field;

    move-result-object v3

    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static hasNext(JLjava/lang/CharSequence;)Z
    .locals 4

    .line 641
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->getState(J)I

    move-result v0

    .line 642
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    .line 645
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne p0, p1, :cond_0

    .line 646
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v3, 0x27

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    return v2

    .line 651
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static iterateWithConsumer(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/number/AffixUtils$TokenConsumer;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 468
    :goto_0
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    .line 470
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v2

    .line 471
    invoke-interface {p1, v2}, Lcom/ibm/icu/impl/number/AffixUtils$TokenConsumer;->consumeToken(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static makeTag(IIII)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    int-to-long p0, p1

    neg-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x24

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    const/16 v0, 0x28

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static nextToken(JLjava/lang/CharSequence;)J
    .locals 12

    .line 488
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v0

    .line 489
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->getState(J)I

    move-result p0

    .line 490
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v1, -0xf

    const/16 v2, -0x9

    const/4 v3, -0x8

    const/4 v4, -0x7

    const/4 v5, -0x6

    const/4 v6, -0x5

    const/4 v7, 0x0

    if-ge v0, p1, :cond_f

    .line 491
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 492
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    const/4 v9, 0x2

    const/16 v10, 0x27

    const/16 v11, 0xa4

    packed-switch p0, :pswitch_data_0

    .line 596
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    if-ne p1, v11, :cond_0

    goto/16 :goto_1

    .line 593
    :cond_0
    invoke-static {v0, v1, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_1
    if-ne p1, v11, :cond_1

    const/16 p0, 0x9

    goto/16 :goto_1

    .line 585
    :cond_1
    invoke-static {v0, v2, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    if-ne p1, v11, :cond_2

    const/16 p0, 0x8

    goto/16 :goto_1

    .line 576
    :cond_2
    invoke-static {v0, v3, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_3
    if-ne p1, v11, :cond_3

    const/4 p0, 0x7

    goto/16 :goto_1

    .line 567
    :cond_3
    invoke-static {v0, v4, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_4
    if-ne p1, v11, :cond_4

    const/4 p0, 0x6

    goto :goto_1

    .line 558
    :cond_4
    invoke-static {v0, v5, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_5
    if-ne p1, v11, :cond_5

    const/4 p0, 0x5

    goto :goto_1

    .line 549
    :cond_5
    invoke-static {v0, v6, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_6
    if-ne p1, v10, :cond_6

    add-int/2addr v0, v8

    .line 536
    invoke-static {v0, v7, v9, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_6
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_7
    if-ne p1, v10, :cond_7

    const/4 p0, 0x3

    goto :goto_1

    :cond_7
    add-int/2addr v0, v8

    .line 532
    invoke-static {v0, v7, v9, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_8
    if-ne p1, v10, :cond_8

    add-int/2addr v0, v8

    .line 521
    invoke-static {v0, v7, v7, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_8
    add-int/2addr v0, v8

    .line 523
    invoke-static {v0, v7, v9, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_9
    const/16 p0, 0x25

    if-eq p1, p0, :cond_e

    if-eq p1, v10, :cond_d

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_c

    const/16 p0, 0x2d

    if-eq p1, p0, :cond_b

    if-eq p1, v11, :cond_a

    const/16 p0, 0x2030

    if-eq p1, p0, :cond_9

    add-int/2addr v0, v8

    .line 516
    invoke-static {v0, v7, v7, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_9
    add-int/2addr v0, v8

    const/4 p0, -0x4

    .line 509
    invoke-static {v0, p0, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_a
    const/4 p0, 0x4

    goto :goto_1

    :cond_b
    add-int/2addr v0, v8

    const/4 p0, -0x1

    .line 503
    invoke-static {v0, p0, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_c
    add-int/2addr v0, v8

    const/4 p0, -0x2

    .line 505
    invoke-static {v0, p0, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_d
    const/4 p0, 0x1

    :goto_1
    add-int/2addr v0, v8

    goto/16 :goto_0

    :cond_e
    add-int/2addr v0, v8

    const/4 p0, -0x3

    .line 507
    invoke-static {v0, p0, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_f
    const-wide/16 v8, -0x1

    packed-switch p0, :pswitch_data_1

    .line 625
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 623
    :pswitch_a
    invoke-static {v0, v1, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 621
    :pswitch_b
    invoke-static {v0, v2, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 619
    :pswitch_c
    invoke-static {v0, v3, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 617
    :pswitch_d
    invoke-static {v0, v4, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 615
    :pswitch_e
    invoke-static {v0, v5, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 613
    :pswitch_f
    invoke-static {v0, v6, v7, v7}, Lcom/ibm/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_10
    return-wide v8

    .line 607
    :pswitch_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unterminated quote in pattern affix: \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_12
    return-wide v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    .line 427
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 429
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 431
    :cond_1
    :goto_0
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 433
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 434
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 435
    aput-char p2, v0, v3

    goto :goto_0

    .line 438
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/FormattedStringBuilder;ILcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 318
    :goto_0
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 320
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    const/16 v4, -0xf

    if-ne v3, v4, :cond_0

    add-int v3, p2, v0

    const v4, 0xfffd

    .line 323
    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v3, v4, v5}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    add-int v4, p2, v0

    .line 326
    invoke-interface {p3, v3}, Lcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;->getSymbol(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 327
    invoke-static {v3}, Lcom/ibm/icu/impl/number/AffixUtils;->getFieldForType(I)Lcom/ibm/icu/text/NumberFormat$Field;

    move-result-object v3

    .line 325
    invoke-virtual {p1, v4, v5, v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    :cond_1
    add-int v4, p2, v0

    .line 329
    invoke-virtual {p1, v4, v3, p4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v3

    goto :goto_1

    :cond_2
    return v0
.end method

.method public static unescapedCount(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;)I
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 353
    :goto_0
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 355
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v4

    const/16 v5, -0xf

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-gez v4, :cond_2

    .line 360
    invoke-interface {p2, v4}, Lcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;->getSymbol(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 361
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    goto :goto_1

    .line 362
    :cond_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v0, v5}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 364
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    return v3
.end method
