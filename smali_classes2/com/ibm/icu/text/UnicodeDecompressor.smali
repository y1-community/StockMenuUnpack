.class public final Lcom/ibm/icu/text/UnicodeDecompressor;
.super Ljava/lang/Object;
.source "UnicodeDecompressor.java"

# interfaces
.implements Lcom/ibm/icu/text/SCSU;


# static fields
.field private static final BUFSIZE:I = 0x3


# instance fields
.field private fBuffer:[B

.field private fBufferLength:I

.field private fCurrentWindow:I

.field private fMode:I

.field private fOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 84
    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    .line 87
    iput v0, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fMode:I

    const/4 v1, 0x3

    new-array v1, v1, [B

    .line 93
    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    .line 96
    iput v0, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 106
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeDecompressor;->reset()V

    return-void
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 2

    .line 117
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ibm/icu/text/UnicodeDecompressor;->decompress([BII)[C

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static decompress([BII)[C
    .locals 9

    .line 131
    new-instance v0, Lcom/ibm/icu/text/UnicodeDecompressor;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeDecompressor;-><init>()V

    sub-int v1, p2, p1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    .line 136
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 137
    new-array v8, v7, [C

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v8

    .line 139
    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result p0

    .line 142
    new-array p1, p0, [C

    const/4 p2, 0x0

    .line 143
    invoke-static {v8, p2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method public decompress([BII[I[CII)I
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    move/from16 v13, p7

    .line 186
    array-length v0, v12

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    sub-int v0, v13, p6

    if-lt v0, v1, :cond_13

    .line 191
    iget v0, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    const/4 v14, 0x0

    if-lez v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 197
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    sub-int v3, v11, v10

    if-ge v3, v2, :cond_0

    move v2, v3

    .line 203
    :cond_0
    invoke-static {v9, v10, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v15, v2

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 208
    :goto_0
    iput v14, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 211
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result v0

    add-int v0, p6, v0

    add-int v1, v10, v15

    goto :goto_1

    :cond_2
    move/from16 v0, p6

    move v1, v10

    :cond_3
    :goto_1
    if-ge v1, v11, :cond_11

    if-ge v0, v13, :cond_11

    .line 223
    iget v2, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fMode:I

    const/high16 v3, 0x10000

    const/16 v4, 0x80

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v1, v11, :cond_3

    if-ge v0, v13, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 432
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    if-lt v2, v11, :cond_8

    add-int/lit8 v2, v2, -0x1

    .line 511
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v11, :cond_5

    add-int/lit8 v2, v2, -0x1

    .line 462
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_7

    .line 470
    :cond_5
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v5, v2, 0xe0

    shr-int/lit8 v5, v5, 0x5

    .line 471
    iput v5, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 472
    iget-object v6, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v1, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x80

    add-int/2addr v1, v3

    aput v1, v6, v5

    .line 475
    iput v14, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fMode:I

    move v1, v7

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v11, -0x1

    if-lt v2, v1, :cond_6

    add-int/lit8 v2, v2, -0x1

    .line 493
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_7

    :cond_6
    add-int/lit8 v1, v2, 0x1

    .line 501
    aget-byte v2, v9, v2

    add-int/lit8 v5, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, v1, 0x1

    .line 502
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v12, v0

    :goto_3
    move v0, v5

    move v1, v6

    goto :goto_2

    :pswitch_2
    if-lt v2, v11, :cond_7

    add-int/lit8 v2, v2, -0x1

    .line 441
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_7

    :cond_7
    add-int/lit16 v1, v1, -0xe8

    .line 449
    iput v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 450
    iget-object v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    sget-object v4, Lcom/ibm/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v4, v2

    aput v2, v3, v1

    .line 452
    iput v14, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fMode:I

    move v1, v5

    goto/16 :goto_1

    :pswitch_3
    add-int/lit16 v1, v1, -0xe0

    .line 482
    iput v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 483
    iput v14, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fMode:I

    goto/16 :goto_6

    :cond_8
    add-int/lit8 v5, v0, 0x1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, v2, 0x1

    .line 519
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v12, v0

    goto :goto_3

    :cond_9
    :goto_4
    if-ge v1, v11, :cond_3

    if-ge v0, v13, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 228
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_9

    .line 262
    :pswitch_5
    iget-object v6, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v7, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v15, v6, v7

    const v5, 0xffff

    if-gt v15, v5, :cond_a

    add-int/lit8 v5, v0, 0x1

    .line 263
    aget v6, v6, v7

    add-int/2addr v1, v6

    sub-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v12, v0

    move v1, v2

    move v0, v5

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v0, 0x1

    if-lt v5, v13, :cond_b

    add-int/lit8 v2, v2, -0x1

    .line 277
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_7

    .line 285
    :cond_b
    aget v6, v6, v7

    sub-int/2addr v6, v3

    const v7, 0xd800

    shr-int/lit8 v15, v6, 0xa

    add-int/2addr v15, v7

    int-to-char v7, v15

    .line 287
    aput-char v7, v12, v0

    add-int/lit8 v0, v5, 0x1

    const v7, 0xdc00

    and-int/lit16 v6, v6, 0x3ff

    add-int/2addr v6, v7

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v6, v1

    int-to-char v1, v6

    .line 289
    aput-char v1, v12, v5

    move v1, v2

    goto :goto_5

    :pswitch_6
    if-lt v2, v11, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 386
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v1, v1, -0x18

    .line 394
    iput v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 395
    iget-object v5, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    sget-object v6, Lcom/ibm/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    aput v2, v5, v1

    move v1, v7

    :goto_5
    const/4 v5, 0x1

    goto :goto_4

    :pswitch_7
    add-int/lit8 v1, v1, -0x10

    .line 376
    iput v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    const/4 v5, 0x1

    goto/16 :goto_9

    .line 344
    :pswitch_8
    iput v5, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fMode:I

    :goto_6
    move v1, v2

    goto/16 :goto_1

    :pswitch_9
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v11, :cond_d

    add-int/lit8 v2, v2, -0x1

    .line 329
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto :goto_7

    .line 337
    :cond_d
    aget-byte v2, v9, v2

    add-int/lit8 v6, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v1, 0x1

    .line 338
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v12, v0

    move v0, v6

    move v1, v7

    goto/16 :goto_4

    :pswitch_a
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v11, :cond_e

    add-int/lit8 v2, v2, -0x1

    .line 405
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto :goto_7

    .line 413
    :cond_e
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v6, v2, 0xe0

    shr-int/lit8 v6, v6, 0x5

    .line 414
    iput v6, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 415
    iget-object v7, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v15, v1, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x80

    add-int/2addr v1, v3

    aput v1, v7, v6

    move v1, v15

    goto/16 :goto_4

    :pswitch_b
    if-lt v2, v11, :cond_f

    add-int/lit8 v2, v2, -0x1

    .line 355
    iget-object v1, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iput v3, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    :goto_7
    add-int v1, v2, v3

    goto :goto_a

    :cond_f
    add-int/lit8 v6, v2, 0x1

    .line 365
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, v0, 0x1

    if-ltz v2, :cond_10

    if-ge v2, v4, :cond_10

    .line 366
    sget-object v15, Lcom/ibm/icu/text/UnicodeDecompressor;->sOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v15, v1

    goto :goto_8

    :cond_10
    iget-object v15, v8, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v15, v1

    sub-int/2addr v1, v4

    :goto_8
    add-int/2addr v2, v1

    int-to-char v1, v2

    aput-char v1, v12, v0

    move v1, v6

    move v0, v7

    goto/16 :goto_4

    :pswitch_c
    add-int/lit8 v6, v0, 0x1

    int-to-char v1, v1

    .line 320
    aput-char v1, v12, v0

    move v1, v2

    move v0, v6

    goto/16 :goto_4

    :goto_9
    move v1, v2

    goto/16 :goto_4

    :cond_11
    :goto_a
    if-eqz p4, :cond_12

    sub-int/2addr v1, v10

    .line 532
    aput v1, p4, v14

    :cond_12
    sub-int v0, v0, p6

    return v0

    .line 187
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charBuffer.length < 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_4
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x80

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0xc0

    .line 546
    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x400

    .line 547
    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x600

    .line 548
    aput v3, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0x900

    .line 549
    aput v3, v0, v1

    const/4 v1, 0x5

    const/16 v3, 0x3040

    .line 550
    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x30a0

    .line 551
    aput v3, v0, v1

    const/4 v1, 0x7

    const v3, 0xff00

    .line 552
    aput v3, v0, v1

    .line 555
    iput v2, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 556
    iput v2, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fMode:I

    .line 557
    iput v2, p0, Lcom/ibm/icu/text/UnicodeDecompressor;->fBufferLength:I

    return-void
.end method
