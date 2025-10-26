.class Lnet/sf/jazzlib/DeflaterEngine;
.super Ljava/lang/Object;
.source "DeflaterEngine.java"

# interfaces
.implements Lnet/sf/jazzlib/DeflaterConstants;


# static fields
.field private static final TOO_FAR:I = 0x1000


# instance fields
.field private final adler:Lnet/sf/jazzlib/Adler32;

.field private blockStart:I

.field private comprFunc:I

.field private goodLength:I

.field private final head:[S

.field private final huffman:Lnet/sf/jazzlib/DeflaterHuffman;

.field private inputBuf:[B

.field private inputEnd:I

.field private inputOff:I

.field private ins_h:I

.field private lookahead:I

.field private matchLen:I

.field private matchStart:I

.field private max_chain:I

.field private max_lazy:I

.field private niceLength:I

.field private final pending:Lnet/sf/jazzlib/DeflaterPending;

.field private final prev:[S

.field private prevAvailable:Z

.field private strategy:I

.field private strstart:I

.field private totalIn:I

.field private final window:[B


# direct methods
.method constructor <init>(Lnet/sf/jazzlib/DeflaterPending;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->pending:Lnet/sf/jazzlib/DeflaterPending;

    .line 122
    new-instance v0, Lnet/sf/jazzlib/DeflaterHuffman;

    invoke-direct {v0, p1}, Lnet/sf/jazzlib/DeflaterHuffman;-><init>(Lnet/sf/jazzlib/DeflaterPending;)V

    iput-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    .line 123
    new-instance p1, Lnet/sf/jazzlib/Adler32;

    invoke-direct {p1}, Lnet/sf/jazzlib/Adler32;-><init>()V

    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->adler:Lnet/sf/jazzlib/Adler32;

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 125
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    const p1, 0x8000

    new-array v0, p1, [S

    .line 126
    iput-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->head:[S

    new-array p1, p1, [S

    .line 127
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->prev:[S

    const/4 p1, 0x1

    .line 133
    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    return-void
.end method

.method private deflateFast(ZZ)Z
    .locals 8

    .line 461
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    const/16 v1, 0x106

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_0

    return v2

    .line 465
    :cond_0
    :goto_0
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 468
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    iget v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v3, p2}, Lnet/sf/jazzlib/DeflaterHuffman;->flushBlock([BIIZ)V

    .line 470
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    return v2

    .line 474
    :cond_3
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    const v4, 0xfefa

    if-le v0, v4, :cond_4

    .line 479
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->slideWindow()V

    .line 483
    :cond_4
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    const/4 v4, 0x3

    if-lt v0, v4, :cond_8

    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->insertString()I

    move-result v0

    if-eqz v0, :cond_8

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->strategy:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v5, v0

    const/16 v7, 0x7efa

    if-gt v5, v7, :cond_8

    .line 486
    invoke-direct {p0, v0}, Lnet/sf/jazzlib/DeflaterEngine;->findLongestMatch(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 495
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iget v7, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchStart:I

    sub-int/2addr v5, v7

    iget v7, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    invoke-virtual {v0, v5, v7}, Lnet/sf/jazzlib/DeflaterHuffman;->tallyDist(II)Z

    .line 497
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    sub-int/2addr v0, v5

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    .line 498
    iget v7, p0, Lnet/sf/jazzlib/DeflaterEngine;->max_lazy:I

    if-gt v5, v7, :cond_6

    if-lt v0, v4, :cond_6

    .line 499
    :goto_2
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    sub-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    if-lez v0, :cond_5

    .line 500
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 501
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->insertString()I

    goto :goto_2

    .line 503
    :cond_5
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    goto :goto_3

    .line 505
    :cond_6
    iget v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/2addr v3, v5

    iput v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    if-lt v0, v6, :cond_7

    .line 507
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->updateHash()V

    .line 510
    :cond_7
    :goto_3
    iput v6, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    goto :goto_0

    .line 514
    :cond_8
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Lnet/sf/jazzlib/DeflaterHuffman;->tallyLit(I)Z

    .line 515
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 516
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    sub-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    .line 519
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_9

    .line 520
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    if-nez p1, :cond_9

    const/4 v2, 0x1

    .line 521
    :cond_9
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object p2, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1, v2}, Lnet/sf/jazzlib/DeflaterHuffman;->flushBlock([BIIZ)V

    .line 523
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method private deflateSlow(ZZ)Z
    .locals 10

    .line 531
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    const/16 v1, 0x106

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_0

    return v2

    .line 535
    :cond_0
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 537
    iget-boolean p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    if-eqz p1, :cond_3

    .line 538
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v1, v3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/DeflaterHuffman;->tallyLit(I)Z

    .line 540
    :cond_3
    iput-boolean v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    .line 546
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    iget v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v3, p2}, Lnet/sf/jazzlib/DeflaterHuffman;->flushBlock([BIIZ)V

    .line 548
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    return v2

    .line 552
    :cond_4
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    const v4, 0xfefa

    if-lt v0, v4, :cond_5

    .line 557
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->slideWindow()V

    .line 560
    :cond_5
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchStart:I

    .line 561
    iget v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    .line 562
    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-lt v5, v7, :cond_7

    .line 563
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->insertString()I

    move-result v5

    .line 564
    iget v8, p0, Lnet/sf/jazzlib/DeflaterEngine;->strategy:I

    if-eq v8, v6, :cond_7

    if-eqz v5, :cond_7

    iget v8, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v8, v5

    const/16 v9, 0x7efa

    if-gt v8, v9, :cond_7

    .line 566
    invoke-direct {p0, v5}, Lnet/sf/jazzlib/DeflaterEngine;->findLongestMatch(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 570
    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_7

    iget v8, p0, Lnet/sf/jazzlib/DeflaterEngine;->strategy:I

    if-eq v8, v3, :cond_6

    if-ne v5, v7, :cond_7

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iget v8, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchStart:I

    sub-int/2addr v5, v8

    const/16 v8, 0x1000

    if-le v5, v8, :cond_7

    .line 572
    :cond_6
    iput v6, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    :cond_7
    if-lt v4, v7, :cond_a

    .line 578
    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    if-gt v5, v4, :cond_a

    .line 586
    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget v8, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v8, v3

    sub-int/2addr v8, v0

    invoke-virtual {v5, v8, v4}, Lnet/sf/jazzlib/DeflaterHuffman;->tallyDist(II)Z

    add-int/lit8 v4, v4, -0x2

    .line 589
    :cond_8
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 590
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    sub-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    if-lt v0, v7, :cond_9

    .line 592
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->insertString()I

    :cond_9
    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_8

    .line 595
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 596
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    sub-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    .line 597
    iput-boolean v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    .line 598
    iput v6, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    goto :goto_1

    .line 600
    :cond_a
    iget-boolean v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    if-eqz v0, :cond_b

    .line 601
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v5, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Lnet/sf/jazzlib/DeflaterHuffman;->tallyLit(I)Z

    .line 603
    :cond_b
    iput-boolean v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    .line 604
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 605
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    sub-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    .line 608
    :goto_1
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    sub-int/2addr p1, v0

    .line 610
    iget-boolean v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    if-eqz v1, :cond_c

    add-int/lit8 p1, p1, -0x1

    :cond_c
    if-eqz p2, :cond_d

    .line 613
    iget p2, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    if-nez p2, :cond_d

    if-nez v1, :cond_d

    const/4 v2, 0x1

    .line 614
    :cond_d
    iget-object p2, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    invoke-virtual {p2, v1, v0, p1, v2}, Lnet/sf/jazzlib/DeflaterHuffman;->flushBlock([BIIZ)V

    .line 615
    iget p2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    add-int/2addr p2, p1

    iput p2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method private deflateStored(ZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 428
    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    if-nez v1, :cond_0

    return v0

    .line 432
    :cond_0
    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 433
    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    .line 435
    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    sub-int/2addr v1, v2

    .line 437
    sget v2, Lnet/sf/jazzlib/DeflaterConstants;->MAX_BLOCK_SIZE:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    const v4, 0x8000

    if-ge v2, v4, :cond_1

    const/16 v2, 0x7efa

    if-ge v1, v2, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    .line 443
    :cond_3
    :goto_0
    sget p1, Lnet/sf/jazzlib/DeflaterConstants;->MAX_BLOCK_SIZE:I

    if-le v1, p1, :cond_4

    .line 444
    sget v1, Lnet/sf/jazzlib/DeflaterConstants;->MAX_BLOCK_SIZE:I

    const/4 p2, 0x0

    .line 453
    :cond_4
    iget-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    invoke-virtual {p1, v0, v2, v1, p2}, Lnet/sf/jazzlib/DeflaterHuffman;->flushStoredBlock([BIIZ)V

    .line 454
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    xor-int/lit8 p1, p2, 0x1

    return p1
.end method

.method private fillWindow()V
    .locals 6

    .line 281
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    const v1, 0xfefa

    if-lt v0, v1, :cond_0

    .line 282
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->slideWindow()V

    .line 289
    :cond_0
    :goto_0
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    const/16 v1, 0x106

    if-ge v0, v1, :cond_2

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputEnd:I

    if-ge v1, v2, :cond_2

    const/high16 v3, 0x10000

    sub-int/2addr v3, v0

    .line 291
    iget v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v3, v4

    sub-int v5, v2, v1

    if-le v3, v5, :cond_1

    sub-int v3, v2, v1

    .line 297
    :cond_1
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputBuf:[B

    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    add-int/2addr v4, v0

    invoke-static {v2, v1, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->adler:Lnet/sf/jazzlib/Adler32;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputBuf:[B

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    invoke-virtual {v0, v1, v2, v3}, Lnet/sf/jazzlib/Adler32;->update([BII)V

    .line 300
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    .line 301
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->totalIn:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->totalIn:I

    .line 302
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 306
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->updateHash()V

    :cond_3
    return-void
.end method

.method private findLongestMatch(I)Z
    .locals 16

    move-object/from16 v0, p0

    .line 320
    iget v1, v0, Lnet/sf/jazzlib/DeflaterEngine;->max_chain:I

    .line 321
    iget v2, v0, Lnet/sf/jazzlib/DeflaterEngine;->niceLength:I

    .line 322
    iget-object v3, v0, Lnet/sf/jazzlib/DeflaterEngine;->prev:[S

    .line 323
    iget v4, v0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 325
    iget v5, v0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    add-int v6, v4, v5

    const/4 v7, 0x2

    .line 326
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 328
    iget v7, v0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/lit16 v7, v7, -0x7efa

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit16 v9, v4, 0x102

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 331
    iget-object v11, v0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    add-int/lit8 v12, v6, -0x1

    aget-byte v12, v11, v12

    .line 332
    aget-byte v11, v11, v6

    .line 335
    iget v13, v0, Lnet/sf/jazzlib/DeflaterEngine;->goodLength:I

    if-lt v5, v13, :cond_0

    shr-int/lit8 v1, v1, 0x2

    .line 343
    :cond_0
    iget v13, v0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    if-le v2, v13, :cond_1

    goto :goto_0

    :cond_1
    move v13, v2

    :goto_0
    move v2, v1

    move/from16 v1, p1

    .line 356
    :goto_1
    iget-object v14, v0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    add-int v15, v1, v5

    aget-byte v8, v14, v15

    if-ne v8, v11, :cond_6

    add-int/lit8 v15, v15, -0x1

    aget-byte v8, v14, v15

    if-ne v8, v12, :cond_6

    aget-byte v8, v14, v1

    aget-byte v15, v14, v4

    if-ne v8, v15, :cond_6

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v14, v8

    add-int/lit8 v15, v4, 0x1

    aget-byte v14, v14, v15

    if-eq v8, v14, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v8, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 370
    :goto_2
    iget-object v14, v0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    add-int/2addr v4, v10

    aget-byte v15, v14, v4

    add-int/2addr v8, v10

    aget-byte v10, v14, v8

    if-ne v15, v10, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v14, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v14, v8

    if-ne v10, v15, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v14, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v14, v8

    if-ne v10, v15, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v14, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v14, v8

    if-ne v10, v15, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v14, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v14, v8

    if-ne v10, v15, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v14, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v14, v8

    if-ne v10, v15, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v14, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v14, v8

    if-ne v10, v15, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v14, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v15, v14, v8

    if-ne v10, v15, :cond_3

    if-ge v4, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    if-le v4, v6, :cond_5

    .line 384
    iput v1, v0, Lnet/sf/jazzlib/DeflaterEngine;->matchStart:I

    .line 386
    iget v5, v0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int v5, v4, v5

    if-lt v5, v13, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v4, -0x1

    .line 391
    aget-byte v12, v14, v6

    .line 392
    aget-byte v11, v14, v4

    move v6, v4

    .line 394
    :cond_5
    iget v4, v0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    :cond_6
    :goto_3
    and-int/lit16 v1, v1, 0x7fff

    .line 395
    aget-short v1, v3, v1

    const v8, 0xffff

    and-int/2addr v1, v8

    if-le v1, v7, :cond_8

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 398
    :cond_8
    :goto_4
    iget v1, v0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    return v8
.end method

.method private final insertString()I
    .locals 6

    .line 226
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->ins_h:I

    shl-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/lit8 v3, v2, 0x2

    aget-byte v1, v1, v3

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x7fff

    .line 239
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->prev:[S

    and-int/lit16 v3, v2, 0x7fff

    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->head:[S

    aget-short v5, v4, v0

    aput-short v5, v1, v3

    int-to-short v1, v2

    .line 240
    aput-short v1, v4, v0

    .line 241
    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->ins_h:I

    const v0, 0xffff

    and-int/2addr v0, v5

    return v0
.end method

.method private slideWindow()V
    .locals 6

    .line 246
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    const v1, 0x8000

    const/4 v2, 0x0

    invoke-static {v0, v1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchStart:I

    .line 248
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 249
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    const/4 v0, 0x0

    :goto_0
    const v3, 0xffff

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->head:[S

    aget-short v5, v4, v0

    and-int/2addr v3, v5

    if-lt v3, v1, :cond_0

    add-int/lit16 v3, v3, -0x8000

    int-to-short v3, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 257
    :goto_1
    aput-short v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 264
    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->prev:[S

    aget-short v5, v4, v0

    and-int/2addr v5, v3

    if-lt v5, v1, :cond_2

    add-int/lit16 v5, v5, -0x8000

    int-to-short v5, v5

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 265
    :goto_3
    aput-short v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final updateHash()V
    .locals 3

    .line 217
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    xor-int/2addr v0, v2

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->ins_h:I

    return-void
.end method


# virtual methods
.method public deflate(ZZ)Z
    .locals 3

    .line 625
    :cond_0
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->fillWindow()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 626
    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputEnd:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 631
    :goto_0
    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->comprFunc:I

    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    .line 639
    invoke-direct {p0, v1, p2}, Lnet/sf/jazzlib/DeflaterEngine;->deflateSlow(ZZ)Z

    move-result v0

    goto :goto_1

    .line 642
    :cond_2
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 636
    :cond_3
    invoke-direct {p0, v1, p2}, Lnet/sf/jazzlib/DeflaterEngine;->deflateFast(ZZ)Z

    move-result v0

    goto :goto_1

    .line 633
    :cond_4
    invoke-direct {p0, v1, p2}, Lnet/sf/jazzlib/DeflaterEngine;->deflateStored(ZZ)Z

    move-result v0

    .line 644
    :goto_1
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {v1}, Lnet/sf/jazzlib/DeflaterPending;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    :cond_5
    return v0
.end method

.method public final getAdler()I
    .locals 2

    .line 157
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final getTotalIn()I
    .locals 1

    .line 162
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->totalIn:I

    return v0
.end method

.method public final needsInput()Z
    .locals 2

    .line 672
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputEnd:I

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 4

    .line 137
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterHuffman;->reset()V

    .line 138
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->reset()V

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->lookahead:I

    .line 141
    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->totalIn:I

    .line 142
    iput-boolean v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    const/4 v1, 0x2

    .line 143
    iput v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    const/4 v1, 0x0

    :goto_0
    const v2, 0x8000

    if-ge v1, v2, :cond_0

    .line 145
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->head:[S

    aput-short v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 148
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->prev:[S

    aput-short v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final resetAdler()V
    .locals 1

    .line 153
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->reset()V

    return-void
.end method

.method setDictionary([BII)V
    .locals 2

    .line 406
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/Adler32;->update([BII)V

    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7efa

    if-le p3, v0, :cond_1

    add-int/lit16 p3, p3, -0x7efa

    add-int/2addr p2, p3

    const/16 p3, 0x7efa

    .line 415
    :cond_1
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->updateHash()V

    add-int/lit8 p3, p3, -0x1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_2

    .line 420
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->insertString()I

    .line 421
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    goto :goto_0

    .line 423
    :cond_2
    iget p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    .line 424
    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    return-void
.end method

.method public setInput([BII)V
    .locals 2

    .line 651
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputEnd:I

    if-lt v0, v1, :cond_1

    add-int/2addr p3, p2

    if-ltz p2, :cond_0

    if-gt p2, p3, :cond_0

    .line 662
    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 666
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputBuf:[B

    .line 667
    iput p2, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputOff:I

    .line 668
    iput p3, p0, Lnet/sf/jazzlib/DeflaterEngine;->inputEnd:I

    return-void

    .line 663
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 652
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Old input was not completely processed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLevel(I)V
    .locals 6

    .line 170
    sget-object v0, Lnet/sf/jazzlib/DeflaterConstants;->GOOD_LENGTH:[I

    aget v0, v0, p1

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->goodLength:I

    .line 171
    sget-object v0, Lnet/sf/jazzlib/DeflaterConstants;->MAX_LAZY:[I

    aget v0, v0, p1

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->max_lazy:I

    .line 172
    sget-object v0, Lnet/sf/jazzlib/DeflaterConstants;->NICE_LENGTH:[I

    aget v0, v0, p1

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->niceLength:I

    .line 173
    sget-object v0, Lnet/sf/jazzlib/DeflaterConstants;->MAX_CHAIN:[I

    aget v0, v0, p1

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->max_chain:I

    .line 175
    sget-object v0, Lnet/sf/jazzlib/DeflaterConstants;->COMPR_FUNC:[I

    aget v0, v0, p1

    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->comprFunc:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-boolean v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    iget v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    sub-int/2addr v5, v2

    aget-byte v2, v4, v5

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lnet/sf/jazzlib/DeflaterHuffman;->tallyLit(I)Z

    .line 200
    :cond_1
    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    if-le v1, v2, :cond_2

    .line 201
    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    sub-int/2addr v1, v2

    invoke-virtual {v4, v5, v2, v1, v0}, Lnet/sf/jazzlib/DeflaterHuffman;->flushBlock([BIIZ)V

    .line 203
    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    .line 205
    :cond_2
    iput-boolean v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->prevAvailable:Z

    .line 206
    iput v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->matchLen:I

    goto :goto_0

    .line 190
    :cond_3
    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    if-le v1, v2, :cond_6

    .line 191
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lnet/sf/jazzlib/DeflaterHuffman;->flushBlock([BIIZ)V

    .line 193
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    goto :goto_0

    .line 182
    :cond_4
    iget v1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iget v2, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    if-le v1, v2, :cond_5

    .line 183
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterEngine;->huffman:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterEngine;->window:[B

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lnet/sf/jazzlib/DeflaterHuffman;->flushStoredBlock([BIIZ)V

    .line 185
    iget v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->strstart:I

    iput v0, p0, Lnet/sf/jazzlib/DeflaterEngine;->blockStart:I

    .line 187
    :cond_5
    invoke-direct {p0}, Lnet/sf/jazzlib/DeflaterEngine;->updateHash()V

    .line 209
    :cond_6
    :goto_0
    sget-object v0, Lnet/sf/jazzlib/DeflaterEngine;->COMPR_FUNC:[I

    aget p1, v0, p1

    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->comprFunc:I

    :cond_7
    return-void
.end method

.method public final setStrategy(I)V
    .locals 0

    .line 166
    iput p1, p0, Lnet/sf/jazzlib/DeflaterEngine;->strategy:I

    return-void
.end method
