.class Lnet/sf/jazzlib/DeflaterHuffman$Tree;
.super Ljava/lang/Object;
.source "DeflaterHuffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/jazzlib/DeflaterHuffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Tree"
.end annotation


# instance fields
.field bl_counts:[I

.field codes:[S

.field freqs:[S

.field length:[B

.field maxLength:I

.field minNumCodes:I

.field numCodes:I

.field final synthetic this$0:Lnet/sf/jazzlib/DeflaterHuffman;


# direct methods
.method constructor <init>(Lnet/sf/jazzlib/DeflaterHuffman;III)V
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->this$0:Lnet/sf/jazzlib/DeflaterHuffman;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->minNumCodes:I

    .line 73
    iput p4, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->maxLength:I

    .line 74
    new-array p1, p2, [S

    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    .line 75
    new-array p1, p4, [I

    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->bl_counts:[I

    return-void
.end method

.method private buildLength([I)V
    .locals 9

    .line 149
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    .line 150
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 151
    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 154
    :goto_0
    iget v4, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->maxLength:I

    if-ge v3, v4, :cond_0

    .line 155
    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->bl_counts:[I

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-array v3, v0, [I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 160
    aput v2, v3, v0

    :goto_1
    const/4 v5, -0x1

    if-ltz v0, :cond_3

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v7, v6, 0x1

    .line 162
    aget v8, p1, v7

    if-eq v8, v5, :cond_2

    .line 163
    aget v5, v3, v0

    add-int/2addr v5, v4

    .line 164
    iget v8, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->maxLength:I

    if-le v5, v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v5, v8

    .line 168
    :cond_1
    aget v6, p1, v6

    aget v7, p1, v7

    aput v5, v3, v7

    aput v5, v3, v6

    goto :goto_2

    .line 171
    :cond_2
    aget v5, v3, v0

    .line 172
    iget-object v7, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->bl_counts:[I

    sub-int/2addr v5, v4

    aget v8, v7, v5

    add-int/2addr v8, v4

    aput v8, v7, v5

    .line 173
    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget v6, p1, v6

    aget v7, v3, v0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 190
    :cond_4
    iget v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->maxLength:I

    sub-int/2addr v0, v4

    .line 193
    :cond_5
    :goto_3
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->bl_counts:[I

    add-int/2addr v0, v5

    aget v3, v3, v0

    if-nez v3, :cond_6

    goto :goto_3

    .line 202
    :cond_6
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->bl_counts:[I

    aget v6, v3, v0

    sub-int/2addr v6, v4

    aput v6, v3, v0

    add-int/2addr v0, v4

    .line 203
    aget v6, v3, v0

    add-int/2addr v6, v4

    aput v6, v3, v0

    .line 204
    iget v6, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->maxLength:I

    add-int/lit8 v7, v6, -0x1

    sub-int/2addr v7, v0

    shl-int v7, v4, v7

    sub-int/2addr v2, v7

    if-lez v2, :cond_7

    add-int/lit8 v7, v6, -0x1

    if-lt v0, v7, :cond_6

    :cond_7
    if-gtz v2, :cond_5

    add-int/lit8 v0, v6, -0x1

    .line 212
    aget v4, v3, v0

    add-int/2addr v4, v2

    aput v4, v3, v0

    add-int/lit8 v0, v6, -0x2

    .line 213
    aget v4, v3, v0

    sub-int/2addr v4, v2

    aput v4, v3, v0

    mul-int/lit8 v1, v1, 0x2

    :goto_4
    if-eqz v6, :cond_a

    .line 226
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->bl_counts:[I

    add-int/lit8 v2, v6, -0x1

    aget v0, v0, v2

    :goto_5
    if-lez v0, :cond_9

    add-int/lit8 v2, v1, 0x1

    .line 228
    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    .line 229
    aget v3, p1, v3

    if-ne v3, v5, :cond_8

    .line 231
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget v1, p1, v1

    int-to-byte v4, v6

    aput-byte v4, v3, v1

    add-int/lit8 v0, v0, -0x1

    :cond_8
    move v1, v2

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_a
    return-void
.end method


# virtual methods
.method public buildCodes()V
    .locals 6

    .line 114
    iget v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->maxLength:I

    new-array v0, v0, [I

    .line 116
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->codes:[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    :goto_0
    iget v4, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->maxLength:I

    if-ge v2, v4, :cond_0

    .line 122
    aput v3, v0, v2

    .line 123
    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->bl_counts:[I

    aget v4, v4, v2

    rsub-int/lit8 v5, v2, 0xf

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    :goto_1
    iget v2, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    if-ge v1, v2, :cond_2

    .line 135
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget-byte v2, v2, v1

    if-lez v2, :cond_1

    .line 142
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->codes:[S

    add-int/lit8 v4, v2, -0x1

    aget v5, v0, v4

    invoke-static {v5}, Lnet/sf/jazzlib/DeflaterHuffman;->bitReverse(I)S

    move-result v5

    aput-short v5, v3, v1

    .line 143
    aget v3, v0, v4

    rsub-int/lit8 v2, v2, 0x10

    const/4 v5, 0x1

    shl-int v2, v5, v2

    add-int/2addr v3, v2

    aput v3, v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method buildTree()V
    .locals 18

    move-object/from16 v0, p0

    .line 247
    iget-object v1, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    array-length v1, v1

    .line 258
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ge v4, v1, :cond_2

    .line 262
    iget-object v8, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v8, v8, v4

    if-eqz v8, :cond_1

    add-int/lit8 v6, v5, 0x1

    :goto_1
    if-lez v5, :cond_0

    .line 267
    iget-object v9, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    add-int/lit8 v10, v5, -0x1

    div-int/2addr v10, v7

    aget v11, v2, v10

    aget-short v9, v9, v11

    if-le v9, v8, :cond_0

    .line 269
    aget v9, v2, v10

    aput v9, v2, v5

    move v5, v10

    goto :goto_1

    .line 272
    :cond_0
    aput v4, v2, v5

    move v5, v6

    move v6, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v5, v7, :cond_4

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    move v1, v6

    goto :goto_3

    :cond_3
    move v1, v6

    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v4, v5, 0x1

    .line 285
    aput v6, v2, v5

    move v6, v1

    move v5, v4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    add-int/2addr v6, v1

    .line 288
    iget v4, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->minNumCodes:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    mul-int/lit8 v4, v5, 0x4

    sub-int/2addr v4, v7

    .line 291
    new-array v6, v4, [I

    mul-int/lit8 v8, v5, 0x2

    sub-int/2addr v8, v1

    .line 292
    new-array v8, v8, [I

    const/4 v9, 0x0

    :goto_4
    const/4 v10, -0x1

    if-ge v9, v5, :cond_5

    .line 295
    aget v11, v2, v9

    mul-int/lit8 v12, v9, 0x2

    .line 296
    aput v11, v6, v12

    add-int/2addr v12, v1

    .line 297
    aput v10, v6, v12

    .line 298
    iget-object v10, v0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v10, v10, v11

    shl-int/lit8 v10, v10, 0x8

    aput v10, v8, v9

    .line 299
    aput v9, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    move v9, v5

    .line 307
    :goto_5
    aget v11, v2, v3

    add-int/2addr v5, v10

    .line 308
    aget v12, v2, v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_6
    if-ge v13, v5, :cond_7

    add-int/lit8 v15, v13, 0x1

    if-ge v15, v5, :cond_6

    .line 314
    aget v16, v2, v13

    aget v10, v8, v16

    aget v16, v2, v15

    aget v3, v8, v16

    if-le v10, v3, :cond_6

    move v13, v15

    .line 319
    :cond_6
    aget v3, v2, v13

    aput v3, v2, v14

    mul-int/lit8 v3, v13, 0x2

    add-int/2addr v3, v1

    move v14, v13

    const/4 v10, -0x1

    move v13, v3

    const/4 v3, 0x0

    goto :goto_6

    .line 328
    :cond_7
    aget v3, v8, v12

    :goto_7
    if-lez v14, :cond_8

    add-int/lit8 v10, v14, -0x1

    .line 329
    div-int/2addr v10, v7

    aget v13, v2, v10

    aget v13, v8, v13

    if-le v13, v3, :cond_8

    .line 331
    aget v13, v2, v10

    aput v13, v2, v14

    move v14, v10

    goto :goto_7

    .line 333
    :cond_8
    aput v12, v2, v14

    const/4 v3, 0x0

    .line 335
    aget v10, v2, v3

    add-int/lit8 v3, v9, 0x1

    mul-int/lit8 v12, v9, 0x2

    .line 339
    aput v11, v6, v12

    add-int/2addr v12, v1

    .line 340
    aput v10, v6, v12

    .line 341
    aget v12, v8, v11

    and-int/lit16 v12, v12, 0xff

    aget v13, v8, v10

    and-int/lit16 v13, v13, 0xff

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 343
    aget v11, v8, v11

    aget v10, v8, v10

    add-int/2addr v11, v10

    sub-int/2addr v11, v12

    add-int/2addr v11, v1

    aput v11, v8, v9

    const/4 v10, 0x0

    const/4 v12, 0x1

    :goto_8
    if-ge v12, v5, :cond_a

    add-int/lit8 v13, v12, 0x1

    if-ge v13, v5, :cond_9

    .line 349
    aget v14, v2, v12

    aget v14, v8, v14

    aget v15, v2, v13

    aget v15, v8, v15

    if-le v14, v15, :cond_9

    move v12, v13

    .line 354
    :cond_9
    aget v13, v2, v12

    aput v13, v2, v10

    mul-int/lit8 v10, v12, 0x2

    add-int/2addr v10, v1

    move/from16 v17, v12

    move v12, v10

    move/from16 v10, v17

    goto :goto_8

    :cond_a
    :goto_9
    if-lez v10, :cond_b

    add-int/lit8 v12, v10, -0x1

    .line 360
    div-int/2addr v12, v7

    aget v13, v2, v12

    aget v13, v8, v13

    if-le v13, v11, :cond_b

    .line 362
    aget v13, v2, v12

    aput v13, v2, v10

    move v10, v12

    goto :goto_9

    .line 364
    :cond_b
    aput v9, v2, v10

    if-gt v5, v1, :cond_d

    const/4 v9, 0x0

    .line 367
    aget v2, v2, v9

    div-int/2addr v4, v7

    sub-int/2addr v4, v1

    if-ne v2, v4, :cond_c

    .line 371
    invoke-direct {v0, v6}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->buildLength([I)V

    return-void

    .line 368
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Weird!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move v9, v3

    const/4 v3, 0x0

    const/4 v10, -0x1

    goto/16 :goto_5
.end method

.method calcBLFreq(Lnet/sf/jazzlib/DeflaterHuffman$Tree;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 389
    :goto_0
    iget v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    if-ge v2, v3, :cond_7

    .line 391
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/16 v1, 0x8a

    goto :goto_1

    :cond_0
    const/4 v5, 0x6

    if-eq v1, v3, :cond_1

    .line 399
    iget-object v1, p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v6, v1, v3

    add-int/2addr v6, v4

    int-to-short v6, v6

    aput-short v6, v1, v3

    const/4 v1, 0x6

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x6

    :goto_1
    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 406
    :cond_2
    iget v7, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget-byte v7, v7, v2

    if-ne v3, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v1, :cond_2

    :cond_3
    if-ge v5, v6, :cond_4

    .line 414
    iget-object v1, p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v4, v1, v3

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v3

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 416
    iget-object v1, p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    const/16 v5, 0x10

    aget-short v6, v1, v5

    add-int/2addr v6, v4

    int-to-short v4, v6

    aput-short v4, v1, v5

    goto :goto_3

    :cond_5
    const/16 v1, 0xa

    if-gt v5, v1, :cond_6

    .line 418
    iget-object v1, p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    const/16 v5, 0x11

    aget-short v6, v1, v5

    add-int/2addr v6, v4

    int-to-short v4, v6

    aput-short v4, v1, v5

    goto :goto_3

    .line 420
    :cond_6
    iget-object v1, p1, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    const/16 v5, 0x12

    aget-short v6, v1, v5

    add-int/2addr v6, v4

    int-to-short v4, v6

    aput-short v4, v1, v5

    :goto_3
    move v1, v3

    goto :goto_0

    :cond_7
    return-void
.end method

.method final checkEmpty()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    :goto_0
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 97
    aget-short v3, v3, v2

    if-eqz v3, :cond_0

    .line 98
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freqs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    aget-short v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "checkEmpty suceeded!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method getEncodedLength()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 376
    :goto_0
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 377
    aget-short v2, v2, v0

    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget-byte v3, v3, v0

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method reset()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->freqs:[S

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 80
    aput-short v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->codes:[S

    .line 83
    iput-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    return-void
.end method

.method setStaticCodes([S[B)V
    .locals 0

    .line 109
    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->codes:[S

    .line 110
    iput-object p2, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    return-void
.end method

.method final writeSymbol(I)V
    .locals 3

    .line 91
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->this$0:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v0, v0, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->codes:[S

    aget-short v1, v1, p1

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget-byte p1, v2, p1

    invoke-virtual {v0, v1, p1}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    return-void
.end method

.method writeTree(Lnet/sf/jazzlib/DeflaterHuffman$Tree;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 432
    :goto_0
    iget v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    if-ge v2, v3, :cond_8

    .line 434
    iget-object v3, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/16 v1, 0x8a

    goto :goto_1

    :cond_0
    const/4 v5, 0x6

    if-eq v1, v3, :cond_1

    .line 442
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    const/4 v1, 0x6

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 449
    :cond_2
    iget v5, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->numCodes:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->length:[B

    aget-byte v5, v5, v2

    if-ne v3, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v1, :cond_2

    :cond_3
    const/4 v1, 0x3

    if-ge v4, v1, :cond_4

    :goto_2
    add-int/lit8 v1, v4, -0x1

    if-lez v4, :cond_7

    .line 458
    invoke-virtual {p1, v3}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    move v4, v1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    const/16 v1, 0x10

    .line 461
    invoke-virtual {p1, v1}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    .line 462
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->this$0:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v1, v1, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    add-int/lit8 v4, v4, -0x3

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    goto :goto_3

    :cond_5
    const/16 v5, 0xa

    if-gt v4, v5, :cond_6

    const/16 v5, 0x11

    .line 464
    invoke-virtual {p1, v5}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    .line 465
    iget-object v5, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->this$0:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v5, v5, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v5, v4, v1}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    goto :goto_3

    :cond_6
    const/16 v1, 0x12

    .line 467
    invoke-virtual {p1, v1}, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->writeSymbol(I)V

    .line 468
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterHuffman$Tree;->this$0:Lnet/sf/jazzlib/DeflaterHuffman;

    iget-object v1, v1, Lnet/sf/jazzlib/DeflaterHuffman;->pending:Lnet/sf/jazzlib/DeflaterPending;

    add-int/lit8 v4, v4, -0xb

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    :cond_7
    :goto_3
    move v1, v3

    goto :goto_0

    :cond_8
    return-void
.end method
