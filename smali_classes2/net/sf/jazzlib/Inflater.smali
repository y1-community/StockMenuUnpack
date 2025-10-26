.class public Lnet/sf/jazzlib/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# static fields
.field private static final CPDEXT:[I

.field private static final CPDIST:[I

.field private static final CPLENS:[I

.field private static final CPLEXT:[I

.field private static final DECODE_BLOCKS:I = 0x2

.field private static final DECODE_CHKSUM:I = 0xb

.field private static final DECODE_DICT:I = 0x1

.field private static final DECODE_DYN_HEADER:I = 0x6

.field private static final DECODE_HEADER:I = 0x0

.field private static final DECODE_HUFFMAN:I = 0x7

.field private static final DECODE_HUFFMAN_DIST:I = 0x9

.field private static final DECODE_HUFFMAN_DISTBITS:I = 0xa

.field private static final DECODE_HUFFMAN_LENBITS:I = 0x8

.field private static final DECODE_STORED:I = 0x5

.field private static final DECODE_STORED_LEN1:I = 0x3

.field private static final DECODE_STORED_LEN2:I = 0x4

.field private static final FINISHED:I = 0xc


# instance fields
.field private adler:Lnet/sf/jazzlib/Adler32;

.field private distTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

.field private dynHeader:Lnet/sf/jazzlib/InflaterDynHeader;

.field private input:Lnet/sf/jazzlib/StreamManipulator;

.field private isLastBlock:Z

.field private litlenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

.field private mode:I

.field private neededBits:I

.field private final nowrap:Z

.field private outputWindow:Lnet/sf/jazzlib/OutputWindow;

.field private readAdler:I

.field private repDist:I

.field private repLength:I

.field private totalIn:I

.field private totalOut:I

.field private uncomprLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1d

    new-array v1, v0, [I

    .line 70
    fill-array-data v1, :array_0

    sput-object v1, Lnet/sf/jazzlib/Inflater;->CPLENS:[I

    new-array v0, v0, [I

    .line 75
    fill-array-data v0, :array_1

    sput-object v0, Lnet/sf/jazzlib/Inflater;->CPLEXT:[I

    const/16 v0, 0x1e

    new-array v1, v0, [I

    .line 79
    fill-array-data v1, :array_2

    sput-object v1, Lnet/sf/jazzlib/Inflater;->CPDIST:[I

    new-array v0, v0, [I

    .line 84
    fill-array-data v0, :array_3

    sput-object v0, Lnet/sf/jazzlib/Inflater;->CPDEXT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xf
        0x11
        0x13
        0x17
        0x1b
        0x1f
        0x23
        0x2b
        0x33
        0x3b
        0x43
        0x53
        0x63
        0x73
        0x83
        0xa3
        0xc3
        0xe3
        0x102
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xd
        0x11
        0x19
        0x21
        0x31
        0x41
        0x61
        0x81
        0xc1
        0x101
        0x181
        0x201
        0x301
        0x401
        0x601
        0x801
        0xc01
        0x1001
        0x1801
        0x2001
        0x3001
        0x4001
        0x6001
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0}, Lnet/sf/jazzlib/Inflater;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-boolean p1, p0, Lnet/sf/jazzlib/Inflater;->nowrap:Z

    .line 166
    new-instance v0, Lnet/sf/jazzlib/Adler32;

    invoke-direct {v0}, Lnet/sf/jazzlib/Adler32;-><init>()V

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    .line 167
    new-instance v0, Lnet/sf/jazzlib/StreamManipulator;

    invoke-direct {v0}, Lnet/sf/jazzlib/StreamManipulator;-><init>()V

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    .line 168
    new-instance v0, Lnet/sf/jazzlib/OutputWindow;

    invoke-direct {v0}, Lnet/sf/jazzlib/OutputWindow;-><init>()V

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 169
    :goto_0
    iput p1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    return-void
.end method

.method private decode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 612
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 707
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    return v4

    .line 618
    :pswitch_1
    invoke-direct {p0}, Lnet/sf/jazzlib/Inflater;->decodeChksum()Z

    move-result v0

    return v0

    .line 692
    :pswitch_2
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->dynHeader:Lnet/sf/jazzlib/InflaterDynHeader;

    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0, v2}, Lnet/sf/jazzlib/InflaterDynHeader;->decode(Lnet/sf/jazzlib/StreamManipulator;)Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    .line 695
    :cond_0
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->dynHeader:Lnet/sf/jazzlib/InflaterDynHeader;

    invoke-virtual {v0}, Lnet/sf/jazzlib/InflaterDynHeader;->buildLitLenTree()Lnet/sf/jazzlib/InflaterHuffmanTree;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->litlenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 696
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->dynHeader:Lnet/sf/jazzlib/InflaterDynHeader;

    invoke-virtual {v0}, Lnet/sf/jazzlib/InflaterDynHeader;->buildDistTree()Lnet/sf/jazzlib/InflaterHuffmanTree;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->distTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 697
    iput v1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 703
    :pswitch_3
    invoke-direct {p0}, Lnet/sf/jazzlib/Inflater;->decodeHuffman()Z

    move-result v0

    return v0

    .line 662
    :pswitch_4
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0, v3}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/Inflater;->uncomprLen:I

    if-gez v0, :cond_1

    return v4

    .line 665
    :cond_1
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    const/4 v0, 0x4

    .line 666
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 670
    :pswitch_5
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0, v3}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    if-gez v0, :cond_2

    return v4

    .line 674
    :cond_2
    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v1, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 675
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->uncomprLen:I

    const v3, 0xffff

    xor-int/2addr v1, v3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 678
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 682
    :pswitch_6
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    iget v3, p0, Lnet/sf/jazzlib/Inflater;->uncomprLen:I

    invoke-virtual {v0, v1, v3}, Lnet/sf/jazzlib/OutputWindow;->copyStored(Lnet/sf/jazzlib/StreamManipulator;I)I

    move-result v0

    .line 683
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->uncomprLen:I

    sub-int/2addr v1, v0

    iput v1, p0, Lnet/sf/jazzlib/Inflater;->uncomprLen:I

    if-nez v1, :cond_3

    .line 685
    iput v2, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    return v5

    .line 688
    :cond_3
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0}, Lnet/sf/jazzlib/StreamManipulator;->needsInput()Z

    move-result v0

    xor-int/2addr v0, v5

    return v0

    .line 676
    :cond_4
    new-instance v0, Lnet/sf/jazzlib/DataFormatException;

    const-string v1, "broken uncompressed block"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :pswitch_7
    iget-boolean v0, p0, Lnet/sf/jazzlib/Inflater;->isLastBlock:Z

    if-eqz v0, :cond_6

    .line 622
    iget-boolean v0, p0, Lnet/sf/jazzlib/Inflater;->nowrap:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    .line 623
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    return v4

    .line 626
    :cond_5
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0}, Lnet/sf/jazzlib/StreamManipulator;->skipToByteBoundary()V

    const/16 v0, 0x20

    .line 627
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    const/16 v0, 0xb

    .line 628
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    return v5

    .line 633
    :cond_6
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    if-gez v0, :cond_7

    return v4

    .line 637
    :cond_7
    iget-object v4, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v4, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_8

    .line 640
    iput-boolean v5, p0, Lnet/sf/jazzlib/Inflater;->isLastBlock:Z

    :cond_8
    shr-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_b

    if-eq v4, v5, :cond_a

    if-ne v4, v2, :cond_9

    .line 653
    new-instance v0, Lnet/sf/jazzlib/InflaterDynHeader;

    invoke-direct {v0}, Lnet/sf/jazzlib/InflaterDynHeader;-><init>()V

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->dynHeader:Lnet/sf/jazzlib/InflaterDynHeader;

    const/4 v0, 0x6

    .line 654
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    goto :goto_0

    .line 657
    :cond_9
    new-instance v1, Lnet/sf/jazzlib/DataFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown block type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_a
    sget-object v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->defLitLenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->litlenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 649
    sget-object v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->defDistTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->distTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 650
    iput v1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    goto :goto_0

    .line 644
    :cond_b
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0}, Lnet/sf/jazzlib/StreamManipulator;->skipToByteBoundary()V

    .line 645
    iput v3, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    :goto_0
    return v5

    .line 616
    :pswitch_8
    invoke-direct {p0}, Lnet/sf/jazzlib/Inflater;->decodeDict()Z

    move-result v0

    return v0

    .line 614
    :pswitch_9
    invoke-direct {p0}, Lnet/sf/jazzlib/Inflater;->decodeHeader()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeChksum()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 586
    :goto_0
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 587
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    if-gez v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v1, v2}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 592
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    .line 593
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    iget v2, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0xc

    .line 600
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    return v1

    .line 596
    :cond_2
    new-instance v0, Lnet/sf/jazzlib/DataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adler chksum doesn\'t match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    .line 597
    invoke-virtual {v2}, Lnet/sf/jazzlib/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    .line 598
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private decodeDict()Z
    .locals 3

    .line 481
    :goto_0
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 482
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    if-gez v0, :cond_0

    return v1

    .line 486
    :cond_0
    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v1, v2}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 487
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    .line 488
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    goto :goto_0

    :cond_1
    return v1
.end method

.method private decodeHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 446
    :cond_0
    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v2, v1}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    shl-int/lit8 v1, v0, 0x8

    shr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 450
    rem-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_3

    and-int/lit16 v1, v0, 0xf00

    const/16 v2, 0x800

    if-ne v1, v2, :cond_2

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 467
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    goto :goto_0

    .line 469
    :cond_1
    iput v2, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 470
    iput v1, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    :goto_0
    return v2

    .line 455
    :cond_2
    new-instance v0, Lnet/sf/jazzlib/DataFormatException;

    const-string v1, "Compression Method unknown"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_3
    new-instance v0, Lnet/sf/jazzlib/DataFormatException;

    const-string v1, "Header checksum illegal"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeHuffman()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    invoke-virtual {v0}, Lnet/sf/jazzlib/OutputWindow;->getFreeSpace()I

    move-result v0

    :goto_0
    const/16 v1, 0x102

    const/4 v2, 0x1

    if-lt v0, v1, :cond_9

    .line 505
    iget v3, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 508
    :cond_0
    :pswitch_0
    iget-object v3, p0, Lnet/sf/jazzlib/Inflater;->litlenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    iget-object v5, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v3, v5}, Lnet/sf/jazzlib/InflaterHuffmanTree;->getSymbol(Lnet/sf/jazzlib/StreamManipulator;)I

    move-result v3

    and-int/lit16 v5, v3, -0x100

    if-nez v5, :cond_1

    .line 509
    iget-object v5, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    invoke-virtual {v5, v3}, Lnet/sf/jazzlib/OutputWindow;->write(I)V

    add-int/lit8 v0, v0, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_1
    const/16 v1, 0x101

    if-ge v3, v1, :cond_3

    if-gez v3, :cond_2

    return v4

    :cond_2
    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->distTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 520
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->litlenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    const/4 v0, 0x2

    .line 521
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    return v2

    .line 527
    :cond_3
    :try_start_0
    sget-object v1, Lnet/sf/jazzlib/Inflater;->CPLENS:[I

    add-int/lit16 v3, v3, -0x101

    aget v1, v1, v3

    iput v1, p0, Lnet/sf/jazzlib/Inflater;->repLength:I

    .line 528
    sget-object v1, Lnet/sf/jazzlib/Inflater;->CPLEXT:[I

    aget v1, v1, v3

    iput v1, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 534
    :pswitch_1
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    if-lez v1, :cond_5

    const/16 v2, 0x8

    .line 535
    iput v2, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 536
    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v2, v1}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v1

    if-gez v1, :cond_4

    return v4

    .line 540
    :cond_4
    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    iget v3, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    invoke-virtual {v2, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 541
    iget v2, p0, Lnet/sf/jazzlib/Inflater;->repLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/sf/jazzlib/Inflater;->repLength:I

    :cond_5
    const/16 v1, 0x9

    .line 543
    iput v1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 546
    :pswitch_2
    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->distTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v1, v2}, Lnet/sf/jazzlib/InflaterHuffmanTree;->getSymbol(Lnet/sf/jazzlib/StreamManipulator;)I

    move-result v1

    if-gez v1, :cond_6

    return v4

    .line 551
    :cond_6
    :try_start_1
    sget-object v2, Lnet/sf/jazzlib/Inflater;->CPDIST:[I

    aget v2, v2, v1

    iput v2, p0, Lnet/sf/jazzlib/Inflater;->repDist:I

    .line 552
    sget-object v2, Lnet/sf/jazzlib/Inflater;->CPDEXT:[I

    aget v1, v2, v1

    iput v1, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    :pswitch_3
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    if-lez v1, :cond_8

    const/16 v2, 0xa

    .line 559
    iput v2, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 560
    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v2, v1}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v1

    if-gez v1, :cond_7

    return v4

    .line 564
    :cond_7
    iget-object v2, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    iget v3, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    invoke-virtual {v2, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 565
    iget v2, p0, Lnet/sf/jazzlib/Inflater;->repDist:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/sf/jazzlib/Inflater;->repDist:I

    .line 567
    :cond_8
    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    iget v2, p0, Lnet/sf/jazzlib/Inflater;->repLength:I

    iget v3, p0, Lnet/sf/jazzlib/Inflater;->repDist:I

    invoke-virtual {v1, v2, v3}, Lnet/sf/jazzlib/OutputWindow;->repeat(II)V

    .line 568
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->repLength:I

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    .line 569
    iput v1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    goto/16 :goto_0

    .line 554
    :catch_0
    new-instance v0, Lnet/sf/jazzlib/DataFormatException;

    const-string v1, "Illegal rep dist code"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :catch_1
    new-instance v0, Lnet/sf/jazzlib/DataFormatException;

    const-string v1, "Illegal rep length code"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public end()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    .line 192
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    .line 193
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->dynHeader:Lnet/sf/jazzlib/InflaterDynHeader;

    .line 194
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->litlenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 195
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->distTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 196
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    return-void
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public finished()Z
    .locals 2

    .line 204
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    invoke-virtual {v0}, Lnet/sf/jazzlib/OutputWindow;->getAvailable()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdler()I
    .locals 2

    .line 216
    invoke-virtual {p0}, Lnet/sf/jazzlib/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getRemaining()I
    .locals 1

    .line 227
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0}, Lnet/sf/jazzlib/StreamManipulator;->getAvailableBytes()I

    move-result v0

    return v0
.end method

.method public getTotalIn()I
    .locals 2

    .line 236
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->totalIn:I

    invoke-virtual {p0}, Lnet/sf/jazzlib/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTotalOut()I
    .locals 1

    .line 245
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->totalOut:I

    return v0
.end method

.method public inflate([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 263
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/jazzlib/Inflater;->inflate([BII)I

    move-result p1

    return p1
.end method

.method public inflate([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-ltz p2, :cond_4

    add-int v1, p2, p3

    if-gt p2, v1, :cond_4

    .line 291
    array-length v2, p1

    if-gt v1, v2, :cond_4

    .line 297
    :cond_1
    iget v1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    .line 305
    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    invoke-virtual {v1, p1, p2, p3}, Lnet/sf/jazzlib/OutputWindow;->copyOutput([BII)I

    move-result v1

    .line 306
    iget-object v3, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v3, p1, p2, v1}, Lnet/sf/jazzlib/Adler32;->update([BII)V

    add-int/2addr p2, v1

    add-int/2addr v0, v1

    .line 309
    iget v3, p0, Lnet/sf/jazzlib/Inflater;->totalOut:I

    add-int/2addr v3, v1

    iput v3, p0, Lnet/sf/jazzlib/Inflater;->totalOut:I

    sub-int/2addr p3, v1

    if-nez p3, :cond_2

    return v0

    .line 315
    :cond_2
    invoke-direct {p0}, Lnet/sf/jazzlib/Inflater;->decode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    .line 316
    invoke-virtual {v1}, Lnet/sf/jazzlib/OutputWindow;->getAvailable()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    if-ne v1, v2, :cond_1

    :cond_3
    return v0

    .line 292
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public needsDictionary()Z
    .locals 2

    .line 324
    iget v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/sf/jazzlib/Inflater;->neededBits:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needsInput()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0}, Lnet/sf/jazzlib/StreamManipulator;->needsInput()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .line 342
    iget-boolean v0, p0, Lnet/sf/jazzlib/Inflater;->nowrap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    .line 343
    iput v1, p0, Lnet/sf/jazzlib/Inflater;->totalOut:I

    iput v1, p0, Lnet/sf/jazzlib/Inflater;->totalIn:I

    .line 344
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0}, Lnet/sf/jazzlib/StreamManipulator;->reset()V

    .line 345
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    invoke-virtual {v0}, Lnet/sf/jazzlib/OutputWindow;->reset()V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->dynHeader:Lnet/sf/jazzlib/InflaterDynHeader;

    .line 347
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->litlenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 348
    iput-object v0, p0, Lnet/sf/jazzlib/Inflater;->distTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    .line 349
    iput-boolean v1, p0, Lnet/sf/jazzlib/Inflater;->isLastBlock:Z

    .line 350
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->reset()V

    return-void
.end method

.method public setDictionary([B)V
    .locals 2

    .line 367
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/jazzlib/Inflater;->setDictionary([BII)V

    return-void
.end method

.method public setDictionary([BII)V
    .locals 2

    .line 390
    invoke-virtual {p0}, Lnet/sf/jazzlib/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/Adler32;->update([BII)V

    .line 395
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    iget v0, p0, Lnet/sf/jazzlib/Inflater;->readAdler:I

    if-ne v1, v0, :cond_0

    .line 398
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->adler:Lnet/sf/jazzlib/Adler32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Adler32;->reset()V

    .line 399
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->outputWindow:Lnet/sf/jazzlib/OutputWindow;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/OutputWindow;->copyDict([BII)V

    const/4 p1, 0x2

    .line 400
    iput p1, p0, Lnet/sf/jazzlib/Inflater;->mode:I

    return-void

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong adler checksum"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setInput([B)V
    .locals 2

    .line 412
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/jazzlib/Inflater;->setInput([BII)V

    return-void
.end method

.method public setInput([BII)V
    .locals 1

    .line 430
    iget-object v0, p0, Lnet/sf/jazzlib/Inflater;->input:Lnet/sf/jazzlib/StreamManipulator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/StreamManipulator;->setInput([BII)V

    .line 431
    iget p1, p0, Lnet/sf/jazzlib/Inflater;->totalIn:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/sf/jazzlib/Inflater;->totalIn:I

    return-void
.end method
