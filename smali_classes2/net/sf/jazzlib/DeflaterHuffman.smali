.class Lnet/sf/jazzlib/DeflaterHuffman;
.super Ljava/lang/Object;
.source "DeflaterHuffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/jazzlib/DeflaterHuffman$Tree;
    }
.end annotation


# static fields
.field private static final BITLEN_NUM:I = 0x13

.field private static final BL_ORDER:[I

.field private static final BUFSIZE:I = 0x4000

.field private static final DIST_NUM:I = 0x1e

.field private static final EOF_SYMBOL:I = 0x100

.field private static final LITERAL_NUM:I = 0x11e

.field private static final REP_11_138:I = 0x12

.field private static final REP_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final bit4Reverse:Ljava/lang/String; = "\u0000\u0008\u0004\u000c\u0002\n\u0006\u000e\u0001\t\u0005\r\u0003\u000b\u0007\u000f"

.field private static staticDCodes:[S

.field private static staticDLength:[B

.field private static staticLCodes:[S

.field private static staticLLength:[B


# instance fields
.field private final blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

.field private final d_buf:[S

.field private final distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

.field private extra_bits:I

.field private final l_buf:[B

.field private last_lit:I

.field private final literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

.field pending:Lnet/sf/jazzlib/DeflaterPending;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 58
    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/jazzlib/DeflaterHuffman;->BL_ORDER:[I

    const/16 v0, 0x11e

    new-array v1, v0, [S

    .line 500
    sput-object v1, Lnet/sf/jazzlib/DeflaterHuffman;->staticLCodes:[S

    new-array v1, v0, [B

    .line 501
    sput-object v1, Lnet/sf/jazzlib/DeflaterHuffman;->staticLLength:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x90

    const/16 v4, 0x8

    if-ge v2, v3, :cond_0

    .line 504
    sget-object v3, Lnet/sf/jazzlib/DeflaterHuffman;->staticLCodes:[S

    add-int/lit8 v5, v2, 0x30

    shl-int/2addr v5, v4

    invoke-static {v5}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v5

    aput-short v5, v3, v2

    .line 505
    sget-object v3, Lnet/sf/jazzlib/DeflaterHuffman;->staticLLength:[B

    add-int/lit8 v5, v2, 0x1

    aput-byte v4, v3, v2

    move v2, v5

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v3, 0x9

    const/4 v5, 0x7

    const/16 v6, 0x100

    if-ge v2, v6, :cond_1

    .line 508
    sget-object v6, Lnet/sf/jazzlib/DeflaterHuffman;->staticLCodes:[S

    add-int/lit16 v7, v2, 0x100

    shl-int/lit8 v5, v7, 0x7

    invoke-static {v5}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v5

    aput-short v5, v6, v2

    .line 509
    sget-object v5, Lnet/sf/jazzlib/DeflaterHuffman;->staticLLength:[B

    add-int/lit8 v6, v2, 0x1

    aput-byte v3, v5, v2

    move v2, v6

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v6, 0x118

    if-ge v2, v6, :cond_2

    .line 512
    sget-object v6, Lnet/sf/jazzlib/DeflaterHuffman;->staticLCodes:[S

    add-int/lit16 v7, v2, -0x100

    shl-int/2addr v7, v3

    invoke-static {v7}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v7

    aput-short v7, v6, v2

    .line 513
    sget-object v6, Lnet/sf/jazzlib/DeflaterHuffman;->staticLLength:[B

    add-int/lit8 v7, v2, 0x1

    aput-byte v5, v6, v2

    move v2, v7

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v2, v0, :cond_3

    .line 516
    sget-object v3, Lnet/sf/jazzlib/DeflaterHuffman;->staticLCodes:[S

    add-int/lit8 v5, v2, -0x58

    shl-int/2addr v5, v4

    invoke-static {v5}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v5

    aput-short v5, v3, v2

    .line 517
    sget-object v3, Lnet/sf/jazzlib/DeflaterHuffman;->staticLLength:[B

    add-int/lit8 v5, v2, 0x1

    aput-byte v4, v3, v2

    move v2, v5

    goto :goto_3

    :cond_3
    const/16 v0, 0x1e

    new-array v2, v0, [S

    .line 521
    sput-object v2, Lnet/sf/jazzlib/DeflaterHuffman;->staticDCodes:[S

    new-array v2, v0, [B

    .line 522
    sput-object v2, Lnet/sf/jazzlib/DeflaterHuffman;->staticDLength:[B

    :goto_4
    if-ge v1, v0, :cond_4

    .line 524
    sget-object v2, Lnet/sf/jazzlib/DeflaterHuffman;->staticDCodes:[S

    shl-int/lit8 v3, v1, 0xb

    invoke-static {v3}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v3

    aput-short v3, v2, v1

    .line 525
    sget-object v2, Lnet/sf/jazzlib/DeflaterHuffman;->staticDLength:[B

    const/4 v3, 0x5

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>(Lnet/sf/jazzlib/DeflaterPending;)V
    .locals 3

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    .line 532
    new-instance p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    const/16 v0, 0x11e

    const/16 v1, 0x101

    const/16 v2, 0xf

    invoke-direct {p1, p0, v0, v1, v2}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;-><init>(Lnet/sf/jazzlib/DeflaterHuffman;III)V

    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    .line 533
    new-instance p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    const/16 v0, 0x1e

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1, v2}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;-><init>(Lnet/sf/jazzlib/DeflaterHuffman;III)V

    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    .line 534
    new-instance p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    const/16 v0, 0x13

    const/4 v1, 0x4

    const/4 v2, 0x7

    invoke-direct {p1, p0, v0, v1, v2}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;-><init>(Lnet/sf/jazzlib/DeflaterHuffman;III)V

    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    const/16 p1, 0x4000

    new-array v0, p1, [S

    .line 536
    iput-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->d_buf:[S

    new-array p1, p1, [B

    .line 537
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->l_buf:[B

    return-void
.end method

.method static bitReverse(I)S
    .locals 3

    and-int/lit8 v0, p0, 0xf

    const-string v1, "\u0000\u0008\u0004\u000c\u0002\n\u0006\u000e\u0001\t\u0005\r\u0003\u000b\u0007\u000f"

    .line 491
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 492
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    shr-int/lit8 p0, p0, 0xc

    .line 494
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private final d_code(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    return v0
.end method

.method private final l_code(I)I
    .locals 2

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/16 p1, 0x11d

    return p1

    :cond_0
    const/16 v0, 0x101

    :goto_0
    const/16 v1, 0x8

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x4

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public compressBlock()V
    .locals 7

    const/4 v0, 0x0

    .line 588
    :goto_0
    iget v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    if-ge v0, v1, :cond_3

    .line 589
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->l_buf:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 590
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->d_buf:[S

    aget-short v2, v2, v0

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_1

    .line 597
    invoke-direct {p0, v1}, Lnet/sf/jazzlib/DeflaterHuffman;->l_code(I)I

    move-result v2

    .line 598
    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v4, v2}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    add-int/lit16 v2, v2, -0x105

    .line 600
    div-int/lit8 v2, v2, 0x4

    const/4 v4, 0x1

    if-lez v2, :cond_0

    const/4 v5, 0x5

    if-gt v2, v5, :cond_0

    .line 602
    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    shl-int v6, v4, v2

    sub-int/2addr v6, v4

    and-int/2addr v1, v6

    invoke-virtual {v5, v1, v2}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    .line 605
    :cond_0
    invoke-direct {p0, v3}, Lnet/sf/jazzlib/DeflaterHuffman;->d_code(I)I

    move-result v1

    .line 606
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v2, v1}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    .line 608
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v4

    if-lez v1, :cond_2

    .line 610
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    shl-int v5, v4, v1

    sub-int/2addr v5, v4

    and-int/2addr v3, v5

    invoke-virtual {v2, v3, v1}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    goto :goto_1

    .line 620
    :cond_1
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v2, v1}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_3
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    return-void
.end method

.method public flushBlock([BIIZ)V
    .locals 8

    .line 649
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v0, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    const/16 v1, 0x100

    aget-short v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 652
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->buildTree()V

    .line 653
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->buildTree()V

    .line 656
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->calcBLFreq(Lnet/sf/jazzlib/DeflaterHuffman$Tree;)V

    .line 657
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->calcBLFreq(Lnet/sf/jazzlib/DeflaterHuffman$Tree;)V

    .line 660
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->buildTree()V

    const/4 v0, 0x4

    const/16 v1, 0x12

    const/4 v2, 0x4

    :goto_0
    if-le v1, v2, :cond_1

    .line 664
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v3, v3, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    sget-object v4, Lnet/sf/jazzlib/DeflaterHuffman;->BL_ORDER:[I

    aget v4, v4, v1

    aget-byte v3, v3, v4

    if-lez v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, 0xe

    .line 668
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v3}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->getEncodedLength()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    .line 669
    invoke-virtual {v3}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->getEncodedLength()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v3}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->getEncodedLength()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lnet/sf/jazzlib/DeflaterHuffman;->extra_bits:I

    add-int/2addr v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x11e

    if-ge v5, v6, :cond_2

    .line 674
    iget-object v6, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v6, v6, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v6, v6, v5

    sget-object v7, Lnet/sf/jazzlib/DeflaterHuffman;->staticLLength:[B

    aget-byte v7, v7, v5

    mul-int v6, v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v5, 0x1e

    if-ge v4, v5, :cond_3

    .line 677
    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v5, v5, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v5, v5, v4

    sget-object v6, Lnet/sf/jazzlib/DeflaterHuffman;->staticDLength:[B

    aget-byte v6, v6, v4

    mul-int v5, v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-lt v1, v3, :cond_4

    move v1, v3

    :cond_4
    if-ltz p2, :cond_5

    add-int/lit8 v4, p3, 0x4

    shr-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_5

    .line 690
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/jazzlib/DeflaterHuffman;->flushStoredBlock([BIIZ)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x3

    if-ne v1, v3, :cond_6

    .line 693
    iget-object p2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    add-int/lit8 p4, p4, 0x2

    invoke-virtual {p2, p4, p1}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    .line 695
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    sget-object p2, Lnet/sf/jazzlib/DeflaterHuffman;->staticLCodes:[S

    sget-object p3, Lnet/sf/jazzlib/DeflaterHuffman;->staticLLength:[B

    invoke-virtual {p1, p2, p3}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->setStaticCodes([S[B)V

    .line 696
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    sget-object p2, Lnet/sf/jazzlib/DeflaterHuffman;->staticDCodes:[S

    sget-object p3, Lnet/sf/jazzlib/DeflaterHuffman;->staticDLength:[B

    invoke-virtual {p1, p2, p3}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->setStaticCodes([S[B)V

    .line 697
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterHuffman;->compressBlock()V

    .line 698
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterHuffman;->reset()V

    goto :goto_3

    .line 701
    :cond_6
    iget-object p2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    add-int/2addr p4, v0

    invoke-virtual {p2, p4, p1}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    .line 703
    invoke-virtual {p0, v2}, Lnet/sf/jazzlib/DeflaterHuffman;->sendAllTrees(I)V

    .line 704
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterHuffman;->compressBlock()V

    .line 705
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterHuffman;->reset()V

    :goto_3
    return-void
.end method

.method public flushStoredBlock([BIIZ)V
    .locals 2

    .line 638
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    add-int/lit8 p4, p4, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, p4, v1}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    .line 640
    iget-object p4, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {p4}, Lnet/sf/jazzlib/DeflaterPending;->alignToByte()V

    .line 641
    iget-object p4, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {p4, p3}, Lnet/sf/jazzlib/DeflaterPending;->writeShort(I)V

    .line 642
    iget-object p4, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    xor-int/lit8 v0, p3, -0x1

    invoke-virtual {p4, v0}, Lnet/sf/jazzlib/DeflaterPending;->writeShort(I)V

    .line 643
    iget-object p4, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {p4, p1, p2, p3}, Lnet/sf/jazzlib/DeflaterPending;->writeBlock([BII)V

    .line 644
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterHuffman;->reset()V

    return-void
.end method

.method public final isFull()Z
    .locals 2

    .line 710
    iget v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 541
    iput v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    .line 542
    iput v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->extra_bits:I

    .line 543
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->reset()V

    .line 544
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->reset()V

    .line 545
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->reset()V

    return-void
.end method

.method public sendAllTrees(I)V
    .locals 4

    .line 571
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->buildCodes()V

    .line 572
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->buildCodes()V

    .line 573
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->buildCodes()V

    .line 574
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget v1, v1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    add-int/lit16 v1, v1, -0x101

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    .line 575
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget v1, v1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    .line 576
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    add-int/lit8 v1, p1, -0x4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 578
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v2, v2, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    sget-object v3, Lnet/sf/jazzlib/DeflaterHuffman;->BL_ORDER:[I

    aget v3, v3, v0

    aget-byte v2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_0
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeTree(Lnet/sf/jazzlib/DeflaterHuffman$Tree;)V

    .line 581
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->blTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeTree(Lnet/sf/jazzlib/DeflaterHuffman$Tree;)V

    return-void
.end method

.method public final tallyDist(II)Z
    .locals 3

    .line 732
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->d_buf:[S

    iget v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 733
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->l_buf:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    add-int/lit8 p2, p2, -0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 735
    invoke-direct {p0, p2}, Lnet/sf/jazzlib/DeflaterHuffman;->l_code(I)I

    move-result p2

    .line 736
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v0, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v1, v0, p2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v0, p2

    const/4 v0, 0x4

    const/16 v1, 0x109

    if-lt p2, v1, :cond_0

    const/16 v1, 0x11d

    if-ge p2, v1, :cond_0

    .line 738
    iget v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->extra_bits:I

    add-int/lit16 p2, p2, -0x105

    div-int/2addr p2, v0

    add-int/2addr v1, p2

    iput v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->extra_bits:I

    :cond_0
    sub-int/2addr p1, v2

    .line 741
    invoke-direct {p0, p1}, Lnet/sf/jazzlib/DeflaterHuffman;->d_code(I)I

    move-result p1

    .line 742
    iget-object p2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->distTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object p2, p2, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v1, p2, p1

    add-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, p1

    if-lt p1, v0, :cond_1

    .line 744
    iget p2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->extra_bits:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v2

    add-int/2addr p2, p1

    iput p2, p0, Lnet/sf/jazzlib/DeflaterHuffman;->extra_bits:I

    .line 746
    :cond_1
    iget p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    const/16 p2, 0x4000

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final tallyLit(I)Z
    .locals 4

    .line 721
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->d_buf:[S

    iget v1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    const/4 v2, 0x0

    aput-short v2, v0, v1

    .line 722
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->l_buf:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 723
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman;->literalTree:Lnet/sf/jazzlib/DeflaterHuffman$Tree;

    iget-object v0, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v1, v0, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 724
    iget p1, p0, Lnet/sf/jazzlib/DeflaterHuffman;->last_lit:I

    const/16 v0, 0x4000

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
