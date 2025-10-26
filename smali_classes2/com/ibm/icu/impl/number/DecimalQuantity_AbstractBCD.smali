.class public abstract Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;
.super Ljava/lang/Object;
.source "DecimalQuantity_AbstractBCD.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/DecimalQuantity;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DOUBLE_MULTIPLIERS:[D

.field protected static final INFINITY_FLAG:I = 0x2

.field static final INT64_BCD:[B

.field protected static final NAN_FLAG:I = 0x4

.field protected static final NEGATIVE_FLAG:I = 0x1

.field private static final SECTION_LOWER_EDGE:I = -0x1

.field private static final SECTION_UPPER_EDGE:I = -0x2


# instance fields
.field public explicitExactDouble:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected exponent:I

.field protected flags:B

.field protected isApproximate:Z

.field protected lReqPos:I

.field protected origDelta:I

.field protected origDouble:D

.field protected precision:I

.field protected rReqPos:I

.field protected scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [D

    .line 456
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    const/16 v0, 0x13

    new-array v0, v0, [B

    .line 659
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->INT64_BCD:[B

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0x2t
        0x2t
        0x3t
        0x3t
        0x7t
        0x2t
        0x0t
        0x3t
        0x6t
        0x8t
        0x5t
        0x4t
        0x7t
        0x7t
        0x5t
        0x8t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 87
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 93
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    .line 580
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->explicitExactDouble:Z

    return-void
.end method

.method private _setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 1

    .line 604
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 605
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 607
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 608
    iget p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    return-void
.end method

.method private _setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .line 421
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 422
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 424
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    :goto_0
    return-void
.end method

.method private _setToDoubleFast(D)V
    .locals 7

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    .line 486
    iput-wide p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    const/4 v0, 0x0

    .line 487
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 490
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v1, v1, -0x3ff

    if-gt v1, v2, :cond_0

    double-to-long v3, p1

    long-to-double v5, v3

    cmpl-double v0, v5, p1

    if-nez v0, :cond_0

    .line 495
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    return-void

    :cond_0
    const/16 v0, -0x3ff

    if-eq v1, v0, :cond_6

    const/16 v0, 0x400

    if-ne v1, v0, :cond_1

    goto :goto_3

    :cond_1
    sub-int/2addr v2, v1

    int-to-double v0, v2

    const-wide v2, 0x400a934f0979a371L    # 3.321928094887362

    .line 506
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    const-wide v1, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v0, :cond_3

    move v3, v0

    :goto_0
    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    mul-double p1, p1, v1

    add-int/lit8 v3, v3, -0x16

    goto :goto_0

    .line 512
    :cond_2
    sget-object v1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v2, v1, v3

    mul-double p1, p1, v2

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_1
    const/16 v4, -0x16

    if-gt v3, v4, :cond_4

    div-double/2addr p1, v1

    add-int/lit8 v3, v3, 0x16

    goto :goto_1

    .line 518
    :cond_4
    sget-object v1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v2, v3

    aget-wide v2, v1, v2

    div-double/2addr p1, v2

    .line 520
    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_5

    .line 522
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 523
    iget p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_5
    return-void

    .line 501
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    return-void
.end method

.method private _setToInt(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    int-to-long v0, p1

    neg-long v0, v0

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    :goto_0
    return-void
.end method

.method private _setToLong(J)V
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 399
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    long-to-int p2, p1

    .line 401
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    :goto_0
    return-void
.end method

.method private convertToAccurateDouble()V
    .locals 8

    .line 533
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 535
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 536
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 539
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x45

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v4, :cond_0

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 546
    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v7

    sub-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/2addr v3, v0

    iput v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_1

    .line 550
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 551
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v5, v0

    add-int/2addr v1, v5

    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2e

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 564
    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v7

    add-int/2addr v3, v1

    iput v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 567
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 568
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 569
    iput-boolean v7, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->explicitExactDouble:Z

    return-void
.end method

.method private fractionCount()I
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getLowerDisplayMagnitude()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private fractionCountWithoutTrailingZeros()I
    .locals 2

    .line 325
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    neg-int v0, v0

    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private roundToMagnitude(ILjava/math/MathContext;Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 761
    iget v2, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v2

    .line 764
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    if-lez v3, :cond_0

    .line 765
    iget v4, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    sub-int v5, v4, v3

    if-le v5, v2, :cond_0

    sub-int v2, v4, v3

    .line 770
    :cond_0
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v3

    const/4 v4, 0x5

    if-gtz v2, :cond_1

    .line 772
    iget-boolean v5, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-nez v5, :cond_1

    if-eqz p3, :cond_30

    if-eqz v3, :cond_30

    if-ne v3, v4, :cond_1

    goto/16 :goto_11

    .line 774
    :cond_1
    iget v5, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v5, :cond_2

    goto/16 :goto_11

    :cond_2
    const/4 v5, 0x1

    .line 779
    invoke-static {v2, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    .line 787
    iget-boolean v7, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    const/16 v8, 0x9

    const/4 v9, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-nez v7, :cond_b

    if-eqz p3, :cond_5

    if-eq v3, v12, :cond_5

    if-eq v3, v9, :cond_5

    if-ge v3, v12, :cond_3

    goto :goto_0

    :cond_3
    if-ge v3, v4, :cond_4

    goto :goto_1

    :cond_4
    if-ge v3, v9, :cond_7

    goto :goto_0

    :cond_5
    if-ge v6, v4, :cond_6

    :goto_0
    const/4 v6, 0x1

    goto/16 :goto_b

    :cond_6
    if-le v6, v4, :cond_8

    :cond_7
    :goto_1
    const/4 v6, 0x3

    goto/16 :goto_b

    .line 812
    :cond_8
    invoke-static {v2, v12}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v6

    :goto_2
    if-ltz v6, :cond_a

    .line 813
    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_a
    const/4 v6, 0x2

    goto/16 :goto_b

    .line 820
    :cond_b
    invoke-static {v2, v12}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v7

    .line 821
    iget v13, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v13, v13, -0xe

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-nez v6, :cond_f

    if-eqz p3, :cond_c

    if-eqz v3, :cond_c

    if-ne v3, v4, :cond_f

    :cond_c
    :goto_3
    if-lt v7, v13, :cond_e

    .line 825
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    if-eqz v6, :cond_d

    :goto_4
    const/4 v6, 0x1

    goto/16 :goto_a

    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_e
    const/4 v6, -0x1

    goto/16 :goto_a

    :cond_f
    const/4 v10, 0x4

    if-ne v6, v10, :cond_13

    if-eqz p3, :cond_10

    if-eq v3, v12, :cond_10

    if-ne v3, v9, :cond_13

    :cond_10
    :goto_5
    if-lt v7, v13, :cond_12

    .line 833
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    if-eq v6, v8, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_12
    const/4 v6, 0x2

    goto :goto_a

    :cond_13
    if-ne v6, v4, :cond_16

    if-eqz p3, :cond_14

    if-eq v3, v12, :cond_14

    if-ne v3, v9, :cond_16

    :cond_14
    :goto_6
    if-lt v7, v13, :cond_12

    .line 841
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_9

    :cond_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_16
    if-ne v6, v8, :cond_1a

    if-eqz p3, :cond_17

    if-eq v3, v10, :cond_17

    if-ne v3, v8, :cond_1a

    :cond_17
    :goto_7
    if-lt v7, v13, :cond_19

    .line 849
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    if-eq v6, v8, :cond_18

    goto :goto_9

    :cond_18
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_19
    const/4 v6, -0x2

    goto :goto_a

    :cond_1a
    if-eqz p3, :cond_1d

    if-eq v3, v12, :cond_1d

    if-eq v3, v9, :cond_1d

    if-ge v3, v12, :cond_1b

    goto :goto_8

    :cond_1b
    if-ge v3, v4, :cond_1c

    goto :goto_9

    :cond_1c
    if-ge v3, v9, :cond_1e

    goto :goto_8

    :cond_1d
    if-ge v6, v4, :cond_1e

    :goto_8
    goto :goto_4

    :cond_1e
    :goto_9
    const/4 v6, 0x3

    .line 878
    :goto_a
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    invoke-static {v7}, Lcom/ibm/icu/impl/number/RoundingUtils;->roundsAtMidpoint(I)Z

    move-result v7

    .line 879
    invoke-static {v2, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v10

    iget v13, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v13, v13, -0xe

    if-lt v10, v13, :cond_31

    if-eqz v7, :cond_1f

    if-eq v6, v12, :cond_31

    :cond_1f
    if-nez v7, :cond_20

    if-gez v6, :cond_20

    goto/16 :goto_12

    .line 890
    :cond_20
    iput-boolean v11, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    const-wide/16 v8, 0x0

    .line 891
    iput-wide v8, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 892
    iput v11, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    if-gtz v2, :cond_22

    if-eqz p3, :cond_21

    if-eqz v3, :cond_21

    if-ne v3, v4, :cond_22

    :cond_21
    return-void

    :cond_22
    if-ne v6, v15, :cond_23

    const/4 v6, 0x1

    :cond_23
    if-ne v6, v14, :cond_24

    goto/16 :goto_1

    :cond_24
    :goto_b
    if-eqz p3, :cond_26

    if-lt v3, v12, :cond_27

    const/4 v8, 0x7

    if-gt v3, v8, :cond_27

    const/4 v9, 0x3

    if-ne v3, v12, :cond_25

    if-ne v6, v9, :cond_27

    :cond_25
    if-ne v3, v8, :cond_28

    if-ne v6, v9, :cond_28

    goto :goto_c

    .line 907
    :cond_26
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_28

    :cond_27
    :goto_c
    const/4 v8, 0x1

    goto :goto_d

    :cond_28
    const/4 v8, 0x0

    .line 914
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v9

    .line 916
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    .line 913
    invoke-static {v8, v9, v6, v10, v0}, Lcom/ibm/icu/impl/number/RoundingUtils;->getRoundingDirection(ZZIILjava/lang/Object;)Z

    move-result v6

    .line 920
    iget v8, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-lt v2, v8, :cond_29

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 922
    iput v1, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_e

    .line 924
    :cond_29
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    :goto_e
    if-eqz p3, :cond_2c

    if-ge v3, v4, :cond_2a

    if-eqz v6, :cond_2a

    .line 929
    invoke-virtual {v0, v11, v11}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    return-void

    :cond_2a
    if-lt v3, v4, :cond_2b

    if-nez v6, :cond_2b

    const/16 v1, 0x9

    .line 933
    invoke-virtual {v0, v11, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    const/16 v3, 0x9

    goto :goto_f

    .line 937
    :cond_2b
    invoke-virtual {v0, v11, v4}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    return-void

    :cond_2c
    const/16 v1, 0x9

    :goto_f
    if-nez v6, :cond_2f

    if-ne v3, v1, :cond_2e

    const/4 v2, 0x0

    .line 949
    :goto_10
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v3

    if-ne v3, v1, :cond_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 951
    :cond_2d
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    .line 953
    :cond_2e
    invoke-virtual {v0, v11}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    .line 955
    invoke-virtual {v0, v11, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 956
    iget v1, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    .line 959
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_30
    :goto_11
    return-void

    .line 884
    :cond_31
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 885
    invoke-direct/range {p0 .. p3}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->roundToMagnitude(ILjava/math/MathContext;Z)V

    return-void
.end method

.method private static safeSubtract(II)I
    .locals 1

    sub-int v0, p0, p1

    if-gez p1, :cond_0

    if-ge v0, p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    if-lez p1, :cond_1

    if-le v0, p0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public adjustExponent(I)V
    .locals 1

    .line 233
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    return-void
.end method

.method public adjustMagnitude(I)V
    .locals 1

    .line 218
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz v0, :cond_0

    .line 219
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->addExact(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 220
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->addExact(II)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 222
    iget p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/Utility;->addExact(II)I

    :cond_0
    return-void
.end method

.method public appendDigit(BIZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 998
    iget p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz p1, :cond_0

    .line 999
    iget p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_0
    return-void

    .line 1005
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    add-int/2addr p2, v0

    if-eqz p3, :cond_2

    .line 1008
    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 1013
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftLeft(I)V

    .line 1014
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    if-eqz p3, :cond_3

    .line 1018
    iget p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_3
    return-void
.end method

.method public applyMaxInteger(I)V
    .locals 1

    .line 148
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-gt p1, v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getMagnitude()I

    move-result v0

    if-gt p1, v0, :cond_2

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->popFromLeft(I)V

    .line 160
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_2
    return-void
.end method

.method protected abstract bcdToBigDecimal()Ljava/math/BigDecimal;
.end method

.method public clear()Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 112
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 113
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 114
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    return-object p0
.end method

.method protected abstract compact()V
.end method

.method protected abstract copyBcdFrom(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
.end method

.method public copyFrom(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->copyBcdFrom(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    .line 98
    check-cast p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;

    .line 99
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 100
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 101
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 102
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    .line 103
    iget-byte v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 104
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 105
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 106
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    .line 107
    iget p1, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1121
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;

    if-nez v2, :cond_2

    return v1

    .line 1124
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;

    .line 1126
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-ne v2, v3, :cond_3

    iget-byte v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    iget-byte v3, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    return v1

    .line 1137
    :cond_4
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v2, :cond_5

    return v0

    .line 1139
    :cond_5
    iget-boolean v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v2, :cond_7

    .line 1140
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    iget-wide v4, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_6

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    iget p1, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    if-ne v2, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1142
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getUpperDisplayMagnitude()I

    move-result v2

    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getLowerDisplayMagnitude()I

    move-result v3

    if-lt v2, v3, :cond_9

    .line 1143
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigit(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigit(I)B

    move-result v4

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_9
    return v0
.end method

.method public fitsInLong()Z
    .locals 6

    .line 665
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isZeroish()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 671
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v0, v3

    if-gez v0, :cond_2

    return v1

    .line 674
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getMagnitude()I

    move-result v0

    const/16 v3, 0x12

    if-ge v0, v3, :cond_3

    return v2

    :cond_3
    if-le v0, v3, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    .line 683
    :goto_0
    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-ge v0, v3, :cond_7

    rsub-int/lit8 v3, v0, 0x12

    .line 684
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigit(I)B

    move-result v3

    .line 685
    sget-object v4, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->INT64_BCD:[B

    aget-byte v5, v4, v0

    if-ge v3, v5, :cond_5

    return v2

    .line 687
    :cond_5
    aget-byte v4, v4, v0

    if-le v3, v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public getDigit(I)B
    .locals 1

    .line 317
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result p1

    return p1
.end method

.method protected abstract getDigitPos(I)B
.end method

.method public getExponent()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    return v0
.end method

.method public getLowerDisplayMagnitude()I
    .locals 2

    .line 306
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 307
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getMagnitude()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 209
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz v0, :cond_0

    .line 212
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Magnitude is not well-defined for zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D
    .locals 2

    .line 259
    sget-object v0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD$1;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 277
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getExponent()I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    .line 272
    :pswitch_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getExponent()I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    .line 270
    :pswitch_2
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->fractionCountWithoutTrailingZeros()I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    .line 268
    :pswitch_3
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->fractionCount()I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :pswitch_4
    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 264
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 262
    :pswitch_6
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result p1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toLong(Z)J

    move-result-wide v0

    if-eqz p1, :cond_0

    neg-long v0, v0

    :cond_0
    long-to-double v0, v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPositionFingerprint()J
    .locals 5

    .line 167
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    shl-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    xor-long/2addr v0, v2

    .line 168
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 0

    if-nez p1, :cond_0

    .line 245
    sget-object p1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    return-object p1

    .line 248
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-static {p1}, Lcom/ibm/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    return-object p1
.end method

.method public getUpperDisplayMagnitude()I
    .locals 2

    .line 295
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v0, v1

    .line 296
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    if-le v1, v0, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public isHasIntegerValue()Z
    .locals 1

    .line 238
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 350
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 355
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNegative()Z
    .locals 2

    .line 330
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isZeroish()Z
    .locals 1

    .line 360
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiplyBy(Ljava/math/BigDecimal;)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public negate()V
    .locals 1

    .line 204
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    return-void
.end method

.method protected abstract popFromLeft(I)V
.end method

.method public populateUFieldPosition(Ljava/text/FieldPosition;)V
    .locals 3

    .line 283
    instance-of v0, p1, Lcom/ibm/icu/text/UFieldPosition;

    if-eqz v0, :cond_0

    .line 284
    check-cast p1, Lcom/ibm/icu/text/UFieldPosition;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    double-to-int v0, v0

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->f:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 285
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 284
    invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    :cond_0
    return-void
.end method

.method protected abstract readBigIntegerToBcd(Ljava/math/BigInteger;)V
.end method

.method protected abstract readIntToBcd(I)V
.end method

.method protected abstract readLongToBcd(J)V
.end method

.method public roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p2

    if-nez p2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    :goto_0
    return-void
.end method

.method public roundToInfinity()V
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    :cond_0
    return-void
.end method

.method public roundToMagnitude(ILjava/math/MathContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 755
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->roundToMagnitude(ILjava/math/MathContext;Z)V

    return-void
.end method

.method public roundToNickel(ILjava/math/MathContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 750
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->roundToMagnitude(ILjava/math/MathContext;Z)V

    return-void
.end method

.method protected abstract setBcdToZero()V
.end method

.method protected abstract setDigitPos(IB)V
.end method

.method public setMinFraction(I)V
    .locals 0

    neg-int p1, p1

    .line 140
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    return-void
.end method

.method public setMinInteger(I)V
    .locals 1

    .line 125
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 130
    :cond_0
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    return-void
.end method

.method public setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 2

    .line 591
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 592
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 593
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 594
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 595
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    .line 597
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 599
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .line 408
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 409
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 410
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 411
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 412
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 414
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 416
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToDouble(D)V
    .locals 5

    .line 437
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 438
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 442
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 443
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    neg-double p1, p1

    .line 446
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-byte p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    iget-byte p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_3

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToDoubleFast(D)V

    .line 452
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setToInt(I)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 365
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    if-gez p1, :cond_0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 367
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    neg-int p1, p1

    :cond_0
    if-eqz p1, :cond_1

    .line 371
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToInt(I)V

    .line 372
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToLong(J)V
    .locals 4

    .line 385
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 386
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 388
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    neg-long p1, p1

    :cond_0
    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 393
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method protected abstract shiftLeft(I)V
.end method

.method protected abstract shiftRight(I)V
.end method

.method public signum()Lcom/ibm/icu/impl/number/Modifier$Signum;
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 338
    sget-object v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 340
    sget-object v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    .line 342
    sget-object v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG:Lcom/ibm/icu/impl/number/Modifier$Signum;

    return-object v0

    .line 344
    :cond_3
    sget-object v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS:Lcom/ibm/icu/impl/number/Modifier$Signum;

    return-object v0
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 722
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->bcdToBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public toDouble()D
    .locals 2

    .line 707
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v0

    .line 713
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toScientificString(Ljava/lang/StringBuilder;)V

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public toFractionLong(Z)J
    .locals 13

    .line 641
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    rsub-int/lit8 v0, v0, -0x1

    .line 642
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 644
    iget v4, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0xa

    if-lt v0, v1, :cond_1

    long-to-double v8, v4

    const-wide v10, 0x4376345785d8a000L    # 1.0E17

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_1

    mul-long v4, v4, v6

    .line 648
    iget v6, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v6, v0, v6

    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_1
    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    .line 652
    rem-long v0, v4, v6

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 653
    div-long/2addr v4, v6

    goto :goto_1

    :cond_2
    return-wide v4
.end method

.method public toLong(Z)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 618
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    .line 620
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_0
    :goto_0
    if-ltz v2, :cond_1

    const-wide/16 v3, 0xa

    mul-long v0, v0, v3

    .line 623
    iget p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int p1, v2, p1

    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result p1

    int-to-long v3, p1

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_2

    neg-long v0, v0

    :cond_2
    return-wide v0
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 1

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toPlainString(Ljava/lang/StringBuilder;)V

    .line 1026
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPlainString(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1031
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    .line 1032
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1034
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    const/16 v1, 0x30

    if-nez v0, :cond_1

    .line 1035
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 1039
    :cond_1
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v3

    .line 1041
    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_2

    add-int/lit8 v0, v3, -0x1

    .line 1044
    :cond_2
    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-le v2, v3, :cond_3

    move v2, v3

    :cond_3
    if-gez v0, :cond_4

    .line 1050
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    if-ltz v0, :cond_5

    .line 1053
    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v3

    add-int/2addr v3, v1

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-gez v2, :cond_6

    const/16 v3, 0x2e

    .line 1056
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    if-lt v0, v2, :cond_7

    .line 1059
    iget v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v3

    add-int/2addr v3, v1

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public toScientificString()Ljava/lang/String;
    .locals 1

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->toScientificString(Ljava/lang/StringBuilder;)V

    .line 1066
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toScientificString(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1071
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    const/16 v1, 0x2d

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v0, :cond_1

    const-string v0, "0E+0"

    .line 1075
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1083
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v2

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_2

    const/16 v4, 0x2e

    .line 1085
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ltz v2, :cond_2

    .line 1087
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    add-int/2addr v4, v3

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x45

    .line 1090
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1091
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    add-int/2addr v0, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_3

    const-string v0, "-2147483648"

    .line 1093
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_3
    if-gez v0, :cond_4

    mul-int/lit8 v0, v0, -0x1

    .line 1097
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v1, 0x2b

    .line 1099
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    if-nez v0, :cond_5

    .line 1102
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1104
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_2
    if-lez v0, :cond_6

    .line 1106
    div-int/lit8 v2, v0, 0xa

    .line 1107
    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1108
    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_2

    :cond_6
    return-void
.end method

.method public truncate()V
    .locals 1

    .line 741
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-gez v0, :cond_0

    neg-int v0, v0

    .line 742
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    const/4 v0, 0x0

    .line 743
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 744
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_0
    return-void
.end method
