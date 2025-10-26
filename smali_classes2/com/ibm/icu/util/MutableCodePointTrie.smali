.class public final Lcom/ibm/icu/util/MutableCodePointTrie;
.super Lcom/ibm/icu/util/CodePointMap;
.source "MutableCodePointTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;,
        Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALL_SAME:B = 0x0t

.field private static final ASCII_I_LIMIT:I = 0x8

.field private static final ASCII_LIMIT:I = 0x80

.field private static final BMP_I_LIMIT:I = 0x1000

.field private static final BMP_LIMIT:I = 0x10000

.field private static final I3_16:B = 0x2t

.field private static final I3_18:B = 0x3t

.field private static final I3_BMP:B = 0x1t

.field private static final I3_NULL:B = 0x0t

.field private static final INDEX_3_18BIT_BLOCK_LENGTH:I = 0x24

.field private static final INITIAL_DATA_LENGTH:I = 0x4000

.field private static final I_LIMIT:I = 0x11000

.field private static final MAX_DATA_LENGTH:I = 0x110000

.field private static final MAX_UNICODE:I = 0x10ffff

.field private static final MEDIUM_DATA_LENGTH:I = 0x20000

.field private static final MIXED:B = 0x1t

.field private static final SAME_AS:B = 0x2t

.field private static final SMALL_DATA_BLOCKS_PER_BMP_BLOCK:I = 0x4

.field private static final UNICODE_LIMIT:I = 0x110000


# instance fields
.field private data:[I

.field private dataLength:I

.field private dataNullOffset:I

.field private errorValue:I

.field private flags:[B

.field private highStart:I

.field private highValue:I

.field private index:[I

.field private index16:[C

.field private index3NullOffset:I

.field private initialValue:I

.field private origInitialValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/ibm/icu/util/CodePointMap;-><init>()V

    const v0, 0x11000

    new-array v0, v0, [B

    .line 413
    iput-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    const/16 v0, 0x1000

    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    const/16 v1, 0x4000

    new-array v1, v1, [I

    .line 43
    iput-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    .line 44
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 45
    iput p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->origInitialValue:I

    .line 46
    iput p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    .line 47
    iput p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    .line 48
    iput p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    return-void
.end method

.method static synthetic access$000([II[III)Z
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/util/MutableCodePointTrie;->equalBlocks([II[III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100([CI[III)Z
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/util/MutableCodePointTrie;->equalBlocks([CI[III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200([CI[CII)Z
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/util/MutableCodePointTrie;->equalBlocks([CI[CII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300([IIII)Z
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/util/MutableCodePointTrie;->allValuesSameAs([IIII)Z

    move-result p0

    return p0
.end method

.method private static allValuesSameAs([IIII)Z
    .locals 1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 533
    aget v0, p0, p1

    if-ne v0, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private allocDataBlock(I)I
    .locals 5

    .line 435
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/2addr p1, v0

    .line 437
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    array-length v2, v1

    if-le p1, v2, :cond_3

    .line 439
    array-length v2, v1

    const/high16 v3, 0x110000

    const/high16 v4, 0x20000

    if-ge v2, v4, :cond_0

    const/high16 v3, 0x20000

    goto :goto_0

    .line 441
    :cond_0
    array-length v1, v1

    if-ge v1, v3, :cond_2

    .line 449
    :goto_0
    new-array v1, v3, [I

    const/4 v2, 0x0

    .line 450
    :goto_1
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    aget v3, v3, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    :cond_1
    iput-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    goto :goto_2

    .line 447
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 453
    :cond_3
    :goto_2
    iput p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    return v0
.end method

.method private build(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;)Lcom/ibm/icu/util/CodePointTrie;
    .locals 13

    .line 1438
    sget-object v0, Lcom/ibm/icu/util/MutableCodePointTrie$1;->$SwitchMap$com$ibm$icu$util$CodePointTrie$ValueWidth:[I

    invoke-virtual {p2}, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xff

    .line 1445
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;->maskValues(I)V

    goto :goto_0

    .line 1449
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const v0, 0xffff

    .line 1442
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;->maskValues(I)V

    .line 1452
    :cond_2
    :goto_0
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne p1, v0, :cond_3

    const/high16 v0, 0x10000

    goto :goto_1

    :cond_3
    const/16 v0, 0x1000

    :goto_1
    shr-int/lit8 v4, v0, 0x4

    .line 1453
    invoke-direct {p0, v4}, Lcom/ibm/icu/util/MutableCodePointTrie;->compactTrie(I)I

    move-result v4

    .line 1456
    sget-object v5, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    if-ne p2, v5, :cond_4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_4

    .line 1457
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v6, v4, 0x1

    const v7, 0xffee

    aput-char v7, v5, v4

    move v4, v6

    :cond_4
    mul-int/lit8 v5, v4, 0x2

    .line 1463
    sget-object v6, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    if-ne p2, v6, :cond_7

    .line 1464
    iget v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    xor-int v6, v4, v5

    and-int/2addr v6, v3

    if-eqz v6, :cond_5

    .line 1466
    iget-object v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    iget v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    aput v7, v6, v5

    .line 1468
    :cond_5
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    iget v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v7, v6, -0x1

    aget v7, v5, v7

    iget v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    if-ne v7, v8, :cond_6

    add-int/lit8 v7, v6, -0x2

    aget v7, v5, v7

    iget v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v7, v9, :cond_e

    :cond_6
    add-int/lit8 v7, v6, 0x1

    .line 1469
    iput v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    iget v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    aput v9, v5, v6

    add-int/lit8 v6, v7, 0x1

    .line 1470
    iput v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    aput v8, v5, v7

    goto/16 :goto_3

    .line 1473
    :cond_7
    sget-object v6, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    if-ne p2, v6, :cond_a

    .line 1475
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    iget v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v7, v6, -0x1

    aget v7, v5, v7

    iget v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    if-ne v7, v8, :cond_8

    add-int/lit8 v7, v6, -0x2

    aget v7, v5, v7

    iget v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v7, v9, :cond_e

    :cond_8
    add-int/lit8 v7, v6, -0x1

    .line 1476
    aget v7, v5, v7

    iget v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v7, v9, :cond_9

    add-int/lit8 v7, v6, 0x1

    .line 1477
    iput v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    aput v9, v5, v6

    .line 1479
    :cond_9
    iget v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    aput v8, v5, v6

    goto :goto_3

    .line 1483
    :cond_a
    iget v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/2addr v5, v6

    and-int/2addr v5, v1

    if-nez v5, :cond_b

    .line 1484
    iget-object v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    add-int/lit8 v8, v6, -0x1

    aget v8, v7, v8

    iget v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    if-ne v8, v9, :cond_b

    add-int/lit8 v8, v6, -0x2

    aget v7, v7, v8

    iget v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-ne v7, v8, :cond_b

    goto :goto_3

    :cond_b
    if-ne v5, v1, :cond_c

    .line 1486
    iget-object v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    add-int/lit8 v8, v6, -0x1

    aget v8, v7, v8

    iget v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-ne v8, v9, :cond_c

    add-int/lit8 v5, v6, 0x1

    .line 1487
    iput v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    iget v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    aput v5, v7, v6

    goto :goto_3

    :cond_c
    :goto_2
    if-eq v5, v2, :cond_d

    .line 1490
    iget-object v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    iget v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    iget v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v1

    goto :goto_2

    .line 1493
    :cond_d
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    iget v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    iget v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    aput v8, v5, v6

    add-int/lit8 v6, v7, 0x1

    .line 1494
    iput v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    iget v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    aput v6, v5, v7

    .line 1502
    :cond_e
    :goto_3
    iget v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    const/4 v6, 0x0

    if-gt v5, v0, :cond_f

    .line 1504
    new-array v0, v4, [C

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v5, v4, :cond_11

    .line 1506
    iget-object v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v8, v8, v7

    int-to-char v8, v8

    aput-char v8, v0, v5

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1509
    :cond_f
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    array-length v5, v0

    if-ne v4, v5, :cond_10

    const/4 v4, 0x0

    .line 1511
    iput-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    goto :goto_5

    .line 1513
    :cond_10
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    :cond_11
    :goto_5
    move-object v8, v0

    .line 1518
    sget-object v0, Lcom/ibm/icu/util/MutableCodePointTrie$1;->$SwitchMap$com$ibm$icu$util$CodePointTrie$ValueWidth:[I

    invoke-virtual {p2}, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_18

    if-eq p2, v2, :cond_15

    if-ne p2, v1, :cond_14

    .line 1540
    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    new-array v9, p2, [B

    .line 1541
    :goto_6
    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v6, p2, :cond_12

    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    aget p2, p2, v6

    int-to-byte p2, p2

    aput-byte p2, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1542
    :cond_12
    sget-object p2, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne p1, p2, :cond_13

    new-instance p1, Lcom/ibm/icu/util/CodePointTrie$Fast8;

    iget v10, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    iget v11, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Fast8;-><init>([C[BIII)V

    goto :goto_7

    :cond_13
    new-instance p1, Lcom/ibm/icu/util/CodePointTrie$Small8;

    iget v10, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    iget v11, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Small8;-><init>([C[BIII)V

    :goto_7
    return-object p1

    .line 1550
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1521
    :cond_15
    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    new-array v9, p2, [C

    .line 1522
    :goto_8
    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v6, p2, :cond_16

    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    aget p2, p2, v6

    int-to-char p2, p2

    aput-char p2, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1523
    :cond_16
    sget-object p2, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne p1, p2, :cond_17

    new-instance p1, Lcom/ibm/icu/util/CodePointTrie$Fast16;

    iget v10, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    iget v11, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Fast16;-><init>([C[CIII)V

    goto :goto_9

    :cond_17
    new-instance p1, Lcom/ibm/icu/util/CodePointTrie$Small16;

    iget v10, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    iget v11, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Small16;-><init>([C[CIII)V

    :goto_9
    return-object p1

    .line 1531
    :cond_18
    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 1532
    sget-object p2, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne p1, p2, :cond_19

    new-instance p1, Lcom/ibm/icu/util/CodePointTrie$Fast32;

    iget v10, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    iget v11, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Fast32;-><init>([C[IIII)V

    goto :goto_a

    :cond_19
    new-instance p1, Lcom/ibm/icu/util/CodePointTrie$Small32;

    iget v10, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    iget v11, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iget v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Small32;-><init>([C[IIII)V

    :goto_a
    return-object p1
.end method

.method private clear()V
    .locals 2

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    .line 118
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->origInitialValue:I

    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    .line 119
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    return-void
.end method

.method private compactData(I[IILcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x80

    const/4 v8, 0x4

    if-ge v5, v7, :cond_0

    .line 1028
    iget-object v7, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v5, v7, v6

    add-int/lit8 v5, v5, 0x40

    add-int/2addr v6, v8

    goto :goto_0

    .line 1032
    :cond_0
    array-length v6, v2

    const/16 v7, 0x40

    invoke-virtual {v3, v6, v7}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1033
    invoke-virtual {v3, v2, v4, v4, v5}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    .line 1035
    iget v6, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/2addr v6, v8

    const/16 v9, 0x8

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v6, :cond_9

    const/4 v11, 0x1

    if-ne v9, v1, :cond_1

    const/16 v7, 0x10

    .line 1043
    array-length v8, v2

    invoke-virtual {v3, v8, v7}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1044
    invoke-virtual {v3, v2, v4, v4, v5}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    move v10, v5

    const/4 v8, 0x1

    .line 1046
    :cond_1
    iget-object v12, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v13, v12, v9

    if-nez v13, :cond_5

    .line 1047
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v11, v11, v9

    .line 1050
    invoke-virtual {v3, v2, v11}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findAllSameBlock([II)I

    move-result v12

    :goto_2
    move/from16 v13, p3

    if-ltz v12, :cond_2

    if-ne v9, v13, :cond_2

    if-lt v9, v1, :cond_2

    if-ge v12, v10, :cond_2

    .line 1058
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    .line 1059
    invoke-static {v12, v14, v1}, Lcom/ibm/icu/util/MutableCodePointTrie;->isStartOfSomeFastBlock(I[II)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v12, v12, 0x1

    .line 1060
    invoke-static {v2, v12, v5, v11, v7}, Lcom/ibm/icu/util/MutableCodePointTrie;->findAllSameBlock([IIIII)I

    move-result v12

    goto :goto_2

    :cond_2
    if-ltz v12, :cond_3

    .line 1063
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v12, v11, v9

    goto :goto_6

    .line 1065
    :cond_3
    invoke-static {v2, v5, v11, v7}, Lcom/ibm/icu/util/MutableCodePointTrie;->getAllSameOverlap([IIII)I

    move-result v12

    .line 1066
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    sub-int v15, v5, v12

    aput v15, v14, v9

    move v14, v5

    :goto_3
    if-ge v12, v7, :cond_4

    add-int/lit8 v15, v14, 0x1

    .line 1069
    aput v11, v2, v14

    add-int/lit8 v12, v12, 0x1

    move v14, v15

    goto :goto_3

    .line 1072
    :cond_4
    invoke-virtual {v3, v2, v4, v5, v14}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    :goto_4
    move v5, v14

    goto :goto_6

    :cond_5
    move/from16 v13, p3

    .line 1074
    aget-byte v12, v12, v9

    if-ne v12, v11, :cond_8

    .line 1075
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v11, v11, v9

    .line 1076
    iget-object v12, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    invoke-virtual {v3, v2, v12, v11}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([I[II)I

    move-result v12

    if-ltz v12, :cond_6

    .line 1078
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v12, v11, v9

    goto :goto_6

    .line 1080
    :cond_6
    iget-object v12, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    invoke-static {v2, v5, v12, v11, v7}, Lcom/ibm/icu/util/MutableCodePointTrie;->getOverlap([II[III)I

    move-result v12

    .line 1081
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    sub-int v15, v5, v12

    aput v15, v14, v9

    move v14, v5

    :goto_5
    if-ge v12, v7, :cond_7

    add-int/lit8 v15, v14, 0x1

    .line 1084
    iget-object v4, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    add-int/lit8 v16, v12, 0x1

    add-int/2addr v12, v11

    aget v4, v4, v12

    aput v4, v2, v14

    move v14, v15

    move/from16 v12, v16

    const/4 v4, 0x0

    goto :goto_5

    .line 1086
    :cond_7
    invoke-virtual {v3, v2, v4, v5, v14}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([IIII)V

    goto :goto_4

    .line 1089
    :cond_8
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v12, v11, v9

    .line 1090
    aget v12, v11, v12

    aput v12, v11, v9

    :goto_6
    add-int/2addr v9, v8

    goto/16 :goto_1

    :cond_9
    return v5
.end method

.method private compactIndex(ILcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;)I
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    shr-int/lit8 v3, v1, 0x2

    .line 1099
    iget v4, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v4, v4, 0x6

    const/16 v5, 0x7fff

    if-gt v4, v3, :cond_0

    .line 1101
    iput v5, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    return v3

    .line 1107
    :cond_0
    new-array v4, v3, [C

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_0
    const/16 v11, 0x20

    const/4 v12, 0x1

    if-ge v8, v1, :cond_5

    .line 1110
    iget-object v13, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v13, v13, v8

    int-to-char v14, v13

    .line 1111
    aput-char v14, v4, v9

    .line 1112
    iget v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    if-ne v13, v14, :cond_2

    if-gez v10, :cond_1

    move v10, v9

    goto :goto_1

    .line 1115
    :cond_1
    iget v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    if-gez v14, :cond_3

    sub-int v14, v9, v10

    add-int/2addr v14, v12

    if-ne v14, v11, :cond_3

    .line 1117
    iput v10, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    goto :goto_1

    :cond_2
    const/4 v10, -0x1

    :cond_3
    :goto_1
    add-int/lit8 v11, v8, 0x4

    :goto_2
    add-int/2addr v8, v12

    if-ge v8, v11, :cond_4

    add-int/lit8 v13, v13, 0x10

    .line 1127
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v13, v14, v8

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1131
    :cond_5
    invoke-virtual {v2, v3, v11}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    .line 1132
    invoke-virtual {v2, v4, v7, v7, v3}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    .line 1143
    iget v6, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    const/16 v8, 0x1000

    if-ge v1, v8, :cond_6

    const/4 v8, 0x0

    .line 1149
    :cond_6
    iget v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v1, v1, 0x4

    move v9, v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v9, v1, :cond_e

    add-int/lit8 v11, v9, 0x20

    move/from16 v17, v9

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 1156
    :goto_4
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v5, v14, v17

    or-int v12, v18, v5

    .line 1158
    iget v15, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    if-eq v5, v15, :cond_7

    const/16 v19, 0x0

    :cond_7
    add-int/lit8 v5, v17, 0x1

    if-lt v5, v11, :cond_d

    if-eqz v19, :cond_9

    .line 1163
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v7, v11, v9

    if-gez v6, :cond_c

    const v11, 0xffff

    if-gt v12, v11, :cond_8

    add-int/lit8 v10, v10, 0x20

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x24

    const/4 v13, 0x1

    :goto_5
    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    const v11, 0xffff

    if-gt v12, v11, :cond_b

    .line 1175
    invoke-virtual {v2, v4, v14, v9}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[II)I

    move-result v11

    if-ltz v11, :cond_a

    .line 1177
    iget-object v12, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v14, 0x1

    aput-byte v14, v12, v9

    .line 1178
    iget-object v12, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v11, v12, v9

    goto :goto_6

    .line 1180
    :cond_a
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v12, 0x2

    aput-byte v12, v11, v9

    add-int/lit8 v10, v10, 0x20

    goto :goto_6

    .line 1184
    :cond_b
    iget-object v11, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v14, 0x3

    aput-byte v14, v11, v9

    add-int/lit8 v10, v10, 0x24

    const/4 v13, 0x1

    :cond_c
    :goto_6
    move v9, v5

    const/16 v5, 0x7fff

    const/16 v11, 0x20

    const/4 v12, 0x1

    goto :goto_3

    :cond_d
    move/from16 v17, v5

    move/from16 v18, v12

    const/4 v12, 0x1

    goto :goto_4

    :cond_e
    const/4 v14, 0x3

    sub-int v5, v1, v8

    shr-int/lit8 v5, v5, 0x5

    add-int/lit8 v6, v5, 0x1f

    shr-int/lit8 v6, v6, 0x5

    add-int/2addr v6, v3

    add-int/2addr v10, v6

    add-int/2addr v10, v5

    const/4 v9, 0x1

    add-int/2addr v10, v9

    .line 1200
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    iput-object v4, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    const/16 v4, 0x20

    .line 1202
    invoke-virtual {v2, v10, v4}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    const/4 v4, 0x0

    const/16 v9, 0x24

    if-eqz v13, :cond_f

    .line 1205
    new-instance v11, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;

    invoke-direct {v11, v4}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;-><init>(Lcom/ibm/icu/util/MutableCodePointTrie$1;)V

    .line 1206
    invoke-virtual {v11, v10, v9}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->init(II)V

    move-object v4, v11

    .line 1210
    :cond_f
    new-array v5, v5, [C

    .line 1212
    iget v10, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    move v12, v6

    const/4 v11, 0x0

    :goto_7
    if-ge v8, v1, :cond_20

    .line 1217
    iget-object v15, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v15, v15, v8

    if-nez v15, :cond_11

    if-gez v10, :cond_11

    .line 1220
    iget v10, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    const v15, 0xffff

    if-gt v10, v15, :cond_10

    const/4 v10, 0x2

    goto :goto_8

    :cond_10
    const/4 v10, 0x3

    :goto_8
    move v15, v10

    const/4 v10, 0x0

    :cond_11
    const v17, 0xffff

    if-nez v15, :cond_12

    .line 1224
    iget v15, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    :goto_9
    move/from16 v23, v1

    :goto_a
    const/16 v20, 0x2

    goto/16 :goto_11

    :cond_12
    const/4 v7, 0x1

    if-ne v15, v7, :cond_13

    .line 1226
    iget-object v7, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v15, v7, v8

    goto :goto_9

    :cond_13
    const/4 v7, 0x2

    if-ne v15, v7, :cond_18

    .line 1228
    iget-object v7, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    iget-object v15, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    invoke-virtual {v2, v7, v15, v8}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[II)I

    move-result v7

    if-ltz v7, :cond_14

    move/from16 v23, v1

    move v15, v7

    goto :goto_d

    :cond_14
    if-ne v12, v6, :cond_15

    const/4 v7, 0x0

    const/16 v14, 0x20

    goto :goto_b

    .line 1236
    :cond_15
    iget-object v7, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    iget-object v15, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    const/16 v14, 0x20

    invoke-static {v7, v12, v15, v8, v14}, Lcom/ibm/icu/util/MutableCodePointTrie;->getOverlap([CI[III)I

    move-result v7

    :goto_b
    sub-int v15, v12, v7

    move v9, v12

    :goto_c
    if-ge v7, v14, :cond_16

    .line 1242
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v22, v9, 0x1

    move/from16 v23, v1

    iget-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v24, v7, 0x1

    add-int/2addr v7, v8

    aget v1, v1, v7

    int-to-char v1, v1

    aput-char v1, v14, v9

    move/from16 v9, v22

    move/from16 v1, v23

    move/from16 v7, v24

    const/16 v14, 0x20

    goto :goto_c

    :cond_16
    move/from16 v23, v1

    .line 1244
    iget-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v2, v1, v6, v12, v9}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    if-eqz v13, :cond_17

    .line 1246
    iget-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v4, v1, v6, v12, v9}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    :cond_17
    move v12, v9

    :goto_d
    const/16 v9, 0x24

    goto :goto_a

    :cond_18
    move/from16 v23, v1

    add-int/lit8 v1, v8, 0x20

    move v9, v8

    move v7, v12

    :goto_e
    const/4 v14, 0x1

    add-int/2addr v7, v14

    .line 1258
    iget-object v15, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v21, v9, 0x1

    aget v9, v15, v9

    const/high16 v22, 0x30000

    and-int v24, v9, v22

    const/16 v20, 0x2

    shr-int/lit8 v24, v24, 0x2

    .line 1260
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v26, v7, 0x1

    int-to-char v9, v9

    aput-char v9, v14, v7

    add-int/lit8 v7, v21, 0x1

    .line 1261
    aget v9, v15, v21

    and-int v21, v9, v22

    shr-int/lit8 v21, v21, 0x4

    or-int v21, v24, v21

    add-int/lit8 v24, v26, 0x1

    int-to-char v9, v9

    .line 1263
    aput-char v9, v14, v26

    add-int/lit8 v9, v7, 0x1

    .line 1264
    aget v7, v15, v7

    and-int v26, v7, v22

    shr-int/lit8 v26, v26, 0x6

    or-int v21, v21, v26

    add-int/lit8 v26, v24, 0x1

    int-to-char v7, v7

    .line 1266
    aput-char v7, v14, v24

    add-int/lit8 v7, v9, 0x1

    .line 1267
    aget v9, v15, v9

    and-int v24, v9, v22

    shr-int/lit8 v24, v24, 0x8

    or-int v21, v21, v24

    add-int/lit8 v24, v26, 0x1

    int-to-char v9, v9

    .line 1269
    aput-char v9, v14, v26

    add-int/lit8 v9, v7, 0x1

    .line 1270
    aget v7, v15, v7

    and-int v26, v7, v22

    shr-int/lit8 v26, v26, 0xa

    or-int v21, v21, v26

    add-int/lit8 v26, v24, 0x1

    int-to-char v7, v7

    .line 1272
    aput-char v7, v14, v24

    add-int/lit8 v7, v9, 0x1

    .line 1273
    aget v9, v15, v9

    and-int v24, v9, v22

    shr-int/lit8 v24, v24, 0xc

    or-int v21, v21, v24

    add-int/lit8 v24, v26, 0x1

    int-to-char v9, v9

    .line 1275
    aput-char v9, v14, v26

    add-int/lit8 v9, v7, 0x1

    .line 1276
    aget v7, v15, v7

    and-int v26, v7, v22

    shr-int/lit8 v26, v26, 0xe

    or-int v21, v21, v26

    add-int/lit8 v26, v24, 0x1

    int-to-char v7, v7

    .line 1278
    aput-char v7, v14, v24

    add-int/lit8 v7, v9, 0x1

    .line 1279
    aget v9, v15, v9

    and-int v15, v9, v22

    shr-int/lit8 v15, v15, 0x10

    or-int v15, v21, v15

    add-int/lit8 v21, v26, 0x1

    int-to-char v9, v9

    .line 1281
    aput-char v9, v14, v26

    add-int/lit8 v9, v21, -0x9

    int-to-char v15, v15

    .line 1282
    aput-char v15, v14, v9

    if-lt v7, v1, :cond_1f

    .line 1284
    invoke-virtual {v4, v14, v14, v12}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[CI)I

    move-result v1

    const v7, 0x8000

    if-ltz v1, :cond_19

    or-int v15, v1, v7

    const/16 v9, 0x24

    goto :goto_11

    :cond_19
    if-ne v12, v6, :cond_1a

    const/4 v1, 0x0

    const/16 v9, 0x24

    goto :goto_f

    .line 1292
    :cond_1a
    iget-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    const/16 v9, 0x24

    invoke-static {v1, v12, v1, v12, v9}, Lcom/ibm/icu/util/MutableCodePointTrie;->getOverlap([CI[CII)I

    move-result v1

    :goto_f
    sub-int v14, v12, v1

    or-int v15, v14, v7

    if-lez v1, :cond_1b

    move v7, v12

    :goto_10
    if-ge v1, v9, :cond_1c

    .line 1300
    iget-object v14, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v16, v7, 0x1

    add-int/lit8 v21, v1, 0x1

    add-int/2addr v1, v12

    aget-char v1, v14, v1

    aput-char v1, v14, v7

    move/from16 v7, v16

    move/from16 v1, v21

    goto :goto_10

    :cond_1b
    add-int/lit8 v7, v12, 0x24

    .line 1305
    :cond_1c
    iget-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v2, v1, v6, v12, v7}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    if-eqz v13, :cond_1d

    .line 1307
    iget-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v4, v1, v6, v12, v7}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    :cond_1d
    move v12, v7

    .line 1311
    :goto_11
    iget v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    if-gez v1, :cond_1e

    if-ltz v10, :cond_1e

    .line 1312
    iput v15, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    :cond_1e
    add-int/lit8 v1, v11, 0x1

    int-to-char v7, v15

    .line 1315
    aput-char v7, v5, v11

    add-int/lit8 v8, v8, 0x20

    move v11, v1

    move/from16 v1, v23

    const/4 v7, 0x0

    const/4 v14, 0x3

    goto/16 :goto_7

    :cond_1f
    move v9, v7

    move/from16 v7, v21

    goto/16 :goto_e

    .line 1320
    :cond_20
    iget v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    if-gez v1, :cond_21

    const/16 v1, 0x7fff

    .line 1321
    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    :cond_21
    const v1, 0x801f

    if-ge v12, v1, :cond_27

    const/16 v1, 0x20

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v11, :cond_26

    sub-int v7, v11, v4

    if-lt v7, v1, :cond_22

    .line 1340
    iget-object v7, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v2, v7, v5, v4}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findBlock([C[CI)I

    move-result v7

    goto :goto_13

    .line 1344
    :cond_22
    iget-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    move-object/from16 v22, v1

    move/from16 v23, v6

    move/from16 v24, v12

    move-object/from16 v25, v5

    move/from16 v26, v4

    move/from16 v27, v7

    invoke-static/range {v22 .. v27}, Lcom/ibm/icu/util/MutableCodePointTrie;->findSameBlock([CII[CII)I

    move-result v1

    move/from16 v28, v7

    move v7, v1

    move/from16 v1, v28

    :goto_13
    if-ltz v7, :cond_23

    goto :goto_16

    :cond_23
    if-ne v12, v6, :cond_24

    const/4 v7, 0x0

    goto :goto_14

    .line 1355
    :cond_24
    iget-object v7, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    invoke-static {v7, v12, v5, v4, v1}, Lcom/ibm/icu/util/MutableCodePointTrie;->getOverlap([CI[CII)I

    move-result v7

    :goto_14
    sub-int v8, v12, v7

    move v9, v12

    :goto_15
    if-ge v7, v1, :cond_25

    .line 1360
    iget-object v10, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v13, v9, 0x1

    add-int/lit8 v14, v7, 0x1

    add-int/2addr v7, v4

    aget-char v7, v5, v7

    aput-char v7, v10, v9

    move v9, v13

    move v7, v14

    goto :goto_15

    .line 1362
    :cond_25
    iget-object v7, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    invoke-virtual {v2, v7, v6, v12, v9}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->extend([CIII)V

    move v7, v8

    move v12, v9

    .line 1365
    :goto_16
    iget-object v8, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index16:[C

    add-int/lit8 v9, v3, 0x1

    int-to-char v7, v7

    aput-char v7, v8, v3

    add-int/2addr v4, v1

    move v3, v9

    goto :goto_12

    :cond_26
    return v12

    .line 1326
    :cond_27
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "The trie data exceeds limitations of the data structure."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :goto_17
    throw v1

    :goto_18
    goto :goto_17
.end method

.method private compactTrie(I)I
    .locals 6

    const v0, 0x10ffff

    .line 1376
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;->get(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    .line 1377
    invoke-direct {p0}, Lcom/ibm/icu/util/MutableCodePointTrie;->findHighStart()I

    move-result v0

    add-int/lit16 v0, v0, 0x1ff

    and-int/lit16 v0, v0, -0x200

    const/high16 v1, 0x110000

    if-ne v0, v1, :cond_0

    .line 1381
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    :cond_0
    shl-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    shr-int/lit8 v3, v0, 0x4

    :goto_0
    if-ge v3, p1, :cond_1

    .line 1389
    iget-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v2, v4, v3

    .line 1390
    iget-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    iget v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1392
    :cond_1
    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    goto :goto_1

    .line 1394
    :cond_2
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    :goto_1
    const/16 v1, 0x80

    new-array v3, v1, [I

    :goto_2
    if-ge v2, v1, :cond_3

    .line 1399
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/MutableCodePointTrie;->get(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1405
    :cond_3
    new-instance v1, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;

    invoke-direct {v1}, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;-><init>()V

    .line 1406
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/util/MutableCodePointTrie;->compactWholeDataBlocks(ILcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;)I

    move-result v2

    .line 1407
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 1409
    invoke-virtual {v1}, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->findMostUsed()I

    move-result v1

    .line 1411
    new-instance v3, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;-><init>(Lcom/ibm/icu/util/MutableCodePointTrie$1;)V

    .line 1412
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/ibm/icu/util/MutableCodePointTrie;->compactData(I[IILcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;)I

    move-result v4

    .line 1414
    iput-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    .line 1415
    iput v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    const v5, 0x4000f

    if-gt v4, v5, :cond_5

    if-ltz v1, :cond_4

    .line 1423
    iget-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v1, v4, v1

    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 1424
    aget v1, v2, v1

    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    goto :goto_3

    :cond_4
    const v1, 0xfffff

    .line 1426
    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 1429
    :goto_3
    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/util/MutableCodePointTrie;->compactIndex(ILcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;)I

    move-result p1

    .line 1430
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    return p1

    .line 1418
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "The trie data exceeds limitations of the data structure."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private compactWholeDataBlocks(ILcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;)I
    .locals 13

    .line 933
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x94

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x4

    :goto_0
    if-ge v5, v0, :cond_a

    const/4 v7, 0x1

    if-ne v5, p1, :cond_0

    const/16 v4, 0x10

    const/4 v6, 0x1

    .line 941
    :cond_0
    iget-object v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v8, v8, v5

    .line 942
    iget-object v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v9, v9, v5

    if-ne v9, v7, :cond_2

    .line 945
    iget-object v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    aget v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v4, -0x1

    .line 946
    invoke-static {v9, v8, v11, v10}, Lcom/ibm/icu/util/MutableCodePointTrie;->allValuesSameAs([IIII)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 947
    iget-object v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v2, v8, v5

    .line 948
    iget-object v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v10, v8, v5

    move v8, v10

    goto :goto_3

    :cond_1
    add-int/2addr v3, v4

    goto :goto_6

    :cond_2
    if-le v6, v7, :cond_5

    add-int v9, v5, v6

    add-int/lit8 v10, v5, 0x1

    :goto_1
    if-ge v10, v9, :cond_4

    .line 962
    iget-object v11, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v11, v11, v10

    if-eq v11, v8, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_5

    .line 969
    invoke-direct {p0, v5}, Lcom/ibm/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result v7

    if-gez v7, :cond_1

    const/4 p1, -0x1

    return p1

    .line 978
    :cond_5
    :goto_3
    invoke-virtual {p2, v5, v6, v8}, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->findOrAdd(III)I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_9

    const/4 v10, 0x0

    const/4 v11, 0x4

    :goto_4
    if-ne v10, v5, :cond_6

    .line 984
    invoke-virtual {p2, v5, v6, v8}, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->add(III)V

    goto :goto_5

    :cond_6
    if-ne v10, p1, :cond_7

    const/4 v11, 0x1

    .line 990
    :cond_7
    iget-object v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v12, v12, v10

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v12, v12, v10

    if-ne v12, v8, :cond_8

    add-int/2addr v11, v6

    .line 991
    invoke-virtual {p2, v10, v11, v8}, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->add(III)V

    move v9, v10

    goto :goto_5

    :cond_8
    add-int/2addr v10, v11

    goto :goto_4

    :cond_9
    :goto_5
    if-ltz v9, :cond_1

    .line 1001
    iget-object v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v8, 0x2

    aput-byte v8, v7, v5

    .line 1002
    iget-object v7, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v9, v7, v5

    :goto_6
    add-int/2addr v5, v6

    goto :goto_0

    :cond_a
    return v3
.end method

.method private ensureHighStart(I)V
    .locals 6

    .line 416
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    if-lt p1, v0, :cond_2

    add-int/lit16 p1, p1, 0x200

    and-int/lit16 p1, p1, -0x200

    shr-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, p1, 0x4

    .line 421
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    const v2, 0x11000

    new-array v2, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 423
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v5, v5, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    :cond_0
    iput-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v3, v2, v0

    .line 428
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    iget v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1

    .line 430
    iput p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    :cond_2
    return-void
.end method

.method private static equalBlocks([CI[CII)Z
    .locals 2

    :goto_0
    if-lez p4, :cond_0

    .line 523
    aget-char v0, p0, p1

    aget-char v1, p2, p3

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static equalBlocks([CI[III)Z
    .locals 2

    :goto_0
    if-lez p4, :cond_0

    .line 514
    aget-char v0, p0, p1

    aget v1, p2, p3

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static equalBlocks([II[III)Z
    .locals 2

    :goto_0
    if-lez p4, :cond_0

    .line 505
    aget v0, p0, p1

    aget v1, p2, p3

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private fillBlock(IIII)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    add-int/2addr p2, p1

    add-int/2addr p1, p3

    invoke-static {v0, p2, p1, p4}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private static findAllSameBlock([IIIII)I
    .locals 4

    sub-int/2addr p2, p4

    :goto_0
    if-gt p1, p2, :cond_3

    .line 558
    aget v0, p0, p1

    const/4 v1, 0x1

    if-ne v0, p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-ne v0, p4, :cond_0

    return p1

    :cond_0
    add-int v2, p1, v0

    .line 563
    aget v3, p0, v2

    if-eq v3, p3, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr p1, v1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private findHighStart()I
    .locals 7

    .line 625
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 628
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v2, v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 629
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v2, v2, v0

    iget v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v2, v2, v0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 637
    :cond_2
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    add-int v6, v2, v4

    aget v5, v5, v6

    iget v6, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-eq v5, v6, :cond_4

    :cond_3
    :goto_2
    if-nez v1, :cond_0

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x4

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private static findSameBlock([CII[CII)I
    .locals 1

    sub-int/2addr p2, p5

    :goto_0
    if-gt p1, p2, :cond_1

    .line 544
    invoke-static {p0, p1, p3, p4, p5}, Lcom/ibm/icu/util/MutableCodePointTrie;->equalBlocks([CI[CII)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static fromCodePointMap(Lcom/ibm/icu/util/CodePointMap;)Lcom/ibm/icu/util/MutableCodePointTrie;
    .locals 6

    const/4 v0, -0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CodePointMap;->get(I)I

    move-result v0

    const v1, 0x10ffff

    .line 96
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/CodePointMap;->get(I)I

    move-result v1

    .line 97
    new-instance v2, Lcom/ibm/icu/util/MutableCodePointTrie;

    invoke-direct {v2, v1, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;-><init>(II)V

    .line 98
    new-instance v0, Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-direct {v0}, Lcom/ibm/icu/util/CodePointMap$Range;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 100
    invoke-virtual {p0, v3, v4, v0}, Lcom/ibm/icu/util/CodePointMap;->getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/ibm/icu/util/CodePointMap$Range;->getEnd()I

    move-result v4

    .line 102
    invoke-virtual {v0}, Lcom/ibm/icu/util/CodePointMap$Range;->getValue()I

    move-result v5

    if-eq v5, v1, :cond_1

    if-ne v3, v4, :cond_0

    .line 105
    invoke-virtual {v2, v3, v5}, Lcom/ibm/icu/util/MutableCodePointTrie;->set(II)V

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/ibm/icu/util/MutableCodePointTrie;->setRange(III)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static getAllSameOverlap([IIII)I
    .locals 2

    add-int/lit8 p3, p3, -0x1

    sub-int p3, p1, p3

    move v0, p1

    :goto_0
    if-ge p3, v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 607
    aget v1, p0, v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method

.method private getDataBlock(I)I
    .locals 7

    .line 462
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/16 v0, 0x1000

    const/16 v2, 0x10

    if-ge p1, v0, :cond_2

    const/16 v0, 0x40

    .line 466
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;->allocDataBlock(I)I

    move-result v0

    and-int/lit8 v3, p1, -0x4

    add-int/lit8 v4, v3, 0x4

    .line 471
    :goto_0
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v5, v5, v3

    invoke-direct {p0, v0, v5}, Lcom/ibm/icu/util/MutableCodePointTrie;->writeBlock(II)V

    .line 472
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v1, v5, v3

    .line 473
    iget-object v5, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    add-int/lit8 v6, v3, 0x1

    aput v0, v5, v3

    add-int/2addr v0, v2

    if-lt v6, v4, :cond_1

    .line 476
    aget p1, v5, p1

    return p1

    :cond_1
    move v3, v6

    goto :goto_0

    .line 478
    :cond_2
    invoke-direct {p0, v2}, Lcom/ibm/icu/util/MutableCodePointTrie;->allocDataBlock(I)I

    move-result v0

    if-gez v0, :cond_3

    return v0

    .line 480
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v2, v2, p1

    invoke-direct {p0, v0, v2}, Lcom/ibm/icu/util/MutableCodePointTrie;->writeBlock(II)V

    .line 481
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aput-byte v1, v2, p1

    .line 482
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput v0, v1, p1

    return v0
.end method

.method private static getOverlap([CI[CII)I
    .locals 1

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lez p4, :cond_0

    sub-int v0, p1, p4

    .line 598
    invoke-static {p0, v0, p2, p3, p4}, Lcom/ibm/icu/util/MutableCodePointTrie;->equalBlocks([CI[CII)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return p4
.end method

.method private static getOverlap([CI[III)I
    .locals 1

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lez p4, :cond_0

    sub-int v0, p1, p4

    .line 589
    invoke-static {p0, v0, p2, p3, p4}, Lcom/ibm/icu/util/MutableCodePointTrie;->equalBlocks([CI[III)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return p4
.end method

.method private static getOverlap([II[III)I
    .locals 1

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lez p4, :cond_0

    sub-int v0, p1, p4

    .line 580
    invoke-static {p0, v0, p2, p3, p4}, Lcom/ibm/icu/util/MutableCodePointTrie;->equalBlocks([II[III)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return p4
.end method

.method private static isStartOfSomeFastBlock(I[II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 613
    aget v2, p1, v1

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    return v0
.end method

.method private maskValues(I)V
    .locals 5

    .line 490
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    .line 491
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    .line 492
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    .line 493
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    shr-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 495
    iget-object v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v4, v3, v2

    and-int/2addr v4, p1

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    :cond_1
    :goto_1
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    if-ge v1, v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    aget v2, v0, v1

    and-int/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I
    .locals 0

    if-ne p0, p1, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 148
    invoke-interface {p3, p0}, Lcom/ibm/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method private writeBlock(II)V
    .locals 2

    add-int/lit8 v0, p1, 0x10

    .line 242
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    invoke-static {v1, p1, v0, p2}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method


# virtual methods
.method public buildImmutable(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;)Lcom/ibm/icu/util/CodePointTrie;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 356
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->build(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-direct {p0}, Lcom/ibm/icu/util/MutableCodePointTrie;->clear()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/ibm/icu/util/MutableCodePointTrie;->clear()V

    .line 359
    throw p1

    .line 352
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type and valueWidth must be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Lcom/ibm/icu/util/MutableCodePointTrie;
    .locals 5

    .line 60
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/MutableCodePointTrie;

    .line 61
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    const/high16 v2, 0x10000

    const v3, 0x11000

    if-gt v1, v2, :cond_0

    const/16 v2, 0x1000

    goto :goto_0

    :cond_0
    const v2, 0x11000

    .line 62
    :goto_0
    new-array v2, v2, [I

    iput-object v2, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    new-array v2, v3, [B

    .line 63
    iput-object v2, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    const/4 v2, 0x0

    shr-int/lit8 v1, v1, 0x4

    :goto_1
    if-ge v2, v1, :cond_1

    .line 65
    iget-object v3, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    iget-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 66
    iget-object v3, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    iget-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v4, v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_1
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->index3NullOffset:I

    .line 69
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    .line 70
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataLength:I

    .line 71
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->dataNullOffset:I

    .line 72
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->origInitialValue:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->origInitialValue:I

    .line 73
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    .line 74
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    .line 75
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    .line 76
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    iput v1, v0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/ibm/icu/util/MutableCodePointTrie;->clone()Lcom/ibm/icu/util/MutableCodePointTrie;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .locals 3

    if-ltz p1, :cond_3

    const v0, 0x10ffff

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    if-lt p1, v0, :cond_1

    .line 133
    iget p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    return p1

    :cond_1
    shr-int/lit8 v0, p1, 0x4

    .line 136
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget p1, p1, v0

    return p1

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v0, v2, v0

    and-int/lit8 p1, p1, 0xf

    add-int/2addr v0, p1

    aget p1, v1, v0

    return p1

    .line 130
    :cond_3
    :goto_0
    iget p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->errorValue:I

    return p1
.end method

.method public getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z
    .locals 10

    const/4 v0, 0x0

    if-ltz p1, :cond_11

    const v1, 0x10ffff

    if-ge v1, p1, :cond_0

    goto/16 :goto_6

    .line 166
    :cond_0
    iget v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    const/4 v3, 0x1

    if-lt p1, v2, :cond_2

    .line 167
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    if-eqz p2, :cond_1

    .line 168
    invoke-interface {p2, v0}, Lcom/ibm/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v0

    .line 169
    :cond_1
    invoke-virtual {p3, p1, v1, v0}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v3

    .line 172
    :cond_2
    iget v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    if-eqz p2, :cond_3

    .line 173
    invoke-interface {p2, v2}, Lcom/ibm/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v2

    :cond_3
    shr-int/lit8 v4, p1, 0x4

    move v7, p1

    move v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 180
    :cond_4
    iget-object v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v8, v8, v6

    if-nez v8, :cond_9

    .line 181
    iget-object v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v8, v8, v6

    if-eqz v0, :cond_7

    if-eq v8, v4, :cond_8

    if-eqz p2, :cond_6

    .line 184
    iget v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    .line 185
    invoke-static {v8, v4, v2, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v4

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_5
    move v4, v8

    goto :goto_1

    :cond_6
    :goto_0
    sub-int/2addr v7, v3

    .line 187
    invoke-virtual {p3, p1, v7, v5}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v3

    .line 194
    :cond_7
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    invoke-static {v8, v0, v2, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v5

    move v4, v8

    const/4 v0, 0x1

    :cond_8
    :goto_1
    add-int/lit8 v7, v7, 0x10

    and-int/lit8 v7, v7, -0x10

    goto :goto_4

    .line 199
    :cond_9
    iget-object v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v8, v8, v6

    and-int/lit8 v9, v7, 0xf

    add-int/2addr v8, v9

    .line 200
    iget-object v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    aget v9, v9, v8

    if-eqz v0, :cond_c

    if-eq v9, v4, :cond_d

    if-eqz p2, :cond_b

    .line 203
    iget v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    .line 204
    invoke-static {v9, v4, v2, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v4

    if-eq v4, v5, :cond_a

    goto :goto_2

    :cond_a
    move v4, v9

    goto :goto_3

    :cond_b
    :goto_2
    sub-int/2addr v7, v3

    .line 206
    invoke-virtual {p3, p1, v7, v5}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v3

    .line 213
    :cond_c
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    invoke-static {v9, v0, v2, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v5

    move v4, v9

    const/4 v0, 0x1

    :cond_d
    :goto_3
    add-int/2addr v7, v3

    and-int/lit8 v9, v7, 0xf

    if-eqz v9, :cond_f

    .line 217
    iget-object v9, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    add-int/2addr v8, v3

    aget v9, v9, v8

    if-eq v9, v4, :cond_d

    if-eqz p2, :cond_e

    .line 219
    iget v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    .line 220
    invoke-static {v9, v4, v2, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v4

    if-eq v4, v5, :cond_a

    :cond_e
    sub-int/2addr v7, v3

    .line 222
    invoke-virtual {p3, p1, v7, v5}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v3

    :cond_f
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 230
    iget v8, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highStart:I

    if-lt v7, v8, :cond_4

    .line 232
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->highValue:I

    iget v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->initialValue:I

    invoke-static {v0, v4, v2, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result p2

    if-eq p2, v5, :cond_10

    sub-int/2addr v7, v3

    .line 233
    invoke-virtual {p3, p1, v7, v5}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    goto :goto_5

    .line 235
    :cond_10
    invoke-virtual {p3, p1, v1, v5}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    :goto_5
    return v3

    :cond_11
    :goto_6
    return v0
.end method

.method public set(II)V
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-lt v0, p1, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/MutableCodePointTrie;->ensureHighStart(I)V

    shr-int/lit8 v0, p1, 0x4

    .line 258
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->data:[I

    and-int/lit8 p1, p1, 0xf

    add-int/2addr v0, p1

    aput p2, v1, v0

    return-void

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid code point"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRange(III)V
    .locals 5

    if-ltz p1, :cond_5

    const v0, 0x10ffff

    if-lt v0, p1, :cond_5

    if-ltz p2, :cond_5

    if-lt v0, p2, :cond_5

    if-gt p1, p2, :cond_5

    .line 279
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->ensureHighStart(I)V

    add-int/lit8 p2, p2, 0x1

    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0x10

    if-eqz v0, :cond_1

    shr-int/lit8 v2, p1, 0x4

    .line 284
    invoke-direct {p0, v2}, Lcom/ibm/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result v2

    add-int/lit8 p1, p1, 0xf

    and-int/lit8 p1, p1, -0x10

    if-gt p1, p2, :cond_0

    .line 287
    invoke-direct {p0, v2, v0, v1, p3}, Lcom/ibm/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p2, 0xf

    .line 291
    invoke-direct {p0, v2, v0, p1, p3}, Lcom/ibm/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    return-void

    :cond_1
    :goto_0
    and-int/lit8 v0, p2, 0xf

    and-int/lit8 p2, p2, -0x10

    :goto_1
    const/4 v2, 0x0

    if-ge p1, p2, :cond_3

    shr-int/lit8 v3, p1, 0x4

    .line 306
    iget-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->flags:[B

    aget-byte v4, v4, v3

    if-nez v4, :cond_2

    .line 307
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aput p3, v2, v3

    goto :goto_2

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/util/MutableCodePointTrie;->index:[I

    aget v3, v4, v3

    invoke-direct {p0, v3, v2, v1, p3}, Lcom/ibm/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    :goto_2
    add-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    shr-int/lit8 p1, p1, 0x4

    .line 316
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/MutableCodePointTrie;->getDataBlock(I)I

    move-result p1

    .line 317
    invoke-direct {p0, p1, v2, v0, p3}, Lcom/ibm/icu/util/MutableCodePointTrie;->fillBlock(IIII)V

    :cond_4
    return-void

    .line 277
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid code point range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
