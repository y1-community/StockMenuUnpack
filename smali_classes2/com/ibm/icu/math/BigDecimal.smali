.class public Lcom/ibm/icu/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field private static final MaxArg:I = 0x3b9ac9ff

.field private static final MaxExp:I = 0x3b9ac9ff

.field private static final MinArg:I = -0x3b9ac9ff

.field private static final MinExp:I = -0x3b9ac9ff

.field public static final ONE:Lcom/ibm/icu/math/BigDecimal;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Lcom/ibm/icu/math/BigDecimal;

.field public static final ZERO:Lcom/ibm/icu/math/BigDecimal;

.field private static bytecar:[B = null

.field private static bytedig:[B = null

.field private static final isneg:B = -0x1t

.field private static final ispos:B = 0x1t

.field private static final iszero:B = 0x0t

.field private static final plainMC:Lcom/ibm/icu/math/MathContext;

.field private static final serialVersionUID:J = 0x726d636b3a313030L


# instance fields
.field private exp:I

.field private form:B

.field private ind:B

.field private mant:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 236
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    .line 248
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    .line 260
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->TEN:Lcom/ibm/icu/math/BigDecimal;

    .line 338
    new-instance v0, Lcom/ibm/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/math/MathContext;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    const/16 v0, 0xbe

    new-array v0, v0, [B

    .line 350
    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    .line 351
    invoke-static {}, Lcom/ibm/icu/math/BigDecimal;->diginit()[B

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/math/BigDecimal;->bytedig:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 937
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 381
    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 757
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 773
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 381
    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gt p1, v1, :cond_4

    const/16 v4, -0x9

    if-lt p1, v4, :cond_4

    if-nez p1, :cond_0

    .line 783
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object p1, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 784
    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 786
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object p1, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 787
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    .line 789
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object p1, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 790
    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_2
    new-array v1, v2, [B

    .line 793
    iput-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    if-lez p1, :cond_3

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    .line 796
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_3
    neg-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    .line 799
    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    :goto_0
    return-void

    :cond_4
    if-lez p1, :cond_5

    .line 810
    iput-byte v2, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int p1, p1

    goto :goto_1

    .line 813
    :cond_5
    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    :goto_1
    move v0, p1

    .line 821
    :goto_2
    div-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_7

    rsub-int/lit8 v0, v1, 0xa

    .line 827
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    sub-int/2addr v0, v2

    .line 831
    :goto_3
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    rem-int/lit8 v2, p1, 0xa

    int-to-byte v2, v2

    neg-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 832
    div-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_6

    return-void

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public constructor <init>(J)V
    .locals 9

    .line 852
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 381
    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    .line 860
    iput-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-long p1, p1

    goto :goto_0

    :cond_0
    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 863
    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 865
    iput-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    :goto_0
    const/16 v0, 0x12

    move-wide v4, p1

    :goto_1
    const-wide/16 v6, 0xa

    .line 870
    div-long/2addr v4, v6

    cmp-long v8, v4, v2

    if-nez v8, :cond_3

    rsub-int/lit8 v0, v0, 0x13

    .line 876
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    sub-int/2addr v0, v1

    .line 880
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    rem-long v4, p1, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    neg-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 881
    div-long/2addr p1, v6

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 930
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 431
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0xa

    .line 450
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2

    const/16 v0, 0xa

    .line 475
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-ltz p2, :cond_0

    neg-int p1, p2

    .line 478
    iput p1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    return-void

    .line 477
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([C)V
    .locals 2

    .line 498
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 16

    move-object/from16 v0, p0

    .line 520
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    const/4 v1, 0x0

    .line 381
    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-gtz p3, :cond_0

    .line 542
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_0
    const/4 v2, 0x1

    .line 546
    iput-byte v2, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 547
    aget-char v3, p1, p2

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v6, -0x1

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, p3, -0x1

    if-nez v3, :cond_1

    .line 550
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 551
    :cond_1
    iput-byte v6, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    :cond_2
    :goto_0
    add-int/lit8 v7, p2, 0x1

    goto :goto_1

    .line 553
    :cond_3
    aget-char v3, p1, p2

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, p3, -0x1

    if-nez v3, :cond_2

    .line 556
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    goto :goto_0

    :cond_4
    move/from16 v7, p2

    move/from16 v3, p3

    :goto_1
    move v9, v3

    move v10, v7

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    const/16 v13, 0x2e

    const/16 v14, 0xa

    const/16 v15, 0x39

    const/16 v1, 0x30

    if-lez v9, :cond_16

    .line 570
    aget-char v2, p1, v10

    if-lt v2, v1, :cond_5

    if-gt v2, v15, :cond_5

    add-int/lit8 v11, v11, 0x1

    move v8, v10

    goto :goto_3

    :cond_5
    if-ne v2, v13, :cond_7

    if-ltz v6, :cond_6

    .line 579
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_6
    sub-int v1, v10, v7

    move v6, v1

    goto :goto_3

    :cond_7
    const/16 v13, 0x65

    if-eq v2, v13, :cond_9

    const/16 v13, 0x45

    if-eq v2, v13, :cond_9

    .line 585
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 586
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_8
    add-int/lit8 v11, v11, 0x1

    move v8, v10

    const/4 v12, 0x1

    :goto_3
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    sub-int v2, v10, v7

    add-int/lit8 v9, v3, -0x2

    if-le v2, v9, :cond_a

    .line 596
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_a
    add-int/lit8 v2, v10, 0x1

    .line 598
    aget-char v9, p1, v2

    if-ne v9, v5, :cond_b

    add-int/lit8 v2, v10, 0x2

    const/4 v4, 0x1

    goto :goto_4

    .line 601
    :cond_b
    aget-char v5, p1, v2

    if-ne v5, v4, :cond_c

    add-int/lit8 v2, v10, 0x2

    :cond_c
    const/4 v4, 0x0

    :goto_4
    sub-int v5, v2, v7

    sub-int/2addr v3, v5

    if-nez v3, :cond_d

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    const/16 v9, 0x9

    if-le v3, v9, :cond_e

    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    :goto_6
    or-int/2addr v5, v9

    if-eqz v5, :cond_f

    .line 608
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_f
    :goto_7
    if-lez v3, :cond_14

    .line 613
    aget-char v5, p1, v2

    if-ge v5, v1, :cond_10

    .line 615
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_10
    if-le v5, v15, :cond_12

    .line 617
    invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v9

    if-nez v9, :cond_11

    .line 618
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 619
    :cond_11
    invoke-static {v5, v14}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v5

    if-gez v5, :cond_13

    .line 621
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    goto :goto_8

    :cond_12
    add-int/lit8 v5, v5, -0x30

    .line 624
    :cond_13
    :goto_8
    iget v9, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v5

    iput v9, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    if-eqz v4, :cond_15

    .line 628
    iget v2, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v2, v2

    iput v2, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    :cond_15
    const/4 v2, 0x1

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    :goto_9
    if-nez v11, :cond_17

    .line 636
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_17
    if-ltz v6, :cond_18

    .line 638
    iget v3, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v6

    sub-int/2addr v3, v11

    iput v3, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    :cond_18
    const/4 v3, 0x1

    sub-int/2addr v8, v3

    move v3, v7

    :goto_a
    if-gt v7, v8, :cond_1d

    .line 645
    aget-char v4, p1, v7

    if-ne v4, v1, :cond_19

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v11, v11, -0x1

    const/16 v5, 0x2e

    goto :goto_b

    :cond_19
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1a

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    :cond_1a
    if-gt v4, v15, :cond_1b

    goto :goto_c

    .line 656
    :cond_1b
    invoke-static {v4, v14}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_c

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v11, v11, -0x1

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 667
    :cond_1d
    :goto_c
    new-array v4, v11, [B

    iput-object v4, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    if-eqz v12, :cond_21

    const/4 v1, 0x0

    :goto_d
    if-lez v11, :cond_23

    if-ne v1, v6, :cond_1e

    add-int/lit8 v3, v3, 0x1

    .line 677
    :cond_1e
    aget-char v4, p1, v3

    if-gt v4, v15, :cond_1f

    .line 679
    iget-object v5, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v4, v4, -0x30

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    goto :goto_e

    .line 681
    :cond_1f
    invoke-static {v4, v14}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v4

    if-gez v4, :cond_20

    .line 683
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    .line 684
    :cond_20
    iget-object v5, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    :goto_e
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    const/4 v4, 0x0

    :goto_f
    if-lez v11, :cond_23

    if-ne v4, v6, :cond_22

    add-int/lit8 v3, v3, 0x1

    .line 699
    :cond_22
    iget-object v5, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-char v7, p1, v3

    sub-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 712
    :cond_23
    iget-object v1, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    if-nez v4, :cond_25

    .line 713
    iput-byte v3, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 715
    iget v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-lez v1, :cond_24

    .line 716
    iput v3, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    :cond_24
    if-eqz v2, :cond_28

    .line 718
    sget-object v1, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object v1, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v1, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 719
    iput v3, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_12

    :cond_25
    if-eqz v2, :cond_28

    const/4 v2, 0x1

    .line 725
    iput-byte v2, v0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 727
    iget v4, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    array-length v1, v1

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    const v1, -0x3b9ac9ff

    if-ge v4, v1, :cond_26

    const/4 v1, 0x1

    goto :goto_10

    :cond_26
    const/4 v1, 0x0

    :goto_10
    const v5, 0x3b9ac9ff

    if-le v4, v5, :cond_27

    goto :goto_11

    :cond_27
    const/4 v2, 0x0

    :goto_11
    or-int/2addr v1, v2

    if-eqz v1, :cond_28

    .line 729
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/math/BigDecimal;->bad([C)V

    :cond_28
    :goto_12
    return-void
.end method

.method private static final allzero([BI)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 3772
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-gt p1, v1, :cond_2

    .line 3775
    aget-byte v3, p0, p1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private bad([C)V
    .locals 3

    .line 3424
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private badarg(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 3433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final byteaddsub([BI[BIIZ)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 3492
    array-length v3, v0

    .line 3493
    array-length v4, v1

    const/4 v5, 0x1

    add-int/lit8 v6, p1, -0x1

    add-int/lit8 v7, p3, -0x1

    if-ge v7, v6, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    const/4 v9, 0x0

    if-eqz p5, :cond_1

    add-int/lit8 v10, v8, 0x1

    if-ne v10, v3, :cond_1

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    if-nez v10, :cond_2

    add-int/lit8 v10, v8, 0x1

    .line 3504
    new-array v10, v10, [B

    :cond_2
    const/4 v11, 0x0

    if-ne v2, v5, :cond_3

    :goto_2
    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, -0x1

    if-ne v2, v12, :cond_4

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_3
    move v13, v8

    const/4 v14, 0x0

    :goto_4
    const/16 v15, 0xa

    if-ltz v13, :cond_c

    if-ltz v6, :cond_6

    if-ge v6, v3, :cond_5

    .line 3518
    aget-byte v16, v0, v6

    add-int v14, v14, v16

    :cond_5
    add-int/lit8 v6, v6, -0x1

    :cond_6
    if-ltz v7, :cond_a

    if-ge v7, v4, :cond_9

    if-eqz v12, :cond_8

    if-lez v2, :cond_7

    .line 3525
    aget-byte v16, v1, v7

    goto :goto_5

    .line 3527
    :cond_7
    aget-byte v16, v1, v7

    sub-int v14, v14, v16

    goto :goto_6

    .line 3529
    :cond_8
    aget-byte v16, v1, v7

    mul-int v16, v16, v2

    :goto_5
    add-int v14, v14, v16

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, -0x1

    :cond_a
    if-ge v14, v15, :cond_b

    if-ltz v14, :cond_b

    int-to-byte v14, v14

    .line 3537
    aput-byte v14, v10, v13

    const/4 v14, 0x0

    goto :goto_7

    :cond_b
    add-int/lit8 v14, v14, 0x5a

    .line 3543
    sget-object v15, Lcom/ibm/icu/math/BigDecimal;->bytedig:[B

    aget-byte v15, v15, v14

    aput-byte v15, v10, v13

    .line 3544
    sget-object v15, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    aget-byte v14, v15, v14

    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :cond_c
    if-nez v14, :cond_d

    return-object v10

    :cond_d
    if-eqz p5, :cond_e

    add-int/lit8 v1, v8, 0x2

    .line 3556
    array-length v2, v0

    if-ne v1, v2, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, v9

    :goto_8
    if-nez v0, :cond_f

    add-int/lit8 v0, v8, 0x2

    .line 3559
    new-array v0, v0, [B

    :cond_f
    int-to-byte v1, v14

    .line 3560
    aput-byte v1, v0, v11

    if-ge v8, v15, :cond_10

    add-int/2addr v8, v5

    :goto_9
    if-lez v8, :cond_11

    add-int/lit8 v1, v11, 0x1

    .line 3566
    aget-byte v2, v10, v11

    aput-byte v2, v0, v1

    add-int/lit8 v8, v8, -0x1

    move v11, v1

    goto :goto_9

    :cond_10
    add-int/2addr v8, v5

    .line 3570
    invoke-static {v10, v11, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    return-object v0
.end method

.method private checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 3626
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    const-string v2, "Too many digits: "

    if-le v1, p2, :cond_2

    .line 3627
    invoke-static {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3628
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 3631
    :cond_3
    iget-object v0, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    if-le v1, p2, :cond_5

    .line 3632
    invoke-static {v0, p2}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 3633
    :cond_4
    new-instance p2, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_1
    return-void
.end method

.method private static final clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 3609
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0}, Lcom/ibm/icu/math/BigDecimal;-><init>()V

    .line 3610
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3611
    iget v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3612
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 3613
    iget-object p0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object p0, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    return-object v0
.end method

.method private static final diginit()[B
    .locals 4

    const/16 v0, 0xbe

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xbd

    if-gt v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x5a

    if-ltz v2, :cond_0

    .line 3589
    rem-int/lit8 v3, v2, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3590
    sget-object v3, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x64

    .line 3595
    rem-int/lit8 v3, v2, 0xa

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3596
    sget-object v3, Lcom/ibm/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0xa

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 3149
    iget-boolean v5, v3, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v5, :cond_0

    .line 3150
    iget v5, v3, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {v0, v2, v5}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 3154
    :cond_0
    iget-byte v5, v2, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-eqz v5, :cond_34

    .line 3156
    iget-byte v5, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v6, -0x1

    if-nez v5, :cond_3

    .line 3157
    iget v1, v3, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v1, :cond_1

    .line 3158
    sget-object v1, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    return-object v1

    :cond_1
    if-ne v4, v6, :cond_2

    return-object v0

    .line 3161
    :cond_2
    invoke-virtual {v0, v4}, Lcom/ibm/icu/math/BigDecimal;->setScale(I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 3165
    :cond_3
    iget v5, v3, Lcom/ibm/icu/math/MathContext;->digits:I

    const/4 v7, 0x1

    if-lez v5, :cond_5

    .line 3167
    iget-object v6, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-le v6, v5, :cond_4

    .line 3168
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v6

    invoke-direct {v6, v3}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v6

    goto :goto_0

    :cond_4
    move-object v6, v0

    .line 3169
    :goto_0
    iget-object v8, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v8, v8

    if-le v8, v5, :cond_a

    .line 3170
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v2

    invoke-direct {v2, v3}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v2

    goto :goto_2

    :cond_5
    if-ne v4, v6, :cond_6

    .line 3173
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/math/BigDecimal;->scale()I

    move-result v4

    .line 3175
    :cond_6
    iget-object v5, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v6, v5

    .line 3177
    iget v8, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v9, v8

    if-eq v4, v9, :cond_7

    add-int/2addr v6, v4

    add-int/2addr v6, v8

    .line 3179
    :cond_7
    iget-object v8, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v9, v8

    sub-int/2addr v9, v7

    sub-int/2addr v6, v9

    iget v9, v2, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v6, v9

    .line 3180
    array-length v9, v5

    if-ge v6, v9, :cond_8

    .line 3181
    array-length v5, v5

    goto :goto_1

    :cond_8
    move v5, v6

    .line 3182
    :goto_1
    array-length v6, v8

    if-ge v5, v6, :cond_9

    .line 3183
    array-length v5, v8

    :cond_9
    move-object v6, v0

    .line 3187
    :cond_a
    :goto_2
    iget v8, v6, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v9, v2, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v8, v9

    iget-object v9, v6, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    add-int/2addr v8, v9

    iget-object v9, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    const/16 v9, 0x49

    const/16 v10, 0x44

    const/4 v11, 0x0

    if-gez v8, :cond_c

    if-eq v1, v10, :cond_c

    if-ne v1, v9, :cond_b

    .line 3192
    sget-object v1, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    return-object v1

    .line 3194
    :cond_b
    invoke-static {v6}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    invoke-direct {v1, v3, v11}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 3198
    :cond_c
    new-instance v12, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v12}, Lcom/ibm/icu/math/BigDecimal;-><init>()V

    .line 3199
    iget-byte v13, v6, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v14, v2, Lcom/ibm/icu/math/BigDecimal;->ind:B

    mul-int v13, v13, v14

    int-to-byte v13, v13

    iput-byte v13, v12, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3200
    iput v8, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v8, v5, 0x1

    .line 3201
    new-array v13, v8, [B

    iput-object v13, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    add-int v13, v5, v5

    add-int/2addr v13, v7

    .line 3206
    iget-object v14, v6, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v14, v13}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v14

    .line 3209
    iget-object v15, v2, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3213
    aget-byte v16, v15, v11

    mul-int/lit8 v16, v16, 0xa

    add-int/lit8 v16, v16, 0x1

    .line 3214
    array-length v9, v15

    if-le v9, v7, :cond_d

    .line 3215
    aget-byte v9, v15, v7

    add-int v16, v16, v9

    :cond_d
    move/from16 v9, v16

    move v7, v13

    move/from16 v16, v7

    const/16 v22, 0x0

    :goto_3
    move/from16 v10, v16

    :goto_4
    if-ge v10, v7, :cond_e

    move/from16 v23, v9

    move-object/from16 v17, v15

    goto :goto_7

    :cond_e
    if-ne v10, v7, :cond_2d

    move/from16 v16, v10

    const/4 v0, 0x0

    :goto_5
    if-lez v16, :cond_19

    move/from16 v23, v9

    .line 3235
    array-length v9, v15

    if-ge v0, v9, :cond_f

    .line 3236
    aget-byte v9, v15, v0

    move-object/from16 v17, v15

    goto :goto_6

    :cond_f
    move-object/from16 v17, v15

    const/4 v9, 0x0

    .line 3239
    :goto_6
    aget-byte v15, v14, v0

    if-ge v15, v9, :cond_17

    :goto_7
    if-eqz v22, :cond_10

    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    if-eqz v11, :cond_11

    const/4 v9, 0x1

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    :goto_9
    or-int/2addr v0, v9

    if-eqz v0, :cond_14

    .line 3298
    iget-object v0, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    int-to-byte v9, v11

    aput-byte v9, v0, v22

    add-int/lit8 v0, v22, 0x1

    if-ne v0, v8, :cond_12

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    .line 3302
    aget-byte v11, v14, v9

    if-nez v11, :cond_13

    :goto_a
    move/from16 v22, v0

    goto :goto_b

    :cond_13
    move/from16 v22, v0

    :cond_14
    if-ltz v4, :cond_15

    .line 3307
    iget v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v0, v0

    if-le v0, v4, :cond_15

    goto :goto_b

    :cond_15
    const/16 v15, 0x44

    if-eq v1, v15, :cond_16

    .line 3311
    iget v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-gtz v0, :cond_16

    goto :goto_b

    .line 3313
    :cond_16
    iget v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    iput v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v16, v10

    move-object/from16 v15, v17

    move/from16 v9, v23

    const/16 v10, 0x44

    const/4 v11, 0x0

    goto :goto_3

    .line 3241
    :cond_17
    aget-byte v15, v14, v0

    if-le v15, v9, :cond_18

    const/4 v0, 0x0

    .line 3259
    aget-byte v9, v14, v0

    move v15, v9

    const/16 v0, 0x49

    const/4 v9, 0x1

    goto/16 :goto_17

    :cond_18
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, v17

    move/from16 v9, v23

    goto :goto_5

    :cond_19
    const/4 v0, 0x1

    add-int/2addr v11, v0

    .line 3251
    iget-object v7, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    int-to-byte v8, v11

    aput-byte v8, v7, v22

    add-int/lit8 v22, v22, 0x1

    const/4 v0, 0x0

    .line 3253
    aput-byte v0, v14, v0

    :goto_b
    if-nez v22, :cond_1a

    const/16 v0, 0x49

    const/4 v9, 0x1

    goto :goto_c

    :cond_1a
    move/from16 v9, v22

    const/16 v0, 0x49

    :goto_c
    if-ne v1, v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_d

    :cond_1b
    const/4 v0, 0x0

    :goto_d
    const/16 v7, 0x52

    if-ne v1, v7, :cond_1c

    const/4 v8, 0x1

    goto :goto_e

    :cond_1c
    const/4 v8, 0x0

    :goto_e
    or-int/2addr v0, v8

    if-eqz v0, :cond_26

    .line 3327
    iget v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int v8, v9, v0

    if-gt v8, v5, :cond_25

    if-ne v1, v7, :cond_27

    .line 3333
    iget-object v1, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    if-nez v1, :cond_1d

    .line 3334
    invoke-static {v6}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, v3, v4}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3335
    :cond_1d
    aget-byte v1, v14, v4

    if-nez v1, :cond_1e

    .line 3336
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    return-object v0

    .line 3337
    :cond_1e
    iget-byte v1, v6, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v1, v12, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3342
    iget-object v1, v6, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    sub-int/2addr v13, v1

    sub-int/2addr v0, v13

    .line 3343
    iget v1, v6, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, v1

    iput v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v0, v10, -0x1

    :goto_f
    const/4 v1, 0x1

    if-lt v0, v1, :cond_23

    .line 3352
    iget v1, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v4, v6, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ge v1, v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_10

    :cond_1f
    const/4 v4, 0x0

    :goto_10
    iget v5, v2, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ge v1, v5, :cond_20

    const/4 v5, 0x1

    goto :goto_11

    :cond_20
    const/4 v5, 0x0

    :goto_11
    and-int/2addr v4, v5

    if-nez v4, :cond_21

    goto :goto_12

    .line 3354
    :cond_21
    aget-byte v4, v14, v0

    if-eqz v4, :cond_22

    goto :goto_12

    :cond_22
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v1, v1, 0x1

    .line 3357
    iput v1, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 3360
    :cond_23
    :goto_12
    array-length v0, v14

    if-ge v10, v0, :cond_24

    .line 3361
    new-array v0, v10, [B

    const/4 v1, 0x0

    .line 3362
    invoke-static {v14, v1, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v14, v0

    goto :goto_13

    :cond_24
    const/4 v1, 0x0

    .line 3365
    :goto_13
    iput-object v14, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3366
    invoke-direct {v12, v3, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3328
    :cond_25
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v1, 0x0

    .line 3376
    aget-byte v0, v14, v1

    if-eqz v0, :cond_27

    .line 3377
    iget-object v0, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v1, v9, -0x1

    aget-byte v2, v0, v1

    .line 3378
    rem-int/lit8 v5, v2, 0x5

    if-nez v5, :cond_27

    const/4 v5, 0x1

    add-int/2addr v2, v5

    int-to-byte v2, v2

    .line 3379
    aput-byte v2, v0, v1

    :cond_27
    if-ltz v4, :cond_2a

    .line 3388
    iget-object v0, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    if-eq v9, v1, :cond_28

    .line 3390
    iget v1, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    array-length v2, v0

    sub-int/2addr v2, v9

    sub-int/2addr v1, v2

    iput v1, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3392
    :cond_28
    array-length v0, v0

    iget v1, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v1, v1

    sub-int/2addr v1, v4

    sub-int/2addr v0, v1

    .line 3393
    iget v1, v3, Lcom/ibm/icu/math/MathContext;->roundingMode:I

    invoke-direct {v12, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;

    .line 3396
    iget v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int v1, v4

    if-eq v0, v1, :cond_29

    .line 3397
    iget-object v0, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v0

    iput-object v0, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3398
    iget v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v0, v2

    iput v0, v12, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_14

    :cond_29
    const/4 v2, 0x1

    .line 3400
    :goto_14
    invoke-direct {v12, v3, v2}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3405
    :cond_2a
    iget-object v0, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    if-ne v9, v1, :cond_2b

    .line 3406
    invoke-direct {v12, v3}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    :goto_15
    const/4 v9, 0x1

    goto :goto_16

    :cond_2b
    const/4 v15, 0x0

    .line 3409
    aget-byte v1, v0, v15

    if-nez v1, :cond_2c

    .line 3410
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    return-object v0

    .line 3414
    :cond_2c
    new-array v1, v9, [B

    .line 3415
    invoke-static {v0, v15, v1, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3416
    iput-object v1, v12, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    goto :goto_15

    .line 3418
    :goto_16
    invoke-direct {v12, v3, v9}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_2d
    move/from16 v23, v9

    move-object/from16 v17, v15

    const/16 v0, 0x49

    const/4 v9, 0x1

    const/4 v15, 0x0

    .line 3263
    aget-byte v16, v14, v15

    mul-int/lit8 v15, v16, 0xa

    if-le v10, v9, :cond_2e

    .line 3265
    aget-byte v16, v14, v9

    add-int v15, v15, v16

    :cond_2e
    :goto_17
    mul-int/lit8 v15, v15, 0xa

    .line 3268
    div-int v15, v15, v23

    if-nez v15, :cond_2f

    const/4 v15, 0x1

    :cond_2f
    add-int/2addr v11, v15

    neg-int v15, v15

    const/16 v20, 0x1

    move/from16 v19, v15

    move-object/from16 v21, v17

    const/16 v24, 0x44

    move-object v15, v14

    move/from16 v16, v10

    move/from16 v18, v7

    .line 3273
    invoke-static/range {v15 .. v20}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v14

    const/4 v15, 0x0

    .line 3274
    aget-byte v16, v14, v15

    if-eqz v16, :cond_30

    move-object/from16 v0, p0

    move-object/from16 v15, v21

    move/from16 v9, v23

    goto/16 :goto_4

    :cond_30
    add-int/lit8 v15, v10, -0x2

    move v0, v10

    const/4 v10, 0x0

    :goto_18
    if-gt v10, v15, :cond_32

    .line 3284
    aget-byte v16, v14, v10

    if-eqz v16, :cond_31

    goto :goto_19

    :cond_31
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_32
    :goto_19
    if-nez v10, :cond_33

    const/4 v15, 0x0

    goto :goto_1a

    :cond_33
    const/4 v15, 0x0

    .line 3292
    invoke-static {v14, v10, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1a
    move v10, v0

    move-object/from16 v15, v21

    move/from16 v9, v23

    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 3155
    :cond_34
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :goto_1b
    throw v0

    :goto_1c
    goto :goto_1b
.end method

.method private static final extend([BI)[B
    .locals 2

    .line 3446
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 3448
    :cond_0
    new-array p1, p1, [B

    .line 3449
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;
    .locals 7

    .line 3798
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-eqz v0, :cond_0

    .line 3799
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-le v0, v1, :cond_0

    .line 3800
    invoke-direct {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 3806
    iget p2, p1, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz p2, :cond_3

    .line 3807
    iget-object p2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length p2, p2

    add-int/lit8 v2, p2, -0x1

    :goto_0
    if-lt v2, v0, :cond_2

    .line 3812
    iget-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 3815
    iget v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3818
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v2

    if-ge p2, v3, :cond_3

    .line 3819
    new-array v3, p2, [B

    .line 3820
    invoke-static {v2, v1, v3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3821
    iput-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3825
    :cond_3
    iput-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 3829
    iget-object p2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length p2, p2

    const/4 v2, 0x0

    :goto_2
    const-string v3, "Exponent Overflow: "

    const v4, -0x3b9ac9ff

    if-lez p2, :cond_e

    .line 3832
    iget-object v5, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v5, v2

    if-eqz v6, :cond_d

    if-lez v2, :cond_4

    .line 3837
    array-length p2, v5

    sub-int/2addr p2, v2

    new-array p2, p2, [B

    .line 3838
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-static {v5, v2, p2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3840
    iput-object p2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3844
    :cond_4
    iget p2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    add-int/2addr p2, v2

    const v2, 0x3b9ac9ff

    if-lez p2, :cond_6

    .line 3846
    iget v5, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-le p2, v5, :cond_5

    .line 3847
    iget v5, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-eqz v5, :cond_5

    .line 3848
    iget p1, p1, Lcom/ibm/icu/math/MathContext;->form:I

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    :cond_5
    add-int/lit8 p1, p2, -0x1

    if-gt p1, v2, :cond_7

    return-object p0

    :cond_6
    const/4 v5, -0x5

    if-ge p2, v5, :cond_7

    .line 3852
    iget p1, p1, Lcom/ibm/icu/math/MathContext;->form:I

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    :cond_7
    add-int/lit8 p2, p2, -0x1

    if-ge p2, v4, :cond_8

    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    if-le p2, v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    or-int/2addr p1, v0

    if-eqz p1, :cond_c

    .line 3858
    iget-byte p1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 3859
    rem-int/lit8 p1, p2, 0x3

    if-gez p1, :cond_a

    add-int/lit8 p1, p1, 0x3

    :cond_a
    sub-int/2addr p2, p1

    if-lt p2, v4, :cond_b

    if-gt p2, v2, :cond_b

    goto :goto_5

    .line 3868
    :cond_b
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    return-object p0

    :cond_d
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3877
    :cond_e
    iput-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 3879
    iget p1, p1, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz p1, :cond_f

    .line 3880
    iput v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_6

    .line 3881
    :cond_f
    iget p1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-lez p1, :cond_10

    .line 3882
    iput v1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_6

    :cond_10
    if-lt p1, v4, :cond_11

    .line 3889
    :goto_6
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object p1, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    return-object p0

    .line 3886
    :cond_11
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private intcheck(II)I
    .locals 3

    .line 3096
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-le v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr p1, v1

    if-nez p1, :cond_2

    return v0

    .line 3099
    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversion overflow: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private layout()[C
    .locals 11

    .line 2969
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    new-array v2, v1, [C

    .line 2971
    array-length v0, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x30

    const/4 v6, 0x1

    if-lez v0, :cond_0

    .line 2974
    iget-object v7, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v7, v7, v4

    add-int/2addr v7, v5

    int-to-char v5, v7

    aput-char v5, v2, v4

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v4, v6

    goto :goto_0

    .line 2978
    :cond_0
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    const/16 v4, 0x2e

    const/16 v7, 0x2d

    const/4 v8, -0x1

    if-eqz v0, :cond_9

    .line 2979
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v1, 0xf

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2980
    iget-byte v9, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ne v9, v8, :cond_1

    .line 2981
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2982
    :cond_1
    iget v8, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v8, v1

    sub-int/2addr v8, v6

    .line 2984
    iget-byte v9, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-ne v9, v6, :cond_2

    .line 2985
    aget-char v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-le v1, v6, :cond_5

    .line 2987
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v6

    invoke-virtual {v0, v2, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2990
    :cond_2
    rem-int/lit8 v9, v8, 0x3

    if-gez v9, :cond_3

    add-int/lit8 v9, v9, 0x3

    :cond_3
    sub-int/2addr v8, v9

    add-int/2addr v9, v6

    if-lt v9, v1, :cond_4

    .line 2996
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int/2addr v9, v1

    :goto_1
    if-lez v9, :cond_5

    .line 3000
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 3004
    :cond_4
    invoke-virtual {v0, v2, v3, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v9

    invoke-virtual {v0, v2, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    if-eqz v8, :cond_7

    if-gez v8, :cond_6

    neg-int v8, v8

    goto :goto_3

    :cond_6
    const/16 v7, 0x2b

    :goto_3
    const/16 v1, 0x45

    .line 3014
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3016
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    .line 3017
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 3019
    invoke-virtual {v0, v3, v2, v1, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    :cond_8
    return-object v1

    .line 3025
    :cond_9
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-nez v0, :cond_b

    .line 3026
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ltz v0, :cond_a

    return-object v2

    :cond_a
    add-int/lit8 v0, v1, 0x1

    .line 3028
    new-array v0, v0, [C

    .line 3029
    aput-char v7, v0, v3

    .line 3030
    invoke-static {v2, v3, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 3035
    :cond_b
    iget-byte v9, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ne v9, v8, :cond_c

    const/4 v8, 0x1

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    :goto_4
    add-int v9, v0, v1

    if-ge v9, v6, :cond_f

    add-int/lit8 v10, v8, 0x2

    sub-int v0, v10, v0

    .line 3044
    new-array v0, v0, [C

    if-eqz v8, :cond_d

    .line 3046
    aput-char v7, v0, v3

    .line 3047
    :cond_d
    aput-char v5, v0, v8

    add-int/2addr v8, v6

    .line 3048
    aput-char v4, v0, v8

    neg-int v4, v9

    move v7, v10

    :goto_5
    if-lez v4, :cond_e

    .line 3053
    aput-char v5, v0, v7

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v7, v6

    goto :goto_5

    :cond_e
    sub-int/2addr v10, v9

    .line 3056
    invoke-static {v2, v3, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_f
    if-le v9, v1, :cond_12

    add-int v0, v8, v9

    .line 3063
    new-array v0, v0, [C

    if-eqz v8, :cond_10

    .line 3065
    aput-char v7, v0, v3

    .line 3066
    :cond_10
    invoke-static {v2, v3, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v9, v1

    add-int/2addr v8, v1

    :goto_6
    if-lez v9, :cond_11

    .line 3071
    aput-char v5, v0, v8

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v8, v6

    goto :goto_6

    :cond_11
    return-object v0

    :cond_12
    add-int/lit8 v0, v8, 0x1

    add-int/2addr v0, v1

    .line 3079
    new-array v0, v0, [C

    if-eqz v8, :cond_13

    .line 3081
    aput-char v7, v0, v3

    .line 3082
    :cond_13
    invoke-static {v2, v3, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v9

    .line 3083
    aput-char v4, v0, v8

    add-int/2addr v8, v6

    sub-int/2addr v1, v9

    .line 3084
    invoke-static {v2, v9, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private round(II)Lcom/ibm/icu/math/BigDecimal;
    .locals 11

    .line 3663
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    sub-int/2addr v1, p1

    if-gtz v1, :cond_0

    return-object p0

    .line 3667
    :cond_0
    iget v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3668
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_1

    .line 3672
    new-array v4, p1, [B

    iput-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3673
    invoke-static {v0, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3675
    aget-byte v4, v0, p1

    const/4 v10, 0x1

    goto :goto_1

    .line 3677
    :cond_1
    sget-object v4, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object v4, v4, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3678
    iput-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez p1, :cond_2

    .line 3681
    aget-byte v4, v0, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 v10, 0x0

    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x5

    if-ne p2, v5, :cond_3

    if-lt v4, v6, :cond_e

    goto/16 :goto_3

    :cond_3
    const/4 v5, 0x7

    if-ne p2, v5, :cond_5

    .line 3695
    invoke-static {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 3696
    :cond_4
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Rounding necessary"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-ne p2, v6, :cond_7

    if-le v4, v6, :cond_6

    goto :goto_3

    :cond_6
    if-ne v4, v6, :cond_e

    add-int/2addr p1, v2

    .line 3701
    invoke-static {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_7
    const/4 v5, 0x6

    const/4 v7, 0x2

    if-ne p2, v5, :cond_a

    if-le v4, v6, :cond_8

    goto :goto_3

    :cond_8
    if-ne v4, v6, :cond_e

    add-int/2addr p1, v2

    .line 3707
    invoke-static {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    .line 3710
    :cond_9
    iget-object p1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length p2, p1

    sub-int/2addr p2, v2

    aget-byte p1, p1, p2

    rem-int/2addr p1, v7

    if-eqz p1, :cond_e

    goto :goto_3

    :cond_a
    if-ne p2, v2, :cond_b

    goto :goto_2

    :cond_b
    if-nez p2, :cond_c

    .line 3716
    invoke-static {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_c
    if-ne p2, v7, :cond_d

    if-lez v1, :cond_e

    .line 3720
    invoke-static {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_d
    const/4 v4, 0x3

    if-ne p2, v4, :cond_14

    if-gez v1, :cond_e

    .line 3724
    invoke-static {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_12

    .line 3734
    iget-byte p1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez p1, :cond_f

    .line 3736
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object p1, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object p1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    int-to-byte p1, v1

    .line 3737
    iput-byte p1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_5

    :cond_f
    const/4 p2, -0x1

    if-ne p1, p2, :cond_10

    neg-int p1, v1

    move v9, p1

    goto :goto_4

    :cond_10
    move v9, v1

    .line 3742
    :goto_4
    iget-object v5, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v6, v5

    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object v7, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object p1

    .line 3743
    array-length p2, p1

    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v0

    if-le p2, v1, :cond_11

    .line 3745
    iget p2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 3747
    array-length p2, v0

    invoke-static {p1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 3750
    :cond_11
    iput-object p1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 3755
    :cond_12
    :goto_5
    iget p1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const p2, 0x3b9ac9ff

    if-gt p1, p2, :cond_13

    return-object p0

    .line 3756
    :cond_13
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exponent Overflow: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3727
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad round value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 3642
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    iget p1, p1, Lcom/ibm/icu/math/MathContext;->roundingMode:I

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public static valueOf(D)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 2890
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    .line 2903
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->valueOf(JI)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(JI)Lcom/ibm/icu/math/BigDecimal;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 2928
    sget-object p0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    .line 2930
    sget-object p0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xa

    cmp-long v2, p0, v0

    if-nez v2, :cond_2

    .line 2932
    sget-object p0, Lcom/ibm/icu/math/BigDecimal;->TEN:Lcom/ibm/icu/math/BigDecimal;

    goto :goto_0

    .line 2934
    :cond_2
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V

    move-object p0, v0

    :goto_0
    if-nez p2, :cond_3

    return-object p0

    :cond_3
    if-ltz p2, :cond_4

    .line 2941
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p0

    neg-int p1, p2

    .line 2942
    iput p1, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    return-object p0

    .line 2940
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative scale: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abs()Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 957
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/math/BigDecimal;->abs(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public abs(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 973
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 974
    invoke-virtual {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->negate(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 975
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 992
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1026
    iget-boolean v3, v2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v3, :cond_0

    .line 1027
    iget v3, v2, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1032
    :cond_0
    iget-byte v3, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v3, :cond_1

    .line 1033
    iget v3, v2, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v3, :cond_1

    .line 1034
    invoke-virtual/range {p1 .. p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1035
    :cond_1
    iget-byte v3, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v3, :cond_2

    .line 1036
    iget v3, v2, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v3, :cond_2

    .line 1037
    invoke-virtual {v0, v2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1040
    :cond_2
    iget v3, v2, Lcom/ibm/icu/math/MathContext;->digits:I

    if-lez v3, :cond_4

    .line 1042
    iget-object v4, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-le v4, v3, :cond_3

    .line 1043
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v4

    invoke-direct {v4, v2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    .line 1044
    :goto_0
    iget-object v5, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    if-le v5, v3, :cond_5

    .line 1045
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    invoke-direct {v1, v2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v4, v0

    .line 1049
    :cond_5
    :goto_1
    new-instance v5, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v5}, Lcom/ibm/icu/math/BigDecimal;-><init>()V

    .line 1059
    iget-object v6, v4, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1060
    array-length v7, v6

    .line 1061
    iget-object v8, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1062
    array-length v9, v8

    .line 1065
    iget v10, v4, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v11, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v10, v11, :cond_6

    .line 1067
    iput v10, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto/16 :goto_2

    :cond_6
    if-le v10, v11, :cond_a

    add-int v14, v7, v10

    sub-int/2addr v14, v11

    add-int v15, v9, v3

    add-int/2addr v15, v13

    if-lt v14, v15, :cond_8

    if-lez v3, :cond_8

    .line 1077
    iput-object v6, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1078
    iput v10, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1079
    iget-byte v1, v4, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ge v7, v3, :cond_7

    .line 1081
    iget-object v1, v4, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v1, v3}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1082
    iget v1, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v3, v7

    sub-int/2addr v1, v3

    iput v1, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1084
    :cond_7
    invoke-direct {v5, v2, v12}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1087
    :cond_8
    iput v11, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v10, v3, 0x1

    if-le v14, v10, :cond_9

    if-lez v3, :cond_9

    sub-int/2addr v14, v3

    sub-int/2addr v14, v13

    sub-int/2addr v9, v14

    add-int/2addr v11, v14

    .line 1093
    iput v11, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    move v14, v10

    :cond_9
    if-le v14, v7, :cond_e

    move v7, v14

    goto :goto_2

    :cond_a
    add-int v14, v9, v11

    sub-int/2addr v14, v10

    add-int v15, v7, v3

    add-int/2addr v15, v13

    if-lt v14, v15, :cond_c

    if-lez v3, :cond_c

    .line 1103
    iput-object v8, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1104
    iput v11, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1105
    iget-byte v4, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iput-byte v4, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ge v9, v3, :cond_b

    .line 1107
    iget-object v1, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    invoke-static {v1, v3}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1108
    iget v1, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v3, v9

    sub-int/2addr v1, v3

    iput v1, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 1110
    :cond_b
    invoke-direct {v5, v2, v12}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1113
    :cond_c
    iput v10, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 v11, v3, 0x1

    if-le v14, v11, :cond_d

    if-lez v3, :cond_d

    sub-int/2addr v14, v3

    sub-int/2addr v14, v13

    sub-int/2addr v7, v14

    add-int/2addr v10, v14

    .line 1119
    iput v10, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    move v14, v11

    :cond_d
    if-le v14, v9, :cond_e

    move v9, v14

    .line 1132
    :cond_e
    :goto_2
    iget-byte v3, v4, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v3, :cond_f

    .line 1133
    iput-byte v13, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_3

    .line 1135
    :cond_f
    iput-byte v3, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1136
    :goto_3
    iget-byte v3, v4, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    const/4 v10, 0x1

    goto :goto_4

    :cond_10
    const/4 v10, 0x0

    :goto_4
    iget-byte v1, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ne v1, v4, :cond_11

    const/4 v11, 0x1

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    :goto_5
    if-ne v10, v11, :cond_12

    move-object v13, v6

    move v14, v7

    move-object v15, v8

    move/from16 v16, v9

    const/16 v17, 0x1

    goto :goto_e

    :cond_12
    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    if-ge v7, v9, :cond_14

    const/4 v1, 0x1

    goto :goto_6

    :cond_14
    const/4 v1, 0x0

    :goto_6
    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_7

    :cond_15
    const/4 v3, 0x0

    :goto_7
    or-int/2addr v1, v3

    if-eqz v1, :cond_16

    .line 1156
    iget-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    goto :goto_b

    :cond_16
    if-le v7, v9, :cond_17

    goto :goto_c

    .line 1164
    :cond_17
    array-length v1, v6

    sub-int/2addr v1, v13

    .line 1165
    array-length v3, v8

    sub-int/2addr v3, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8
    if-gt v10, v1, :cond_18

    .line 1169
    aget-byte v13, v6, v10

    goto :goto_9

    :cond_18
    if-le v11, v3, :cond_19

    .line 1172
    iget v1, v2, Lcom/ibm/icu/math/MathContext;->form:I

    if-eqz v1, :cond_1b

    .line 1173
    sget-object v1, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    return-object v1

    :cond_19
    const/4 v13, 0x0

    :goto_9
    if-gt v11, v3, :cond_1a

    .line 1180
    aget-byte v14, v8, v11

    goto :goto_a

    :cond_1a
    const/4 v14, 0x0

    :goto_a
    if-eq v13, v14, :cond_1c

    if-ge v13, v14, :cond_1b

    .line 1191
    iget-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    :goto_b
    move-object v15, v6

    move/from16 v16, v7

    move-object v13, v8

    move v14, v9

    goto :goto_d

    :cond_1b
    :goto_c
    move-object v13, v6

    move v14, v7

    move-object v15, v8

    move/from16 v16, v9

    :goto_d
    const/16 v17, -0x1

    :goto_e
    const/16 v18, 0x0

    .line 1209
    invoke-static/range {v13 .. v18}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1213
    invoke-direct {v5, v2, v12}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_8
.end method

.method public byteValueExact()B
    .locals 5

    .line 1926
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, -0x80

    if-ge v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v1, v3

    if-nez v1, :cond_2

    int-to-byte v0, v0

    return v0

    .line 1928
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Lcom/ibm/icu/math/BigDecimal;)I
    .locals 1

    .line 1230
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I
    .locals 7

    .line 1266
    iget-boolean v0, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1267
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1269
    :cond_0
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v1, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v6, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_a

    .line 1271
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    .line 1272
    iget-object v4, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v5, v4

    if-ge v1, v5, :cond_3

    neg-int p1, v0

    int-to-byte p1, p1

    return p1

    .line 1274
    :cond_3
    array-length v4, v4

    if-le v1, v4, :cond_4

    return v0

    .line 1280
    :cond_4
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    if-gt v1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget v4, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    or-int/2addr v0, v2

    if-eqz v0, :cond_c

    const/4 p2, 0x0

    :goto_4
    if-lez v1, :cond_9

    .line 1285
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v2, v0, p2

    iget-object v4, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v4, p2

    if-ge v2, v5, :cond_7

    .line 1286
    iget-byte p1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int p1, p1

    int-to-byte p1, p1

    return p1

    .line 1287
    :cond_7
    aget-byte v0, v0, p2

    aget-byte v2, v4, p2

    if-le v0, v2, :cond_8

    .line 1288
    iget-byte p1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    return p1

    :cond_8
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    return v3

    :cond_a
    if-ge v0, v1, :cond_b

    const/4 p1, -0x1

    return p1

    :cond_b
    if-le v0, v1, :cond_c

    return v2

    .line 1302
    :cond_c
    invoke-static {p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    .line 1303
    iget-byte v0, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    iget-byte p1, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 224
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public divide(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 3

    .line 1323
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    const/16 v1, 0x44

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 1349
    new-instance v0, Lcom/ibm/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p2}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V

    const/16 p2, 0x44

    const/4 v1, -0x1

    .line 1351
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lcom/ibm/icu/math/BigDecimal;II)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    if-ltz p2, :cond_0

    .line 1383
    new-instance v0, Lcom/ibm/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p3}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V

    const/16 p3, 0x44

    .line 1384
    invoke-direct {p0, p3, p1, v0, p2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1382
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative scale: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public divide(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x44

    const/4 v1, -0x1

    .line 1401
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public divideInteger(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 3

    .line 1418
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    const/16 v1, 0x49

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public divideInteger(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x49

    const/4 v1, 0x0

    .line 1437
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1949
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1981
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/math/BigDecimal;

    if-nez v1, :cond_1

    return v0

    .line 1983
    :cond_1
    check-cast p1, Lcom/ibm/icu/math/BigDecimal;

    .line 1984
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v2, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-eq v1, v2, :cond_2

    return v0

    .line 1986
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v1

    iget-object v3, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v5, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v3

    iget-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    iget-byte v5, p1, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-ne v3, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 1991
    array-length v1, v1

    const/4 v2, 0x0

    :goto_3
    if-lez v1, :cond_a

    .line 1994
    iget-object v3, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v3, v2

    iget-object v5, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v5, v2

    if-eq v3, v5, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1999
    :cond_7
    invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v1

    .line 2000
    invoke-direct {p1}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object p1

    .line 2001
    array-length v2, v1

    array-length v3, p1

    if-eq v2, v3, :cond_8

    return v0

    .line 2005
    :cond_8
    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-lez v2, :cond_a

    .line 2008
    aget-char v5, v1, v3

    aget-char v6, p1, v3

    if-eq v5, v6, :cond_9

    return v0

    :cond_9
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    return v4
.end method

.method public floatValue()F
    .locals 1

    .line 2031
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public format(II)Ljava/lang/String;
    .locals 7

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2075
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/math/BigDecimal;->format(IIIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(IIIIII)Ljava/lang/String;
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    const-string v4, "format"

    if-eqz v3, :cond_2

    .line 2165
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    const/4 v3, 0x2

    if-ge p2, v0, :cond_3

    .line 2167
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    if-ge p3, v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez p3, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v5, v6

    const/4 v6, 0x3

    if-eqz v5, :cond_6

    .line 2169
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v6, v5}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    const/4 v5, 0x4

    if-ge p4, v0, :cond_7

    .line 2171
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    if-ne p5, v2, :cond_8

    goto :goto_4

    :cond_8
    if-ne p5, v3, :cond_9

    goto :goto_4

    :cond_9
    if-ne p5, v0, :cond_a

    const/4 p5, 0x1

    goto :goto_4

    :cond_a
    const/4 v7, 0x5

    .line 2179
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v7, v8}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :goto_4
    if-eq p6, v5, :cond_c

    if-ne p6, v0, :cond_b

    const/4 p6, 0x4

    goto :goto_5

    .line 2189
    :cond_b
    :try_start_0
    new-instance v5, Lcom/ibm/icu/math/MathContext;

    const/16 v7, 0x9

    invoke-direct {v5, v7, v2, v1, p6}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v5, 0x6

    .line 2191
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2195
    :cond_c
    :goto_5
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v5

    if-ne p4, v0, :cond_d

    .line 2207
    iput-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->form:B

    goto :goto_6

    .line 2208
    :cond_d
    iget-byte v0, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-nez v0, :cond_e

    .line 2209
    iput-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->form:B

    goto :goto_6

    .line 2212
    :cond_e
    iget v0, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget-object v7, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    add-int/2addr v0, v7

    if-le v0, p4, :cond_f

    int-to-byte p4, p5

    .line 2214
    iput-byte p4, v5, Lcom/ibm/icu/math/BigDecimal;->form:B

    goto :goto_6

    :cond_f
    const/4 p4, -0x5

    if-ge v0, p4, :cond_10

    int-to-byte p4, p5

    .line 2216
    iput-byte p4, v5, Lcom/ibm/icu/math/BigDecimal;->form:B

    goto :goto_6

    .line 2218
    :cond_10
    iput-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->form:B

    :goto_6
    if-ltz p2, :cond_1a

    .line 2231
    :cond_11
    :goto_7
    iget-byte p4, v5, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-nez p4, :cond_12

    .line 2232
    iget p4, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int p4, p4

    goto :goto_8

    :cond_12
    if-ne p4, v2, :cond_13

    .line 2234
    iget-object p4, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length p4, p4

    sub-int/2addr p4, v2

    goto :goto_8

    .line 2236
    :cond_13
    iget p4, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget-object p5, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, p5

    add-int/2addr p4, v0

    sub-int/2addr p4, v2

    rem-int/2addr p4, v6

    if-gez p4, :cond_14

    add-int/lit8 p4, p4, 0x3

    :cond_14
    add-int/2addr p4, v2

    .line 2240
    array-length v0, p5

    if-lt p4, v0, :cond_15

    const/4 p4, 0x0

    goto :goto_8

    .line 2243
    :cond_15
    array-length p5, p5

    sub-int p4, p5, p4

    :goto_8
    if-ne p4, p2, :cond_16

    goto :goto_9

    :cond_16
    if-ge p4, p2, :cond_18

    .line 2250
    iget-object p5, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length p6, p5

    add-int/2addr p6, p2

    sub-int/2addr p6, p4

    invoke-static {p5, p6}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object p5

    .line 2251
    iput-object p5, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 2252
    iget p5, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr p2, p4

    sub-int/2addr p5, p2

    iput p5, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const p2, -0x3b9ac9ff

    if-lt p5, p2, :cond_17

    goto :goto_9

    .line 2254
    :cond_17
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exponent Overflow: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    sub-int/2addr p4, p2

    .line 2261
    iget-object p5, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, p5

    if-le p4, v0, :cond_19

    .line 2263
    sget-object p4, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    iget-object p4, p4, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    iput-object p4, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 2264
    iput-byte v1, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 2265
    iput v1, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_7

    .line 2270
    :cond_19
    array-length p5, p5

    sub-int/2addr p5, p4

    .line 2271
    iget v0, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 2272
    invoke-direct {v5, p5, p6}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;

    .line 2275
    iget p5, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr p5, v0

    if-ne p5, p4, :cond_11

    .line 2281
    :cond_1a
    :goto_9
    invoke-direct {v5}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object p2

    const/16 p4, 0x20

    const/16 p5, 0x45

    if-lez p1, :cond_20

    .line 2288
    array-length p6, p2

    const/4 v0, 0x0

    :goto_a
    if-lez p6, :cond_1d

    .line 2291
    aget-char v5, p2, v0

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_1b

    goto :goto_b

    .line 2293
    :cond_1b
    aget-char v5, p2, v0

    if-ne v5, p5, :cond_1c

    goto :goto_b

    :cond_1c
    add-int/lit8 p6, p6, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    :goto_b
    if-le v0, p1, :cond_1e

    .line 2300
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, v4, v2, p6}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1e
    if-ge v0, p1, :cond_20

    .line 2302
    array-length p6, p2

    add-int/2addr p6, p1

    sub-int/2addr p6, v0

    new-array p6, p6, [C

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_c
    if-lez p1, :cond_1f

    .line 2307
    aput-char p4, p6, v0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2310
    :cond_1f
    array-length p1, p2

    invoke-static {p2, v1, p6, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p6

    :cond_20
    if-lez p3, :cond_27

    .line 2319
    array-length p1, p2

    sub-int/2addr p1, v2

    .line 2320
    array-length p6, p2

    sub-int/2addr p6, v2

    :goto_d
    if-lez p1, :cond_22

    .line 2322
    aget-char v0, p2, p6

    if-ne v0, p5, :cond_21

    goto :goto_e

    :cond_21
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p6, p6, -0x1

    goto :goto_d

    :cond_22
    :goto_e
    if-nez p6, :cond_24

    .line 2328
    array-length p1, p2

    add-int/2addr p1, p3

    add-int/2addr p1, v3

    new-array p1, p1, [C

    .line 2329
    array-length p5, p2

    invoke-static {p2, v1, p1, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, v3

    .line 2332
    array-length p2, p2

    :goto_f
    if-lez p3, :cond_23

    .line 2334
    aput-char p4, p1, p2

    add-int/lit8 p3, p3, -0x1

    add-int/2addr p2, v2

    goto :goto_f

    :cond_23
    move-object p2, p1

    goto :goto_11

    .line 2339
    :cond_24
    array-length p1, p2

    sub-int/2addr p1, p6

    sub-int/2addr p1, v3

    if-le p1, p3, :cond_25

    .line 2341
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, v4, v6, p4}, Lcom/ibm/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_25
    if-ge p1, p3, :cond_27

    .line 2343
    array-length p4, p2

    add-int/2addr p4, p3

    sub-int/2addr p4, p1

    new-array p4, p4, [C

    add-int/2addr p6, v3

    .line 2344
    invoke-static {p2, v1, p4, v1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, p1

    move p5, p6

    :goto_10
    if-lez p3, :cond_26

    const/16 v0, 0x30

    .line 2350
    aput-char v0, p4, p5

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p5, p5, 0x1

    goto :goto_10

    .line 2353
    :cond_26
    invoke-static {p2, p6, p4, p5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p4

    .line 2361
    :cond_27
    :goto_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 2380
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 2396
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public intValueExact()I
    .locals 9

    .line 2418
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 2422
    iget v4, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const-string v5, "Conversion overflow: "

    const/16 v6, 0x9

    if-gez v4, :cond_3

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    .line 2425
    invoke-static {v0, v4}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez v2, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2426
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v0, v4, v2

    if-gt v0, v6, :cond_9

    :goto_0
    add-int/2addr v4, v2

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_1
    if-gt v0, v4, :cond_5

    mul-int/lit8 v7, v7, 0xa

    if-gt v0, v2, :cond_4

    .line 2443
    iget-object v8, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v8, v8, v0

    add-int/2addr v7, v8

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-ne v4, v6, :cond_7

    const v0, 0x3b9aca00

    .line 2451
    div-int v0, v7, v0

    .line 2452
    iget-object v2, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v2, v1

    if-eq v0, v4, :cond_7

    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_6

    .line 2455
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 2456
    aget-byte v0, v2, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return v7

    .line 2458
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2463
    :cond_7
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ne v0, v3, :cond_8

    return v7

    :cond_8
    neg-int v0, v7

    return v0

    .line 2432
    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public longValue()J
    .locals 2

    .line 2481
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public longValueExact()J
    .locals 13

    .line 2502
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2504
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 2505
    iget v5, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const-string v6, "Conversion overflow: "

    const/16 v7, 0x12

    const/4 v8, 0x0

    if-gez v5, :cond_4

    add-int/2addr v3, v5

    if-gez v3, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 2512
    :goto_0
    invoke-static {v0, v5}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    if-gez v3, :cond_2

    return-wide v1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2513
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2518
    :cond_4
    array-length v0, v0

    add-int/2addr v0, v5

    if-gt v0, v7, :cond_a

    :goto_1
    add-int/2addr v5, v3

    const/4 v0, 0x0

    :goto_2
    if-gt v0, v5, :cond_6

    const-wide/16 v9, 0xa

    mul-long v1, v1, v9

    if-gt v0, v3, :cond_5

    .line 2534
    iget-object v9, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v9, v9, v0

    int-to-long v9, v9

    add-long/2addr v1, v9

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-ne v5, v7, :cond_8

    const-wide v9, 0xde0b6b3a7640000L

    .line 2540
    div-long v9, v1, v9

    .line 2541
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v0, v8

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-eqz v3, :cond_8

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_7

    .line 2544
    iget-byte v3, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 2545
    aget-byte v0, v0, v8

    const/16 v3, 0x9

    if-ne v0, v3, :cond_7

    return-wide v1

    .line 2547
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2552
    :cond_8
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-ne v0, v4, :cond_9

    return-wide v1

    :cond_9
    neg-long v0, v1

    return-wide v0

    .line 2519
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public max(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1452
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->max(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public max(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1473
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1474
    invoke-virtual {p0, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1476
    :cond_0
    invoke-virtual {p1, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public min(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1491
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->min(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public min(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1512
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1513
    invoke-virtual {p0, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1515
    :cond_0
    invoke-virtual {p1, p2}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public movePointLeft(I)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 2576
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 2577
    iget v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 2578
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public movePointRight(I)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 2599
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 2600
    iget v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 2601
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1533
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1560
    iget-boolean v3, v2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v3, :cond_0

    .line 1561
    iget v3, v2, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1566
    :cond_0
    iget v3, v2, Lcom/ibm/icu/math/MathContext;->digits:I

    const/4 v4, 0x0

    if-lez v3, :cond_3

    .line 1568
    iget-object v5, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    if-le v5, v3, :cond_1

    .line 1569
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v5

    invoke-direct {v5, v2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 1570
    :goto_0
    iget-object v6, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-le v6, v3, :cond_2

    .line 1571
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    invoke-direct {v1, v2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1576
    :cond_3
    iget v3, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-lez v3, :cond_4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 1578
    :goto_1
    iget v5, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-lez v5, :cond_5

    add-int/2addr v3, v5

    :cond_5
    move-object v5, v0

    .line 1586
    :goto_2
    iget-object v6, v5, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v7, v6

    iget-object v8, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v9, v8

    if-ge v7, v9, :cond_6

    move-object v13, v8

    goto :goto_3

    :cond_6
    move-object v13, v6

    move-object v6, v8

    .line 1595
    :goto_3
    array-length v7, v6

    array-length v8, v13

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    .line 1597
    aget-byte v8, v6, v4

    aget-byte v9, v13, v4

    mul-int v8, v8, v9

    const/16 v9, 0x9

    if-le v8, v9, :cond_7

    add-int/lit8 v8, v7, 0x1

    goto :goto_4

    :cond_7
    move v8, v7

    .line 1603
    :goto_4
    new-instance v14, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v14}, Lcom/ibm/icu/math/BigDecimal;-><init>()V

    .line 1604
    new-array v8, v8, [B

    .line 1610
    array-length v9, v6

    move v15, v7

    move-object v7, v8

    move/from16 v16, v9

    const/16 v17, 0x0

    :goto_5
    if-lez v16, :cond_9

    .line 1613
    aget-byte v11, v6, v17

    if-eqz v11, :cond_8

    .line 1616
    array-length v8, v7

    const/4 v12, 0x1

    move-object v9, v13

    move v10, v15

    invoke-static/range {v7 .. v12}, Lcom/ibm/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v7

    :cond_8
    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1623
    :cond_9
    iget-byte v6, v5, Lcom/ibm/icu/math/BigDecimal;->ind:B

    iget-byte v8, v1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    mul-int v6, v6, v8

    int-to-byte v6, v6

    iput-byte v6, v14, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1624
    iget v5, v5, Lcom/ibm/icu/math/BigDecimal;->exp:I

    iget v1, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    iput v5, v14, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-nez v3, :cond_a

    .line 1629
    iput-object v7, v14, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    goto :goto_6

    .line 1631
    :cond_a
    array-length v1, v7

    add-int/2addr v1, v3

    invoke-static {v7, v1}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v1

    iput-object v1, v14, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 1632
    :goto_6
    invoke-direct {v14, v2, v4}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public negate()Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1649
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/math/BigDecimal;->negate(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public negate(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 1667
    iget-boolean v0, p1, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1668
    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/math/BigDecimal;

    iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1669
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 1670
    iget-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v1, 0x0

    .line 1671
    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public plus()Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1687
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/math/BigDecimal;->plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    .line 1706
    iget-boolean v0, p1, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1707
    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/math/BigDecimal;

    iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1709
    :cond_0
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->form:I

    if-nez v0, :cond_2

    .line 1710
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-nez v0, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-gt v0, v1, :cond_1

    return-object p0

    .line 1713
    :cond_1
    iget v0, p1, Lcom/ibm/icu/math/MathContext;->digits:I

    if-nez v0, :cond_2

    return-object p0

    .line 1716
    :cond_2
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1739
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->pow(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 8

    .line 1775
    iget-boolean v0, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1776
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    :cond_0
    const v0, -0x3b9ac9ff

    const v1, 0x3b9ac9ff

    .line 1777
    invoke-direct {p1, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->intcheck(II)I

    move-result v0

    .line 1780
    iget v1, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 1782
    iget-byte v1, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    move-object v4, p0

    const/4 v1, 0x0

    goto :goto_1

    .line 1783
    :cond_1
    new-instance p2, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1786
    :cond_2
    iget-object v4, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    iget v5, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v4, v5

    if-gt v4, v1, :cond_a

    .line 1790
    iget-object v4, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-le v4, v1, :cond_3

    .line 1791
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v4

    invoke-direct {v4, p2}, Lcom/ibm/icu/math/BigDecimal;->round(Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, p0

    .line 1794
    :goto_0
    iget-object v5, p1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    iget v6, p1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/2addr v1, v3

    .line 1801
    :goto_1
    new-instance v5, Lcom/ibm/icu/math/MathContext;

    iget v6, p2, Lcom/ibm/icu/math/MathContext;->form:I

    iget v7, p2, Lcom/ibm/icu/math/MathContext;->roundingMode:I

    invoke-direct {v5, v1, v6, v2, v7}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V

    .line 1803
    sget-object v1, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    if-gez v0, :cond_5

    neg-int v0, v0

    :cond_5
    const/4 v6, 0x1

    :goto_2
    add-int/2addr v0, v0

    if-gez v0, :cond_6

    .line 1815
    invoke-virtual {v1, v4, v5}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x1

    :cond_6
    const/16 v7, 0x1f

    if-ne v6, v7, :cond_8

    .line 1824
    iget-byte p1, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    if-gez p1, :cond_7

    .line 1825
    sget-object p1, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p1, v1, v5}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    .line 1826
    :cond_7
    invoke-direct {v1, p2, v3}, Lcom/ibm/icu/math/BigDecimal;->finish(Lcom/ibm/icu/math/MathContext;Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_8
    if-nez v2, :cond_9

    goto :goto_3

    .line 1821
    :cond_9
    invoke-virtual {v1, v1, v5}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1787
    :cond_a
    new-instance p2, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many digits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public remainder(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 3

    .line 1846
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    const/16 v1, 0x52

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public remainder(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x52

    const/4 v1, -0x1

    .line 1866
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ibm/icu/math/BigDecimal;->dodivide(CLcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public scale()I
    .locals 1

    .line 2614
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    neg-int v0, v0

    return v0
.end method

.method public setScale(I)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    const/4 v0, 0x7

    .line 2640
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->setScale(II)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public setScale(II)Lcom/ibm/icu/math/BigDecimal;
    .locals 3

    .line 2674
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->scale()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2676
    iget-byte v1, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-nez v1, :cond_0

    return-object p0

    .line 2678
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    if-gt v0, p1, :cond_2

    if-nez v0, :cond_1

    .line 2682
    iget p2, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr p2, p1

    goto :goto_0

    :cond_1
    sub-int p2, p1, v0

    .line 2685
    :goto_0
    iget-object v0, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v0

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object p2

    iput-object p2, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    neg-int p1, p1

    .line 2686
    iput p1, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    .line 2691
    iget-object v2, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    sub-int/2addr v0, p1

    sub-int/2addr v2, v0

    .line 2692
    invoke-direct {v1, v2, p2}, Lcom/ibm/icu/math/BigDecimal;->round(II)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v1

    .line 2695
    iget p2, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    neg-int p1, p1

    if-eq p2, p1, :cond_3

    .line 2696
    iget-object p1, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/ibm/icu/math/BigDecimal;->extend([BI)[B

    move-result-object p1

    iput-object p1, v1, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 2697
    iget p1, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Lcom/ibm/icu/math/BigDecimal;->exp:I

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 2700
    iput-byte p1, v1, Lcom/ibm/icu/math/BigDecimal;->form:B

    return-object v1

    .line 2689
    :cond_4
    new-instance p2, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public shortValueExact()S
    .locals 5

    .line 2716
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7fff

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, -0x8000

    if-ge v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v1, v3

    if-nez v1, :cond_2

    int-to-short v0, v0

    return v0

    .line 2718
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public signum()I
    .locals 1

    .line 2733
    iget-byte v0, p0, Lcom/ibm/icu/math/BigDecimal;->ind:B

    return v0
.end method

.method public subtract(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1883
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->plainMC:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->subtract(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;
    .locals 1

    .line 1900
    iget-boolean v0, p2, Lcom/ibm/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    .line 1901
    iget v0, p2, Lcom/ibm/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/math/BigDecimal;->checkdigits(Lcom/ibm/icu/math/BigDecimal;I)V

    .line 1905
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    .line 1906
    iget-byte v0, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/ibm/icu/math/BigDecimal;->ind:B

    .line 1907
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    .line 2751
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->scale()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 5

    .line 2769
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-byte v4, p0, Lcom/ibm/icu/math/BigDecimal;->form:B

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    move-object v0, p0

    goto :goto_2

    :cond_2
    if-ltz v0, :cond_3

    .line 2772
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 2773
    iput-byte v2, v0, Lcom/ibm/icu/math/BigDecimal;->form:B

    goto :goto_2

    :cond_3
    neg-int v0, v0

    .line 2777
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 2778
    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    goto :goto_2

    .line 2780
    :cond_4
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    .line 2781
    iget-object v1, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v3, v1

    iget v4, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v4

    .line 2782
    new-array v4, v3, [B

    .line 2783
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2785
    iput-object v4, v0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    .line 2786
    iput-byte v2, v0, Lcom/ibm/icu/math/BigDecimal;->form:B

    .line 2787
    iput v2, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 2792
    :goto_2
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .locals 3

    .line 2807
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-gez v0, :cond_1

    .line 2809
    iget-object v1, p0, Lcom/ibm/icu/math/BigDecimal;->mant:[B

    array-length v2, v1

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/ibm/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2810
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2812
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toCharArray()[C
    .locals 1

    .line 2825
    invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2845
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/ibm/icu/math/BigDecimal;->layout()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 2

    .line 2860
    iget v0, p0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2863
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/math/BigDecimal;->clone(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    .line 2864
    iput v1, v0, Lcom/ibm/icu/math/BigDecimal;->exp:I

    .line 2866
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
