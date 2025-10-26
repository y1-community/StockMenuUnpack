.class public final Lcom/ibm/icu/impl/coll/CollationFastLatin;
.super Ljava/lang/Object;
.source "CollationFastLatin.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BAIL_OUT:I = 0x1

.field public static final BAIL_OUT_RESULT:I = -0x2

.field static final CASE_AND_TERTIARY_MASK:I = 0x1f

.field static final CASE_MASK:I = 0x18

.field static final COMMON_SEC:I = 0xa0

.field static final COMMON_SEC_PLUS_OFFSET:I = 0xc0

.field static final COMMON_TER:I = 0x0

.field static final COMMON_TER_PLUS_OFFSET:I = 0x20

.field static final CONTRACTION:I = 0x400

.field static final CONTR_CHAR_MASK:I = 0x1ff

.field static final CONTR_LENGTH_SHIFT:I = 0x9

.field static final EOS:I = 0x2

.field static final EXPANSION:I = 0x800

.field static final INDEX_MASK:I = 0x3ff

.field public static final LATIN_LIMIT:I = 0x180

.field public static final LATIN_MAX:I = 0x17f

.field static final LATIN_MAX_UTF8_LEAD:I = 0xc5

.field static final LONG_INC:I = 0x8

.field static final LONG_PRIMARY_MASK:I = 0xfff8

.field static final LOWER_CASE:I = 0x8

.field static final MAX_LONG:I = 0xff8

.field static final MAX_SEC_AFTER:I = 0x160

.field static final MAX_SEC_BEFORE:I = 0x80

.field static final MAX_SEC_HIGH:I = 0x3e0

.field static final MAX_SHORT:I = 0xfc00

.field static final MAX_TER_AFTER:I = 0x7

.field static final MERGE_WEIGHT:I = 0x3

.field static final MIN_LONG:I = 0xc00

.field static final MIN_SEC_AFTER:I = 0xc0

.field static final MIN_SEC_BEFORE:I = 0x0

.field static final MIN_SEC_HIGH:I = 0x180

.field static final MIN_SHORT:I = 0x1000

.field static final NUM_FAST_CHARS:I = 0x1c0

.field static final PUNCT_LIMIT:I = 0x2040

.field static final PUNCT_START:I = 0x2000

.field static final SECONDARY_MASK:I = 0x3e0

.field static final SEC_INC:I = 0x20

.field static final SEC_OFFSET:I = 0x20

.field static final SHORT_INC:I = 0x400

.field static final SHORT_PRIMARY_MASK:I = 0xfc00

.field static final TERTIARY_MASK:I = 0x7

.field static final TER_OFFSET:I = 0x20

.field static final TWO_CASES_MASK:I = 0x180018

.field static final TWO_COMMON_SEC_PLUS_OFFSET:I = 0xc000c0

.field static final TWO_COMMON_TER_PLUS_OFFSET:I = 0x200020

.field static final TWO_LONG_PRIMARIES_MASK:I = -0x70008

.field static final TWO_LOWER_CASES:I = 0x80008

.field static final TWO_SECONDARIES_MASK:I = 0x3e003e0

.field static final TWO_SEC_OFFSETS:I = 0x200020

.field static final TWO_SHORT_PRIMARIES_MASK:I = -0x3ff0400

.field static final TWO_TERTIARIES_MASK:I = 0x70007

.field static final TWO_TER_OFFSETS:I = 0x200020

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    shr-int/lit8 v3, p2, 0x10

    const v4, 0xffff

    and-int v5, p2, v4

    move/from16 v8, p5

    move v9, v8

    :goto_0
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v13, 0x30

    const/16 v14, 0x39

    const/16 v15, 0x1000

    const/16 v6, 0x2040

    const/16 v16, -0x2

    const/16 v4, 0x2000

    const-wide/16 v17, -0x1

    const-wide/16 v19, 0x0

    const/16 v11, 0x17f

    const/4 v12, 0x1

    if-nez v7, :cond_9

    .line 306
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v8, v7, :cond_0

    const/4 v7, 0x2

    goto :goto_4

    :cond_0
    add-int/lit8 v7, v8, 0x1

    .line 310
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v11, :cond_3

    .line 312
    aget-char v23, p1, v8

    if-eqz v23, :cond_1

    move v8, v7

    move/from16 v7, v23

    goto :goto_4

    :cond_1
    if-gt v8, v14, :cond_2

    if-lt v8, v13, :cond_2

    and-int/lit8 v23, v5, 0x2

    if-eqz v23, :cond_2

    return v16

    .line 317
    :cond_2
    aget-char v23, v0, v8

    move/from16 v6, v23

    goto :goto_2

    :cond_3
    if-gt v4, v8, :cond_4

    if-ge v8, v6, :cond_4

    add-int/lit16 v6, v8, -0x2000

    add-int/lit16 v6, v6, 0x180

    .line 319
    aget-char v6, v0, v6

    goto :goto_2

    .line 321
    :cond_4
    invoke-static {v0, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v6

    :goto_2
    if-lt v6, v15, :cond_5

    const v22, 0xfc00

    and-int v6, v6, v22

    :goto_3
    move v8, v7

    move v7, v6

    goto :goto_4

    :cond_5
    if-le v6, v3, :cond_6

    const v21, 0xfff8

    and-int v6, v6, v21

    goto :goto_3

    .line 330
    :cond_6
    invoke-static {v0, v8, v6, v1, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v4, v13, v19

    if-gez v4, :cond_7

    add-int/lit8 v7, v7, 0x1

    xor-long v13, v13, v17

    :cond_7
    move v8, v7

    long-to-int v4, v13

    if-ne v4, v12, :cond_8

    return v16

    .line 337
    :cond_8
    invoke-static {v3, v4}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v7

    goto/16 :goto_28

    :cond_9
    :goto_4
    if-nez v10, :cond_13

    .line 342
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v9, v6, :cond_a

    const/4 v10, 0x2

    goto :goto_8

    :cond_a
    add-int/lit8 v6, v9, 0x1

    .line 346
    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v11, :cond_d

    .line 348
    aget-char v10, p1, v9

    if-eqz v10, :cond_b

    :goto_5
    move v9, v6

    goto :goto_8

    :cond_b
    if-gt v9, v14, :cond_c

    if-lt v9, v13, :cond_c

    and-int/lit8 v10, v5, 0x2

    if-eqz v10, :cond_c

    return v16

    .line 353
    :cond_c
    aget-char v10, v0, v9

    goto :goto_6

    :cond_d
    if-gt v4, v9, :cond_e

    const/16 v10, 0x2040

    if-ge v9, v10, :cond_e

    add-int/lit16 v10, v9, -0x2000

    add-int/lit16 v10, v10, 0x180

    .line 355
    aget-char v10, v0, v10

    goto :goto_6

    .line 357
    :cond_e
    invoke-static {v0, v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v10

    :goto_6
    if-lt v10, v15, :cond_f

    const v22, 0xfc00

    and-int v9, v10, v22

    :goto_7
    move v10, v9

    goto :goto_5

    :cond_f
    const v22, 0xfc00

    if-le v10, v3, :cond_10

    const v21, 0xfff8

    and-int v9, v10, v21

    goto :goto_7

    :cond_10
    const v21, 0xfff8

    .line 366
    invoke-static {v0, v9, v10, v2, v6}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v9

    cmp-long v24, v9, v19

    if-gez v24, :cond_11

    add-int/lit8 v6, v6, 0x1

    xor-long v9, v9, v17

    :cond_11
    long-to-int v10, v9

    if-ne v10, v12, :cond_12

    return v16

    .line 373
    :cond_12
    invoke-static {v3, v10}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v10

    move v9, v6

    goto :goto_4

    :cond_13
    :goto_8
    if-ne v7, v10, :cond_15

    const/4 v13, 0x2

    if-ne v7, v13, :cond_14

    goto :goto_9

    :cond_14
    const v4, 0xffff

    goto/16 :goto_0

    :cond_15
    const/4 v13, 0x2

    const v14, 0xffff

    and-int v6, v7, v14

    and-int v15, v10, v14

    if-eq v6, v15, :cond_17

    if-ge v6, v15, :cond_16

    const/4 v12, -0x1

    :cond_16
    return v12

    :cond_17
    if-ne v7, v13, :cond_62

    .line 398
    :goto_9
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v6

    if-lt v6, v12, :cond_2c

    move/from16 v8, p5

    move v9, v8

    :cond_18
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    const/16 v10, 0xc0

    if-nez v6, :cond_1f

    .line 403
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v8, v6, :cond_19

    const/4 v6, 0x2

    goto :goto_d

    :cond_19
    add-int/lit8 v6, v8, 0x1

    .line 407
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v11, :cond_1a

    .line 409
    aget-char v13, v0, v8

    :goto_b
    const/16 v14, 0x1000

    goto :goto_c

    :cond_1a
    if-gt v4, v8, :cond_1b

    const/16 v13, 0x2040

    if-ge v8, v13, :cond_1b

    add-int/lit16 v13, v8, -0x2000

    add-int/lit16 v13, v13, 0x180

    .line 411
    aget-char v13, v0, v13

    goto :goto_b

    .line 413
    :cond_1b
    invoke-static {v0, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    goto :goto_b

    :goto_c
    if-lt v13, v14, :cond_1c

    .line 416
    invoke-static {v13}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v8

    move/from16 v25, v8

    move v8, v6

    move/from16 v6, v25

    goto :goto_d

    :cond_1c
    if-le v13, v3, :cond_1d

    move v8, v6

    const/16 v6, 0xc0

    goto :goto_d

    .line 422
    :cond_1d
    invoke-static {v0, v8, v13, v1, v6}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v8, v13, v19

    if-gez v8, :cond_1e

    add-int/lit8 v6, v6, 0x1

    xor-long v13, v13, v17

    :cond_1e
    move v8, v6

    long-to-int v6, v13

    .line 427
    invoke-static {v3, v6}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v6

    goto :goto_a

    :cond_1f
    :goto_d
    if-nez v7, :cond_26

    .line 432
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v9, v7, :cond_20

    const/4 v10, 0x2

    const/16 v15, 0x1000

    goto :goto_11

    :cond_20
    add-int/lit8 v7, v9, 0x1

    .line 436
    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v11, :cond_21

    .line 438
    aget-char v13, v0, v9

    move v14, v13

    const/16 v13, 0x2040

    :goto_e
    const/16 v15, 0x1000

    goto :goto_f

    :cond_21
    const/16 v13, 0x2040

    if-gt v4, v9, :cond_22

    if-ge v9, v13, :cond_22

    add-int/lit16 v14, v9, -0x2000

    add-int/lit16 v14, v14, 0x180

    .line 440
    aget-char v14, v0, v14

    goto :goto_e

    .line 442
    :cond_22
    invoke-static {v0, v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v14

    goto :goto_e

    :goto_f
    if-lt v14, v15, :cond_23

    .line 445
    invoke-static {v14}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v9

    move v10, v9

    :goto_10
    move v9, v7

    goto :goto_11

    :cond_23
    if-le v14, v3, :cond_24

    goto :goto_10

    .line 451
    :cond_24
    invoke-static {v0, v9, v14, v2, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v23

    cmp-long v9, v23, v19

    if-gez v9, :cond_25

    add-int/lit8 v7, v7, 0x1

    xor-long v23, v23, v17

    :cond_25
    move v9, v7

    move-wide/from16 v13, v23

    long-to-int v7, v13

    .line 456
    invoke-static {v3, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v7

    goto :goto_d

    :cond_26
    const/16 v15, 0x1000

    move v10, v7

    :goto_11
    if-ne v6, v10, :cond_27

    const/4 v7, 0x2

    if-ne v6, v7, :cond_18

    goto :goto_12

    :cond_27
    const v7, 0xffff

    and-int v13, v6, v7

    and-int v14, v10, v7

    if-eq v13, v14, :cond_2a

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_28

    return v16

    :cond_28
    if-ge v13, v14, :cond_29

    const/4 v12, -0x1

    :cond_29
    return v12

    :cond_2a
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2b

    goto :goto_12

    :cond_2b
    ushr-int/lit8 v6, v6, 0x10

    ushr-int/lit8 v7, v10, 0x10

    goto/16 :goto_a

    :cond_2c
    :goto_12
    and-int/lit16 v4, v5, 0x400

    const/16 v6, 0xc00

    if-eqz v4, :cond_3f

    .line 482
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    if-nez v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_13

    :cond_2d
    const/4 v4, 0x0

    :goto_13
    move/from16 v9, p5

    move v10, v9

    :cond_2e
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_14
    if-nez v7, :cond_33

    .line 487
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v9, v7, :cond_2f

    const/4 v7, 0x2

    goto :goto_16

    :cond_2f
    add-int/lit8 v7, v9, 0x1

    .line 491
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v11, :cond_30

    .line 492
    aget-char v13, v0, v9

    goto :goto_15

    :cond_30
    invoke-static {v0, v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    :goto_15
    if-ge v13, v6, :cond_32

    .line 494
    invoke-static {v0, v9, v13, v1, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v9, v13, v19

    if-gez v9, :cond_31

    add-int/lit8 v7, v7, 0x1

    xor-long v13, v13, v17

    :cond_31
    long-to-int v13, v13

    :cond_32
    move v9, v7

    .line 501
    invoke-static {v3, v4, v13}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v7

    goto :goto_14

    :cond_33
    :goto_16
    if-nez v8, :cond_38

    .line 505
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v10, v8, :cond_34

    const/4 v8, 0x2

    goto :goto_18

    :cond_34
    add-int/lit8 v8, v10, 0x1

    .line 509
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-gt v10, v11, :cond_35

    .line 510
    aget-char v13, v0, v10

    goto :goto_17

    :cond_35
    invoke-static {v0, v10}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    :goto_17
    if-ge v13, v6, :cond_37

    .line 512
    invoke-static {v0, v10, v13, v2, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v10, v13, v19

    if-gez v10, :cond_36

    add-int/lit8 v8, v8, 0x1

    xor-long v13, v13, v17

    :cond_36
    long-to-int v13, v13

    :cond_37
    move v10, v8

    .line 519
    invoke-static {v3, v4, v13}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v8

    goto :goto_16

    :cond_38
    :goto_18
    if-ne v7, v8, :cond_39

    const/4 v13, 0x2

    if-ne v7, v13, :cond_2e

    goto :goto_1a

    :cond_39
    const v13, 0xffff

    and-int v14, v7, v13

    and-int v15, v8, v13

    if-eq v14, v15, :cond_3d

    and-int/lit16 v0, v5, 0x100

    if-nez v0, :cond_3b

    if-ge v14, v15, :cond_3a

    const/4 v12, -0x1

    :cond_3a
    return v12

    :cond_3b
    if-ge v14, v15, :cond_3c

    goto :goto_19

    :cond_3c
    const/4 v12, -0x1

    :goto_19
    return v12

    :cond_3d
    const/4 v13, 0x2

    if-ne v7, v13, :cond_3e

    goto :goto_1a

    :cond_3e
    ushr-int/lit8 v7, v7, 0x10

    ushr-int/lit8 v8, v8, 0x10

    goto/16 :goto_14

    .line 541
    :cond_3f
    :goto_1a
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    if-gt v4, v12, :cond_40

    const/4 v4, 0x0

    return v4

    .line 544
    :cond_40
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result v4

    move/from16 v9, p5

    move v10, v9

    :cond_41
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-nez v7, :cond_46

    .line 550
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v9, v7, :cond_42

    const/4 v13, 0x2

    goto :goto_1d

    :cond_42
    add-int/lit8 v7, v9, 0x1

    .line 554
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v11, :cond_43

    .line 555
    aget-char v13, v0, v9

    goto :goto_1c

    :cond_43
    invoke-static {v0, v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    :goto_1c
    if-ge v13, v6, :cond_45

    .line 557
    invoke-static {v0, v9, v13, v1, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v9, v13, v19

    if-gez v9, :cond_44

    add-int/lit8 v7, v7, 0x1

    xor-long v13, v13, v17

    :cond_44
    long-to-int v13, v13

    :cond_45
    move v9, v7

    .line 564
    invoke-static {v3, v4, v13}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v7

    goto :goto_1b

    :cond_46
    move v13, v7

    :goto_1d
    if-nez v8, :cond_4b

    .line 568
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v10, v7, :cond_47

    const/4 v8, 0x2

    goto :goto_1f

    :cond_47
    add-int/lit8 v7, v10, 0x1

    .line 572
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v11, :cond_48

    .line 573
    aget-char v10, v0, v8

    goto :goto_1e

    :cond_48
    invoke-static {v0, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v10

    :goto_1e
    if-ge v10, v6, :cond_4a

    .line 575
    invoke-static {v0, v8, v10, v2, v7}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    cmp-long v8, v14, v19

    if-gez v8, :cond_49

    add-int/lit8 v7, v7, 0x1

    xor-long v14, v14, v17

    :cond_49
    long-to-int v10, v14

    .line 582
    :cond_4a
    invoke-static {v3, v4, v10}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v8

    move v10, v7

    goto :goto_1d

    :cond_4b
    :goto_1f
    if-ne v13, v8, :cond_4c

    const/4 v7, 0x2

    if-ne v13, v7, :cond_41

    goto :goto_20

    :cond_4c
    const v7, 0xffff

    and-int v14, v13, v7

    and-int v15, v8, v7

    if-eq v14, v15, :cond_50

    .line 593
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x3

    if-le v14, v0, :cond_4d

    xor-int/lit8 v14, v14, 0x18

    :cond_4d
    if-le v15, v0, :cond_4e

    xor-int/lit8 v15, v15, 0x18

    :cond_4e
    if-ge v14, v15, :cond_4f

    const/4 v12, -0x1

    :cond_4f
    return v12

    :cond_50
    const/4 v7, 0x2

    if-ne v13, v7, :cond_61

    .line 610
    :goto_20
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    if-gt v4, v7, :cond_51

    const/4 v4, 0x0

    return v4

    :cond_51
    move/from16 v4, p5

    move v5, v4

    :cond_52
    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_21
    if-nez v13, :cond_57

    .line 616
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v4, v8, :cond_53

    move v13, v7

    const/4 v7, 0x2

    goto :goto_23

    :cond_53
    add-int/lit8 v8, v4, 0x1

    .line 620
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v11, :cond_54

    .line 621
    aget-char v9, v0, v4

    goto :goto_22

    :cond_54
    invoke-static {v0, v4}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v9

    :goto_22
    if-ge v9, v6, :cond_56

    .line 623
    invoke-static {v0, v4, v9, v1, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v9

    cmp-long v4, v9, v19

    if-gez v4, :cond_55

    add-int/lit8 v8, v8, 0x1

    xor-long v9, v9, v17

    :cond_55
    long-to-int v9, v9

    :cond_56
    move v4, v8

    .line 630
    invoke-static {v3, v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v13

    goto :goto_21

    :cond_57
    move/from16 v25, v13

    move v13, v7

    move/from16 v7, v25

    :goto_23
    if-nez v13, :cond_5c

    .line 634
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v5, v8, :cond_58

    const/4 v13, 0x2

    goto :goto_25

    :cond_58
    add-int/lit8 v8, v5, 0x1

    .line 638
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-gt v5, v11, :cond_59

    .line 639
    aget-char v9, v0, v5

    goto :goto_24

    :cond_59
    invoke-static {v0, v5}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v9

    :goto_24
    if-ge v9, v6, :cond_5b

    .line 641
    invoke-static {v0, v5, v9, v2, v8}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v9

    cmp-long v5, v9, v19

    if-gez v5, :cond_5a

    add-int/lit8 v8, v8, 0x1

    xor-long v9, v9, v17

    :cond_5a
    long-to-int v9, v9

    :cond_5b
    move v5, v8

    .line 648
    invoke-static {v3, v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v13

    goto :goto_23

    :cond_5c
    :goto_25
    if-ne v7, v13, :cond_5d

    const/4 v14, 0x2

    if-ne v7, v14, :cond_52

    :goto_26
    const/16 v16, 0x0

    goto :goto_27

    :cond_5d
    const/4 v14, 0x2

    const v15, 0xffff

    and-int v8, v7, v15

    and-int v9, v13, v15

    if-eq v8, v9, :cond_5f

    if-ge v8, v9, :cond_5e

    const/4 v12, -0x1

    :cond_5e
    return v12

    :cond_5f
    if-ne v7, v14, :cond_60

    goto :goto_26

    :goto_27
    return v16

    :cond_60
    const/16 v16, 0x0

    ushr-int/lit8 v7, v7, 0x10

    ushr-int/lit8 v8, v13, 0x10

    move v13, v7

    move v7, v8

    goto/16 :goto_21

    :cond_61
    const/4 v14, 0x2

    const v15, 0xffff

    const/16 v16, 0x0

    ushr-int/lit8 v7, v13, 0x10

    ushr-int/lit8 v8, v8, 0x10

    goto/16 :goto_1b

    :cond_62
    const v15, 0xffff

    const/16 v16, 0x0

    ushr-int/lit8 v7, v7, 0x10

    ushr-int/lit8 v10, v10, 0x10

    :goto_28
    const v4, 0xffff

    goto/16 :goto_1
.end method

.method private static getCases(IZI)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1000

    const v2, 0xffff

    if-gt p2, v2, :cond_3

    if-lt p2, v1, :cond_1

    and-int/lit8 p0, p2, 0x18

    if-nez p1, :cond_0

    and-int/lit16 p1, p2, 0x3e0

    const/16 p2, 0x180

    if-lt p1, p2, :cond_0

    const/high16 p1, 0x80000

    or-int/2addr p0, p1

    :cond_0
    move p2, p0

    goto :goto_1

    :cond_1
    if-le p2, p0, :cond_2

    const/16 p2, 0x8

    goto :goto_1

    :cond_2
    const/16 p0, 0xc00

    if-lt p2, p0, :cond_7

    goto :goto_0

    :cond_3
    and-int/2addr v2, p2

    if-lt v2, v1, :cond_5

    if-eqz p1, :cond_4

    const/high16 p0, -0x4000000

    and-int/2addr p0, p2

    if-nez p0, :cond_4

    and-int/lit8 p2, p2, 0x18

    goto :goto_1

    :cond_4
    const p0, 0x180018

    and-int/2addr p2, p0

    goto :goto_1

    :cond_5
    if-le v2, p0, :cond_6

    const p2, 0x80008

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p2, 0x0

    :cond_7
    :goto_1
    return p2
.end method

.method static getCharIndex(C)I
    .locals 1

    const/16 v0, 0x17f

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x2000

    if-gt v0, p0, :cond_1

    const/16 v0, 0x2040

    if-ge p0, v0, :cond_1

    add-int/lit16 p0, p0, -0x1e80

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 204
    iget-object v3, v0, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/4 v4, -0x1

    if-nez v3, :cond_0

    return v4

    .line 207
    :cond_0
    array-length v5, v2

    const/16 v6, 0x180

    if-eq v5, v6, :cond_1

    return v4

    .line 213
    :cond_1
    iget v5, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v5, v5, 0xc

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_2

    const/16 v3, 0xbff

    goto :goto_0

    .line 218
    :cond_2
    aget-char v5, v3, v8

    and-int/lit16 v5, v5, 0xff

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v9

    add-int/2addr v9, v7

    if-lt v9, v5, :cond_3

    return v4

    .line 223
    :cond_3
    aget-char v3, v3, v9

    .line 227
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v10, 0x0

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    const/16 v5, 0x1000

    :goto_1
    const/16 v7, 0x1008

    if-ge v5, v7, :cond_8

    .line 235
    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v8

    .line 236
    invoke-virtual {v1, v8, v9}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v8

    const/16 v7, 0x1004

    if-ne v5, v7, :cond_4

    move-wide/from16 v18, v8

    move-wide/from16 v16, v12

    goto :goto_2

    :cond_4
    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    cmp-long v7, v8, v12

    if-gez v7, :cond_5

    return v4

    :cond_5
    cmp-long v7, v18, v10

    if-eqz v7, :cond_6

    cmp-long v7, v14, v10

    if-nez v7, :cond_6

    cmp-long v7, v12, v16

    if-nez v7, :cond_6

    move-wide v14, v8

    :cond_6
    move-wide v12, v8

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    const/16 v5, 0x19

    .line 252
    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v7

    .line 253
    invoke-virtual {v1, v7, v8}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v7

    cmp-long v5, v7, v12

    if-gez v5, :cond_9

    return v4

    :cond_9
    cmp-long v4, v14, v10

    if-nez v4, :cond_a

    move-wide v14, v7

    :cond_a
    cmp-long v4, v16, v18

    if-gez v4, :cond_b

    cmp-long v4, v18, v14

    if-ltz v4, :cond_c

    :cond_b
    const/4 v7, 0x1

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    .line 265
    :goto_3
    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_f

    .line 267
    aget-char v5, v0, v4

    const/16 v8, 0x1000

    if-lt v5, v8, :cond_d

    const v9, 0xfc00

    :goto_5
    and-int/2addr v5, v9

    goto :goto_6

    :cond_d
    if-le v5, v3, :cond_e

    const v9, 0xfff8

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :goto_6
    int-to-char v5, v5

    .line 275
    aput-char v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    if-nez v7, :cond_10

    .line 277
    iget v0, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    :cond_10
    const/16 v0, 0x30

    :goto_7
    const/16 v4, 0x39

    if-gt v0, v4, :cond_11

    const/4 v4, 0x0

    .line 279
    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    shl-int/lit8 v0, v3, 0x10

    .line 283
    iget v1, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    or-int/2addr v0, v1

    return v0
.end method

.method private static getPrimaries(II)I
    .locals 2

    const v0, 0xffff

    and-int/2addr v0, p1

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    const p0, -0x3ff0400

    :goto_0
    and-int/2addr p0, p1

    return p0

    :cond_0
    if-le v0, p0, :cond_1

    const p0, -0x70008

    goto :goto_0

    :cond_1
    const/16 p0, 0xc00

    if-lt v0, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return p1
.end method

.method private static getQuaternaries(II)I
    .locals 3

    const v0, 0xfc00

    const v1, -0x3ff0400

    const v2, 0xffff

    if-gt p1, v2, :cond_3

    const/16 v2, 0x1000

    if-lt p1, v2, :cond_0

    and-int/lit16 p0, p1, 0x3e0

    const/16 p1, 0x180

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_2

    :cond_1
    const p1, 0xfc00

    goto :goto_2

    :cond_2
    const/16 p0, 0xc00

    if-lt p1, p0, :cond_5

    const p0, 0xfff8

    goto :goto_1

    :cond_3
    and-int v0, p1, v2

    if-le v0, p0, :cond_4

    :goto_0
    const p1, -0x3ff0400

    goto :goto_2

    :cond_4
    const p0, -0x70008

    :goto_1
    and-int/2addr p1, p0

    :cond_5
    :goto_2
    return p1
.end method

.method private static getSecondaries(II)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1000

    const v2, 0xffff

    if-gt p1, v2, :cond_2

    if-lt p1, v1, :cond_0

    .line 762
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result p1

    goto :goto_1

    :cond_0
    if-le p1, p0, :cond_1

    const/16 p1, 0xc0

    goto :goto_1

    :cond_1
    const/16 p0, 0xc00

    if-lt p1, p0, :cond_5

    goto :goto_0

    :cond_2
    and-int/2addr v2, p1

    if-lt v2, v1, :cond_3

    const p0, 0x3e003e0

    and-int/2addr p0, p1

    const p1, 0x200020

    add-int/2addr p1, p0

    goto :goto_1

    :cond_3
    if-le v2, p0, :cond_4

    const p1, 0xc000c0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :cond_5
    :goto_1
    return p1
.end method

.method private static getSecondariesFromOneShortCE(I)I
    .locals 1

    and-int/lit16 p0, p0, 0x3e0

    const/16 v0, 0x180

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x20

    shl-int/lit8 p0, p0, 0x10

    or-int/lit16 p0, p0, 0xc0

    return p0
.end method

.method private static getTertiaries(IZI)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1000

    const v2, 0xffff

    if-gt p2, v2, :cond_4

    if-lt p2, v1, :cond_2

    const/16 p0, 0x180

    if-eqz p1, :cond_0

    and-int/lit8 p1, p2, 0x1f

    add-int/lit8 p1, p1, 0x20

    and-int/lit16 p2, p2, 0x3e0

    if-lt p2, p0, :cond_1

    const/high16 p0, 0x280000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p2, 0x7

    add-int/lit8 p1, p1, 0x20

    and-int/lit16 p2, p2, 0x3e0

    if-lt p2, p0, :cond_1

    const/high16 p0, 0x200000

    :goto_0
    or-int/2addr p0, p1

    move p2, p0

    goto :goto_3

    :cond_1
    move p2, p1

    goto :goto_3

    :cond_2
    if-le p2, p0, :cond_3

    and-int/lit8 p0, p2, 0x7

    add-int/lit8 p2, p0, 0x20

    if-eqz p1, :cond_8

    or-int/lit8 p2, p2, 0x8

    goto :goto_3

    :cond_3
    const/16 p0, 0xc00

    if-lt p2, p0, :cond_8

    goto :goto_2

    :cond_4
    and-int/2addr v2, p2

    const v3, 0x200020

    const v4, 0x70007

    if-lt v2, v1, :cond_6

    if-eqz p1, :cond_5

    const p0, 0x1f001f

    and-int/2addr p0, p2

    goto :goto_1

    :cond_5
    and-int p0, p2, v4

    :goto_1
    add-int p2, p0, v3

    goto :goto_3

    :cond_6
    if-le v2, p0, :cond_7

    and-int p0, p2, v4

    add-int p2, p0, v3

    if-eqz p1, :cond_8

    const p0, 0x80008

    or-int/2addr p2, p0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p2, 0x0

    :cond_8
    :goto_3
    return p2
.end method

.method private static lookup([CI)I
    .locals 2

    const/16 v0, 0x2000

    if-gt v0, p1, :cond_0

    const/16 v1, 0x2040

    if-ge p1, v1, :cond_0

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x180

    .line 671
    aget-char p0, p0, p1

    return p0

    :cond_0
    const p0, 0xfffe

    if-ne p1, p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const p0, 0xffff

    if-ne p1, p0, :cond_2

    const p0, 0xfca8

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static nextPair([CIILjava/lang/CharSequence;I)J
    .locals 6

    const/16 p1, 0xc00

    if-ge p2, p1, :cond_b

    const/16 p1, 0x400

    if-ge p2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p1, 0x800

    const/16 v0, 0x10

    if-lt p2, p1, :cond_1

    and-int/lit16 p1, p2, 0x3ff

    add-int/lit16 p1, p1, 0x1c0

    add-int/lit8 p2, p1, 0x1

    .line 690
    aget-char p2, p0, p2

    int-to-long p2, p2

    shl-long/2addr p2, v0

    aget-char p0, p0, p1

    int-to-long p0, p0

    or-long/2addr p0, p2

    return-wide p0

    :cond_1
    and-int/lit16 p1, p2, 0x3ff

    add-int/lit16 p1, p1, 0x1c0

    const/4 p2, 0x0

    .line 696
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eq p4, v1, :cond_7

    .line 700
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 p4, 0x17f

    if-le p3, p4, :cond_5

    const/16 p4, 0x2000

    if-gt p4, p3, :cond_2

    const/16 p4, 0x2040

    if-ge p3, p4, :cond_2

    add-int/lit16 p3, p3, -0x2000

    add-int/lit16 p3, p3, 0x180

    goto :goto_1

    :cond_2
    const p4, 0xfffe

    if-eq p3, p4, :cond_4

    const p4, 0xffff

    if-ne p3, p4, :cond_3

    goto :goto_0

    :cond_3
    return-wide v2

    :cond_4
    :goto_0
    const/4 p3, -0x1

    .line 713
    :cond_5
    :goto_1
    aget-char p4, p0, p1

    move v1, p1

    :cond_6
    shr-int/lit8 p4, p4, 0x9

    add-int/2addr v1, p4

    .line 717
    aget-char p4, p0, v1

    and-int/lit16 v5, p4, 0x1ff

    if-lt v5, p3, :cond_6

    if-ne v5, p3, :cond_7

    move p1, v1

    const/4 p2, 0x1

    .line 726
    :cond_7
    aget-char p3, p0, p1

    shr-int/lit8 p3, p3, 0x9

    if-ne p3, v4, :cond_8

    return-wide v2

    :cond_8
    add-int/lit8 p4, p1, 0x1

    .line 730
    aget-char p4, p0, p4

    const/4 v1, 0x2

    if-ne p3, v1, :cond_9

    int-to-long p0, p4

    goto :goto_2

    :cond_9
    add-int/2addr p1, v1

    .line 735
    aget-char p0, p0, p1

    int-to-long p0, p0

    shl-long/2addr p0, v0

    int-to-long p3, p4

    or-long/2addr p0, p3

    :goto_2
    if-eqz p2, :cond_a

    const-wide/16 p2, -0x1

    xor-long/2addr p0, p2

    :cond_a
    return-wide p0

    :cond_b
    :goto_3
    int-to-long p0, p2

    return-wide p0
.end method
