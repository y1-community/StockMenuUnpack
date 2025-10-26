.class public Lcom/ibm/icu/impl/coll/BOCSU;
.super Ljava/lang/Object;
.source "BOCSU.java"


# static fields
.field private static final SLOPE_LEAD_2_:I = 0x2a

.field private static final SLOPE_LEAD_3_:I = 0x3

.field private static final SLOPE_MAX_:I = 0xff

.field private static final SLOPE_MAX_BYTES_:I = 0x4

.field private static final SLOPE_MIDDLE_:I = 0x81

.field private static final SLOPE_MIN_:I = 0x3

.field private static final SLOPE_REACH_NEG_1_:I = -0x50

.field private static final SLOPE_REACH_NEG_2_:I = -0x29ac

.field private static final SLOPE_REACH_NEG_3_:I = -0x2f112

.field private static final SLOPE_REACH_POS_1_:I = 0x50

.field private static final SLOPE_REACH_POS_2_:I = 0x29ab

.field private static final SLOPE_REACH_POS_3_:I = 0x2f111

.field private static final SLOPE_SINGLE_:I = 0x50

.field private static final SLOPE_START_NEG_2_:I = 0x31

.field private static final SLOPE_START_NEG_3_:I = 0x7

.field private static final SLOPE_START_POS_2_:I = 0xd2

.field private static final SLOPE_START_POS_3_:I = 0xfc

.field private static final SLOPE_TAIL_COUNT_:I = 0xfd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureAppendCapacity(Lcom/ibm/icu/util/ByteArrayWrapper;II)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 140
    :goto_0
    iget p2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/ByteArrayWrapper;->ensureCapacity(I)Lcom/ibm/icu/util/ByteArrayWrapper;

    return-void
.end method

.method private static final getNegDivMod(II)J
    .locals 5

    .line 241
    rem-int v0, p0, p1

    .line 242
    div-int/2addr p0, p1

    int-to-long v1, p0

    if-gez v0, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    add-int/2addr v0, p1

    :cond_0
    const/16 p0, 0x20

    shl-long p0, v1, p0

    int-to-long v0, v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static final writeDiff(I[BI)I
    .locals 7

    const/16 v0, 0xfd

    const/4 v1, 0x3

    const/16 v2, -0x50

    if-lt p0, v2, :cond_3

    const/16 v2, 0x50

    if-gt p0, v2, :cond_0

    add-int/lit8 v0, p2, 0x1

    add-int/lit16 p0, p0, 0x81

    int-to-byte p0, p0

    .line 262
    aput-byte p0, p1, p2

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x29ab

    if-gt p0, v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    .line 265
    div-int/lit16 v3, p0, 0xfd

    add-int/lit16 v3, v3, 0xd2

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 p2, v2, 0x1

    .line 267
    rem-int/2addr p0, v0

    add-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, p1, v2

    move v0, p2

    goto/16 :goto_2

    :cond_1
    const v2, 0x2f111

    if-gt p0, v2, :cond_2

    add-int/lit8 v2, p2, 0x2

    .line 271
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 273
    div-int/2addr p0, v0

    add-int/lit8 v2, p2, 0x1

    .line 274
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 276
    div-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, 0x3

    .line 281
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 283
    div-int/2addr p0, v0

    add-int/lit8 v2, p2, 0x2

    .line 284
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 286
    div-int/2addr p0, v0

    add-int/lit8 v2, p2, 0x1

    .line 287
    rem-int/2addr p0, v0

    add-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, p1, v2

    const/4 p0, -0x1

    .line 289
    aput-byte p0, p1, p2

    goto :goto_1

    .line 294
    :cond_3
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int v4, v2

    const/16 v5, -0x29ac

    const/16 v6, 0x20

    if-lt p0, v5, :cond_4

    shr-long/2addr v2, v6

    long-to-int p0, v2

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 p0, p0, 0x31

    int-to-byte p0, p0

    .line 298
    aput-byte p0, p1, p2

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v4, v1

    int-to-byte p2, v4

    .line 299
    aput-byte p2, p1, v0

    move v0, p0

    goto :goto_2

    :cond_4
    const v5, -0x2f112

    if-lt p0, v5, :cond_5

    add-int/lit8 p0, p2, 0x2

    add-int/2addr v4, v1

    int-to-byte v4, v4

    .line 302
    aput-byte v4, p1, p0

    shr-long/2addr v2, v6

    long-to-int p0, v2

    .line 304
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int p0, v2

    shr-long/2addr v2, v6

    long-to-int v0, v2

    add-int/lit8 v2, p2, 0x1

    add-int/2addr p0, v1

    int-to-byte p0, p0

    .line 307
    aput-byte p0, p1, v2

    add-int/lit8 v0, v0, 0x7

    int-to-byte p0, v0

    .line 308
    aput-byte p0, p1, p2

    :goto_0
    add-int/lit8 v0, p2, 0x3

    goto :goto_2

    :cond_5
    add-int/lit8 p0, p2, 0x3

    add-int/2addr v4, v1

    int-to-byte v4, v4

    .line 312
    aput-byte v4, p1, p0

    shr-long/2addr v2, v6

    long-to-int p0, v2

    .line 314
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int p0, v2

    shr-long/2addr v2, v6

    long-to-int v3, v2

    add-int/lit8 v2, p2, 0x2

    add-int/2addr p0, v1

    int-to-byte p0, p0

    .line 317
    aput-byte p0, p1, v2

    .line 318
    invoke-static {v3, v0}, Lcom/ibm/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int p0, v2

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p0, v1

    int-to-byte p0, p0

    .line 320
    aput-byte p0, p1, v0

    .line 321
    aput-byte v1, p1, p2

    :goto_1
    add-int/lit8 v0, p2, 0x4

    :goto_2
    return v0
.end method

.method public static writeIdenticalLevelRun(ILjava/lang/CharSequence;IILcom/ibm/icu/util/ByteArrayWrapper;)I
    .locals 6

    :goto_0
    if-ge p2, p3, :cond_4

    const/16 v0, 0x10

    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p4, v0, v1}, Lcom/ibm/icu/impl/coll/BOCSU;->ensureAppendCapacity(Lcom/ibm/icu/util/ByteArrayWrapper;II)V

    .line 108
    iget-object v0, p4, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    .line 109
    array-length v1, v0

    .line 110
    iget v3, p4, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    add-int/lit8 v1, v1, -0x4

    :goto_1
    if-ge p2, p3, :cond_3

    if-gt v3, v1, :cond_3

    const/16 v4, 0x4e00

    if-lt p0, v4, :cond_1

    const v4, 0xa000

    if-lt p0, v4, :cond_0

    goto :goto_2

    :cond_0
    const/16 p0, 0x7654

    goto :goto_3

    :cond_1
    :goto_2
    and-int/lit8 p0, p0, -0x80

    add-int/lit8 p0, p0, 0x50

    .line 121
    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 122
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr p2, v5

    const v5, 0xfffe

    if-ne v4, v5, :cond_2

    add-int/lit8 p0, v3, 0x1

    .line 124
    aput-byte v2, v0, v3

    const/4 v3, 0x0

    move v3, p0

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    sub-int p0, v4, p0

    .line 127
    invoke-static {p0, v0, v3}, Lcom/ibm/icu/impl/coll/BOCSU;->writeDiff(I[BI)I

    move-result p0

    move v3, p0

    move p0, v4

    goto :goto_1

    .line 131
    :cond_3
    iput v3, p4, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    goto :goto_0

    :cond_4
    return p0
.end method
