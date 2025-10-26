.class final Lcom/ibm/icu/text/BidiWriter;
.super Ljava/lang/Object;
.source "BidiWriter.java"


# static fields
.field static final LRM_CHAR:C = '\u200e'

.field static final MASK_R_AL:I = 0x2002

.field static final RLM_CHAR:C = '\u200f'


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsCombining(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x1c0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static doWriteForward(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    and-int/lit8 p1, p1, 0xa

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 78
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 84
    :cond_0
    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 86
    invoke-static {v0}, Lcom/ibm/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    add-int/lit8 v0, v1, 0x1

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 71
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    move v1, v0

    goto :goto_0

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    :cond_6
    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 59
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_6

    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method private static doWriteForward([CIII)Ljava/lang/String;
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Lcom/ibm/icu/text/BidiWriter;->doWriteForward(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static doWriteReverse([CIII)Ljava/lang/String;
    .locals 1

    .line 235
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Lcom/ibm/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static writeReordered(Lcom/ibm/icu/text/Bidi;I)Ljava/lang/String;
    .locals 14

    .line 242
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->text:[C

    .line 243
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->countRuns()I

    move-result v1

    .line 249
    iget v2, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, -0x9

    .line 257
    :cond_0
    iget v2, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 p1, p1, 0x8

    and-int/lit8 p1, p1, -0x5

    .line 265
    :cond_1
    iget v2, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    and-int/lit8 p1, p1, -0x5

    .line 271
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    and-int/lit8 v3, p1, 0x4

    iget v4, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-eqz v3, :cond_3

    mul-int/lit8 v4, v4, 0x2

    :cond_3
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x2002

    const/16 v6, 0x200e

    const/16 v7, 0x200f

    if-nez v4, :cond_17

    const/4 v4, 0x0

    if-nez v3, :cond_5

    :goto_0
    if-ge v4, v1, :cond_1e

    .line 287
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/Bidi;->getVisualRun(I)Lcom/ibm/icu/text/BidiRun;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Lcom/ibm/icu/text/BidiRun;->isEvenRun()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    iget v5, v3, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v3, v3, Lcom/ibm/icu/text/BidiRun;->limit:I

    and-int/lit8 v6, p1, -0x3

    invoke-static {v0, v5, v3, v6}, Lcom/ibm/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 293
    :cond_4
    iget v5, v3, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v3, v3, Lcom/ibm/icu/text/BidiRun;->limit:I

    invoke-static {v0, v5, v3, p1}, Lcom/ibm/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_5
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_1e

    .line 304
    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/Bidi;->getVisualRun(I)Lcom/ibm/icu/text/BidiRun;

    move-result-object v9

    .line 307
    iget-object v10, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v10, v10, v8

    iget v10, v10, Lcom/ibm/icu/text/BidiRun;->insertRemove:I

    if-gez v10, :cond_6

    const/4 v10, 0x0

    .line 311
    :cond_6
    invoke-virtual {v9}, Lcom/ibm/icu/text/BidiRun;->isEvenRun()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 312
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v9, Lcom/ibm/icu/text/BidiRun;->start:I

    aget-byte v11, v3, v11

    if-eqz v11, :cond_7

    or-int/lit8 v10, v10, 0x1

    :cond_7
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_8

    const/16 v11, 0x200e

    goto :goto_3

    :cond_8
    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_9

    const/16 v11, 0x200f

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_a

    .line 324
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_a
    iget v11, v9, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v12, v9, Lcom/ibm/icu/text/BidiRun;->limit:I

    and-int/lit8 v13, p1, -0x3

    invoke-static {v0, v11, v12, v13}, Lcom/ibm/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_b

    iget v9, v9, Lcom/ibm/icu/text/BidiRun;->limit:I

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v3, v9

    if-eqz v9, :cond_b

    or-int/lit8 v10, v10, 0x2

    :cond_b
    and-int/lit8 v9, v10, 0x2

    if-eqz v9, :cond_c

    const/16 v9, 0x200e

    goto :goto_4

    :cond_c
    and-int/lit8 v9, v10, 0x8

    if-eqz v9, :cond_d

    const/16 v9, 0x200f

    goto :goto_4

    :cond_d
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_16

    .line 342
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 345
    :cond_e
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_f

    iget v11, v9, Lcom/ibm/icu/text/BidiRun;->limit:I

    add-int/lit8 v11, v11, -0x1

    .line 346
    invoke-virtual {p0, v5, v11}, Lcom/ibm/icu/text/Bidi;->testDirPropFlagAt(II)Z

    move-result v11

    if-nez v11, :cond_f

    or-int/lit8 v10, v10, 0x4

    :cond_f
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_10

    const/16 v11, 0x200e

    goto :goto_5

    :cond_10
    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_11

    const/16 v11, 0x200f

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_12

    .line 358
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_12
    iget v11, v9, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v12, v9, Lcom/ibm/icu/text/BidiRun;->limit:I

    invoke-static {v0, v11, v12, p1}, Lcom/ibm/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_13

    iget v9, v9, Lcom/ibm/icu/text/BidiRun;->start:I

    aget-byte v9, v3, v9

    .line 364
    invoke-static {v9}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    and-int/2addr v9, v5

    if-nez v9, :cond_13

    or-int/lit8 v10, v10, 0x8

    :cond_13
    and-int/lit8 v9, v10, 0x2

    if-eqz v9, :cond_14

    const/16 v9, 0x200e

    goto :goto_6

    :cond_14
    and-int/lit8 v9, v10, 0x8

    if-eqz v9, :cond_15

    const/16 v9, 0x200f

    goto :goto_6

    :cond_15
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_16

    .line 375
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_17
    if-nez v3, :cond_19

    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1e

    .line 385
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Bidi;->getVisualRun(I)Lcom/ibm/icu/text/BidiRun;

    move-result-object v3

    .line 386
    invoke-virtual {v3}, Lcom/ibm/icu/text/BidiRun;->isEvenRun()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 387
    iget v4, v3, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v3, v3, Lcom/ibm/icu/text/BidiRun;->limit:I

    and-int/lit8 v5, p1, -0x3

    invoke-static {v0, v4, v3, v5}, Lcom/ibm/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 391
    :cond_18
    iget v4, v3, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v3, v3, Lcom/ibm/icu/text/BidiRun;->limit:I

    invoke-static {v0, v4, v3, p1}, Lcom/ibm/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 398
    :cond_19
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    :cond_1a
    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1e

    .line 402
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Bidi;->getVisualRun(I)Lcom/ibm/icu/text/BidiRun;

    move-result-object v4

    .line 403
    invoke-virtual {v4}, Lcom/ibm/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 404
    iget v8, v4, Lcom/ibm/icu/text/BidiRun;->limit:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v3, v8

    if-eqz v8, :cond_1b

    .line 405
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :cond_1b
    iget v8, v4, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v9, v4, Lcom/ibm/icu/text/BidiRun;->limit:I

    and-int/lit8 v10, p1, -0x3

    invoke-static {v0, v8, v9, v10}, Lcom/ibm/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget v4, v4, Lcom/ibm/icu/text/BidiRun;->start:I

    aget-byte v4, v3, v4

    if-eqz v4, :cond_1a

    .line 412
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 415
    :cond_1c
    iget v8, v4, Lcom/ibm/icu/text/BidiRun;->start:I

    aget-byte v8, v3, v8

    invoke-static {v8}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    and-int/2addr v8, v5

    if-nez v8, :cond_1d

    .line 416
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_1d
    iget v8, v4, Lcom/ibm/icu/text/BidiRun;->start:I

    iget v9, v4, Lcom/ibm/icu/text/BidiRun;->limit:I

    invoke-static {v0, v8, v9, p1}, Lcom/ibm/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v4, v4, Lcom/ibm/icu/text/BidiRun;->limit:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    and-int/2addr v4, v5

    if-nez v4, :cond_1a

    .line 423
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 430
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p1, 0xb

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 201
    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 202
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    sub-int v3, v1, v3

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    :goto_1
    if-lez v3, :cond_0

    .line 205
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v3, -0x1

    .line 206
    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 207
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_0
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_1

    .line 212
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2

    .line 221
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getMirror(I)I

    move-result v2

    .line 222
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 223
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_2

    :cond_2
    move v2, v3

    .line 225
    :goto_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    if-gtz v3, :cond_3

    goto :goto_6

    :cond_3
    move v1, v3

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_4
    move v1, p1

    :cond_5
    add-int/lit8 v2, v1, -0x1

    .line 175
    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 176
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    sub-int/2addr v1, v3

    if-lez v1, :cond_6

    .line 177
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 180
    :cond_6
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gtz v1, :cond_7

    goto :goto_6

    :cond_7
    move p1, v1

    goto :goto_4

    .line 138
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_5
    add-int/lit8 v1, p1, -0x1

    .line 147
    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    sub-int v1, p1, v1

    .line 151
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gtz v1, :cond_9

    .line 230
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    move p1, v1

    goto :goto_5
.end method
