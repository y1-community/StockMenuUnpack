.class public Lcom/ibm/icu/impl/IntTrieBuilder;
.super Lcom/ibm/icu/impl/TrieBuilder;
.source "IntTrieBuilder.java"


# instance fields
.field protected m_data_:[I

.field protected m_initialValue_:I

.field private m_leadUnitValue_:I


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/IntTrieBuilder;)V
    .locals 4

    .line 46
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TrieBuilder;-><init>(Lcom/ibm/icu/impl/TrieBuilder;)V

    .line 47
    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    .line 48
    iget-object v1, p1, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget v0, p1, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    iput v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    .line 50
    iget p1, p1, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iput p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    return-void
.end method

.method public constructor <init>([IIIIZ)V
    .locals 5

    .line 64
    invoke-direct {p0}, Lcom/ibm/icu/impl/TrieBuilder;-><init>()V

    const/16 v0, 0x20

    if-lt p2, v0, :cond_4

    if-eqz p5, :cond_0

    const/16 v1, 0x400

    if-lt p2, v1, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iput-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    goto :goto_0

    .line 75
    :cond_1
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    :goto_0
    const/4 p1, 0x0

    if-eqz p5, :cond_3

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 90
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    add-int/2addr v2, v0

    const/16 v1, 0x8

    if-lt v4, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v1, v4

    goto :goto_1

    .line 95
    :cond_3
    :goto_2
    iput v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    .line 97
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-static {v0, p1, v1, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 98
    iput p3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    .line 99
    iput p4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    .line 100
    iput p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    .line 101
    iput-boolean p5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    .line 102
    iput-boolean p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    return-void

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument maxdatalength is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private allocDataBlock()I
    .locals 3

    .line 506
    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    add-int/lit8 v1, v0, 0x20

    .line 508
    iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    if-le v1, v2, :cond_0

    const/4 v0, -0x1

    return v0

    .line 512
    :cond_0
    iput v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    return v0
.end method

.method private compact(Z)V
    .locals 8

    .line 557
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    if-eqz v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/IntTrieBuilder;->findUnusedBlocks()V

    .line 568
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    const/16 v0, 0x120

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    :goto_0
    const/16 v2, 0x20

    const/16 v3, 0x20

    .line 574
    :cond_2
    :goto_1
    iget v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/4 v5, 0x0

    if-ge v2, v4, :cond_9

    .line 579
    iget-object v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I

    ushr-int/lit8 v6, v2, 0x5

    aget v4, v4, v6

    if-gez v4, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x20

    goto :goto_1

    :cond_3
    if-lt v2, v0, :cond_5

    .line 587
    iget-object v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    if-eqz p1, :cond_4

    const/4 v7, 0x4

    goto :goto_3

    :cond_4
    const/16 v7, 0x20

    :goto_3
    invoke-static {v4, v3, v2, v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->findSameDataBlock([IIII)I

    move-result v4

    if-ltz v4, :cond_5

    .line 592
    iget-object v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I

    aput v4, v5, v6

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    if-lt v2, v0, :cond_6

    const/16 v4, 0x1c

    const/16 v5, 0x1c

    :goto_4
    if-lez v5, :cond_6

    .line 604
    iget-object v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    sub-int v7, v3, v5

    invoke-static {v4, v7, v2, v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v5, v5, -0x4

    goto :goto_4

    :cond_6
    if-lez v5, :cond_7

    .line 611
    iget-object v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I

    sub-int v7, v3, v5

    aput v7, v4, v6

    add-int/2addr v2, v5

    rsub-int/lit8 v4, v5, 0x20

    :goto_5
    if-lez v4, :cond_2

    .line 615
    iget-object v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v2, v5, v2

    aput v2, v5, v3

    add-int/lit8 v4, v4, -0x1

    move v3, v6

    move v2, v7

    goto :goto_5

    :cond_7
    if-ge v3, v2, :cond_8

    .line 620
    iget-object v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I

    aput v3, v4, v6

    const/16 v4, 0x20

    :goto_6
    if-lez v4, :cond_2

    .line 622
    iget-object v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v2, v5, v2

    aput v2, v5, v3

    add-int/lit8 v4, v4, -0x1

    move v3, v6

    move v2, v7

    goto :goto_6

    .line 626
    :cond_8
    iget-object v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I

    aput v2, v4, v6

    add-int/lit8 v3, v3, 0x20

    move v2, v3

    goto :goto_1

    .line 632
    :cond_9
    :goto_7
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge v5, p1, :cond_a

    .line 633
    iget-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I

    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    aput v0, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 635
    :cond_a
    iput v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    return-void
.end method

.method private fillBlock(IIIIZ)V
    .locals 1

    add-int/2addr p3, p1

    add-int/2addr p1, p2

    if-eqz p5, :cond_0

    :goto_0
    if-ge p1, p3, :cond_2

    .line 781
    iget-object p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 p5, p1, 0x1

    aput p4, p2, p1

    move p1, p5

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_2

    .line 786
    iget-object p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    aget p5, p2, p1

    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne p5, v0, :cond_1

    .line 787
    aput p4, p2, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final findSameDataBlock([IIII)I
    .locals 2

    add-int/lit8 p1, p1, -0x20

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    const/16 v1, 0x20

    .line 652
    invoke-static {p0, v0, p2, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/2addr v0, p3

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private final fold(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;)V
    .locals 13

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 673
    iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    const/16 v3, 0x6c0

    const/4 v4, 0x0

    .line 675
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iget v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v5

    if-ltz v5, :cond_7

    const/4 v9, 0x0

    const/16 v10, 0x20

    .line 697
    iget v11, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    const/4 v12, 0x1

    move-object v7, p0

    move v8, v5

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    neg-int v5, v5

    :goto_0
    const/16 v6, 0x6e0

    if-ge v3, v6, :cond_1

    .line 702
    iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x10000

    const/16 v5, 0x800

    const/16 v6, 0x800

    :goto_1
    const/high16 v7, 0x110000

    if-ge v3, v7, :cond_5

    shr-int/lit8 v7, v3, 0x5

    .line 715
    aget v7, v2, v7

    if-eqz v7, :cond_4

    and-int/lit16 v3, v3, -0x400

    shr-int/lit8 v7, v3, 0x5

    .line 719
    invoke-static {v2, v6, v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->findSameIndexBlock([III)I

    move-result v8

    add-int/lit8 v9, v8, 0x20

    .line 725
    invoke-interface {p1, v3, v9}, Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;->getFoldedValue(II)I

    move-result v9

    .line 727
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v10

    invoke-virtual {p0, v10}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 728
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v10

    invoke-virtual {p0, v10, v9}, Lcom/ibm/icu/impl/IntTrieBuilder;->setValue(II)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v8, v6, :cond_3

    .line 737
    invoke-static {v2, v7, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x20

    goto :goto_2

    .line 730
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Data table overflow"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit16 v3, v3, 0x400

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x20

    goto :goto_1

    :cond_5
    const p1, 0x8800

    if-ge v6, p1, :cond_6

    const/16 p1, 0x820

    add-int/lit16 v3, v6, -0x800

    .line 762
    invoke-static {v2, v5, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v0

    .line 768
    iput v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    return-void

    .line 758
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Index table overflow"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: Out of memory space"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private getDataBlock(I)I
    .locals 4

    shr-int/lit8 p1, p1, 0x5

    .line 524
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    return v0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 535
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    aput v1, v2, p1

    .line 538
    iget-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    const/16 v3, 0x80

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method


# virtual methods
.method public getValue(I)I
    .locals 2

    .line 173
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    if-nez v0, :cond_1

    const v0, 0x10ffff

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    .line 178
    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    aget p1, v1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getValue(I[Z)I
    .locals 4

    .line 191
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const v0, 0x10ffff

    if-gt p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    aget v0, v0, v3

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 200
    :goto_0
    aput-boolean v1, p2, v2

    .line 202
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    aget p1, p2, v0

    return p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 193
    aput-boolean v1, p2, v2

    :cond_4
    return v2
.end method

.method public serialize(Ljava/io/OutputStream;ZLcom/ibm/icu/impl/TrieBuilder$DataManipulate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_b

    .line 303
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 307
    invoke-direct {p0, p3}, Lcom/ibm/icu/impl/IntTrieBuilder;->fold(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;)V

    const/4 p3, 0x1

    .line 309
    invoke-direct {p0, p3}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 310
    iput-boolean p3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 316
    iget p3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    add-int/2addr p3, v0

    goto :goto_0

    .line 318
    :cond_1
    iget p3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    :goto_0
    const/high16 v0, 0x40000

    if-ge p3, v0, :cond_a

    .line 329
    iget p3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x10

    if-eqz p2, :cond_2

    .line 331
    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 333
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    add-int/2addr p3, v0

    if-nez p1, :cond_3

    return p3

    .line 341
    :cond_3
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const p1, 0x54726965

    .line 342
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 p1, 0x25

    if-nez p2, :cond_4

    const/16 p1, 0x125

    .line 348
    :cond_4
    iget-boolean v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v2, :cond_5

    or-int/lit16 p1, p1, 0x200

    .line 351
    :cond_5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 353
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 354
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 359
    :goto_2
    iget p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge p1, p2, :cond_6

    .line 360
    iget-object p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    aget p2, p2, p1

    iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    add-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x2

    .line 361
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 365
    :cond_6
    :goto_3
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    if-ge v1, p1, :cond_9

    .line 366
    iget-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    aget p1, p1, v1

    const p2, 0xffff

    and-int/2addr p1, p2

    .line 367
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 371
    :goto_4
    iget p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge p1, p2, :cond_8

    .line 372
    iget-object p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    aget p2, p2, p1

    ushr-int/lit8 p2, p2, 0x2

    .line 373
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 377
    :cond_8
    :goto_5
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    if-ge v1, p1, :cond_9

    .line 378
    iget-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return p3

    .line 321
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Data length too small"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public serialize(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;Lcom/ibm/icu/impl/Trie$DataManipulate;)Lcom/ibm/icu/impl/IntTrie;
    .locals 8

    if-eqz p1, :cond_4

    .line 243
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 247
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->fold(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;)V

    const/4 p1, 0x1

    .line 249
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 250
    iput-boolean p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    .line 253
    :cond_0
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/high16 v0, 0x40000

    if-ge p1, v0, :cond_3

    .line 257
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    new-array v3, p1, [C

    .line 258
    iget p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    new-array v4, p1, [I

    const/4 p1, 0x0

    .line 261
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge p1, v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x2

    int-to-char v0, v0

    aput-char v0, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x125

    .line 269
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v0, :cond_2

    const/16 p1, 0x325

    const/16 v6, 0x325

    goto :goto_1

    :cond_2
    const/16 v6, 0x125

    .line 272
    :goto_1
    new-instance p1, Lcom/ibm/icu/impl/IntTrie;

    iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/IntTrie;-><init>([C[IIILcom/ibm/icu/impl/Trie$DataManipulate;)V

    return-object p1

    .line 254
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Data length too small"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setRange(IIIZ)Z
    .locals 14

    move-object v6, p0

    move v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 407
    iget-boolean v1, v6, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v9, 0x0

    if-nez v1, :cond_e

    if-ltz v0, :cond_e

    const v1, 0x10ffff

    if-gt v0, v1, :cond_e

    if-ltz v7, :cond_e

    const/high16 v1, 0x110000

    if-gt v7, v1, :cond_e

    if-le v0, v7, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v10, 0x1

    if-ne v0, v7, :cond_1

    return v10

    :cond_1
    and-int/lit8 v2, v0, 0x1f

    if-eqz v2, :cond_4

    .line 419
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v1

    if-gez v1, :cond_2

    return v9

    :cond_2
    add-int/lit8 v0, v0, 0x20

    and-int/lit8 v11, v0, -0x20

    if-gt v11, v7, :cond_3

    const/16 v3, 0x20

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 426
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v7, 0x1f

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 431
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    return v10

    :cond_4
    move v11, v0

    :goto_0
    and-int/lit8 v12, v7, 0x1f

    and-int/lit8 v7, v7, -0x20

    .line 445
    iget v0, v6, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v8, v0, :cond_5

    move v13, v11

    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    move v13, v11

    const/4 v11, -0x1

    :goto_1
    if-ge v13, v7, :cond_b

    .line 453
    iget-object v0, v6, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v1, v13, 0x5

    aget v2, v0, v1

    if-lez v2, :cond_6

    const/4 v3, 0x0

    const/16 v4, 0x20

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    .line 456
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    goto :goto_2

    .line 458
    :cond_6
    iget-object v0, v6, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    neg-int v3, v2

    aget v0, v0, v3

    if-eq v0, v8, :cond_a

    if-eqz v2, :cond_7

    if-eqz p4, :cond_a

    :cond_7
    if-ltz v11, :cond_8

    .line 462
    iget-object v0, v6, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    neg-int v2, v11

    aput v2, v0, v1

    goto :goto_2

    .line 466
    :cond_8
    invoke-direct {p0, v13}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v11

    if-gez v11, :cond_9

    return v9

    .line 473
    :cond_9
    iget-object v0, v6, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I

    neg-int v2, v11

    aput v2, v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v11

    move/from16 v4, p3

    .line 474
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    :cond_a
    :goto_2
    add-int/lit8 v13, v13, 0x20

    goto :goto_1

    :cond_b
    if-lez v12, :cond_d

    .line 483
    invoke-direct {p0, v13}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v1

    if-gez v1, :cond_c

    return v9

    :cond_c
    const/4 v2, 0x0

    move-object v0, p0

    move v3, v12

    move/from16 v4, p3

    move/from16 v5, p4

    .line 487
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    :cond_d
    return v10

    :cond_e
    :goto_3
    return v9
.end method

.method public setValue(II)Z
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const v0, 0x10ffff

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    aput p2, v1, v0

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
