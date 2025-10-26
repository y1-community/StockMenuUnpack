.class final Lcom/ibm/icu/impl/coll/CollationDataReader;
.super Ljava/lang/Object;
.source "CollationDataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DATA_FORMAT:I = 0x55436f6c

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;

.field static final IX_CE32S_OFFSET:I = 0xb

.field static final IX_CES_OFFSET:I = 0x9

.field static final IX_COMPRESSIBLE_BYTES_OFFSET:I = 0x11

.field static final IX_CONTEXTS_OFFSET:I = 0xd

.field static final IX_FAST_LATIN_TABLE_OFFSET:I = 0xf

.field static final IX_INDEXES_LENGTH:I = 0x0

.field static final IX_JAMO_CE32S_START:I = 0x4

.field static final IX_OPTIONS:I = 0x1

.field static final IX_REORDER_CODES_OFFSET:I = 0x5

.field static final IX_REORDER_TABLE_OFFSET:I = 0x6

.field static final IX_RESERVED10_OFFSET:I = 0xa

.field static final IX_RESERVED18_OFFSET:I = 0x12

.field static final IX_RESERVED2:I = 0x2

.field static final IX_RESERVED3:I = 0x3

.field static final IX_RESERVED8_OFFSET:I = 0x8

.field static final IX_ROOT_ELEMENTS_OFFSET:I = 0xc

.field static final IX_SCRIPTS_OFFSET:I = 0x10

.field static final IX_TOTAL_SIZE:I = 0x13

.field static final IX_TRIE_OFFSET:I = 0x7

.field static final IX_UNSAFE_BWD_OFFSET:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 499
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;-><init>(Lcom/ibm/icu/impl/coll/CollationDataReader$1;)V

    sput-object v0, Lcom/ibm/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lcom/ibm/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/coll/CollationTailoring;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 101
    sget-object v3, Lcom/ibm/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;

    const v4, 0x55436f6c

    invoke-static {v1, v4, v3}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->version:I

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailoring UCA version differs from base data UCA version"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const-string v4, "not enough bytes"

    const/16 v5, 0x8

    if-lt v3, v5, :cond_41

    .line 110
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_40

    mul-int/lit8 v8, v6, 0x4

    if-lt v3, v8, :cond_40

    const/16 v8, 0x14

    new-array v9, v8, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    :goto_1
    if-ge v12, v6, :cond_2

    if-ge v12, v8, :cond_2

    .line 117
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    aput v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    move v12, v6

    :goto_2
    if-ge v12, v8, :cond_3

    const/4 v13, -0x1

    .line 120
    aput v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x4

    if-le v6, v8, :cond_4

    add-int/lit8 v8, v6, -0x14

    mul-int/lit8 v8, v8, 0x4

    .line 123
    invoke-static {v1, v8}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :cond_4
    const/4 v8, 0x5

    const/16 v13, 0x13

    if-le v6, v13, :cond_5

    aget v6, v9, v13

    goto :goto_3

    :cond_5
    if-le v6, v8, :cond_6

    sub-int/2addr v6, v11

    .line 139
    aget v6, v9, v6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-lt v3, v6, :cond_3f

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4

    .line 147
    :cond_7
    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    :goto_4
    aget v4, v9, v8

    const/4 v6, 0x6

    aget v8, v9, v6

    sub-int/2addr v8, v4

    const/4 v4, 0x3

    if-lt v8, v12, :cond_a

    if-eqz v0, :cond_9

    .line 159
    div-int/lit8 v14, v8, 0x4

    and-int/2addr v8, v4

    .line 160
    invoke-static {v1, v14, v8}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v8

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_8

    sub-int v16, v14, v15

    add-int/lit8 v16, v16, -0x1

    .line 167
    aget v16, v8, v16

    const/high16 v17, -0x10000

    and-int v16, v16, v17

    if-eqz v16, :cond_8

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    sub-int/2addr v14, v15

    goto :goto_6

    .line 157
    :cond_9
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Collation base data must not reorder scripts"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-array v14, v10, [I

    .line 176
    invoke-static {v1, v8}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    move-object v8, v14

    const/4 v14, 0x0

    :goto_6
    aget v6, v9, v6

    const/4 v15, 0x7

    aget v16, v9, v15

    sub-int v6, v16, v6

    const/16 v13, 0x100

    if-lt v6, v13, :cond_c

    if-eqz v14, :cond_b

    new-array v3, v13, [B

    .line 191
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/lit16 v6, v6, -0x100

    goto :goto_7

    .line 188
    :cond_b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Reordering table without reordering codes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v3, 0x0

    .line 197
    :goto_7
    invoke-static {v1, v6}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const-wide v18, 0xff000000L

    if-eqz v0, :cond_e

    move/from16 p0, v14

    .line 199
    iget-wide v13, v0, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    aget v6, v9, v11

    move-object/from16 v20, v8

    int-to-long v7, v6

    and-long v7, v7, v18

    cmp-long v6, v13, v7

    if-nez v6, :cond_d

    goto :goto_8

    .line 200
    :cond_d
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailoring numeric primary weight differs from base data"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v20, v8

    move/from16 p0, v14

    :goto_8
    aget v6, v9, v15

    aget v7, v9, v5

    sub-int/2addr v7, v6

    if-lt v7, v5, :cond_10

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    .line 209
    iget-object v6, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->ownedData:Lcom/ibm/icu/impl/coll/CollationData;

    .line 210
    iput-object v0, v6, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    aget v8, v9, v11

    int-to-long v13, v8

    and-long v13, v13, v18

    .line 211
    iput-wide v13, v6, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    .line 212
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/Trie2_32;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_32;

    move-result-object v8

    iput-object v8, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->trie:Lcom/ibm/icu/impl/Trie2_32;

    iput-object v8, v6, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    .line 213
    iget-object v8, v6, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {v8}, Lcom/ibm/icu/impl/Trie2_32;->getSerializedLength()I

    move-result v8

    if-gt v8, v7, :cond_f

    sub-int/2addr v7, v8

    goto :goto_9

    .line 215
    :cond_f
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Not enough bytes for the mappings trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-eqz v0, :cond_3e

    .line 220
    iput-object v0, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 v6, 0x0

    .line 224
    :goto_9
    invoke-static {v1, v7}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    aget v7, v9, v5

    const/16 v8, 0x9

    aget v13, v9, v8

    sub-int/2addr v13, v7

    .line 229
    invoke-static {v1, v13}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    aget v7, v9, v8

    const/16 v8, 0xa

    aget v13, v9, v8

    sub-int/2addr v13, v7

    if-lt v13, v5, :cond_12

    if-eqz v6, :cond_11

    .line 238
    div-int/lit8 v7, v13, 0x8

    and-int/2addr v13, v15

    invoke-static {v1, v7, v13}, Lcom/ibm/icu/impl/ICUBinary;->getLongs(Ljava/nio/ByteBuffer;II)[J

    move-result-object v7

    iput-object v7, v6, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    goto :goto_a

    .line 236
    :cond_11
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailored ces without tailored trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_12
    invoke-static {v1, v13}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :goto_a
    aget v7, v9, v8

    const/16 v8, 0xb

    aget v13, v9, v8

    sub-int/2addr v13, v7

    .line 246
    invoke-static {v1, v13}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    aget v7, v9, v8

    const/16 v8, 0xc

    aget v13, v9, v8

    sub-int/2addr v13, v7

    if-lt v13, v12, :cond_14

    if-eqz v6, :cond_13

    .line 255
    div-int/lit8 v7, v13, 0x4

    and-int/2addr v13, v4

    invoke-static {v1, v7, v13}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v7

    iput-object v7, v6, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    goto :goto_b

    .line 253
    :cond_13
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailored ce32s without tailored trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_14
    invoke-static {v1, v13}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :goto_b
    aget v7, v9, v12

    if-ltz v7, :cond_16

    if-eqz v6, :cond_15

    .line 262
    iget-object v13, v6, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    if-eqz v13, :cond_15

    const/16 v13, 0x43

    new-array v14, v13, [I

    .line 265
    iput-object v14, v6, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 266
    iget-object v14, v6, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    iget-object v15, v6, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    invoke-static {v14, v7, v15, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 263
    :cond_15
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "JamoCE32sStart index into non-existent ce32s[]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-nez v6, :cond_17

    goto :goto_c

    :cond_17
    if-eqz v0, :cond_3d

    .line 270
    iget-object v7, v0, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    iput-object v7, v6, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    :goto_c
    aget v7, v9, v8

    const/16 v8, 0xd

    aget v13, v9, v8

    sub-int/2addr v13, v7

    if-lt v13, v12, :cond_1d

    .line 279
    div-int/lit8 v7, v13, 0x4

    if-eqz v6, :cond_1c

    if-le v7, v12, :cond_1b

    .line 286
    new-array v14, v7, [J

    iput-object v14, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v7, :cond_18

    .line 288
    iget-object v15, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-long v10, v5

    const-wide v21, 0xffffffffL

    and-long v10, v10, v21

    aput-wide v10, v15, v14

    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_d

    .line 290
    :cond_18
    iget-object v5, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    aget-wide v4, v5, v4

    const-wide/32 v10, 0x5000500

    cmp-long v7, v4, v10

    if-nez v7, :cond_1a

    .line 294
    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    aget-wide v10, v4, v12

    const/16 v4, 0x18

    ushr-long v4, v10, v4

    const-wide/16 v10, 0x45

    cmp-long v7, v4, v10

    if-ltz v7, :cond_19

    and-int/lit8 v13, v13, 0x3

    goto :goto_e

    .line 298
    :cond_19
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "[fixed last secondary common byte] is too low"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1a
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Common sec/ter weights in base data differ from the hardcoded value"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Root elements array too short"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1c
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Root elements but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1d
    :goto_e
    invoke-static {v1, v13}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    aget v4, v9, v8

    const/16 v5, 0xe

    aget v5, v9, v5

    sub-int/2addr v5, v4

    const/4 v4, 0x2

    if-lt v5, v4, :cond_1f

    if-eqz v6, :cond_1e

    .line 311
    div-int/lit8 v4, v5, 0x2

    const/4 v7, 0x1

    and-int/2addr v5, v7

    invoke-static {v1, v4, v5}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    goto :goto_f

    .line 309
    :cond_1e
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailored contexts without tailored trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1f
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :goto_f
    const/16 v4, 0xe

    aget v4, v9, v4

    const/16 v5, 0xf

    aget v5, v9, v5

    sub-int v4, v5, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_25

    if-eqz v6, :cond_24

    if-nez v0, :cond_20

    .line 335
    new-instance v5, Lcom/ibm/icu/text/UnicodeSet;

    const v7, 0xdc00

    const v8, 0xdfff

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    iput-object v5, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 336
    iget-object v5, v6, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v7, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->addLcccChars(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_10

    .line 339
    :cond_20
    iget-object v5, v0, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5}, Lcom/ibm/icu/text/UnicodeSet;->cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v5

    iput-object v5, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 342
    :goto_10
    new-instance v5, Lcom/ibm/icu/impl/USerializedSet;

    invoke-direct {v5}, Lcom/ibm/icu/impl/USerializedSet;-><init>()V

    .line 343
    div-int/lit8 v7, v4, 0x2

    and-int/lit8 v4, v4, 0x1

    invoke-static {v1, v7, v4}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v4

    const/4 v7, 0x0

    .line 345
    invoke-virtual {v5, v4, v7}, Lcom/ibm/icu/impl/USerializedSet;->getSet([CI)Z

    .line 346
    invoke-virtual {v5}, Lcom/ibm/icu/impl/USerializedSet;->countRanges()I

    move-result v4

    const/4 v8, 0x2

    new-array v10, v8, [I

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v4, :cond_21

    .line 349
    invoke-virtual {v5, v8, v10}, Lcom/ibm/icu/impl/USerializedSet;->getRange(I[I)Z

    .line 350
    iget-object v11, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    aget v12, v10, v7

    const/4 v7, 0x1

    aget v13, v10, v7

    invoke-virtual {v11, v12, v13}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_11

    :cond_21
    const/high16 v4, 0x10000

    const v5, 0xd800

    :goto_12
    const v7, 0xdc00

    if-ge v5, v7, :cond_23

    .line 356
    iget-object v7, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit16 v8, v4, 0x3ff

    invoke-virtual {v7, v4, v8}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(II)Z

    move-result v7

    if-nez v7, :cond_22

    .line 357
    iget-object v7, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v7, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_22
    add-int/lit8 v5, v5, 0x1

    add-int/lit16 v4, v4, 0x400

    goto :goto_12

    .line 360
    :cond_23
    iget-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 361
    iget-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v4, 0x0

    goto :goto_13

    .line 321
    :cond_24
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Unsafe-backward-set but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-nez v6, :cond_26

    goto :goto_13

    :cond_26
    if-eqz v0, :cond_3c

    .line 366
    iget-object v5, v0, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v5, v6, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 370
    :goto_13
    invoke-static {v1, v4}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v4, 0xf

    aget v4, v9, v4

    const/16 v5, 0x10

    aget v7, v9, v5

    sub-int/2addr v7, v4

    if-eqz v6, :cond_2a

    const/4 v4, 0x0

    .line 379
    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 380
    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/4 v4, 0x1

    aget v8, v9, v4

    shr-int/lit8 v4, v8, 0x10

    and-int/lit16 v4, v4, 0xff

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2a

    if-lt v7, v8, :cond_29

    .line 383
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    and-int/lit16 v8, v4, 0xff

    .line 385
    new-array v10, v8, [C

    iput-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 386
    iget-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/4 v11, 0x0

    aput-char v4, v10, v11

    const/4 v10, 0x1

    :goto_14
    if-ge v10, v8, :cond_27

    .line 388
    iget-object v11, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v12

    aput-char v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 390
    :cond_27
    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v10, v8

    and-int/lit8 v7, v7, 0x1

    .line 391
    invoke-static {v1, v10, v7}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v7

    iput-object v7, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    const/16 v7, 0x8

    shr-int/2addr v4, v7

    const/4 v7, 0x2

    if-ne v4, v7, :cond_28

    const/4 v7, 0x0

    goto :goto_15

    .line 394
    :cond_28
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Fast-Latin table version differs from version in data header"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    if-eqz v0, :cond_2a

    .line 397
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 398
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 402
    :cond_2a
    :goto_15
    invoke-static {v1, v7}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    aget v4, v9, v5

    const/16 v7, 0x11

    aget v7, v9, v7

    sub-int/2addr v7, v4

    const/4 v4, 0x2

    if-lt v7, v4, :cond_2e

    if-eqz v6, :cond_2d

    .line 411
    div-int/lit8 v8, v7, 0x2

    .line 412
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v10

    .line 413
    invoke-virtual {v10}, Ljava/nio/CharBuffer;->get()C

    move-result v11

    iput v11, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    .line 415
    iget v11, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    add-int/2addr v11, v5

    sub-int/2addr v8, v11

    if-le v8, v4, :cond_2c

    .line 419
    iget v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v4, v5

    new-array v4, v4, [C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    invoke-virtual {v10, v4}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 420
    new-array v4, v8, [C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    invoke-virtual {v10, v4}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 421
    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    if-nez v4, :cond_2b

    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    const/4 v10, 0x1

    aget-char v4, v4, v10

    const/16 v11, 0x300

    if-ne v4, v11, :cond_2b

    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    sub-int/2addr v8, v10

    aget-char v4, v4, v8

    const v8, 0xff00

    if-ne v4, v8, :cond_2b

    goto :goto_16

    .line 425
    :cond_2b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Script order data not valid"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_2c
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Script order data too short"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_2d
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Script order data but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v5, 0x0

    if-nez v6, :cond_2f

    goto :goto_16

    :cond_2f
    if-eqz v0, :cond_30

    .line 430
    iget v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    iput v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    .line 431
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    .line 432
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    .line 434
    :cond_30
    :goto_16
    invoke-static {v1, v7}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v4, 0x11

    aget v4, v9, v4

    const/16 v7, 0x12

    aget v7, v9, v7

    sub-int/2addr v7, v4

    const/16 v4, 0x100

    if-lt v7, v4, :cond_34

    if-eqz v6, :cond_33

    new-array v8, v4, [Z

    .line 443
    iput-object v8, v6, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v4, :cond_32

    .line 445
    iget-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    if-eqz v11, :cond_31

    const/4 v11, 0x1

    goto :goto_18

    :cond_31
    const/4 v11, 0x0

    :goto_18
    aput-boolean v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_32
    add-int/lit16 v7, v7, -0x100

    goto :goto_19

    .line 441
    :cond_33
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Data for compressible primary lead bytes but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    if-nez v6, :cond_35

    goto :goto_19

    :cond_35
    if-eqz v0, :cond_3b

    .line 451
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    .line 455
    :goto_19
    invoke-static {v1, v7}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v4, 0x12

    aget v4, v9, v4

    const/16 v5, 0x13

    aget v5, v9, v5

    sub-int/2addr v5, v4

    .line 460
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 462
    iget-object v1, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    const/4 v4, 0x1

    aget v4, v9, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    const/16 v5, 0x180

    new-array v5, v5, [C

    .line 465
    iget-object v6, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-static {v6, v1, v5}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I

    move-result v6

    .line 467
    iget v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    if-ne v4, v7, :cond_37

    iget-wide v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_37

    iget-object v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    move-object/from16 v14, v20

    .line 468
    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-eqz v7, :cond_38

    iget v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    if-ne v6, v7, :cond_38

    if-ltz v6, :cond_36

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    .line 471
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_36
    return-void

    :cond_37
    move-object/from16 v14, v20

    .line 475
    :cond_38
    iget-object v1, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 476
    iput v4, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    .line 478
    iget-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 479
    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v5

    add-int/lit16 v5, v5, 0x1000

    .line 478
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    .line 480
    iget-wide v4, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3a

    if-eqz p0, :cond_39

    move/from16 v10, p0

    .line 485
    invoke-virtual {v1, v0, v14, v10, v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->aliasReordering(Lcom/ibm/icu/impl/coll/CollationData;[II[B)V

    .line 488
    :cond_39
    iget-object v0, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v2, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I

    move-result v0

    iput v0, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    return-void

    .line 481
    :cond_3a
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "The maxVariable could not be mapped to a variableTop"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_3b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing data for compressible primary lead bytes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_3c
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing unsafe-backward-set"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_3d
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing Jamo CE32s for Hangul processing"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3e
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing collation data mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3f
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v0, v4}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_40
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "not enough indexes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_41
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v0, v4}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :goto_1a
    throw v0

    :goto_1b
    goto :goto_1a
.end method
