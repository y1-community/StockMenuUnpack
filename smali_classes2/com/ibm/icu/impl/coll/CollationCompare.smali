.class public final Lcom/ibm/icu/impl/coll/CollationCompare;
.super Ljava/lang/Object;
.source "CollationCompare.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationSettings;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 21
    iget v3, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v4, v3, 0xc

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    if-nez v4, :cond_0

    move-wide v9, v7

    goto :goto_0

    .line 27
    :cond_0
    iget-wide v9, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    add-long/2addr v9, v5

    :goto_0
    const/4 v11, 0x0

    .line 36
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v12

    const/16 v14, 0x20

    ushr-long v15, v12, v14

    const-wide v17, -0x100000000L

    const-wide/32 v19, 0x2000000

    cmp-long v21, v15, v9

    if-gez v21, :cond_5

    cmp-long v21, v15, v19

    if-lez v21, :cond_5

    :cond_2
    and-long v12, v12, v17

    .line 44
    invoke-virtual {v0, v12, v13}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    .line 46
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v12

    ushr-long v15, v12, v14

    cmp-long v11, v15, v7

    if-nez v11, :cond_3

    .line 49
    invoke-virtual {v0, v7, v8}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_2

    :cond_3
    cmp-long v11, v15, v9

    if-gez v11, :cond_4

    cmp-long v11, v15, v19

    if-gtz v11, :cond_2

    :cond_4
    move-wide v12, v15

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    move-wide v12, v15

    :goto_3
    cmp-long v15, v12, v7

    if-eqz v15, :cond_1

    .line 60
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v15

    ushr-long v21, v15, v14

    cmp-long v23, v21, v9

    if-gez v23, :cond_9

    cmp-long v23, v21, v19

    if-lez v23, :cond_9

    :cond_6
    and-long v4, v15, v17

    .line 68
    invoke-virtual {v1, v4, v5}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    .line 70
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v15

    ushr-long v21, v15, v14

    cmp-long v4, v21, v7

    if-nez v4, :cond_7

    .line 73
    invoke-virtual {v1, v7, v8}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_5

    :cond_7
    cmp-long v4, v21, v9

    if-gez v4, :cond_8

    cmp-long v4, v21, v19

    if-gtz v4, :cond_6

    :cond_8
    move-wide/from16 v4, v21

    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    move-wide/from16 v4, v21

    :goto_6
    cmp-long v15, v4, v7

    if-eqz v15, :cond_3e

    cmp-long v16, v12, v4

    if-eqz v16, :cond_c

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    invoke-virtual {v2, v12, v13}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v12

    .line 86
    invoke-virtual {v2, v4, v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v4

    :cond_a
    cmp-long v0, v12, v4

    if-gez v0, :cond_b

    const/4 v4, -0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x1

    :goto_7
    return v4

    :cond_c
    const-wide/16 v4, 0x1

    cmp-long v16, v12, v4

    if-nez v16, :cond_3d

    .line 98
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    const/16 v5, 0x100

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1d

    and-int/lit16 v4, v3, 0x800

    if-nez v4, :cond_12

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_8
    add-int/lit8 v10, v4, 0x1

    .line 105
    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v12

    long-to-int v4, v12

    ushr-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11

    :goto_9
    add-int/lit8 v12, v9, 0x1

    .line 110
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    long-to-int v7, v6

    ushr-int/lit8 v6, v7, 0x10

    if-eqz v6, :cond_10

    if-eq v4, v6, :cond_e

    if-ge v4, v6, :cond_d

    const/4 v4, -0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x1

    :goto_a
    return v4

    :cond_e
    if-ne v4, v5, :cond_f

    goto/16 :goto_14

    :cond_f
    move v4, v10

    move v9, v12

    const-wide/16 v7, 0x0

    goto :goto_8

    :cond_10
    move v9, v12

    const-wide/16 v7, 0x0

    goto :goto_9

    :cond_11
    move v4, v10

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_b
    move v7, v4

    .line 129
    :goto_c
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v9

    ushr-long/2addr v9, v14

    cmp-long v12, v9, v19

    if-gtz v12, :cond_1c

    const-wide/16 v12, 0x0

    cmp-long v16, v9, v12

    if-nez v16, :cond_13

    goto :goto_13

    :cond_13
    move v9, v6

    .line 134
    :goto_d
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v16

    ushr-long v16, v16, v14

    cmp-long v10, v16, v19

    if-gtz v10, :cond_1b

    cmp-long v10, v16, v12

    if-nez v10, :cond_14

    goto :goto_12

    :cond_14
    move v10, v7

    move v12, v9

    :goto_e
    const/4 v13, 0x0

    :goto_f
    if-nez v13, :cond_15

    if-le v10, v4, :cond_15

    add-int/lit8 v10, v10, -0x1

    .line 145
    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v14

    long-to-int v13, v14

    ushr-int/lit8 v13, v13, 0x10

    const/16 v14, 0x20

    goto :goto_f

    :cond_15
    const/4 v14, 0x0

    :goto_10
    if-nez v14, :cond_16

    if-le v12, v6, :cond_16

    add-int/lit8 v12, v12, -0x1

    .line 150
    invoke-virtual {v1, v12}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v14

    long-to-int v15, v14

    ushr-int/lit8 v14, v15, 0x10

    goto :goto_10

    :cond_16
    if-eq v13, v14, :cond_18

    if-ge v13, v14, :cond_17

    const/4 v4, -0x1

    goto :goto_11

    :cond_17
    const/4 v4, 0x1

    :goto_11
    return v4

    :cond_18
    if-nez v13, :cond_1a

    const-wide/16 v12, 0x1

    cmp-long v4, v16, v12

    if-nez v4, :cond_19

    goto :goto_14

    :cond_19
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v6, v9, 0x1

    const/16 v14, 0x20

    goto :goto_b

    :cond_1a
    const/16 v14, 0x20

    goto :goto_e

    :cond_1b
    :goto_12
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v12, 0x0

    const/16 v14, 0x20

    goto :goto_d

    :cond_1c
    :goto_13
    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0x20

    goto :goto_c

    :cond_1d
    :goto_14
    and-int/lit16 v4, v3, 0x400

    const/high16 v6, -0x10000

    const v7, 0xc000

    if-eqz v4, :cond_28

    .line 176
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_15
    if-nez v4, :cond_20

    :goto_16
    add-int/lit8 v12, v9, 0x1

    .line 189
    invoke-virtual {v0, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v13

    long-to-int v9, v13

    const/16 v15, 0x20

    ushr-long/2addr v13, v15

    const-wide/16 v16, 0x0

    cmp-long v19, v13, v16

    if-eqz v19, :cond_1f

    if-eqz v9, :cond_1f

    and-int v13, v9, v7

    :goto_17
    add-int/lit8 v14, v10, 0x1

    move/from16 v19, v9

    .line 196
    invoke-virtual {v1, v10}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v8

    long-to-int v10, v8

    ushr-long/2addr v8, v15

    cmp-long v15, v8, v16

    if-eqz v15, :cond_1e

    if-eqz v10, :cond_1e

    and-int v8, v10, v7

    move v10, v14

    move/from16 v9, v19

    goto :goto_1a

    :cond_1e
    move v10, v14

    move/from16 v9, v19

    const/16 v15, 0x20

    const-wide/16 v16, 0x0

    goto :goto_17

    :cond_1f
    move v9, v12

    goto :goto_16

    :cond_20
    :goto_18
    add-int/lit8 v8, v9, 0x1

    .line 216
    invoke-virtual {v0, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v12

    long-to-int v9, v12

    and-int v12, v9, v6

    if-eqz v12, :cond_27

    and-int v13, v9, v7

    :goto_19
    add-int/lit8 v12, v10, 0x1

    .line 222
    invoke-virtual {v1, v10}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v14

    long-to-int v10, v14

    and-int v14, v10, v6

    if-eqz v14, :cond_26

    and-int/2addr v10, v7

    move/from16 v26, v12

    move v12, v8

    move v8, v10

    move/from16 v10, v26

    :goto_1a
    if-eq v13, v8, :cond_24

    and-int/lit16 v0, v3, 0x100

    if-nez v0, :cond_22

    if-ge v13, v8, :cond_21

    const/4 v4, -0x1

    goto :goto_1b

    :cond_21
    const/4 v4, 0x1

    :goto_1b
    return v4

    :cond_22
    if-ge v13, v8, :cond_23

    const/4 v4, 0x1

    goto :goto_1c

    :cond_23
    const/4 v4, -0x1

    :goto_1c
    return v4

    :cond_24
    ushr-int/lit8 v8, v9, 0x10

    if-ne v8, v5, :cond_25

    goto :goto_1d

    :cond_25
    move v9, v12

    goto :goto_15

    :cond_26
    move v10, v12

    goto :goto_19

    :cond_27
    move v9, v8

    goto :goto_18

    .line 242
    :cond_28
    :goto_1d
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    const/4 v8, 0x1

    if-gt v4, v8, :cond_29

    const/4 v4, 0x0

    return v4

    .line 246
    :cond_29
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1e
    add-int/lit8 v13, v10, 0x1

    .line 254
    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v14

    long-to-int v10, v14

    or-int/2addr v12, v10

    and-int v14, v10, v4

    if-eqz v14, :cond_3c

    :goto_1f
    add-int/lit8 v15, v9, 0x1

    .line 262
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v8

    long-to-int v9, v8

    or-int/2addr v12, v9

    and-int v8, v9, v4

    if-eqz v8, :cond_3b

    if-eq v14, v8, :cond_2f

    .line 269
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-le v14, v5, :cond_2b

    and-int v0, v10, v6

    if-eqz v0, :cond_2a

    xor-int/2addr v14, v7

    goto :goto_20

    :cond_2a
    add-int/lit16 v14, v14, 0x4000

    :cond_2b
    :goto_20
    if-le v8, v5, :cond_2d

    and-int v0, v9, v6

    if-eqz v0, :cond_2c

    xor-int/2addr v8, v7

    goto :goto_21

    :cond_2c
    add-int/lit16 v8, v8, 0x4000

    :cond_2d
    :goto_21
    if-ge v14, v8, :cond_2e

    const/4 v4, -0x1

    goto :goto_22

    :cond_2e
    const/4 v4, 0x1

    :goto_22
    return v4

    :cond_2f
    if-ne v14, v5, :cond_3a

    .line 296
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_30

    const/4 v3, 0x0

    return v3

    :cond_30
    const/4 v3, 0x0

    if-nez v11, :cond_31

    and-int/lit16 v4, v12, 0xc0

    if-nez v4, :cond_31

    return v3

    :cond_31
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    add-int/lit8 v5, v4, 0x1

    .line 311
    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    and-long v10, v6, v8

    const-wide v12, 0xffffff3fL

    const-wide/16 v14, 0x100

    cmp-long v4, v10, v14

    if-gtz v4, :cond_32

    const/16 v4, 0x20

    ushr-long/2addr v6, v4

    goto :goto_24

    :cond_32
    or-long v6, v10, v12

    :goto_24
    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_39

    :goto_25
    add-int/lit8 v4, v3, 0x1

    .line 325
    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v10

    and-long v16, v10, v8

    cmp-long v3, v16, v14

    if-gtz v3, :cond_33

    const/16 v25, 0x20

    ushr-long v10, v10, v25

    goto :goto_26

    :cond_33
    const/16 v25, 0x20

    or-long v10, v16, v12

    :goto_26
    const-wide/16 v21, 0x0

    cmp-long v3, v10, v21

    if-eqz v3, :cond_38

    cmp-long v3, v6, v10

    if-eqz v3, :cond_36

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 340
    invoke-virtual {v2, v6, v7}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v6

    .line 341
    invoke-virtual {v2, v10, v11}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v10

    :cond_34
    cmp-long v0, v6, v10

    if-gez v0, :cond_35

    const/4 v4, -0x1

    goto :goto_27

    :cond_35
    const/4 v4, 0x1

    :goto_27
    return v4

    :cond_36
    const-wide/16 v23, 0x1

    cmp-long v3, v6, v23

    if-nez v3, :cond_37

    const/16 v16, 0x0

    return v16

    :cond_37
    move v3, v4

    goto :goto_28

    :cond_38
    const-wide/16 v23, 0x1

    move v3, v4

    goto :goto_25

    :cond_39
    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x1

    const/16 v25, 0x20

    :goto_28
    move v4, v5

    goto :goto_23

    :cond_3a
    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x1

    const/16 v25, 0x20

    move v10, v13

    move v9, v15

    const/4 v8, 0x1

    goto/16 :goto_1e

    :cond_3b
    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x1

    const/16 v25, 0x20

    move v9, v15

    const/4 v8, 0x1

    goto/16 :goto_1f

    :cond_3c
    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x1

    const/16 v25, 0x20

    move v10, v13

    goto/16 :goto_1e

    :cond_3d
    const-wide/16 v23, 0x1

    move-wide/from16 v5, v23

    goto/16 :goto_1

    :cond_3e
    const-wide/16 v23, 0x1

    move-wide/from16 v5, v23

    goto/16 :goto_4
.end method
