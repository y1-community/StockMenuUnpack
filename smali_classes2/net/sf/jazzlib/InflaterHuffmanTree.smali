.class public Lnet/sf/jazzlib/InflaterHuffmanTree;
.super Ljava/lang/Object;
.source "InflaterHuffmanTree.java"


# static fields
.field private static final MAX_BITLEN:I = 0xf

.field public static defDistTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

.field public static defLitLenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;


# instance fields
.field private tree:[S


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x120

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x90

    const/16 v5, 0x8

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 51
    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v4, 0x100

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x9

    .line 54
    aput-byte v6, v1, v3

    move v3, v4

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v4, 0x118

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    const/4 v6, 0x7

    .line 57
    aput-byte v6, v1, v3

    move v3, v4

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 60
    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_3

    .line 62
    :cond_3
    new-instance v0, Lnet/sf/jazzlib/InflaterHuffmanTree;

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/InflaterHuffmanTree;-><init>([B)V

    sput-object v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->defLitLenTree:Lnet/sf/jazzlib/InflaterHuffmanTree;

    const/16 v0, 0x20

    new-array v1, v0, [B

    :goto_4
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x5

    .line 67
    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_4

    .line 69
    :cond_4
    new-instance v0, Lnet/sf/jazzlib/InflaterHuffmanTree;

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/InflaterHuffmanTree;-><init>([B)V

    sput-object v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->defDistTree:Lnet/sf/jazzlib/InflaterHuffmanTree;
    :try_end_0
    .catch Lnet/sf/jazzlib/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 71
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "InflaterHuffmanTree: static tree length illegal"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-direct {p0, p1}, Lnet/sf/jazzlib/InflaterHuffmanTree;->buildTree([B)V

    return-void
.end method

.method private buildTree([B)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    new-array v3, v2, [I

    new-array v2, v2, [I

    .line 90
    array-length v4, v1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_1

    aget-byte v8, v1, v6

    if-lez v8, :cond_0

    .line 93
    aget v9, v3, v8

    add-int/2addr v9, v7

    aput v9, v3, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x200

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x200

    :goto_1
    const/16 v10, 0xa

    const/16 v11, 0xf

    const v12, 0x1ff80

    if-gt v6, v11, :cond_3

    .line 100
    aput v8, v2, v6

    .line 101
    aget v11, v3, v6

    rsub-int/lit8 v13, v6, 0x10

    shl-int/2addr v11, v13

    add-int/2addr v8, v11

    if-lt v6, v10, :cond_2

    .line 104
    aget v10, v2, v6

    and-int/2addr v10, v12

    and-int v11, v8, v12

    sub-int/2addr v11, v10

    shr-int v10, v11, v13

    add-int/2addr v9, v10

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/high16 v6, 0x10000

    if-ne v8, v6, :cond_b

    .line 117
    new-array v6, v9, [S

    iput-object v6, v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    const/16 v6, 0x200

    :goto_2
    if-lt v11, v10, :cond_5

    and-int v9, v8, v12

    .line 121
    aget v13, v3, v11

    rsub-int/lit8 v14, v11, 0x10

    shl-int/2addr v13, v14

    sub-int/2addr v8, v13

    and-int v13, v8, v12

    :goto_3
    if-ge v13, v9, :cond_4

    .line 124
    iget-object v14, v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    invoke-static {v13}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v15

    neg-int v5, v6

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v11

    int-to-short v5, v5

    aput-short v5, v14, v15

    add-int/lit8 v5, v11, -0x9

    shl-int v5, v7, v5

    add-int/2addr v6, v5

    add-int/lit16 v13, v13, 0x80

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 129
    :goto_4
    array-length v3, v1

    if-ge v5, v3, :cond_a

    .line 130
    aget-byte v3, v1, v5

    if-nez v3, :cond_6

    goto :goto_6

    .line 134
    :cond_6
    aget v6, v2, v3

    .line 135
    invoke-static {v6}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v8

    const/16 v9, 0x9

    if-gt v3, v9, :cond_8

    .line 138
    :cond_7
    iget-object v9, v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    shl-int/lit8 v10, v5, 0x4

    or-int/2addr v10, v3

    int-to-short v10, v10

    aput-short v10, v9, v8

    shl-int v9, v7, v3

    add-int/2addr v8, v9

    if-lt v8, v4, :cond_7

    goto :goto_5

    .line 142
    :cond_8
    iget-object v9, v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    and-int/lit16 v10, v8, 0x1ff

    aget-short v9, v9, v10

    and-int/lit8 v10, v9, 0xf

    shl-int v10, v7, v10

    shr-int/lit8 v9, v9, 0x4

    neg-int v9, v9

    .line 146
    :cond_9
    iget-object v11, v0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    shr-int/lit8 v12, v8, 0x9

    or-int/2addr v12, v9

    shl-int/lit8 v13, v5, 0x4

    or-int/2addr v13, v3

    int-to-short v13, v13

    aput-short v13, v11, v12

    shl-int v11, v7, v3

    add-int/2addr v8, v11

    if-lt v8, v10, :cond_9

    :goto_5
    rsub-int/lit8 v8, v3, 0x10

    shl-int v8, v7, v8

    add-int/2addr v6, v8

    .line 150
    aput v6, v2, v3

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 110
    :cond_b
    new-instance v1, Lnet/sf/jazzlib/DataFormatException;

    const-string v2, "Code lengths don\'t add up properly."

    invoke-direct {v1, v2}, Lnet/sf/jazzlib/DataFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public getSymbol(Lnet/sf/jazzlib/StreamManipulator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/jazzlib/DataFormatException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 165
    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v1

    const/4 v2, -0x1

    if-ltz v1, :cond_3

    .line 166
    iget-object v3, p0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    aget-short v1, v3, v1

    if-ltz v1, :cond_0

    and-int/lit8 v0, v1, 0xf

    .line 167
    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    shr-int/lit8 p1, v1, 0x4

    return p1

    :cond_0
    shr-int/lit8 v3, v1, 0x4

    neg-int v3, v3

    and-int/lit8 v1, v1, 0xf

    .line 172
    invoke-virtual {p1, v1}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 173
    iget-object v2, p0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    shr-int/lit8 v0, v1, 0x9

    or-int/2addr v0, v3

    aget-short v0, v2, v0

    and-int/lit8 v1, v0, 0xf

    .line 174
    invoke-virtual {p1, v1}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    shr-int/lit8 p1, v0, 0x4

    return p1

    .line 177
    :cond_1
    invoke-virtual {p1}, Lnet/sf/jazzlib/StreamManipulator;->getAvailableBits()I

    move-result v1

    .line 178
    invoke-virtual {p1, v1}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v4

    .line 179
    iget-object v5, p0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    shr-int/lit8 v0, v4, 0x9

    or-int/2addr v0, v3

    aget-short v0, v5, v0

    and-int/lit8 v3, v0, 0xf

    if-gt v3, v1, :cond_2

    .line 181
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    shr-int/lit8 p1, v0, 0x4

    return p1

    :cond_2
    return v2

    .line 188
    :cond_3
    invoke-virtual {p1}, Lnet/sf/jazzlib/StreamManipulator;->getAvailableBits()I

    move-result v0

    .line 189
    invoke-virtual {p1, v0}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v1

    .line 190
    iget-object v3, p0, Lnet/sf/jazzlib/InflaterHuffmanTree;->tree:[S

    aget-short v1, v3, v1

    if-ltz v1, :cond_4

    and-int/lit8 v3, v1, 0xf

    if-gt v3, v0, :cond_4

    .line 192
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    shr-int/lit8 p1, v1, 0x4

    return p1

    :cond_4
    return v2
.end method
