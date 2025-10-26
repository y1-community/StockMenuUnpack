.class Lnet/sf/jazzlib/InflaterDynHeader;
.super Ljava/lang/Object;
.source "InflaterDynHeader.java"


# static fields
.field private static final BLLENS:I = 0x3

.field private static final BLNUM:I = 0x2

.field private static final BL_ORDER:[I

.field private static final DNUM:I = 0x1

.field private static final LENS:I = 0x4

.field private static final LNUM:I = 0x0

.field private static final REPS:I = 0x5

.field private static final repBits:[I

.field private static final repMin:[I


# instance fields
.field private blLens:[B

.field private blTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

.field private blnum:I

.field private dnum:I

.field private lastLen:B

.field private litdistLens:[B

.field private lnum:I

.field private mode:I

.field private num:I

.field private ptr:I

.field private repSymbol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 48
    fill-array-data v1, :array_0

    sput-object v1, Lnet/sf/jazzlib/InflaterDynHeader;->repMin:[I

    new-array v0, v0, [I

    .line 49
    fill-array-data v0, :array_1

    sput-object v0, Lnet/sf/jazzlib/InflaterDynHeader;->repBits:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 62
    fill-array-data v0, :array_2

    sput-object v0, Lnet/sf/jazzlib/InflaterDynHeader;->BL_ORDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x7
    .end array-data

    :array_2
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

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDistTree()Lnet/sf/jazzlib/InflaterHuffmanTree;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 191
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->dnum:I

    new-array v1, v0, [B

    .line 192
    iget-object v2, p0, Lnet/sf/jazzlib/InflaterDynHeader;->litdistLens:[B

    iget v3, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lnum:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    new-instance v0, Lnet/sf/jazzlib/InflaterHuffmanTree;

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/InflaterHuffmanTree;-><init>([B)V

    return-object v0
.end method

.method public buildLitLenTree()Lnet/sf/jazzlib/InflaterHuffmanTree;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lnum:I

    new-array v1, v0, [B

    .line 186
    iget-object v2, p0, Lnet/sf/jazzlib/InflaterDynHeader;->litdistLens:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    new-instance v0, Lnet/sf/jazzlib/InflaterHuffmanTree;

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/InflaterHuffmanTree;-><init>([B)V

    return-object v0
.end method

.method public decode(Lnet/sf/jazzlib/StreamManipulator;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 71
    :goto_0
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_6

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_d

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lnum:I

    if-gez v0, :cond_1

    return v6

    :cond_1
    add-int/lit16 v0, v0, 0x101

    .line 77
    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lnum:I

    .line 78
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 80
    iput v5, p0, Lnet/sf/jazzlib/InflaterDynHeader;->mode:I

    .line 83
    :cond_2
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->dnum:I

    if-gez v0, :cond_3

    return v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 87
    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->dnum:I

    .line 88
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 90
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lnum:I

    iget v7, p0, Lnet/sf/jazzlib/InflaterDynHeader;->dnum:I

    add-int/2addr v0, v7

    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->num:I

    .line 91
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->litdistLens:[B

    .line 92
    iput v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->mode:I

    .line 95
    :cond_4
    invoke-virtual {p1, v4}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blnum:I

    if-gez v0, :cond_5

    return v6

    :cond_5
    add-int/lit8 v0, v0, 0x4

    .line 99
    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blnum:I

    .line 100
    invoke-virtual {p1, v4}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    const/16 v0, 0x13

    new-array v0, v0, [B

    .line 101
    iput-object v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blLens:[B

    .line 102
    iput v6, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    .line 104
    iput v2, p0, Lnet/sf/jazzlib/InflaterDynHeader;->mode:I

    .line 107
    :cond_6
    :goto_1
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    iget v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blnum:I

    if-ge v0, v1, :cond_8

    .line 108
    invoke-virtual {p1, v2}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    if-gez v0, :cond_7

    return v6

    .line 112
    :cond_7
    invoke-virtual {p1, v2}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 114
    iget-object v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blLens:[B

    sget-object v7, Lnet/sf/jazzlib/InflaterDynHeader;->BL_ORDER:[I

    iget v8, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    aget v7, v7, v8

    int-to-byte v0, v0

    aput-byte v0, v1, v7

    add-int/2addr v8, v5

    .line 115
    iput v8, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    goto :goto_1

    .line 117
    :cond_8
    new-instance v0, Lnet/sf/jazzlib/InflaterHuffmanTree;

    iget-object v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blLens:[B

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/InflaterHuffmanTree;-><init>([B)V

    iput-object v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blLens:[B

    .line 119
    iput v6, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    .line 120
    iput v4, p0, Lnet/sf/jazzlib/InflaterDynHeader;->mode:I

    .line 124
    :cond_9
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->blTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    invoke-virtual {v0, p1}, Lnet/sf/jazzlib/InflaterHuffmanTree;->getSymbol(Lnet/sf/jazzlib/StreamManipulator;)I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_a

    .line 128
    iget-object v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->litdistLens:[B

    iget v2, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lastLen:B

    aput-byte v0, v1, v2

    .line 130
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->num:I

    if-ne v7, v0, :cond_9

    return v5

    :cond_a
    if-gez v0, :cond_b

    return v6

    :cond_b
    const/16 v1, 0x11

    if-lt v0, v1, :cond_c

    .line 145
    iput-byte v6, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lastLen:B

    goto :goto_2

    .line 147
    :cond_c
    iget v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    if-eqz v1, :cond_12

    :goto_2
    add-int/lit8 v0, v0, -0x10

    .line 151
    iput v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->repSymbol:I

    .line 152
    iput v3, p0, Lnet/sf/jazzlib/InflaterDynHeader;->mode:I

    .line 157
    :cond_d
    sget-object v0, Lnet/sf/jazzlib/InflaterDynHeader;->repBits:[I

    iget v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->repSymbol:I

    aget v0, v0, v1

    .line 158
    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v1

    if-gez v1, :cond_e

    return v6

    .line 162
    :cond_e
    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    .line 163
    sget-object v0, Lnet/sf/jazzlib/InflaterDynHeader;->repMin:[I

    iget v2, p0, Lnet/sf/jazzlib/InflaterDynHeader;->repSymbol:I

    aget v0, v0, v2

    add-int/2addr v1, v0

    .line 166
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    add-int/2addr v0, v1

    iget v2, p0, Lnet/sf/jazzlib/InflaterDynHeader;->num:I

    if-gt v0, v2, :cond_11

    :goto_3
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_f

    .line 170
    iget-object v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->litdistLens:[B

    iget v2, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    iget-byte v3, p0, Lnet/sf/jazzlib/InflaterDynHeader;->lastLen:B

    aput-byte v3, v1, v2

    move v1, v0

    goto :goto_3

    .line 173
    :cond_f
    iget v0, p0, Lnet/sf/jazzlib/InflaterDynHeader;->ptr:I

    iget v1, p0, Lnet/sf/jazzlib/InflaterDynHeader;->num:I

    if-ne v0, v1, :cond_10

    return v5

    .line 178
    :cond_10
    iput v4, p0, Lnet/sf/jazzlib/InflaterDynHeader;->mode:I

    goto/16 :goto_0

    .line 167
    :cond_11
    new-instance p1, Lnet/sf/jazzlib/DataFormatException;

    invoke-direct {p1}, Lnet/sf/jazzlib/DataFormatException;-><init>()V

    throw p1

    .line 148
    :cond_12
    new-instance p1, Lnet/sf/jazzlib/DataFormatException;

    invoke-direct {p1}, Lnet/sf/jazzlib/DataFormatException;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
