.class final Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;
.super Ljava/lang/Object;
.source "CollationFastLatinBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTRACTION_FLAG:J = 0x80000000L

.field private static final NUM_SPECIAL_GROUPS:I = 0x4


# instance fields
.field private ce0:J

.field private ce1:J

.field private charCEs:[[J

.field private contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

.field private firstDigitPrimary:J

.field private firstLatinPrimary:J

.field private firstShortPrimary:J

.field private headerLength:I

.field private lastLatinPrimary:J

.field lastSpecialPrimaries:[J

.field private miniCEs:[C

.field private result:Ljava/lang/StringBuilder;

.field private shortPrimaryOverflow:Z

.field private uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 685
    fill-array-data v0, :array_0

    const-class v1, J

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 694
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 68
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 69
    new-instance v2, Lcom/ibm/icu/impl/coll/UVector64;

    invoke-direct {v2}, Lcom/ibm/icu/impl/coll/UVector64;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    .line 70
    new-instance v2, Lcom/ibm/icu/impl/coll/UVector64;

    invoke-direct {v2}, Lcom/ibm/icu/impl/coll/UVector64;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    .line 72
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    .line 73
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    .line 74
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    .line 75
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 77
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    return-void

    :array_0
    .array-data 4
        0x1c0
        0x2
    .end array-data
.end method

.method private addContractionEntry(IJJ)V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    .line 383
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    .line 384
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p1, p4, p5}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    .line 385
    invoke-direct {p0, p2, p3}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    .line 386
    invoke-direct {p0, p4, p5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    return-void
.end method

.method private addUniqueCE(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, -0xc001

    and-long/2addr p1, v0

    .line 392
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result v0

    if-gez v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    xor-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, p1, p2, v0}, Lcom/ibm/icu/impl/coll/UVector64;->insertElementAt(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final binarySearch([JIJ)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    int-to-long v4, p1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    .line 48
    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 49
    aget-wide v4, p0, v3

    invoke-static {p2, p3, v4, v5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->compareInt64AsUnsigned(JJ)I

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    if-gez v2, :cond_3

    if-ne v3, v1, :cond_2

    xor-int/lit8 p0, v1, -0x1

    return p0

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_4

    add-int/lit8 v1, v1, 0x1

    xor-int/lit8 p0, v1, -0x1

    return p0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method private static final compareInt64AsUnsigned(JJ)I
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private encodeCharCEs()V
    .locals 11

    .line 533
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1c0

    if-ge v2, v3, :cond_0

    .line 535
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 539
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v5, v5, v4

    aget-wide v6, v5, v1

    .line 540
    invoke-static {v6, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 541
    :cond_1
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v5, v5, v4

    const/4 v8, 0x1

    aget-wide v9, v5, v8

    invoke-direct {p0, v6, v7, v9, v10}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v5

    ushr-int/lit8 v6, v5, 0x10

    if-lez v6, :cond_3

    .line 546
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    const/16 v7, 0x3ff

    if-le v6, v7, :cond_2

    goto :goto_2

    .line 550
    :cond_2
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v8, v5, 0x10

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v5, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int/lit16 v8, v6, 0x800

    goto :goto_2

    :cond_3
    move v8, v5

    .line 554
    :goto_2
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    add-int v6, v0, v4

    int-to-char v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private encodeContractions()V
    .locals 14

    .line 561
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    const/16 v1, 0x1c0

    add-int/2addr v0, v1

    .line 562
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    .line 564
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v5, v5, v4

    aget-wide v6, v5, v3

    .line 565
    invoke-static {v6, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 566
    :cond_0
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v0

    const/16 v8, 0x3ff

    const/4 v9, 0x1

    if-le v5, v8, :cond_1

    .line 568
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_1
    long-to-int v7, v6

    const v6, 0x7fffffff

    and-int/2addr v6, v7

    const/4 v7, 0x1

    .line 573
    :goto_1
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v8, v6}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v10

    const-wide/16 v12, 0x1ff

    cmp-long v8, v10, v12

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    .line 592
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    add-int/2addr v7, v4

    or-int/lit16 v5, v5, 0x400

    int-to-char v5, v5

    invoke-virtual {v6, v7, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 575
    :cond_2
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    .line 576
    iget-object v12, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    add-int/lit8 v13, v6, 0x2

    invoke-virtual {v12, v13}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    .line 577
    invoke-direct {p0, v7, v8, v12, v13}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 579
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x200

    or-long/2addr v10, v12

    long-to-int v8, v10

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    ushr-int/lit8 v8, v7, 0x10

    if-nez v8, :cond_4

    .line 581
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x400

    or-long/2addr v10, v12

    long-to-int v11, v10

    int-to-char v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 584
    :cond_4
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x600

    or-long/2addr v10, v12

    long-to-int v11, v10

    int-to-char v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v10, v7, 0x10

    int-to-char v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    goto :goto_1

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 597
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method private encodeTwoCEs(JJ)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide v2, 0x101000100L

    const/4 v4, 0x1

    cmp-long v5, p1, v2

    if-nez v5, :cond_1

    return v4

    .line 636
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result v2

    if-ne v2, v4, :cond_2

    return v2

    :cond_2
    const v3, 0xc000

    const/16 v5, 0x1000

    if-lt v2, v5, :cond_3

    long-to-int p2, p1

    and-int p1, p2, v3

    shr-int/lit8 p1, p1, 0xb

    add-int/lit8 p1, p1, 0x8

    or-int/2addr v2, p1

    :cond_3
    cmp-long p1, p3, v0

    if-nez p1, :cond_4

    return v2

    .line 648
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result p1

    if-ne p1, v4, :cond_5

    return p1

    :cond_5
    long-to-int p2, p3

    and-int/2addr p2, v3

    if-lt v2, v5, :cond_6

    and-int/lit16 p3, v2, 0x3e0

    const/16 p4, 0xa0

    if-ne p3, p4, :cond_6

    and-int/lit16 p3, p1, 0x3e0

    and-int/lit8 p4, p1, 0x7

    const/16 v0, 0x180

    if-lt p3, v0, :cond_6

    if-nez p2, :cond_6

    if-nez p4, :cond_6

    and-int/lit16 p1, v2, -0x3e1

    or-int/2addr p1, p3

    return p1

    :cond_6
    const/16 p3, 0x3e0

    if-le p1, p3, :cond_7

    if-gt v5, p1, :cond_8

    :cond_7
    shr-int/lit8 p2, p2, 0xb

    add-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    :cond_8
    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    return p1
.end method

.method private encodeUniqueCEs()V
    .locals 20

    move-object/from16 v0, p0

    .line 406
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    .line 408
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 416
    :goto_0
    iget-object v12, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v12}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v12

    if-ge v1, v12, :cond_15

    .line 417
    iget-object v12, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v12, v1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    const/16 v14, 0x20

    ushr-long v14, v12, v14

    cmp-long v16, v14, v5

    if-eqz v16, :cond_7

    :goto_1
    cmp-long v16, v14, v3

    if-lez v16, :cond_1

    .line 426
    iget-object v3, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    int-to-char v4, v7

    invoke-virtual {v3, v8, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v3, 0x4

    if-ge v8, v3, :cond_0

    .line 428
    iget-object v3, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v16, v3, v8

    move-wide/from16 v3, v16

    goto :goto_1

    :cond_0
    const-wide v3, 0xffffffffL

    :cond_1
    move-wide/from16 v17, v3

    .line 434
    iget-wide v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    const/16 v4, 0x1000

    cmp-long v19, v14, v2

    if-gez v19, :cond_4

    if-nez v7, :cond_2

    const/4 v3, 0x1

    const/16 v7, 0xc00

    goto :goto_2

    :cond_2
    const/16 v2, 0xff8

    if-ge v7, v2, :cond_3

    add-int/lit8 v7, v7, 0x8

    const/4 v3, 0x1

    goto :goto_2

    .line 443
    :cond_3
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v3, 0x1

    aput-char v3, v2, v1

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    if-ge v7, v4, :cond_5

    const/16 v7, 0x1000

    goto :goto_2

    :cond_5
    const v2, 0xf800

    if-ge v7, v2, :cond_6

    add-int/lit16 v7, v7, 0x400

    :goto_2
    move-wide v5, v14

    move-wide/from16 v3, v17

    const/16 v9, 0x500

    const/16 v10, 0xa0

    const/4 v11, 0x0

    goto :goto_4

    .line 456
    :cond_6
    iput-boolean v3, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 457
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aput-char v3, v2, v1

    :goto_3
    move-wide/from16 v3, v17

    goto/16 :goto_9

    :cond_7
    :goto_4
    long-to-int v2, v12

    ushr-int/lit8 v12, v2, 0x10

    if-eq v12, v9, :cond_11

    if-nez v7, :cond_a

    if-nez v10, :cond_8

    const/16 v9, 0x180

    goto :goto_6

    :cond_8
    const/16 v13, 0x3e0

    if-ge v10, v13, :cond_9

    add-int/lit8 v10, v10, 0x20

    move v9, v10

    goto :goto_6

    .line 475
    :cond_9
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v14, 0x1

    aput-char v14, v2, v1

    goto/16 :goto_9

    :cond_a
    const/4 v14, 0x1

    const/16 v15, 0x500

    if-ge v12, v15, :cond_d

    const/16 v13, 0xa0

    if-ne v10, v13, :cond_b

    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    const/16 v13, 0x80

    if-ge v10, v13, :cond_c

    :goto_5
    add-int/lit8 v9, v10, 0x20

    goto :goto_6

    .line 486
    :cond_c
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aput-char v14, v2, v1

    goto :goto_9

    :cond_d
    const/16 v13, 0xa0

    if-ne v12, v15, :cond_e

    const/16 v9, 0xa0

    goto :goto_6

    :cond_e
    const/16 v13, 0xc0

    if-ge v10, v13, :cond_f

    const/16 v9, 0xc0

    goto :goto_6

    :cond_f
    const/16 v13, 0x160

    if-ge v10, v13, :cond_10

    goto :goto_5

    :goto_6
    move v10, v9

    move v9, v12

    const/4 v11, 0x0

    goto :goto_7

    .line 497
    :cond_10
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v12, 0x1

    aput-char v12, v2, v1

    goto :goto_9

    :cond_11
    :goto_7
    and-int/lit16 v2, v2, 0x3f3f

    const/16 v12, 0x500

    if-le v2, v12, :cond_13

    const/4 v2, 0x7

    if-ge v11, v2, :cond_12

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 510
    :cond_12
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v12, 0x1

    aput-char v12, v2, v1

    goto :goto_9

    :cond_13
    :goto_8
    const/16 v2, 0xc00

    if-gt v2, v7, :cond_14

    const/16 v2, 0xff8

    if-gt v7, v2, :cond_14

    .line 516
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    or-int v12, v7, v11

    int-to-char v12, v12

    aput-char v12, v2, v1

    goto :goto_9

    .line 518
    :cond_14
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    or-int v12, v7, v10

    or-int/2addr v12, v11

    int-to-char v12, v12

    aput-char v12, v2, v1

    :goto_9
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method private getCEs(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x180

    if-ne v1, v3, :cond_0

    const/16 v1, 0x2000

    goto :goto_1

    :cond_0
    const/16 v3, 0x2040

    if-ne v1, v3, :cond_1

    .line 229
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    const-wide/16 v0, 0x1ff

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    return-void

    .line 202
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 204
    iget-object v3, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 205
    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    move-object v3, p1

    .line 209
    :goto_2
    invoke-direct {p0, v3, v1, v4}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;II)Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 210
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v3, v2

    iget-wide v8, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    aput-wide v8, v7, v0

    .line 211
    aget-object v3, v3, v2

    iget-wide v10, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    aput-wide v10, v3, v6

    .line 212
    invoke-direct {p0, v8, v9}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    .line 213
    iget-wide v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    invoke-direct {p0, v7, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    goto :goto_3

    .line 216
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v3, v2

    const-wide v8, 0x101000100L

    iput-wide v8, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    aput-wide v8, v7, v0

    .line 217
    aget-object v3, v3, v2

    iput-wide v4, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    aput-wide v4, v3, v6

    :goto_3
    if-nez v1, :cond_4

    .line 219
    iget-wide v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v8, 0x1ff

    .line 223
    iget-wide v9, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v11, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 224
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v3, v0

    const-wide v8, 0x180000000L

    aput-wide v8, v7, v0

    .line 225
    aget-object v3, v3, v0

    aput-wide v4, v3, v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0
.end method

.method private getCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;II)Z
    .locals 12

    .line 233
    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    const-wide/16 v0, 0x0

    .line 234
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 235
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 236
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_7

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq v2, v5, :cond_5

    const/4 v5, 0x6

    if-eq v2, v5, :cond_3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_2

    const/16 v5, 0xe

    if-eq v2, v5, :cond_1

    return v4

    .line 279
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    goto :goto_0

    .line 276
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromContractionCE32(Lcom/ibm/icu/impl/coll/CollationData;I)Z

    move-result p1

    return p1

    .line 257
    :cond_3
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 258
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    if-gt p3, v6, :cond_4

    .line 260
    iget-object v2, p1, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    aget-wide v7, v2, p2

    iput-wide v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    if-ne p3, v6, :cond_8

    .line 262
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    add-int/2addr p2, v3

    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_0

    :cond_4
    return v4

    .line 244
    :cond_5
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 245
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    if-gt p3, v6, :cond_6

    .line 247
    iget-object v2, p1, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    if-ne p3, v6, :cond_8

    .line 249
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    add-int/2addr p2, v3

    aget p1, p1, p2

    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_0

    :cond_6
    return v4

    .line 240
    :cond_7
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 241
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 286
    :cond_8
    :goto_0
    iget-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_a

    iget-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_a
    const/16 p3, 0x20

    ushr-long v5, p1, p3

    cmp-long v2, v5, v0

    if-nez v2, :cond_b

    return v4

    .line 291
    :cond_b
    iget-wide v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_c

    return v4

    :cond_c
    long-to-int p2, p1

    .line 294
    iget-wide v7, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    const/high16 p1, 0x5000000

    cmp-long v2, v5, v7

    if-gez v2, :cond_d

    and-int/lit16 v2, p2, -0x4000

    if-eq v2, p1, :cond_d

    return v4

    :cond_d
    and-int/lit16 p2, p2, 0x3f3f

    const/16 v2, 0x500

    if-ge p2, v2, :cond_e

    return v4

    .line 300
    :cond_e
    iget-wide v9, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    cmp-long v11, v9, v0

    if-eqz v11, :cond_13

    ushr-long/2addr v9, p3

    cmp-long p3, v9, v0

    if-nez p3, :cond_f

    cmp-long p3, v5, v7

    if-gez p3, :cond_10

    goto :goto_2

    .line 307
    :cond_f
    invoke-direct {p0, v5, v6, v9, v10}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->inSameGroup(JJ)Z

    move-result p3

    if-nez p3, :cond_10

    :goto_2
    return v4

    .line 308
    :cond_10
    iget-wide v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    long-to-int p3, v5

    ushr-int/lit8 v5, p3, 0x10

    if-nez v5, :cond_11

    return v4

    :cond_11
    cmp-long v5, v9, v0

    if-eqz v5, :cond_12

    .line 313
    iget-wide v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v7, v9, v5

    if-gez v7, :cond_12

    and-int/lit16 p3, p3, -0x4000

    if-eq p3, p1, :cond_12

    return v4

    :cond_12
    if-ge p2, v2, :cond_13

    return v4

    .line 321
    :cond_13
    iget-wide p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    or-long/2addr p1, v5

    const-wide/16 v5, 0xc0

    and-long/2addr p1, v5

    cmp-long p3, p1, v0

    if-eqz p3, :cond_14

    return v4

    :cond_14
    return v3
.end method

.method private getCEsFromContractionCE32(Lcom/ibm/icu/impl/coll/CollationData;I)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 326
    invoke-static/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 327
    invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    .line 331
    iget-object v1, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v9

    const/4 v10, -0x1

    .line 332
    invoke-direct {v6, v7, v10, v0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1ff

    .line 333
    iget-wide v2, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1ff

    const-wide v2, 0x101000100L

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    .line 336
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 342
    :goto_0
    iget-object v0, v7, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x2

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Lcom/ibm/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/CharsTrie$Iterator;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v12, -0x1

    .line 343
    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/ibm/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_6

    .line 344
    invoke-virtual {v8}, Lcom/ibm/icu/util/CharsTrie$Iterator;->next()Lcom/ibm/icu/util/CharsTrie$Entry;

    move-result-object v14

    .line 345
    iget-object v15, v14, Lcom/ibm/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 346
    invoke-interface {v15, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getCharIndex(C)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v4, v12, :cond_3

    if-eqz v0, :cond_1

    const-wide v2, 0x101000100L

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-wide v4, v13

    .line 351
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 357
    iget-wide v2, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v0, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v12

    move v12, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_3

    :cond_4
    move v12, v4

    .line 359
    :goto_3
    iget v0, v14, Lcom/ibm/icu/util/CharsTrie$Entry;->value:I

    .line 360
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v13, :cond_5

    invoke-direct {v6, v7, v10, v0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const-wide v2, 0x101000100L

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move v1, v12

    .line 363
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 369
    iget-wide v2, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    :cond_7
    const-wide v0, 0x180000000L

    int-to-long v2, v9

    or-long/2addr v0, v2

    .line 376
    iput-wide v0, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const-wide/16 v0, 0x0

    .line 377
    iput-wide v0, v6, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    return v13
.end method

.method private getMiniCE(J)I
    .locals 2

    const-wide/32 v0, -0xc001

    and-long/2addr p1, v0

    .line 400
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result p1

    .line 402
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aget-char p1, p2, p1

    return p1
.end method

.method private inSameGroup(JJ)Z
    .locals 6

    .line 159
    iget-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    cmp-long p1, p3, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    cmp-long v4, p3, v0

    if-ltz v4, :cond_2

    return v3

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    const/4 v1, 0x3

    aget-wide v4, v0, v1

    cmp-long v0, p1, v4

    if-lez v0, :cond_4

    cmp-long p1, p3, v4

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    cmp-long v0, p3, v4

    if-lez v0, :cond_5

    return v3

    :cond_5
    const/4 v0, 0x0

    .line 177
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v4, v1, v0

    cmp-long v1, p1, v4

    if-gtz v1, :cond_7

    cmp-long p1, p3, v4

    if-gtz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_7
    cmp-long v1, p3, v4

    if-gtz v1, :cond_8

    return v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static isContractionCharCE(J)Z
    .locals 5

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide v0, 0x101000100L

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadGroups(Lcom/ibm/icu/impl/coll/CollationData;)Z
    .locals 7

    const/4 v0, 0x5

    .line 132
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    or-int/lit16 v0, v0, 0x200

    .line 134
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    add-int/lit16 v5, v1, 0x1000

    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 139
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v5, v2, v1

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    return v0

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1004

    .line 146
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    const/16 v1, 0x19

    .line 147
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    .line 148
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    .line 149
    iget-wide v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    iget-wide v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private resetCEs()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->removeAllElements()V

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->removeAllElements()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 190
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method


# virtual methods
.method forData(Lcom/ibm/icu/impl/coll/CollationData;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 84
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->loadGroups(Lcom/ibm/icu/impl/coll/CollationData;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    .line 88
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Lcom/ibm/icu/impl/coll/CollationData;)V

    .line 89
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    .line 90
    iget-boolean v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    if-eqz v0, :cond_1

    .line 93
    iget-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    .line 94
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->resetCEs()V

    .line 95
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Lcom/ibm/icu/impl/coll/CollationData;)V

    .line 96
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    .line 106
    :cond_1
    iget-boolean p1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->encodeCharCEs()V

    .line 109
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->encodeContractions()V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->removeAllElements()V

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->removeAllElements()V

    return p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to reuse a CollationFastLatinBuilder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getHeader()[C
    .locals 4

    .line 120
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    new-array v1, v0, [C

    .line 121
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v1
.end method

.method getTable()[C
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    sub-int/2addr v0, v1

    new-array v0, v0, [C

    .line 127
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v0
.end method
