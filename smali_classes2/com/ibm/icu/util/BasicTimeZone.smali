.class public abstract Lcom/ibm/icu/util/BasicTimeZone;
.super Lcom/ibm/icu/util/TimeZone;
.source "BasicTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/BasicTimeZone$LocalOption;
    }
.end annotation


# static fields
.field protected static final FORMER_LATTER_MASK:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final LOCAL_DST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final LOCAL_FORMER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final LOCAL_LATTER:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final LOCAL_STD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MILLIS_PER_YEAR:J = 0x757b12c00L

.field protected static final STD_DST_MASK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2c77e2591bf19444L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 676
    invoke-direct {p0}, Lcom/ibm/icu/util/TimeZone;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected static getLocalOptionValue(Lcom/ibm/icu/util/BasicTimeZone$LocalOption;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    invoke-static {p0}, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->access$000(Lcom/ibm/icu/util/BasicTimeZone$LocalOption;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
.end method

.method public getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V
    .locals 0

    .line 669
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
.end method

.method public getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    const/4 v9, 0x0

    .line 396
    invoke-virtual {v0, v7, v8, v9}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v12, 0x2

    if-eqz v1, :cond_d

    .line 398
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v14

    .line 399
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    .line 400
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    .line 404
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 405
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_1

    .line 406
    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_c

    :cond_1
    const-wide v22, 0x757b12c00L

    add-long v15, v7, v22

    cmp-long v4, v15, v2

    if-lez v4, :cond_c

    new-array v4, v12, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 411
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v15

    int-to-long v11, v15

    add-long/2addr v11, v2

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    move-object/from16 v24, v14

    int-to-long v13, v15

    add-long/2addr v11, v13

    .line 410
    invoke-static {v11, v12, v10}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v11

    .line 412
    aget v12, v11, v9

    const/4 v13, 0x1

    aget v14, v11, v13

    const/4 v15, 0x2

    aget v10, v11, v15

    invoke-static {v12, v14, v10}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v18

    .line 414
    new-instance v10, Lcom/ibm/icu/util/DateTimeRule;

    aget v17, v11, v13

    const/4 v12, 0x3

    aget v19, v11, v12

    const/4 v12, 0x5

    aget v20, v11, v12

    const/16 v21, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    .line 425
    new-instance v13, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v16

    .line 426
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v18

    aget v20, v11, v9

    const v21, 0x7fffffff

    move-object v15, v13

    move/from16 v17, v6

    move-object/from16 v19, v10

    invoke-direct/range {v15 .. v21}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    aput-object v13, v4, v9

    .line 429
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 432
    invoke-virtual {v0, v2, v3, v9}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 436
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_3

    .line 437
    :cond_2
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    add-long v22, v2, v22

    .line 439
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    cmp-long v1, v22, v13

    if-lez v1, :cond_4

    .line 441
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    .line 442
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    move-wide v15, v2

    int-to-long v1, v1

    add-long/2addr v13, v1

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v13, v1

    .line 441
    invoke-static {v13, v14, v11}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v11

    .line 444
    aget v1, v11, v9

    const/4 v2, 0x1

    aget v3, v11, v2

    const/4 v13, 0x2

    aget v14, v11, v13

    invoke-static {v1, v3, v14}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v19

    .line 446
    new-instance v29, Lcom/ibm/icu/util/DateTimeRule;

    aget v18, v11, v2

    const/4 v1, 0x3

    aget v20, v11, v1

    aget v21, v11, v12

    const/16 v22, 0x0

    move-object/from16 v17, v29

    invoke-direct/range {v17 .. v22}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    .line 448
    new-instance v13, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v26

    .line 449
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v27

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v28

    aget v1, v11, v9

    const/4 v2, 0x1

    add-int/lit8 v30, v1, -0x1

    const v31, 0x7fffffff

    move-object/from16 v25, v13

    invoke-direct/range {v25 .. v31}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    .line 452
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    .line 453
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v17

    const/16 v18, 0x1

    move-object v1, v13

    move-wide/from16 v22, v15

    move-wide/from16 v2, p1

    move-object/from16 v25, v4

    move v4, v14

    move v14, v5

    move/from16 v5, v17

    move v15, v6

    move/from16 v6, v18

    .line 452
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 454
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_5

    .line 455
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    if-ne v15, v1, :cond_5

    .line 456
    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-ne v14, v1, :cond_5

    const/4 v1, 0x1

    aput-object v13, v25, v1

    goto :goto_0

    :cond_4
    move-wide/from16 v22, v2

    move-object/from16 v25, v4

    move v14, v5

    move v15, v6

    :cond_5
    :goto_0
    const/4 v1, 0x1

    aget-object v2, v25, v1

    if-nez v2, :cond_9

    .line 466
    invoke-virtual {v0, v7, v8, v1}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 470
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_7

    .line 471
    :cond_6
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_8

    .line 472
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_8

    .line 474
    :cond_7
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    .line 475
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 474
    invoke-static {v3, v4, v11}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    .line 477
    aget v3, v1, v9

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v10, v1, v6

    invoke-static {v3, v5, v10}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v18

    .line 479
    new-instance v3, Lcom/ibm/icu/util/DateTimeRule;

    aget v17, v1, v4

    const/4 v4, 0x3

    aget v19, v1, v4

    aget v20, v1, v12

    const/16 v21, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    .line 484
    new-instance v10, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 485
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v16

    aget-object v1, v25, v9

    .line 486
    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v1

    const/4 v4, 0x1

    add-int/lit8 v20, v1, -0x1

    const v21, 0x7fffffff

    move v11, v15

    move-object v15, v10

    move/from16 v17, v11

    move/from16 v18, v14

    move-object/from16 v19, v3

    invoke-direct/range {v15 .. v21}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    .line 490
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    .line 491
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v10

    move-wide/from16 v2, p1

    .line 490
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v3, v1, v22

    const/4 v1, 0x1

    if-lez v3, :cond_a

    aput-object v10, v25, v1

    goto :goto_1

    :cond_8
    move v11, v15

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    move v11, v15

    :cond_a
    :goto_1
    aget-object v2, v25, v1

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    aget-object v1, v25, v9

    .line 504
    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v14

    aget-object v1, v25, v9

    .line 505
    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v6

    aget-object v1, v25, v9

    .line 506
    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-object/from16 v10, v25

    goto :goto_3

    :cond_c
    move v11, v6

    move-object/from16 v24, v14

    move v14, v5

    :goto_2
    move v6, v11

    move v5, v14

    move-object/from16 v14, v24

    const/4 v10, 0x0

    .line 509
    :goto_3
    new-instance v1, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-direct {v1, v14, v6, v5}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x1

    .line 512
    invoke-virtual {v0, v7, v8, v1}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 514
    new-instance v1, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    invoke-direct {v1, v3, v4, v2}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    const/4 v5, 0x1

    goto :goto_4

    :cond_e
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 519
    invoke-virtual {v0, v7, v8, v9, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    .line 520
    new-instance v1, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    aget v4, v2, v9

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-direct {v1, v3, v4, v2}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    :goto_4
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_f

    new-array v2, v5, [Lcom/ibm/icu/util/TimeZoneRule;

    aput-object v1, v2, v9

    goto :goto_6

    :cond_f
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/ibm/icu/util/TimeZoneRule;

    aput-object v1, v2, v9

    .line 531
    aget-object v1, v10, v9

    aput-object v1, v2, v5

    .line 532
    aget-object v1, v10, v5

    const/4 v3, 0x2

    aput-object v1, v2, v3

    :goto_6
    return-object v2
.end method

.method public abstract getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
.end method

.method public getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v9

    const/4 v10, 0x1

    .line 240
    invoke-virtual {v0, v7, v8, v10}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v9

    .line 246
    :cond_0
    new-instance v11, Ljava/util/BitSet;

    array-length v2, v9

    invoke-direct {v11, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 247
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 250
    new-instance v13, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    invoke-direct {v13, v2, v3, v1}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 252
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 253
    invoke-virtual {v11, v14}, Ljava/util/BitSet;->set(I)V

    const/4 v15, 0x1

    .line 256
    :goto_0
    array-length v1, v9

    if-ge v15, v1, :cond_2

    .line 257
    aget-object v1, v9, v15

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    .line 258
    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x0

    move-wide/from16 v2, p1

    .line 257
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 260
    invoke-virtual {v11, v15}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-wide v3, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    .line 267
    :cond_3
    invoke-virtual {v0, v3, v4, v14}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v3

    if-nez v3, :cond_5

    .line 366
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ibm/icu/util/TimeZoneRule;

    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/ibm/icu/util/TimeZoneRule;

    return-object v1

    .line 271
    :cond_5
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    .line 273
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    const/4 v13, 0x1

    .line 275
    :goto_2
    array-length v15, v9

    if-ge v13, v15, :cond_7

    .line 276
    aget-object v15, v9, v13

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 280
    :cond_7
    :goto_3
    array-length v15, v9

    if-ge v13, v15, :cond_16

    .line 283
    invoke-virtual {v11, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-wide v3, v4

    goto :goto_1

    .line 286
    :cond_8
    instance-of v15, v6, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v15, :cond_11

    .line 287
    move-object v15, v6

    check-cast v15, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v17, v11

    move-wide v10, v7

    .line 292
    :goto_4
    invoke-virtual {v0, v10, v11, v14}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_5

    .line 296
    :cond_9
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :goto_5
    if-eqz v3, :cond_f

    .line 303
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    .line 304
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    .line 303
    invoke-virtual {v15, v6, v10}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v6

    .line 305
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v6, v10, v7

    if-lez v6, :cond_a

    .line 307
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 310
    :cond_a
    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getStartTimes()[J

    move-result-object v6

    .line 311
    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v10

    const/4 v11, 0x0

    .line 313
    :goto_6
    array-length v14, v6

    if-ge v11, v14, :cond_e

    .line 314
    aget-wide v18, v6, v11

    const/4 v14, 0x1

    if-ne v10, v14, :cond_b

    .line 316
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    move/from16 v16, v1

    int-to-long v0, v14

    sub-long v18, v18, v0

    goto :goto_7

    :cond_b
    move/from16 v16, v1

    :goto_7
    if-nez v10, :cond_c

    .line 319
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long v18, v18, v0

    :cond_c
    cmp-long v0, v18, v7

    if-lez v0, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_6

    :cond_e
    move/from16 v16, v1

    .line 325
    :goto_8
    array-length v0, v6

    sub-int/2addr v0, v11

    if-lez v0, :cond_14

    .line 327
    new-array v1, v0, [J

    const/4 v3, 0x0

    .line 328
    invoke-static {v6, v11, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    new-instance v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    .line 330
    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    move-result v22

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getDSTSavings()I

    move-result v23

    .line 331
    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v25

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v25}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 332
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_f
    :goto_9
    move/from16 v16, v1

    goto/16 :goto_b

    :cond_10
    move/from16 v16, v1

    .line 299
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_11
    move/from16 v16, v1

    move-object/from16 v17, v11

    .line 336
    instance-of v0, v6, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_14

    .line 337
    check-cast v6, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 338
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    .line 339
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    .line 338
    invoke-virtual {v6, v0, v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    cmp-long v14, v0, v10

    if-nez v14, :cond_12

    .line 342
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_a

    :cond_12
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 346
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    .line 348
    new-instance v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v21

    .line 349
    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v22

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v23

    .line 350
    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v24

    const/4 v3, 0x0

    aget v25, v0, v3

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v26

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v26}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    .line 351
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_a
    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_15

    .line 357
    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v0

    if-nez v0, :cond_13

    move-object/from16 v0, v17

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    move/from16 v1, v16

    move-object/from16 v0, v17

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v3, 0x0

    :cond_15
    move/from16 v1, v16

    move-object/from16 v0, v17

    .line 364
    :goto_c
    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    move-object v11, v0

    move-wide v3, v4

    const/4 v10, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 281
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The rule was not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJ)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/BasicTimeZone;->hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJZ)Z

    move-result p1

    return p1
.end method

.method public hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJZ)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/util/BasicTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x2

    new-array v3, v1, [I

    new-array v1, v1, [I

    .line 122
    invoke-virtual {p0, p2, p3, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    .line 123
    invoke-virtual {p1, p2, p3, v2, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    if-eqz p6, :cond_4

    aget v4, v3, v2

    aget v5, v3, v0

    add-int/2addr v4, v5

    aget v5, v1, v2

    aget v6, v1, v0

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_3

    aget v4, v3, v0

    if-eqz v4, :cond_2

    aget v4, v1, v0

    if-eqz v4, :cond_3

    :cond_2
    aget v3, v3, v0

    if-nez v3, :cond_5

    aget v1, v1, v0

    if-eqz v1, :cond_5

    :cond_3
    return v2

    :cond_4
    aget v4, v3, v2

    aget v5, v1, v2

    if-ne v4, v5, :cond_11

    aget v3, v3, v0

    aget v1, v1, v0

    if-eq v3, v1, :cond_5

    goto/16 :goto_5

    .line 140
    :cond_5
    :goto_0
    invoke-virtual {p0, p2, p3, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v1

    .line 141
    move-object v3, p1

    check-cast v3, Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v3, p2, p3, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p2

    if-eqz p6, :cond_7

    :goto_1
    if-eqz v1, :cond_6

    .line 147
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    cmp-long p3, v4, p4

    if-gtz p3, :cond_6

    .line 148
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    add-int/2addr p3, v4

    .line 149
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int/2addr v4, v5

    if-ne p3, v4, :cond_6

    .line 150
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_6

    .line 151
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 158
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    cmp-long p3, v4, p4

    if-gtz p3, :cond_7

    .line 159
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    add-int/2addr p3, v4

    .line 160
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int/2addr v4, v5

    if-ne p3, v4, :cond_7

    .line 161
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_7

    .line 162
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p2

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 172
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    cmp-long p3, v3, p4

    if-gtz p3, :cond_8

    const/4 p3, 0x1

    goto :goto_3

    :cond_8
    const/4 p3, 0x0

    :goto_3
    if-eqz p2, :cond_9

    .line 177
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    cmp-long v5, v3, p4

    if-gtz v5, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    if-nez p3, :cond_a

    if-nez v3, :cond_a

    return v0

    :cond_a
    if-eqz p3, :cond_11

    if-nez v3, :cond_b

    goto/16 :goto_5

    .line 188
    :cond_b
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-eqz p3, :cond_c

    return v2

    :cond_c
    if-eqz p6, :cond_f

    .line 192
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    add-int/2addr p3, v3

    .line 193
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    add-int/2addr v3, v4

    if-ne p3, v3, :cond_e

    .line 194
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_e

    .line 195
    :cond_d
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-nez p3, :cond_10

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-eqz p2, :cond_10

    :cond_e
    return v2

    .line 199
    :cond_f
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-ne p3, v3, :cond_11

    .line 200
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-eq p3, p2, :cond_10

    goto :goto_5

    .line 204
    :cond_10
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p2

    goto/16 :goto_0

    :cond_11
    :goto_5
    return v2
.end method
