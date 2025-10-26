.class public final Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;
.super Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;
.source "DecimalQuantity_DualStorageBCD.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bcdBytes:[B

.field private bcdLong:J

.field private usingBytes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 35
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 36
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->flags:B

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToInt(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToLong(J)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->copyFrom(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 66
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToLong(J)V

    goto :goto_0

    .line 68
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToInt(I)V

    goto :goto_0

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    goto :goto_0

    .line 72
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    goto :goto_0

    .line 74
    :cond_3
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    .line 75
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigInteger(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 76
    :cond_4
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_5

    .line 77
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 78
    :cond_5
    instance-of v0, p1, Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_6

    .line 79
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    :goto_0
    return-void

    .line 81
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number is of an unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method private ensureCapacity()V
    .locals 1

    const/16 v0, 0x28

    .line 312
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v2, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 320
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    goto :goto_1

    :cond_2
    if-ge v2, p1, :cond_3

    mul-int/lit8 p1, p1, 0x2

    .line 322
    new-array p1, p1, [B

    .line 323
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    return-void
.end method

.method private switchStorage()V
    .locals 7

    .line 331
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    .line 333
    iput-wide v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 334
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 335
    iget-wide v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    shl-long/2addr v3, v1

    iput-wide v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 336
    iget-object v5, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v5, v5, v0

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    .line 339
    iput-boolean v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    goto :goto_2

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    .line 343
    :goto_1
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v2, v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-wide v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v5, 0xf

    and-long/2addr v5, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v2

    ushr-long/2addr v3, v1

    .line 345
    iput-wide v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private toNumberString()Ljava/lang/String;
    .locals 3

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v1, :cond_1

    .line 449
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v1, :cond_0

    const/16 v1, 0x30

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 453
    iget-object v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 456
    :cond_1
    iget-wide v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "E"

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    .line 240
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->toNumberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-wide/16 v0, 0x0

    .line 249
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    const-wide/16 v3, 0xa

    mul-long v0, v0, v3

    .line 250
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->exponent:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/32 v3, -0x80000000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 256
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_1

    .line 258
    :cond_3
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->exponent:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 260
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public checkHealth()Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/16 v1, 0xa

    const-string v2, "Least significant digit is zero in long mode"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 373
    iget-wide v6, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_0

    const-string v0, "Value in bcdLong but we are in byte mode"

    return-object v0

    .line 375
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v0, :cond_1

    const-string v0, "Zero precision but we are in byte mode"

    return-object v0

    .line 377
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    iget-object v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v3, v3

    if-le v0, v3, :cond_2

    const-string v0, "Precision exceeds length of byte array"

    return-object v0

    .line 379
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Most significant digit is zero in byte mode"

    return-object v0

    .line 381
    :cond_3
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_4

    return-object v2

    .line 383
    :cond_4
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v5, v0, :cond_7

    .line 384
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-lt v0, v1, :cond_5

    const-string v0, "Digit exceeding 10 in byte array"

    return-object v0

    .line 386
    :cond_5
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-gez v0, :cond_6

    const-string v0, "Digit below 0 in byte array"

    return-object v0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 389
    :cond_7
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 390
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "Nonzero digits outside of range in byte array"

    return-object v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 395
    :goto_2
    iget-object v6, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v7, v6

    if-ge v0, v7, :cond_b

    .line 396
    aget-byte v6, v6, v0

    if-eqz v6, :cond_a

    const-string v0, "Nonzero digits in byte array but we are in long mode"

    return-object v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 400
    :cond_b
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v0, :cond_c

    iget-wide v6, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_c

    const-string v0, "Value in bcdLong even though precision is zero"

    return-object v0

    .line 402
    :cond_c
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/16 v3, 0x10

    if-le v0, v3, :cond_d

    const-string v0, "Precision exceeds length of long"

    return-object v0

    .line 404
    :cond_d
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "Most significant digit is zero in long mode"

    return-object v0

    .line 406
    :cond_e
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-eqz v0, :cond_f

    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_f

    return-object v2

    .line 408
    :cond_f
    :goto_3
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v5, v0, :cond_12

    .line 409
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-lt v0, v1, :cond_10

    const-string v0, "Digit exceeding 10 in long"

    return-object v0

    .line 411
    :cond_10
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-gez v0, :cond_11

    const-string v0, "Digit below 0 in long (?!)"

    return-object v0

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 414
    :cond_12
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :goto_4
    if-ge v0, v3, :cond_14

    .line 415
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "Nonzero digits outside of range in long"

    return-object v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method protected compact()V
    .locals 6

    .line 269
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 271
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ne v0, v2, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    return-void

    .line 279
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->shiftRight(I)V

    .line 283
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 284
    iget-object v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 286
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 289
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-gt v0, v1, :cond_5

    .line 290
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    goto :goto_2

    .line 294
    :cond_3
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 296
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    return-void

    .line 301
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 302
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v4, v0, 0x4

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 303
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 306
    iget-wide v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :cond_5
    :goto_2
    return-void
.end method

.method protected copyBcdFrom(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 3

    .line 353
    check-cast p1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 354
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 355
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_0

    .line 356
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 357
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget p1, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 359
    :cond_0
    iget-wide v0, p1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    :goto_0
    return-void
.end method

.method public createCopy()Lcom/ibm/icu/impl/number/DecimalQuantity;
    .locals 1

    .line 88
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;)V

    return-object v0
.end method

.method protected getDigitPos(I)B
    .locals 4

    .line 93
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 94
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte p1, v0, p1

    return p1

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ltz p1, :cond_4

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    goto :goto_1

    .line 100
    :cond_3
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 p1, p1, 0x4

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public isUsingBytes()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    return v0
.end method

.method public maxRepresentableDigits()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method protected popFromLeft(I)V
    .locals 7

    .line 156
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_0

    .line 157
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    .line 158
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v1, p1

    if-lt v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x4

    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    sub-long/2addr v5, v3

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 164
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 5

    .line 226
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 228
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v1, 0x1

    .line 230
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 231
    iget-object v3, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->byteValue()B

    move-result v4

    aput-byte v4, v3, v1

    .line 232
    aget-object p1, p1, v0

    move v1, v2

    goto :goto_0

    .line 234
    :cond_0
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 235
    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method protected readIntToBcd(I)V
    .locals 8

    const-wide/16 v0, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x10

    :goto_0
    if-eqz p1, :cond_0

    const/4 v4, 0x4

    ushr-long/2addr v0, v4

    int-to-long v4, p1

    const-wide/16 v6, 0xa

    .line 189
    rem-long/2addr v4, v6

    const/16 v6, 0x3c

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 188
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, v3, 0x4

    ushr-long/2addr v0, p1

    .line 192
    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    sub-int/2addr v2, v3

    .line 194
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 12

    const-wide v0, 0x2386f26fc10000L

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v0

    if-ltz v7, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    const/4 v0, 0x0

    :goto_0
    cmp-long v1, p1, v3

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    rem-long v7, p1, v5

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v1, v0

    .line 203
    div-long/2addr p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 208
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    goto :goto_2

    :cond_1
    const/16 v0, 0x10

    move-wide v7, v3

    const/16 v1, 0x10

    :goto_1
    cmp-long v9, p1, v3

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    ushr-long/2addr v7, v9

    .line 213
    rem-long v9, p1, v5

    const/16 v11, 0x3c

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    .line 212
    div-long/2addr p1, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 p1, v1, 0x4

    ushr-long p1, v7, p1

    .line 217
    iput-wide p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 218
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    sub-int/2addr v0, v1

    .line 219
    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :goto_2
    return-void
.end method

.method protected setBcdToZero()V
    .locals 4

    .line 169
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    .line 171
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    :cond_0
    const-wide/16 v2, 0x0

    .line 173
    iput-wide v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 174
    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 175
    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 176
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->isApproximate:Z

    const-wide/16 v2, 0x0

    .line 177
    iput-wide v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->origDouble:D

    .line 178
    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->origDelta:I

    .line 179
    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->exponent:I

    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 6

    .line 107
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 108
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 109
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte p2, v0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    add-int/lit8 v0, p1, 0x1

    .line 112
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 113
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte p2, v0, p1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x4

    .line 116
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v2, 0xf

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    int-to-long v2, p2

    shl-long p1, v2, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    :goto_0
    return-void
.end method

.method protected shiftLeft(I)V
    .locals 3

    .line 122
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_1

    .line 126
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 127
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    invoke-static {v0, v2, p1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_0

    .line 130
    :cond_1
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 132
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 133
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method protected shiftRight(I)V
    .locals 4

    .line 138
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    add-int v3, v1, p1

    aget-byte v3, v2, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    :goto_1
    iget v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v1, v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_1
    iget-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 149
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 150
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 438
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->lReqPos:I

    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->rReqPos:I

    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v1, :cond_0

    const-string v1, "bytes"

    goto :goto_0

    :cond_0
    const-string v1, "long"

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 442
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 443
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->toNumberString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "<DecimalQuantity %d:%d %s %s%s>"

    .line 438
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
