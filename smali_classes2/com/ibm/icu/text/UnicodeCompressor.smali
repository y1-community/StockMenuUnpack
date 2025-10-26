.class public final Lcom/ibm/icu/text/UnicodeCompressor;
.super Ljava/lang/Object;
.source "UnicodeCompressor.java"

# interfaces
.implements Lcom/ibm/icu/text/SCSU;


# static fields
.field private static sSingleTagTable:[Z

.field private static sUnicodeTagTable:[Z


# instance fields
.field private fCurrentWindow:I

.field private fIndexCount:[I

.field private fMode:I

.field private fOffsets:[I

.field private fTimeStamp:I

.field private fTimeStamps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [Z

    .line 195
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ibm/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    new-array v0, v0, [Z

    .line 229
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    const/16 v1, 0x8

    new-array v2, v1, [I

    .line 270
    iput-object v2, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    .line 273
    iput v0, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    const/16 v2, 0x100

    new-array v2, v2, [I

    .line 276
    iput-object v2, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fIndexCount:[I

    new-array v1, v1, [I

    .line 279
    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    .line 282
    iput v0, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    .line 293
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeCompressor;->reset()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 2

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/ibm/icu/text/UnicodeCompressor;->compress([CII)[B

    move-result-object p0

    return-object p0
.end method

.method public static compress([CII)[B
    .locals 9

    .line 321
    new-instance v0, Lcom/ibm/icu/text/UnicodeCompressor;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeCompressor;-><init>()V

    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    .line 328
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 329
    new-array v8, v7, [B

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v8

    .line 331
    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/text/UnicodeCompressor;->compress([CII[I[BII)I

    move-result p0

    .line 334
    new-array p1, p0, [B

    const/4 p2, 0x0

    .line 335
    invoke-static {v8, p2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private findDynamicWindow(I)I
    .locals 2

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    .line 957
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    iget-object p1, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private static findStaticWindow(I)I
    .locals 2

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    .line 977
    invoke-static {p0, v0}, Lcom/ibm/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getLRDefinedWindow()I
    .locals 5

    const/4 v0, -0x1

    const v1, 0x7fffffff

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_1

    .line 999
    iget-object v3, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v4, v3, v2

    if-ge v4, v1, :cond_0

    .line 1000
    aget v0, v3, v2

    move v1, v0

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private inDynamicWindow(II)Z
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v1, v0, p2

    if-lt p1, v1, :cond_0

    aget p2, v0, p2

    add-int/lit16 p2, p2, 0x80

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static inStaticWindow(II)Z
    .locals 1

    .line 924
    sget-object v0, Lcom/ibm/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v0, v0, p1

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/UnicodeCompressor;->sOffsets:[I

    aget p1, v0, p1

    add-int/lit16 p1, p1, 0x80

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCompressible(I)Z
    .locals 1

    const/16 v0, 0x3400

    if-lt p0, v0, :cond_1

    const v0, 0xe000

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static makeIndex(I)I
    .locals 3

    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x140

    if-ge p0, v0, :cond_0

    const/16 p0, 0xf9

    return p0

    :cond_0
    const/16 v0, 0x250

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_1

    const/16 p0, 0xfa

    return p0

    :cond_1
    const/16 v0, 0x370

    if-lt p0, v0, :cond_2

    const/16 v0, 0x3f0

    if-ge p0, v0, :cond_2

    const/16 p0, 0xfb

    return p0

    :cond_2
    const/16 v0, 0x530

    if-lt p0, v0, :cond_3

    const/16 v0, 0x590

    if-ge p0, v0, :cond_3

    const/16 p0, 0xfc

    return p0

    :cond_3
    const/16 v0, 0x3040

    const/16 v1, 0x30a0

    if-lt p0, v0, :cond_4

    if-ge p0, v1, :cond_4

    const/16 p0, 0xfd

    return p0

    :cond_4
    if-lt p0, v1, :cond_5

    const/16 v0, 0x3120

    if-ge p0, v0, :cond_5

    const/16 p0, 0xfe

    return p0

    :cond_5
    const v0, 0xff60

    const/16 v1, 0xff

    if-lt p0, v0, :cond_6

    const v0, 0xff9f

    if-ge p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x80

    if-lt p0, v0, :cond_7

    const/16 v2, 0x3400

    if-ge p0, v2, :cond_7

    .line 886
    div-int/2addr p0, v0

    :goto_0
    and-int/2addr p0, v1

    return p0

    :cond_7
    const v2, 0xe000

    if-lt p0, v2, :cond_8

    const v2, 0xffff

    if-gt p0, v2, :cond_8

    const v2, 0xac00

    sub-int/2addr p0, v2

    .line 888
    div-int/2addr p0, v0

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public compress([CII[I[BII)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p7

    .line 391
    array-length v4, v2

    const/4 v5, 0x4

    if-lt v4, v5, :cond_30

    sub-int v4, v3, p6

    if-lt v4, v5, :cond_30

    move/from16 v4, p2

    move/from16 v5, p6

    :cond_0
    :goto_0
    const/4 v6, 0x0

    if-ge v4, v1, :cond_2e

    if-ge v5, v3, :cond_2e

    .line 396
    iget v7, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    const/16 v8, -0x10

    const/16 v9, 0x80

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-eqz v7, :cond_16

    if-eq v7, v11, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v4, v1, :cond_0

    if-ge v5, v3, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 625
    aget-char v4, p1, v4

    if-ge v7, v1, :cond_2

    .line 629
    aget-char v12, p1, v7

    goto :goto_2

    :cond_2
    const/4 v12, -0x1

    .line 635
    :goto_2
    invoke-static {v4}, Lcom/ibm/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v13

    if-eqz v13, :cond_13

    if-eq v12, v10, :cond_3

    .line 636
    invoke-static {v12}, Lcom/ibm/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v13

    if-nez v13, :cond_3

    goto/16 :goto_5

    :cond_3
    if-ge v4, v9, :cond_7

    and-int/lit16 v4, v4, 0xff

    if-eq v12, v10, :cond_5

    if-ge v12, v9, :cond_5

    .line 661
    sget-object v12, Lcom/ibm/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    aget-boolean v12, v12, v4

    if-nez v12, :cond_5

    add-int/lit8 v8, v5, 0x1

    if-lt v8, v3, :cond_4

    goto/16 :goto_6

    .line 670
    :cond_4
    iget v9, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    add-int/lit16 v10, v9, 0xe0

    int-to-byte v10, v10

    .line 671
    aput-byte v10, v2, v5

    add-int/lit8 v5, v8, 0x1

    int-to-byte v4, v4

    .line 672
    aput-byte v4, v2, v8

    .line 675
    iget-object v4, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v8, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/2addr v8, v11

    iput v8, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v8, v4, v9

    .line 676
    iput v6, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v12, v5, 0x1

    if-lt v12, v3, :cond_6

    goto/16 :goto_6

    .line 693
    :cond_6
    aput-byte v6, v2, v5

    add-int/lit8 v5, v12, 0x1

    int-to-byte v4, v4

    .line 694
    aput-byte v4, v2, v12

    goto/16 :goto_7

    .line 699
    :cond_7
    invoke-direct {v0, v4}, Lcom/ibm/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    move-result v13

    if-eq v13, v10, :cond_c

    .line 704
    invoke-direct {v0, v12, v13}, Lcom/ibm/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v12

    if-eqz v12, :cond_9

    add-int/lit8 v8, v5, 0x1

    if-lt v8, v3, :cond_8

    goto/16 :goto_6

    :cond_8
    add-int/lit16 v10, v13, 0xe0

    int-to-byte v10, v10

    .line 711
    aput-byte v10, v2, v5

    add-int/lit8 v5, v8, 0x1

    .line 712
    iget-object v10, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v10, v10, v13

    sub-int/2addr v4, v10

    add-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    .line 716
    iget-object v4, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v8, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/2addr v8, v11

    iput v8, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v8, v4, v13

    .line 717
    iput v13, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 718
    iput v6, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    goto/16 :goto_b

    :cond_9
    add-int/lit8 v12, v5, 0x2

    if-lt v12, v3, :cond_a

    goto/16 :goto_6

    :cond_a
    ushr-int/lit8 v12, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 734
    sget-object v13, Lcom/ibm/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v13, v13, v12

    if-eqz v13, :cond_b

    add-int/lit8 v13, v5, 0x1

    .line 736
    aput-byte v8, v2, v5

    move v5, v13

    :cond_b
    add-int/lit8 v13, v5, 0x1

    int-to-byte v12, v12

    .line 738
    aput-byte v12, v2, v5

    add-int/lit8 v5, v13, 0x1

    int-to-byte v4, v4

    .line 739
    aput-byte v4, v2, v13

    goto/16 :goto_7

    .line 746
    :cond_c
    invoke-static {v4}, Lcom/ibm/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v13

    .line 747
    iget-object v14, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v15, v14, v13

    add-int/2addr v15, v11

    aput v15, v14, v13

    add-int/lit8 v15, v7, 0x1

    if-ge v15, v1, :cond_d

    .line 751
    aget-char v15, p1, v15

    goto :goto_3

    :cond_d
    const/4 v15, -0x1

    .line 762
    :goto_3
    aget v14, v14, v13

    if-gt v14, v11, :cond_11

    .line 763
    invoke-static {v12}, Lcom/ibm/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v12

    if-ne v13, v12, :cond_e

    .line 764
    invoke-static {v15}, Lcom/ibm/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v12

    if-ne v13, v12, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v12, v5, 0x2

    if-lt v12, v3, :cond_f

    goto :goto_6

    :cond_f
    ushr-int/lit8 v12, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 801
    sget-object v13, Lcom/ibm/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v13, v13, v12

    if-eqz v13, :cond_10

    add-int/lit8 v13, v5, 0x1

    .line 803
    aput-byte v8, v2, v5

    move v5, v13

    :cond_10
    add-int/lit8 v13, v5, 0x1

    int-to-byte v12, v12

    .line 805
    aput-byte v12, v2, v5

    add-int/lit8 v5, v13, 0x1

    int-to-byte v4, v4

    .line 806
    aput-byte v4, v2, v13

    goto :goto_7

    :cond_11
    :goto_4
    add-int/lit8 v8, v5, 0x2

    if-lt v8, v3, :cond_12

    goto :goto_6

    .line 773
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    move-result v8

    add-int/lit8 v10, v5, 0x1

    add-int/lit16 v12, v8, 0xe8

    int-to-byte v12, v12

    .line 775
    aput-byte v12, v2, v5

    add-int/lit8 v5, v10, 0x1

    int-to-byte v12, v13

    .line 776
    aput-byte v12, v2, v10

    add-int/lit8 v10, v5, 0x1

    .line 777
    sget-object v12, Lcom/ibm/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v12, v12, v13

    sub-int/2addr v4, v12

    add-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    .line 781
    iget-object v4, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    sget-object v5, Lcom/ibm/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v5, v5, v13

    aput v5, v4, v8

    .line 782
    iput v8, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 783
    iget-object v4, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v5, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v5, v4, v8

    .line 784
    iput v6, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    move v4, v7

    move v5, v10

    goto/16 :goto_0

    :cond_13
    :goto_5
    add-int/lit8 v12, v5, 0x2

    if-lt v12, v3, :cond_14

    :goto_6
    add-int/lit8 v4, v7, -0x1

    goto/16 :goto_10

    :cond_14
    ushr-int/lit8 v12, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 645
    sget-object v13, Lcom/ibm/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v13, v13, v12

    if-eqz v13, :cond_15

    add-int/lit8 v13, v5, 0x1

    .line 647
    aput-byte v8, v2, v5

    move v5, v13

    :cond_15
    add-int/lit8 v13, v5, 0x1

    int-to-byte v12, v12

    .line 649
    aput-byte v12, v2, v5

    add-int/lit8 v5, v13, 0x1

    int-to-byte v4, v4

    .line 650
    aput-byte v4, v2, v13

    :goto_7
    move v4, v7

    goto/16 :goto_1

    :cond_16
    :goto_8
    if-ge v4, v1, :cond_0

    if-ge v5, v3, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 402
    aget-char v4, p1, v4

    if-ge v7, v1, :cond_17

    .line 406
    aget-char v12, p1, v7

    goto :goto_9

    :cond_17
    const/4 v12, -0x1

    :goto_9
    if-ge v4, v9, :cond_1a

    and-int/lit16 v4, v4, 0xff

    .line 418
    sget-object v12, Lcom/ibm/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    aget-boolean v12, v12, v4

    if-eqz v12, :cond_19

    add-int/lit8 v12, v5, 0x1

    if-lt v12, v3, :cond_18

    goto :goto_6

    .line 427
    :cond_18
    aput-byte v11, v2, v5

    move v5, v12

    :cond_19
    add-int/lit8 v12, v5, 0x1

    int-to-byte v4, v4

    .line 430
    aput-byte v4, v2, v5

    goto :goto_a

    .line 436
    :cond_1a
    iget v13, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    invoke-direct {v0, v4, v13}, Lcom/ibm/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v13

    if-eqz v13, :cond_1b

    add-int/lit8 v12, v5, 0x1

    .line 437
    iget-object v13, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    iget v14, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    aget v13, v13, v14

    sub-int/2addr v4, v13

    add-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    :goto_a
    move v4, v7

    move v5, v12

    goto :goto_8

    .line 444
    :cond_1b
    invoke-static {v4}, Lcom/ibm/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v13

    const/16 v14, 0xf

    if-nez v13, :cond_20

    if-eq v12, v10, :cond_1d

    .line 446
    invoke-static {v12}, Lcom/ibm/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v12

    if-eqz v12, :cond_1d

    add-int/lit8 v12, v5, 0x2

    if-lt v12, v3, :cond_1c

    goto :goto_6

    :cond_1c
    add-int/lit8 v12, v5, 0x1

    const/16 v13, 0xe

    .line 454
    aput-byte v13, v2, v5

    add-int/lit8 v5, v12, 0x1

    ushr-int/lit8 v13, v4, 0x8

    int-to-byte v13, v13

    .line 455
    aput-byte v13, v2, v12

    add-int/lit8 v12, v5, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 456
    aput-byte v4, v2, v5

    goto :goto_a

    :cond_1d
    add-int/lit8 v9, v5, 0x3

    if-lt v9, v3, :cond_1e

    goto/16 :goto_6

    :cond_1e
    add-int/lit8 v6, v5, 0x1

    .line 465
    aput-byte v14, v2, v5

    ushr-int/lit8 v5, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 470
    sget-object v9, Lcom/ibm/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v9, v9, v5

    if-eqz v9, :cond_1f

    add-int/lit8 v9, v6, 0x1

    .line 472
    aput-byte v8, v2, v6

    move v6, v9

    :cond_1f
    add-int/lit8 v8, v6, 0x1

    int-to-byte v5, v5

    .line 474
    aput-byte v5, v2, v6

    add-int/lit8 v5, v8, 0x1

    int-to-byte v4, v4

    .line 475
    aput-byte v4, v2, v8

    .line 477
    iput v11, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    :goto_b
    move v4, v7

    goto/16 :goto_0

    .line 485
    :cond_20
    invoke-direct {v0, v4}, Lcom/ibm/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    move-result v13

    if-eq v13, v10, :cond_25

    add-int/lit8 v14, v7, 0x1

    if-ge v14, v1, :cond_21

    .line 489
    aget-char v14, p1, v14

    goto :goto_c

    :cond_21
    const/4 v14, -0x1

    .line 496
    :goto_c
    invoke-direct {v0, v12, v13}, Lcom/ibm/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 497
    invoke-direct {v0, v14, v13}, Lcom/ibm/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v12

    if-eqz v12, :cond_23

    add-int/lit8 v12, v5, 0x1

    if-lt v12, v3, :cond_22

    goto/16 :goto_6

    :cond_22
    add-int/lit8 v14, v13, 0x10

    int-to-byte v14, v14

    .line 504
    aput-byte v14, v2, v5

    add-int/lit8 v5, v12, 0x1

    .line 505
    iget-object v14, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v14, v14, v13

    sub-int/2addr v4, v14

    add-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    .line 508
    iget-object v4, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v12, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/2addr v12, v11

    iput v12, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v12, v4, v13

    .line 509
    iput v13, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    goto :goto_d

    :cond_23
    add-int/lit8 v12, v5, 0x1

    if-lt v12, v3, :cond_24

    goto/16 :goto_6

    :cond_24
    add-int/lit8 v14, v13, 0x1

    int-to-byte v14, v14

    .line 521
    aput-byte v14, v2, v5

    add-int/lit8 v5, v12, 0x1

    .line 522
    iget-object v14, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v13, v14, v13

    sub-int/2addr v4, v13

    add-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    goto :goto_d

    .line 532
    :cond_25
    invoke-static {v4}, Lcom/ibm/icu/text/UnicodeCompressor;->findStaticWindow(I)I

    move-result v13

    if-eq v13, v10, :cond_27

    .line 534
    invoke-static {v12, v13}, Lcom/ibm/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    move-result v15

    if-nez v15, :cond_27

    add-int/lit8 v12, v5, 0x1

    if-lt v12, v3, :cond_26

    goto/16 :goto_6

    :cond_26
    add-int/lit8 v14, v13, 0x1

    int-to-byte v14, v14

    .line 541
    aput-byte v14, v2, v5

    add-int/lit8 v5, v12, 0x1

    .line 542
    sget-object v14, Lcom/ibm/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v13, v14, v13

    sub-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    :goto_d
    move v4, v7

    goto/16 :goto_8

    .line 550
    :cond_27
    invoke-static {v4}, Lcom/ibm/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v13

    .line 551
    iget-object v15, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v16, v15, v13

    add-int/lit8 v16, v16, 0x1

    aput v16, v15, v13

    add-int/lit8 v6, v7, 0x1

    if-ge v6, v1, :cond_28

    .line 555
    aget-char v6, p1, v6

    goto :goto_e

    :cond_28
    const/4 v6, -0x1

    .line 565
    :goto_e
    aget v15, v15, v13

    if-gt v15, v11, :cond_2c

    .line 566
    invoke-static {v12}, Lcom/ibm/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v12

    if-ne v13, v12, :cond_29

    .line 567
    invoke-static {v6}, Lcom/ibm/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v6

    if-ne v13, v6, :cond_29

    goto :goto_f

    :cond_29
    add-int/lit8 v6, v5, 0x3

    if-lt v6, v3, :cond_2a

    goto/16 :goto_6

    :cond_2a
    add-int/lit8 v6, v5, 0x1

    .line 601
    aput-byte v14, v2, v5

    ushr-int/lit8 v5, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 606
    sget-object v9, Lcom/ibm/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v9, v9, v5

    if-eqz v9, :cond_2b

    add-int/lit8 v9, v6, 0x1

    .line 608
    aput-byte v8, v2, v6

    move v6, v9

    :cond_2b
    add-int/lit8 v8, v6, 0x1

    int-to-byte v5, v5

    .line 610
    aput-byte v5, v2, v6

    add-int/lit8 v5, v8, 0x1

    int-to-byte v4, v4

    .line 611
    aput-byte v4, v2, v8

    .line 613
    iput v11, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    goto/16 :goto_b

    :cond_2c
    :goto_f
    add-int/lit8 v6, v5, 0x2

    if-lt v6, v3, :cond_2d

    goto/16 :goto_6

    .line 575
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    move-result v6

    add-int/lit8 v12, v5, 0x1

    add-int/lit8 v14, v6, 0x18

    int-to-byte v14, v14

    .line 577
    aput-byte v14, v2, v5

    add-int/lit8 v5, v12, 0x1

    int-to-byte v14, v13

    .line 578
    aput-byte v14, v2, v12

    add-int/lit8 v12, v5, 0x1

    .line 579
    sget-object v14, Lcom/ibm/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v14, v14, v13

    sub-int/2addr v4, v14

    add-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    .line 583
    iget-object v4, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    sget-object v5, Lcom/ibm/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v5, v5, v13

    aput v5, v4, v6

    .line 584
    iput v6, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 585
    iget-object v4, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v5, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v5, v4, v6

    move v4, v7

    move v5, v12

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_2e
    :goto_10
    if-eqz p4, :cond_2f

    sub-int v4, v4, p2

    const/4 v1, 0x0

    .line 815
    aput v4, p4, v1

    :cond_2f
    sub-int v5, v5, p6

    return v5

    .line 392
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "byteBuffer.length < 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method

.method public reset()V
    .locals 4

    .line 830
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v1, 0x80

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc0

    const/4 v3, 0x1

    .line 831
    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x400

    .line 832
    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x600

    .line 833
    aput v3, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0x900

    .line 834
    aput v3, v0, v1

    const/4 v1, 0x5

    const/16 v3, 0x3040

    .line 835
    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x30a0

    .line 836
    aput v3, v0, v1

    const/4 v1, 0x7

    const v3, 0xff00

    .line 837
    aput v3, v0, v1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fIndexCount:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 850
    :cond_1
    iput v2, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fTimeStamp:I

    .line 851
    iput v2, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 852
    iput v2, p0, Lcom/ibm/icu/text/UnicodeCompressor;->fMode:I

    return-void
.end method
