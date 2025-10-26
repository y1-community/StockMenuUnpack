.class public Lcom/ibm/icu/impl/number/PatternStringParser;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;,
        Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;,
        Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final IGNORE_ROUNDING_ALWAYS:I = 0x2

.field public static final IGNORE_ROUNDING_IF_CURRENCY:I = 0x1

.field public static final IGNORE_ROUNDING_NEVER:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static consumeAffix(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J
    .locals 5

    .line 294
    iget v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v0, v0

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    const/16 v3, 0x25

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa4

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2030

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 330
    :pswitch_0
    iput-boolean v4, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    goto :goto_1

    .line 334
    :pswitch_1
    iput-boolean v4, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    goto :goto_1

    .line 322
    :cond_0
    iput-boolean v4, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    goto :goto_1

    .line 326
    :cond_1
    iput-boolean v4, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    goto :goto_1

    .line 318
    :cond_2
    iput-boolean v4, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    .line 337
    :goto_1
    invoke-static {p0}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeLiteral(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;)V

    goto :goto_0

    .line 339
    :cond_3
    :pswitch_2
    iget p0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static consumeExponent(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 5

    .line 496
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    return-void

    .line 499
    :cond_0
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide v2, 0xffff0000L

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 502
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 503
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 504
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 506
    iput-boolean v1, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    .line 507
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 509
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_2

    .line 510
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 511
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    .line 512
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p1, "Cannot have grouping separator in scientific notation"

    .line 500
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static consumeFormat(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 2

    .line 363
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeIntegerFormat(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 364
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    .line 367
    iget v1, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 368
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeFractionFormat(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    :cond_0
    return-void
.end method

.method private static consumeFractionFormat(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 453
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    return-void

    .line 471
    :pswitch_0
    iget v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    if-gtz v2, :cond_2

    .line 474
    iget v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 475
    iget v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    .line 476
    iget v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    .line 477
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 480
    :cond_0
    iget-object v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v2, :cond_1

    .line 481
    new-instance v2, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 483
    :cond_1
    iget-object v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    invoke-virtual {v2, v3, v1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const-string p1, "0 cannot follow # after decimal point"

    .line 472
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 455
    :cond_3
    iget v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 456
    iget v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    .line 457
    iget v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 491
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static consumeIntegerFormat(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 8

    .line 374
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x23

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2c

    const/16 v5, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x40

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 439
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-short v0, v1

    .line 440
    iget-wide v6, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    ushr-long v4, v6, v5

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-short v1, v1

    .line 441
    iget-wide v4, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 p1, 0x20

    ushr-long/2addr v4, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    int-to-short p1, p1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Trailing grouping separator is invalid"

    .line 443
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "Grouping width of zero is invalid"

    .line 446
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    return-void

    .line 417
    :pswitch_0
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-gtz v0, :cond_5

    .line 420
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 421
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 422
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 423
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 424
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v0, :cond_4

    .line 425
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 427
    :cond_4
    iget-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v0, :cond_c

    .line 428
    iget-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    goto :goto_4

    :cond_5
    const-string p1, "Cannot mix @ and 0"

    .line 418
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 395
    :cond_6
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-gtz v0, :cond_8

    .line 398
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    if-gtz v0, :cond_7

    .line 401
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 402
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 403
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    .line 404
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    goto :goto_4

    :cond_7
    const-string p1, "Cannot nest # inside of a run of @"

    .line 399
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    const-string p1, "Cannot mix 0 and @"

    .line 396
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 376
    :cond_9
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 377
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    shl-long/2addr v0, v5

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    goto :goto_4

    .line 381
    :cond_a
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-gtz v0, :cond_d

    .line 384
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 385
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 386
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-lez v0, :cond_b

    .line 387
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    goto :goto_3

    .line 389
    :cond_b
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    .line 391
    :goto_3
    iget v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 435
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto/16 :goto_0

    :cond_d
    const-string p1, "# cannot follow 0 before decimal point"

    .line 382
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static consumeLiteral(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;)V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 346
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_0

    :cond_0
    const-string v0, "Expected quoted literal but found EOL"

    .line 350
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    :goto_1
    return-void

    :cond_3
    const-string v0, "Expected unquoted literal but found EOL"

    .line 345
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static consumePadding(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Lcom/ibm/icu/impl/number/Padder$PadPosition;)V
    .locals 4

    .line 279
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    if-nez v0, :cond_1

    .line 285
    iput-object p2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    .line 286
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 287
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    iget p2, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v2, p2

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    .line 288
    invoke-static {p0}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeLiteral(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;)V

    .line 289
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    iget p0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-void

    :cond_1
    const-string p1, "Cannot have multiple pad specifiers"

    .line 283
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static consumePattern(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;)V
    .locals 3

    .line 248
    new-instance v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;-><init>()V

    iput-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 249
    iget-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeSubpattern(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 250
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 253
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 254
    new-instance v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;-><init>()V

    iput-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 255
    iget-object p1, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeSubpattern(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    const-string p1, "Found unquoted special character"

    .line 259
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static consumeSubpattern(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .locals 2

    .line 265
    sget-object v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumePadding(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Lcom/ibm/icu/impl/number/Padder$PadPosition;)V

    .line 266
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeAffix(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    .line 267
    sget-object v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumePadding(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Lcom/ibm/icu/impl/number/Padder$PadPosition;)V

    .line 268
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeFormat(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 269
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeExponent(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 270
    sget-object v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumePadding(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Lcom/ibm/icu/impl/number/Padder$PadPosition;)V

    .line 271
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumeAffix(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    .line 272
    sget-object v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumePadding(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Lcom/ibm/icu/impl/number/Padder$PadPosition;)V

    return-void
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;I)V

    return-void
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;I)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToExistingPropertiesImpl(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;I)V

    return-void
.end method

.method private static parseToExistingPropertiesImpl(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 524
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object p0

    .line 533
    invoke-static {p1, p0, p2}, Lcom/ibm/icu/impl/number/PatternStringParser;->patternInfoToProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;I)V

    return-void

    .line 527
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->clear()Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    return-void
.end method

.method public static parseToPatternInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .locals 3

    .line 26
    new-instance v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/number/PatternStringParser$1;)V

    .line 28
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/PatternStringParser;->consumePattern(Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;)V

    return-object v1
.end method

.method public static parseToProperties(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    return-object p0
.end method

.method public static parseToProperties(Ljava/lang/String;I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 1

    .line 49
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    .line 50
    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToExistingPropertiesImpl(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;I)V

    return-object v0
.end method

.method private static patternInfoToProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;I)V
    .locals 11

    .line 544
    iget-object v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 550
    iget-boolean p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 557
    :goto_0
    iget-wide v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-short v3, v4

    .line 558
    iget-wide v7, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v4, 0x10

    ushr-long/2addr v7, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-short v4, v4

    .line 559
    iget-wide v7, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-short v5, v6

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 561
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 562
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setGroupingUsed(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_1

    .line 564
    :cond_2
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 565
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setGroupingUsed(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    :goto_1
    if-eq v5, v6, :cond_3

    .line 568
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_2

    .line 570
    :cond_3
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 575
    :goto_2
    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    if-nez v3, :cond_4

    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    if-lez v3, :cond_4

    .line 578
    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    goto :goto_3

    .line 579
    :cond_4
    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-nez v3, :cond_5

    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    if-nez v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_3

    .line 584
    :cond_5
    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 585
    iget v4, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    move v10, v4

    move v4, v3

    move v3, v10

    .line 590
    :goto_3
    iget v5, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    const/4 v7, 0x0

    if-lez v5, :cond_6

    .line 591
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 592
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 593
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 594
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 595
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_6

    .line 597
    :cond_6
    iget-object v5, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v5, :cond_8

    if-nez p2, :cond_7

    .line 599
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 600
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 601
    iget-object p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 602
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p2

    iget v3, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    invoke-virtual {p2, v3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object p2

    .line 601
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_4

    .line 604
    :cond_7
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 605
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 606
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 608
    :goto_4
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 609
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_6

    :cond_8
    if-nez p2, :cond_9

    .line 612
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 613
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 614
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_5

    .line 616
    :cond_9
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 617
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 618
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 620
    :goto_5
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 621
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 625
    :goto_6
    iget-boolean p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    if-eqz p2, :cond_a

    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    if-nez p2, :cond_a

    .line 626
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_7

    .line 628
    :cond_a
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 632
    :goto_7
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    if-lez p2, :cond_c

    .line 633
    iget-boolean p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 634
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 635
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-nez p2, :cond_b

    .line 637
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 638
    iget p2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_8

    .line 641
    :cond_b
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 642
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_8

    .line 645
    :cond_c
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 646
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 647
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 648
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    :goto_8
    const/16 p2, 0x100

    .line 652
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 653
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 656
    iget-object v4, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    const/4 v5, 0x2

    if-eqz v4, :cond_10

    .line 658
    iget v4, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 659
    invoke-static {p2}, Lcom/ibm/icu/impl/number/AffixUtils;->estimateLength(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v4, v6

    .line 660
    invoke-static {v3}, Lcom/ibm/icu/impl/number/AffixUtils;->estimateLength(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v4, v6

    .line 661
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/16 v4, 0x400

    .line 662
    invoke-virtual {p1, v4}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_d

    .line 664
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_9

    .line 665
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_f

    .line 666
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x27

    if-ne v2, v6, :cond_e

    const-string v2, "\'"

    .line 667
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_9

    .line 669
    :cond_e
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_9

    .line 672
    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 675
    :goto_9
    iget-object v2, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadPosition(Lcom/ibm/icu/impl/number/Padder$PadPosition;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_a

    .line 677
    :cond_10
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 678
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 679
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadPosition(Lcom/ibm/icu/impl/number/Padder$PadPosition;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 685
    :goto_a
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositivePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 686
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositiveSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 687
    iget-object p2, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz p2, :cond_11

    const/16 p2, 0x300

    .line 688
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/16 p2, 0x200

    .line 691
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_b

    .line 693
    :cond_11
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 694
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 698
    :goto_b
    iget-boolean p1, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    if-eqz p1, :cond_12

    .line 699
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_c

    .line 700
    :cond_12
    iget-boolean p1, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x3

    .line 701
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_c

    .line 703
    :cond_13
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    :goto_c
    return-void
.end method
