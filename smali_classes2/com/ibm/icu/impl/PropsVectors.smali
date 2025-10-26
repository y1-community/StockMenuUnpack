.class public Lcom/ibm/icu/impl/PropsVectors;
.super Ljava/lang/Object;
.source "PropsVectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/PropsVectors$CompactHandler;,
        Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldedValue;,
        Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldingOffset;
    }
.end annotation


# static fields
.field public static final ERROR_VALUE_CP:I = 0x110001

.field public static final FIRST_SPECIAL_CP:I = 0x110000

.field public static final INITIAL_ROWS:I = 0x1000

.field public static final INITIAL_VALUE_CP:I = 0x110000

.field public static final MAX_CP:I = 0x110001

.field public static final MAX_ROWS:I = 0x110002

.field public static final MEDIUM_ROWS:I = 0x10000


# instance fields
.field private columns:I

.field private isCompacted:Z

.field private maxRows:I

.field private prevRow:I

.field private rows:I

.field private v:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x2

    .line 149
    iput p1, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int/lit16 v1, p1, 0x1000

    .line 150
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    const/16 v2, 0x1000

    .line 151
    iput v2, p0, Lcom/ibm/icu/impl/PropsVectors;->maxRows:I

    const/4 v2, 0x3

    .line 152
    iput v2, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    const/4 v2, 0x0

    .line 153
    iput v2, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    .line 154
    iput-boolean v2, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    .line 155
    aput v2, v1, v2

    const/high16 v2, 0x110000

    .line 156
    aput v2, v1, v0

    :goto_0
    const v0, 0x110001

    if-gt v2, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aput v2, v0, p1

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 160
    aput v2, v0, v1

    .line 161
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numOfColumns need to be no less than 1; but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/PropsVectors;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    return p0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/PropsVectors;)[I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    return-object p0
.end method

.method private areElementsSame(I[III)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 54
    iget-object v2, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int v3, p1, v1

    aget v2, v2, v3

    add-int v3, p3, v1

    aget v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private findRow(I)I
    .locals 7

    .line 71
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    iget v1, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int v2, v0, v1

    .line 72
    iget-object v3, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget v4, v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt p1, v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 73
    aget v4, v3, v4

    if-ge p1, v4, :cond_0

    return v2

    :cond_0
    add-int/2addr v2, v1

    add-int/lit8 v4, v2, 0x1

    .line 78
    aget v4, v3, v4

    if-ge p1, v4, :cond_1

    add-int/2addr v0, v6

    .line 79
    iput v0, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    return v2

    :cond_1
    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    .line 83
    aget v4, v3, v1

    if-ge p1, v4, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 84
    iput v0, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    return v2

    .line 86
    :cond_2
    aget v1, v3, v1

    sub-int v1, p1, v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 88
    iput v0, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    .line 90
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    .line 91
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/2addr v2, v0

    .line 92
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    if-ge p1, v0, :cond_3

    return v2

    .line 97
    :cond_4
    aget v0, v3, v6

    if-ge p1, v0, :cond_5

    .line 99
    iput v5, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    return v5

    .line 106
    :cond_5
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ge v5, v1, :cond_8

    add-int v1, v5, v0

    .line 108
    div-int/lit8 v1, v1, 0x2

    .line 109
    iget v2, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int v2, v2, v1

    .line 110
    iget-object v3, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget v4, v3, v2

    if-ge p1, v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v2, 0x1

    .line 112
    aget v3, v3, v4

    if-ge p1, v3, :cond_7

    .line 113
    iput v1, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    return v2

    :cond_7
    move v5, v1

    goto :goto_0

    .line 122
    :cond_8
    iput v5, p0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    .line 123
    iget p1, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int v5, v5, p1

    return v5
.end method


# virtual methods
.method public compact(Lcom/ibm/icu/impl/PropsVectors$CompactHandler;)V
    .locals 12

    .line 369
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    .line 376
    iget v1, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v1, v1, -0x2

    .line 379
    iget v2, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 380
    :goto_0
    iget v5, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    if-ge v4, v5, :cond_1

    .line 381
    iget v5, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :cond_1
    new-instance v4, Lcom/ibm/icu/impl/PropsVectors$1;

    invoke-direct {v4, p0}, Lcom/ibm/icu/impl/PropsVectors$1;-><init>(Lcom/ibm/icu/impl/PropsVectors;)V

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    neg-int v4, v1

    move v6, v4

    const/4 v5, 0x0

    .line 414
    :goto_1
    iget v7, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    const/high16 v8, 0x110000

    if-ge v5, v7, :cond_6

    .line 415
    iget-object v7, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v7, v7, v9

    if-ltz v6, :cond_2

    .line 419
    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v11, v5, -0x1

    aget-object v11, v2, v11

    .line 420
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    .line 419
    invoke-direct {p0, v9, v10, v11, v1}, Lcom/ibm/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    add-int/2addr v6, v1

    :cond_3
    if-ne v7, v8, :cond_4

    .line 425
    invoke-interface {p1, v6}, Lcom/ibm/icu/impl/PropsVectors$CompactHandler;->setRowIndexForInitialValue(I)V

    goto :goto_2

    :cond_4
    const v8, 0x110001

    if-ne v7, v8, :cond_5

    .line 427
    invoke-interface {p1, v6}, Lcom/ibm/icu/impl/PropsVectors$CompactHandler;->setRowIndexForErrorValue(I)V

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v6, v1

    .line 437
    invoke-interface {p1, v6}, Lcom/ibm/icu/impl/PropsVectors$CompactHandler;->startRealValues(I)V

    .line 446
    new-array v5, v6, [I

    .line 448
    :goto_3
    iget v6, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    if-ge v3, v6, :cond_a

    .line 449
    iget-object v6, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v6, v6, v7

    .line 450
    iget-object v7, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v0

    aget v7, v7, v9

    if-ltz v4, :cond_7

    .line 454
    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-direct {p0, v9, v5, v4, v1}, Lcom/ibm/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    add-int/2addr v4, v1

    .line 457
    iget-object v9, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget-object v10, v2, v3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    if-ge v6, v8, :cond_9

    sub-int/2addr v7, v0

    .line 462
    invoke-interface {p1, v6, v7, v4}, Lcom/ibm/icu/impl/PropsVectors$CompactHandler;->setRowIndexForRange(III)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 465
    :cond_a
    iput-object v5, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    .line 469
    div-int/2addr v4, v1

    add-int/2addr v4, v0

    iput v4, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    return-void
.end method

.method public compactToTrieWithRowIndexes()Lcom/ibm/icu/impl/IntTrie;
    .locals 4

    .line 516
    new-instance v0, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;

    invoke-direct {v0}, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;-><init>()V

    .line 517
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/PropsVectors;->compact(Lcom/ibm/icu/impl/PropsVectors$CompactHandler;)V

    .line 518
    iget-object v1, v0, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;->builder:Lcom/ibm/icu/impl/IntTrieBuilder;

    new-instance v2, Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldedValue;

    iget-object v0, v0, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;->builder:Lcom/ibm/icu/impl/IntTrieBuilder;

    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldedValue;-><init>(Lcom/ibm/icu/impl/IntTrieBuilder;)V

    new-instance v0, Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldingOffset;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ibm/icu/impl/PropsVectors$DefaultGetFoldingOffset;-><init>(Lcom/ibm/icu/impl/PropsVectors$1;)V

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/IntTrieBuilder;->serialize(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;Lcom/ibm/icu/impl/Trie$DataManipulate;)Lcom/ibm/icu/impl/IntTrie;

    move-result-object v0

    return-object v0
.end method

.method public getCompactedArray()[I
    .locals 2

    .line 478
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    return-object v0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompactedColumns()I
    .locals 2

    .line 504
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    .line 508
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompactedRows()I
    .locals 2

    .line 491
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    .line 495
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    return v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRow(I)[I
    .locals 4

    .line 299
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 303
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_0

    .line 306
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [I

    .line 307
    iget-object v2, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    mul-int p1, p1, v0

    add-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rowIndex out of bound!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal Invocation of the method after compact()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRowEnd(I)I
    .locals 2

    .line 340
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 344
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    iget v1, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int p1, p1, v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rowIndex out of bound!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal Invocation of the method after compact()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRowStart(I)I
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 325
    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    if-gt p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    iget v1, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int p1, p1, v1

    aget p1, v0, p1

    return p1

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rowIndex out of bound!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal Invocation of the method after compact()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValue(II)I
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    const v0, 0x110001

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v0, v0, -0x2

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/PropsVectors;->findRow(I)I

    move-result p1

    .line 288
    iget-object v0, p0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setValue(IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-ltz v1, :cond_c

    if-gt v1, v2, :cond_c

    const v4, 0x110001

    if-gt v2, v4, :cond_c

    if-ltz v3, :cond_c

    .line 176
    iget v4, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_c

    .line 180
    iget-boolean v4, v0, Lcom/ibm/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v4, :cond_b

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    and-int v5, p4, p5

    .line 194
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/impl/PropsVectors;->findRow(I)I

    move-result v6

    .line 195
    invoke-direct {v0, v2}, Lcom/ibm/icu/impl/PropsVectors;->findRow(I)I

    move-result v2

    .line 202
    iget-object v7, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget v8, v7, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v1, v8, :cond_0

    add-int v8, v6, v3

    aget v8, v7, v8

    and-int v8, v8, p5

    if-eq v5, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v11, v2, 0x1

    .line 203
    aget v11, v7, v11

    if-eq v4, v11, :cond_1

    add-int v11, v2, v3

    aget v11, v7, v11

    and-int v11, v11, p5

    if-eq v5, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-nez v8, :cond_2

    if-eqz v10, :cond_9

    :cond_2
    if-eqz v10, :cond_3

    add-int/lit8 v11, v8, 0x1

    goto :goto_2

    :cond_3
    move v11, v8

    .line 215
    :goto_2
    iget v12, v0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    add-int v13, v12, v11

    iget v14, v0, Lcom/ibm/icu/impl/PropsVectors;->maxRows:I

    if-le v13, v14, :cond_6

    const v13, 0x110002

    const/high16 v15, 0x10000

    if-ge v14, v15, :cond_4

    const/high16 v13, 0x10000

    goto :goto_3

    :cond_4
    if-ge v14, v13, :cond_5

    .line 225
    :goto_3
    iget v14, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int v15, v13, v14

    new-array v15, v15, [I

    mul-int v12, v12, v14

    .line 226
    invoke-static {v7, v9, v15, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iput-object v15, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    .line 228
    iput v13, v0, Lcom/ibm/icu/impl/PropsVectors;->maxRows:I

    goto :goto_4

    .line 221
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "MAX_ROWS exceeded! Increase it to a higher valuein the implementation"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_6
    :goto_4
    iget v7, v0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    iget v9, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    mul-int v7, v7, v9

    add-int v12, v2, v9

    sub-int/2addr v7, v12

    if-lez v7, :cond_7

    .line 235
    iget-object v12, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int v13, v2, v9

    add-int/lit8 v14, v11, 0x1

    mul-int v14, v14, v9

    add-int/2addr v14, v2

    invoke-static {v12, v13, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    :cond_7
    iget v7, v0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    add-int/2addr v7, v11

    iput v7, v0, Lcom/ibm/icu/impl/PropsVectors;->rows:I

    if-eqz v8, :cond_8

    sub-int v7, v2, v6

    .line 244
    iget v8, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/2addr v7, v8

    .line 245
    iget-object v9, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int/2addr v8, v6

    invoke-static {v9, v6, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget v7, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/2addr v2, v7

    .line 249
    iget-object v8, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v9, v6, 0x1

    add-int v11, v6, v7

    aput v1, v8, v11

    aput v1, v8, v9

    add-int/2addr v6, v7

    :cond_8
    if-eqz v10, :cond_9

    .line 256
    iget-object v1, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    iget v7, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int v8, v2, v7

    invoke-static {v1, v2, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iget-object v1, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v7, v2, 0x1

    iget v8, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/2addr v8, v2

    aput v4, v1, v8

    aput v4, v1, v7

    .line 264
    :cond_9
    iget v1, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    div-int v1, v2, v1

    iput v1, v0, Lcom/ibm/icu/impl/PropsVectors;->prevRow:I

    add-int/2addr v6, v3

    add-int/2addr v2, v3

    xor-int/lit8 v1, p5, -0x1

    .line 271
    :goto_5
    iget-object v3, v0, Lcom/ibm/icu/impl/PropsVectors;->v:[I

    aget v4, v3, v6

    and-int/2addr v4, v1

    or-int/2addr v4, v5

    aput v4, v3, v6

    if-ne v6, v2, :cond_a

    return-void

    .line 275
    :cond_a
    iget v3, v0, Lcom/ibm/icu/impl/PropsVectors;->columns:I

    add-int/2addr v6, v3

    goto :goto_5

    .line 181
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Shouldn\'t be called aftercompact()!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method
