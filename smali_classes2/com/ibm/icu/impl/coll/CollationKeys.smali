.class public final Lcom/ibm/icu/impl/coll/CollationKeys;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;,
        Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;,
        Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CASE_LOWER_FIRST_COMMON_HIGH:I = 0xd

.field private static final CASE_LOWER_FIRST_COMMON_LOW:I = 0x1

.field private static final CASE_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x7

.field private static final CASE_LOWER_FIRST_COMMON_MIDDLE:I = 0x7

.field private static final CASE_UPPER_FIRST_COMMON_HIGH:I = 0xf

.field private static final CASE_UPPER_FIRST_COMMON_LOW:I = 0x3

.field private static final CASE_UPPER_FIRST_COMMON_MAX_COUNT:I = 0xd

.field private static final QUAT_COMMON_HIGH:I = 0xfc

.field private static final QUAT_COMMON_LOW:I = 0x1c

.field private static final QUAT_COMMON_MAX_COUNT:I = 0x71

.field private static final QUAT_COMMON_MIDDLE:I = 0x8c

.field private static final QUAT_SHIFTED_LIMIT_BYTE:I = 0x1b

.field static final SEC_COMMON_HIGH:I = 0x45

.field private static final SEC_COMMON_LOW:I = 0x5

.field private static final SEC_COMMON_MAX_COUNT:I = 0x21

.field private static final SEC_COMMON_MIDDLE:I = 0x25

.field public static final SIMPLE_LEVEL_FALLBACK:Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;

.field private static final TER_LOWER_FIRST_COMMON_HIGH:I = 0x45

.field private static final TER_LOWER_FIRST_COMMON_LOW:I = 0x5

.field private static final TER_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_LOWER_FIRST_COMMON_MIDDLE:I = 0x25

.field private static final TER_ONLY_COMMON_HIGH:I = 0xc5

.field private static final TER_ONLY_COMMON_LOW:I = 0x5

.field private static final TER_ONLY_COMMON_MAX_COUNT:I = 0x61

.field private static final TER_ONLY_COMMON_MIDDLE:I = 0x65

.field private static final TER_UPPER_FIRST_COMMON_HIGH:I = 0xc5

.field private static final TER_UPPER_FIRST_COMMON_LOW:I = 0x85

.field private static final TER_UPPER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_UPPER_FIRST_COMMON_MIDDLE:I = 0xa5

.field private static final levelMasks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;

    invoke-direct {v0}, Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 314
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/coll/CollationKeys;->levelMasks:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x6
        0x16
        0x36
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x36
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSortKeyLevel(II)Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    .line 258
    new-instance p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;

    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static writeSortKeyUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;[ZLcom/ibm/icu/impl/coll/CollationSettings;Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;ILcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;Z)V
    .locals 42

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 334
    iget v3, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    .line 336
    sget-object v4, Lcom/ibm/icu/impl/coll/CollationKeys;->levelMasks:[I

    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v5

    aget v4, v4, v5

    and-int/lit16 v5, v3, 0x400

    if-eqz v5, :cond_0

    or-int/lit8 v4, v4, 0x8

    :cond_0
    const/4 v5, 0x1

    shl-int v6, v5, p4

    sub-int/2addr v6, v5

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v4, v6

    if-nez v4, :cond_1

    return-void

    :cond_1
    and-int/lit8 v6, v3, 0xc

    const-wide/16 v7, 0x1

    if-nez v6, :cond_2

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 351
    :cond_2
    iget-wide v11, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    add-long/2addr v11, v7

    .line 354
    :goto_0
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v13

    const/4 v14, 0x3

    new-array v15, v14, [B

    const/16 v5, 0x8

    .line 357
    invoke-static {v4, v5}, Lcom/ibm/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v14

    const/4 v5, 0x4

    .line 358
    invoke-static {v4, v5}, Lcom/ibm/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v7

    const/16 v8, 0x10

    .line 359
    invoke-static {v4, v8}, Lcom/ibm/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v5

    const/16 v8, 0x20

    .line 360
    invoke-static {v4, v8}, Lcom/ibm/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v9

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 373
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v29

    ushr-long v31, v29, v8

    const-wide/32 v33, 0x2000000

    cmp-long v35, v31, v11

    if-gez v35, :cond_b

    cmp-long v35, v31, v33

    if-lez v35, :cond_b

    if-eqz v23, :cond_4

    add-int/lit8 v23, v23, -0x1

    move/from16 v10, v23

    :goto_2
    const/16 v8, 0x71

    if-lt v10, v8, :cond_3

    const/16 v8, 0x8c

    .line 382
    invoke-virtual {v9, v8}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v10, v10, -0x71

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1c

    .line 386
    invoke-virtual {v9, v10}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    move-object v10, v5

    move v8, v6

    move-wide/from16 v5, v31

    const/16 v36, 0x0

    goto :goto_3

    :cond_4
    move-object v10, v5

    move v8, v6

    move/from16 v36, v23

    move-wide/from16 v5, v31

    :goto_3
    and-int/lit8 v23, v4, 0x20

    if-eqz v23, :cond_7

    .line 391
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 392
    invoke-virtual {v0, v5, v6}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v5

    :cond_5
    move-object/from16 v37, v10

    long-to-int v10, v5

    ushr-int/lit8 v10, v10, 0x18

    const/16 v2, 0x1b

    if-lt v10, v2, :cond_6

    const/16 v2, 0x1b

    .line 397
    invoke-virtual {v9, v2}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 399
    :cond_6
    invoke-virtual {v9, v5, v6}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight32(J)V

    goto :goto_4

    :cond_7
    move-object/from16 v37, v10

    .line 402
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v29

    const/16 v2, 0x20

    ushr-long v5, v29, v2

    const-wide/16 v19, 0x0

    cmp-long v10, v5, v19

    if-eqz v10, :cond_8

    cmp-long v10, v5, v11

    if-gez v10, :cond_a

    cmp-long v10, v5, v33

    if-gtz v10, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v2, p5

    move-object/from16 v10, v37

    goto :goto_3

    :cond_a
    :goto_5
    move/from16 v23, v36

    move-wide/from16 v40, v29

    move/from16 v29, v3

    move-wide v2, v5

    move-wide/from16 v5, v40

    goto :goto_6

    :cond_b
    move-object/from16 v37, v5

    move v8, v6

    const/16 v2, 0x20

    move-wide/from16 v5, v29

    move/from16 v29, v3

    move-wide/from16 v2, v31

    :goto_6
    const-wide/16 v17, 0x1

    cmp-long v30, v2, v17

    if-lez v30, :cond_15

    and-int/lit8 v30, v4, 0x2

    if-eqz v30, :cond_15

    long-to-int v10, v2

    ushr-int/lit8 v10, v10, 0x18

    .line 413
    aget-boolean v10, p1, v10

    .line 414
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v31

    if-eqz v31, :cond_c

    .line 415
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v2

    :cond_c
    long-to-int v0, v2

    move-wide/from16 v31, v11

    ushr-int/lit8 v11, v0, 0x18

    move/from16 v36, v8

    move-wide/from16 v40, v21

    move-object/from16 v21, v9

    move-wide/from16 v8, v40

    if-eqz v10, :cond_e

    long-to-int v12, v8

    ushr-int/lit8 v12, v12, 0x18

    if-eq v11, v12, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    const/16 v10, 0x10

    goto :goto_a

    :cond_e
    :goto_8
    const-wide/16 v19, 0x0

    cmp-long v12, v8, v19

    if-eqz v12, :cond_10

    cmp-long v12, v2, v8

    if-gez v12, :cond_f

    const/4 v8, 0x2

    if-le v11, v8, :cond_10

    const/4 v8, 0x3

    .line 424
    invoke-virtual {v1, v8}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    goto :goto_9

    :cond_f
    const/16 v8, 0xff

    .line 427
    invoke-virtual {v1, v8}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 430
    :cond_10
    :goto_9
    invoke-virtual {v1, v11}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    if-eqz v10, :cond_11

    move-wide v8, v2

    goto :goto_7

    :cond_11
    const-wide/16 v8, 0x0

    goto :goto_7

    :goto_a
    ushr-long v11, v2, v10

    long-to-int v12, v11

    int-to-byte v11, v12

    if-eqz v11, :cond_14

    const/4 v12, 0x0

    aput-byte v11, v15, v12

    move/from16 v16, v13

    const/16 v11, 0x8

    ushr-long v12, v2, v11

    long-to-int v13, v12

    int-to-byte v12, v13

    const/4 v13, 0x1

    aput-byte v12, v15, v13

    int-to-byte v0, v0

    const/4 v12, 0x2

    aput-byte v0, v15, v12

    aget-byte v0, v15, v13

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    aget-byte v0, v15, v12

    if-nez v0, :cond_13

    const/4 v0, 0x2

    goto :goto_b

    :cond_13
    const/4 v0, 0x3

    .line 442
    :goto_b
    invoke-virtual {v1, v15, v0}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    goto :goto_c

    :cond_14
    move/from16 v16, v13

    const/16 v11, 0x8

    :goto_c
    if-nez p6, :cond_16

    .line 447
    invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Overflowed()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_15
    move/from16 v36, v8

    move-wide/from16 v31, v11

    move/from16 v16, v13

    const/16 v10, 0x10

    const/16 v11, 0x8

    move-wide/from16 v40, v21

    move-object/from16 v21, v9

    move-wide/from16 v8, v40

    :cond_16
    long-to-int v0, v5

    if-nez v0, :cond_17

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    move/from16 v13, v16

    move/from16 v3, v29

    move-wide/from16 v11, v31

    move/from16 v6, v36

    move-object/from16 v5, v37

    move-wide/from16 v40, v8

    move-object/from16 v9, v21

    move-wide/from16 v21, v40

    :goto_d
    const/16 v8, 0x20

    goto/16 :goto_1

    :cond_17
    and-int/lit8 v5, v4, 0x4

    const/16 v6, 0x25

    const/16 v12, 0x21

    const/16 v13, 0x500

    if-eqz v5, :cond_25

    ushr-int/lit8 v10, v0, 0x10

    if-nez v10, :cond_18

    goto/16 :goto_15

    :cond_18
    if-ne v10, v13, :cond_1a

    move/from16 v11, v29

    and-int/lit16 v13, v11, 0x800

    if-eqz v13, :cond_19

    cmp-long v13, v2, v33

    if-eqz v13, :cond_1b

    :cond_19
    add-int/lit8 v24, v24, 0x1

    :goto_e
    move/from16 v10, v25

    const-wide/16 v17, 0x1

    goto/16 :goto_16

    :cond_1a
    move/from16 v11, v29

    :cond_1b
    and-int/lit16 v13, v11, 0x800

    if-nez v13, :cond_1f

    if-eqz v24, :cond_1e

    add-int/lit8 v24, v24, -0x1

    move/from16 v13, v24

    :goto_f
    if-lt v13, v12, :cond_1c

    .line 475
    invoke-virtual {v7, v6}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v13, v13, -0x21

    goto :goto_f

    :cond_1c
    const/16 v12, 0x500

    if-ge v10, v12, :cond_1d

    add-int/lit8 v13, v13, 0x5

    goto :goto_10

    :cond_1d
    rsub-int/lit8 v13, v13, 0x45

    .line 484
    :goto_10
    invoke-virtual {v7, v13}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v24, 0x0

    .line 487
    :cond_1e
    invoke-virtual {v7, v10}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto :goto_e

    :cond_1f
    if-eqz v24, :cond_21

    add-int/lit8 v24, v24, -0x1

    .line 492
    rem-int/lit8 v12, v24, 0x21

    move/from16 v13, v25

    const/16 v6, 0x500

    if-ge v13, v6, :cond_20

    add-int/lit8 v6, v12, 0x5

    goto :goto_11

    :cond_20
    rsub-int/lit8 v6, v12, 0x45

    .line 499
    :goto_11
    invoke-virtual {v7, v6}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    sub-int v24, v24, v12

    :goto_12
    if-lez v24, :cond_21

    const/16 v6, 0x25

    .line 503
    invoke-virtual {v7, v6}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v24, v24, -0x21

    goto :goto_12

    :cond_21
    const-wide/16 v12, 0x0

    cmp-long v6, v12, v2

    if-gez v6, :cond_24

    cmp-long v6, v2, v33

    if-gtz v6, :cond_24

    .line 511
    invoke-virtual {v7}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->data()[B

    move-result-object v6

    .line 512
    invoke-virtual {v7}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    :goto_13
    move/from16 v12, v26

    if-ge v12, v10, :cond_22

    .line 514
    aget-byte v13, v6, v12

    add-int/lit8 v26, v12, 0x1

    .line 515
    aget-byte v33, v6, v10

    aput-byte v33, v6, v12

    add-int/lit8 v12, v10, -0x1

    .line 516
    aput-byte v13, v6, v10

    move v10, v12

    goto :goto_13

    :cond_22
    const-wide/16 v17, 0x1

    cmp-long v6, v2, v17

    if-nez v6, :cond_23

    const/4 v6, 0x1

    goto :goto_14

    :cond_23
    const/4 v6, 0x2

    .line 518
    :goto_14
    invoke-virtual {v7, v6}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 521
    invoke-virtual {v7}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v6

    move/from16 v26, v6

    const/4 v10, 0x0

    goto :goto_16

    :cond_24
    const-wide/16 v17, 0x1

    .line 523
    invoke-virtual {v7, v10}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendReverseWeight16(I)V

    goto :goto_16

    :cond_25
    :goto_15
    move/from16 v13, v25

    move/from16 v11, v29

    const-wide/16 v17, 0x1

    move v10, v13

    :goto_16
    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_32

    .line 530
    invoke-static {v11}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v12

    if-nez v12, :cond_26

    const-wide/16 v12, 0x0

    cmp-long v19, v2, v12

    if-nez v19, :cond_27

    goto/16 :goto_1d

    :cond_26
    const-wide/16 v12, 0x0

    ushr-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_27

    goto/16 :goto_1d

    :cond_27
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v2, 0xc0

    if-nez v3, :cond_28

    const/4 v3, 0x1

    if-le v2, v3, :cond_29

    add-int/lit8 v27, v27, 0x1

    goto :goto_1d

    :cond_28
    const/4 v3, 0x1

    :cond_29
    and-int/lit16 v12, v11, 0x100

    if-nez v12, :cond_2e

    if-eqz v27, :cond_2d

    if-gt v2, v3, :cond_2a

    .line 548
    invoke-virtual {v14}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_2a
    add-int/lit8 v27, v27, -0x1

    move/from16 v3, v27

    :goto_17
    const/4 v12, 0x7

    if-lt v3, v12, :cond_2b

    const/16 v12, 0x70

    .line 551
    invoke-virtual {v14, v12}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v3, v3, -0x7

    goto :goto_17

    :cond_2b
    const/4 v12, 0x1

    if-gt v2, v12, :cond_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2c
    rsub-int/lit8 v3, v3, 0xd

    :goto_18
    const/4 v12, 0x4

    shl-int/2addr v3, v12

    .line 560
    invoke-virtual {v14, v3}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v3, 0x1

    const/16 v27, 0x0

    goto :goto_19

    :cond_2d
    const/4 v12, 0x4

    const/4 v3, 0x1

    :goto_19
    if-le v2, v3, :cond_31

    ushr-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0xd

    goto :goto_1c

    :cond_2e
    if-eqz v27, :cond_30

    add-int/lit8 v27, v27, -0x1

    move/from16 v3, v27

    :goto_1a
    const/16 v12, 0xd

    if-lt v3, v12, :cond_2f

    const/16 v12, 0x30

    .line 574
    invoke-virtual {v14, v12}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v3, v3, -0xd

    goto :goto_1a

    :cond_2f
    add-int/lit8 v3, v3, 0x3

    const/4 v12, 0x4

    shl-int/2addr v3, v12

    .line 577
    invoke-virtual {v14, v3}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v3, 0x1

    const/16 v27, 0x0

    goto :goto_1b

    :cond_30
    const/4 v12, 0x4

    const/4 v3, 0x1

    :goto_1b
    if-le v2, v3, :cond_31

    ushr-int/lit8 v2, v2, 0x6

    const/4 v3, 0x3

    rsub-int/lit8 v2, v2, 0x3

    :goto_1c
    shl-int/2addr v2, v12

    .line 586
    :cond_31
    invoke-virtual {v14, v2}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    :cond_32
    :goto_1d
    and-int/lit8 v2, v4, 0x10

    if-eqz v2, :cond_44

    and-int v12, v0, v16

    const/16 v13, 0x500

    if-ne v12, v13, :cond_33

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_27

    :cond_33
    const v13, 0x8000

    and-int v13, v16, v13

    if-nez v13, :cond_38

    if-eqz v28, :cond_36

    add-int/lit8 v28, v28, -0x1

    move/from16 v13, v28

    :goto_1e
    const/16 v3, 0x61

    if-lt v13, v3, :cond_34

    const/16 v3, 0x65

    move-wide/from16 v38, v8

    move-object/from16 v8, v37

    .line 602
    invoke-virtual {v8, v3}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v13, v13, -0x61

    move-wide/from16 v8, v38

    goto :goto_1e

    :cond_34
    move-wide/from16 v38, v8

    move-object/from16 v8, v37

    const/16 v3, 0x500

    if-ge v12, v3, :cond_35

    add-int/lit8 v13, v13, 0x5

    goto :goto_1f

    :cond_35
    rsub-int v13, v13, 0xc5

    .line 611
    :goto_1f
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v28, 0x0

    goto :goto_20

    :cond_36
    move-wide/from16 v38, v8

    move-object/from16 v8, v37

    const/16 v3, 0x500

    :goto_20
    if-le v12, v3, :cond_37

    const v3, 0xc000

    add-int/2addr v12, v3

    .line 617
    :cond_37
    invoke-virtual {v8, v12}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_28

    :cond_38
    move-wide/from16 v38, v8

    move-object/from16 v8, v37

    and-int/lit16 v3, v11, 0x100

    if-nez v3, :cond_3d

    if-eqz v28, :cond_3b

    add-int/lit8 v28, v28, -0x1

    move/from16 v3, v28

    :goto_21
    const/16 v9, 0x21

    if-lt v3, v9, :cond_39

    const/16 v9, 0x25

    .line 624
    invoke-virtual {v8, v9}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v3, v3, -0x21

    goto :goto_21

    :cond_39
    const/16 v13, 0x500

    if-ge v12, v13, :cond_3a

    add-int/lit8 v3, v3, 0x5

    goto :goto_22

    :cond_3a
    rsub-int/lit8 v3, v3, 0x45

    .line 633
    :goto_22
    invoke-virtual {v8, v3}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v28, 0x0

    goto :goto_23

    :cond_3b
    const/16 v13, 0x500

    :goto_23
    if-le v12, v13, :cond_3c

    add-int/lit16 v12, v12, 0x4000

    .line 639
    :cond_3c
    invoke-virtual {v8, v12}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto :goto_28

    :cond_3d
    const/16 v3, 0x100

    if-gt v12, v3, :cond_3e

    goto :goto_24

    :cond_3e
    ushr-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3f

    const v3, 0xc000

    xor-int/2addr v12, v3

    const v3, 0xc500

    if-ge v12, v3, :cond_40

    add-int/lit16 v12, v12, -0x4000

    goto :goto_24

    :cond_3f
    add-int/lit16 v12, v12, 0x4000

    :cond_40
    :goto_24
    if-eqz v28, :cond_43

    add-int/lit8 v28, v28, -0x1

    move/from16 v3, v28

    const/16 v9, 0x21

    :goto_25
    if-lt v3, v9, :cond_41

    const/16 v13, 0xa5

    .line 670
    invoke-virtual {v8, v13}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v3, v3, -0x21

    goto :goto_25

    :cond_41
    const v9, 0x8500

    if-ge v12, v9, :cond_42

    add-int/lit16 v3, v3, 0x85

    goto :goto_26

    :cond_42
    rsub-int v3, v3, 0xc5

    .line 679
    :goto_26
    invoke-virtual {v8, v3}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v28, 0x0

    .line 682
    :cond_43
    invoke-virtual {v8, v12}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto :goto_28

    :cond_44
    :goto_27
    move-wide/from16 v38, v8

    move-object/from16 v8, v37

    :goto_28
    and-int/lit8 v3, v4, 0x20

    if-eqz v3, :cond_45

    const v9, 0xffff

    and-int/2addr v9, v0

    and-int/lit16 v12, v9, 0xc0

    if-nez v12, :cond_46

    const/16 v12, 0x100

    if-le v9, v12, :cond_47

    add-int/lit8 v23, v23, 0x1

    :cond_45
    move-object/from16 v13, v21

    :goto_29
    move/from16 v21, v4

    goto :goto_2e

    :cond_46
    const/16 v12, 0x100

    :cond_47
    if-ne v9, v12, :cond_48

    if-nez v36, :cond_48

    .line 692
    invoke-virtual/range {v21 .. v21}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_48

    move-object/from16 v13, v21

    const/4 v12, 0x1

    .line 702
    invoke-virtual {v13, v12}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    goto :goto_29

    :cond_48
    move-object/from16 v13, v21

    if-ne v9, v12, :cond_49

    const/4 v9, 0x1

    goto :goto_2a

    :cond_49
    ushr-int/lit8 v9, v9, 0x6

    const/4 v12, 0x3

    and-int/2addr v9, v12

    add-int/lit16 v9, v9, 0xfc

    :goto_2a
    if-eqz v23, :cond_4c

    add-int/lit8 v23, v23, -0x1

    move/from16 v21, v4

    move/from16 v12, v23

    :goto_2b
    const/16 v4, 0x71

    if-lt v12, v4, :cond_4a

    const/16 v4, 0x8c

    .line 712
    invoke-virtual {v13, v4}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v12, v12, -0x71

    goto :goto_2b

    :cond_4a
    const/16 v4, 0x1c

    if-ge v9, v4, :cond_4b

    add-int/lit8 v12, v12, 0x1c

    goto :goto_2c

    :cond_4b
    rsub-int v12, v12, 0xfc

    .line 721
    :goto_2c
    invoke-virtual {v13, v12}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v23, 0x0

    goto :goto_2d

    :cond_4c
    move/from16 v21, v4

    .line 724
    :goto_2d
    invoke-virtual {v13, v9}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    :goto_2e
    ushr-int/lit8 v0, v0, 0x18

    const/4 v4, 0x1

    if-ne v0, v4, :cond_57

    move-object/from16 v0, p5

    if-eqz v5, :cond_4e

    const/4 v5, 0x2

    .line 736
    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v5

    if-nez v5, :cond_4d

    return-void

    .line 740
    :cond_4d
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 741
    invoke-virtual {v7, v1}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    :cond_4e
    if-eqz v6, :cond_52

    const/4 v5, 0x3

    .line 745
    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v5

    if-nez v5, :cond_4f

    return-void

    .line 749
    :cond_4f
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 751
    invoke-virtual {v14}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_2f
    if-ge v4, v5, :cond_51

    .line 754
    invoke-virtual {v14, v4}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->getAt(I)B

    move-result v7

    if-nez v6, :cond_50

    move v6, v7

    goto :goto_30

    :cond_50
    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    .line 759
    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    const/4 v6, 0x0

    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_51
    if-eqz v6, :cond_52

    .line 764
    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    :cond_52
    if-eqz v2, :cond_54

    const/4 v2, 0x4

    .line 769
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v2

    if-nez v2, :cond_53

    return-void

    :cond_53
    const/4 v4, 0x1

    .line 773
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 774
    invoke-virtual {v8, v1}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    goto :goto_31

    :cond_54
    const/4 v4, 0x1

    :goto_31
    if-eqz v3, :cond_56

    const/4 v2, 0x5

    .line 778
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_55

    return-void

    .line 782
    :cond_55
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 783
    invoke-virtual {v13, v1}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    :cond_56
    return-void

    :cond_57
    move-object/from16 v0, p2

    move-object/from16 v2, p5

    move-object v5, v8

    move/from16 v25, v10

    move v3, v11

    move-object v9, v13

    move/from16 v13, v16

    move/from16 v4, v21

    move-wide/from16 v11, v31

    move/from16 v6, v36

    move-wide/from16 v21, v38

    goto/16 :goto_d
.end method
