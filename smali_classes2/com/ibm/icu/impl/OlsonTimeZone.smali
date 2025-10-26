.class public Lcom/ibm/icu/impl/OlsonTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "OlsonTimeZone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z

.field private static final MAX_OFFSET_SECONDS:I = 0x15180

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final ZONEINFORES:Ljava/lang/String; = "zoneinfo64"

.field private static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x572e1120b9848270L


# instance fields
.field private volatile canonicalID:Ljava/lang/String;

.field private finalStartMillis:D

.field private finalStartYear:I

.field private finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

.field private transient finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

.field private transient firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient firstTZTransitionIdx:I

.field private transient historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

.field private transient initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private serialVersionOnStream:I

.field private transitionCount:I

.field private transient transitionRulesInitialized:Z

.field private transitionTimes64:[J

.field private typeCount:I

.field private typeMapData:[B

.field private typeOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "olson"

    .line 883
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/OlsonTimeZone;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)V
    .locals 2

    .line 483
    invoke-direct {p0, p3}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x7fffffff

    .line 862
    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 867
    iput-wide v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    const/4 v0, 0x0

    .line 873
    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 879
    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1228
    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1260
    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 484
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/OlsonTimeZone;->construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 637
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x7fffffff

    .line 862
    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 867
    iput-wide v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    const/4 v0, 0x0

    .line 873
    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 879
    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1228
    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1260
    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 638
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "zoneinfo64"

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 640
    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ZoneMeta;->openOlsonResource(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 641
    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/impl/OlsonTimeZone;->construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method private construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Invalid Format"

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 492
    sget-boolean v4, Lcom/ibm/icu/impl/OlsonTimeZone;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OlsonTimeZone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    .line 498
    iput v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v6, 0x2

    :try_start_0
    const-string v7, "transPre32"

    .line 502
    invoke-virtual {v2, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    .line 503
    invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v7
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :try_start_1
    array-length v8, v7

    rem-int/2addr v8, v6

    if-nez v8, :cond_1

    .line 508
    iget v8, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v9, v7

    div-int/2addr v9, v6

    add-int/2addr v8, v9

    iput v8, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    goto :goto_0

    .line 506
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    const/4 v7, 0x0

    :catch_1
    :goto_0
    :try_start_2
    const-string v8, "trans"

    .line 515
    invoke-virtual {v2, v8}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    .line 516
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v8
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    .line 517
    :try_start_3
    iget v9, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v10, v8

    add-int/2addr v9, v10

    iput v9, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    const/4 v8, 0x0

    :catch_3
    :goto_1
    :try_start_4
    const-string v9, "transPost32"

    .line 524
    invoke-virtual {v2, v9}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v9

    .line 525
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v9
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_5

    .line 526
    :try_start_5
    array-length v10, v9

    rem-int/2addr v10, v6

    if-nez v10, :cond_2

    .line 530
    iget v10, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v11, v9

    div-int/2addr v11, v6

    add-int/2addr v10, v11

    iput v10, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    goto :goto_2

    .line 528
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    nop

    goto :goto_2

    :catch_5
    const/4 v9, 0x0

    .line 535
    :goto_2
    iget v10, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v11, 0x1

    if-lez v10, :cond_6

    .line 536
    new-array v10, v10, [J

    iput-object v10, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/16 v10, 0x20

    const-wide v12, 0xffffffffL

    if-eqz v7, :cond_3

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 539
    :goto_3
    array-length v4, v7

    div-int/2addr v4, v6

    if-ge v14, v4, :cond_4

    .line 540
    iget-object v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v16, v14, 0x2

    aget v5, v7, v16

    move-object/from16 v17, v7

    int-to-long v6, v5

    and-long/2addr v6, v12

    shl-long v5, v6, v10

    add-int/lit8 v16, v16, 0x1

    aget v7, v17, v16

    int-to-long v10, v7

    and-long/2addr v10, v12

    or-long/2addr v5, v10

    aput-wide v5, v4, v15

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v17

    const/4 v6, 0x2

    const/16 v10, 0x20

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :cond_4
    if-eqz v8, :cond_5

    const/4 v4, 0x0

    .line 546
    :goto_4
    array-length v5, v8

    if-ge v4, v5, :cond_5

    .line 547
    iget-object v5, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget v6, v8, v4

    int-to-long v6, v6

    aput-wide v6, v5, v15

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_7

    const/4 v4, 0x0

    .line 551
    :goto_5
    array-length v5, v9

    const/4 v6, 0x2

    div-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    .line 552
    iget-object v5, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v6, v4, 0x2

    aget v7, v9, v6

    int-to-long v7, v7

    and-long/2addr v7, v12

    const/16 v10, 0x20

    shl-long/2addr v7, v10

    const/4 v11, 0x1

    add-int/2addr v6, v11

    aget v6, v9, v6

    int-to-long v10, v6

    and-long/2addr v10, v12

    or-long/2addr v7, v10

    aput-wide v7, v5, v15

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    add-int/2addr v15, v5

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 558
    iput-object v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    :cond_7
    const-string v4, "typeOffsets"

    .line 562
    invoke-virtual {v2, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 563
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v4

    iput-object v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 564
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_c

    array-length v5, v4

    const/16 v7, 0x7ffe

    if-gt v5, v7, :cond_c

    array-length v5, v4

    rem-int/2addr v5, v6

    if-nez v5, :cond_c

    .line 567
    array-length v4, v4

    div-int/2addr v4, v6

    iput v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    .line 570
    iget v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v4, :cond_9

    const-string v4, "typeMap"

    .line 571
    invoke-virtual {v2, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 572
    invoke-virtual {v4, v5}, Lcom/ibm/icu/util/UResourceBundle;->getBinary([B)[B

    move-result-object v4

    iput-object v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v4, :cond_8

    .line 573
    array-length v4, v4

    iget v5, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v4, v5, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    .line 574
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v4, 0x0

    .line 577
    iput-object v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 581
    :goto_6
    iput-object v4, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const v5, 0x7fffffff

    .line 582
    iput v5, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 583
    iput-wide v5, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    :try_start_6
    const-string v5, "finalRule"

    .line 587
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    const-string v4, "finalRaw"

    .line 589
    invoke-virtual {v2, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 590
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 591
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->loadRule(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v1

    if-eqz v1, :cond_a

    .line 594
    array-length v6, v1

    const/16 v7, 0xb

    if-ne v6, v7, :cond_a

    .line 597
    new-instance v6, Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v7, 0x0

    aget v20, v1, v7

    const/4 v7, 0x1

    aget v21, v1, v7

    const/4 v7, 0x2

    aget v22, v1, v7

    const/4 v7, 0x3

    aget v7, v1, v7

    mul-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x4

    aget v24, v1, v8

    const/4 v8, 0x5

    aget v25, v1, v8

    const/4 v8, 0x6

    aget v26, v1, v8

    const/4 v8, 0x7

    aget v27, v1, v8

    const/16 v8, 0x8

    aget v8, v1, v8

    mul-int/lit16 v8, v8, 0x3e8

    const/16 v9, 0x9

    aget v29, v1, v9

    const/16 v9, 0xa

    aget v1, v1, v9

    mul-int/lit16 v1, v1, 0x3e8

    move-object/from16 v17, v6

    move/from16 v18, v4

    move-object/from16 v19, p3

    move/from16 v23, v7

    move/from16 v28, v8

    move/from16 v30, v1

    invoke-direct/range {v17 .. v30}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    iput-object v6, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const-string v1, "finalYear"

    .line 606
    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 625
    invoke-static {v1, v2, v4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    const-wide/32 v6, 0x5265c00

    mul-long v1, v1, v6

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    goto :goto_8

    .line 595
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    nop

    goto :goto_7

    :catch_7
    move-object v5, v4

    :goto_7
    if-nez v5, :cond_b

    :goto_8
    return-void

    .line 630
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method private constructEmpty()V
    .locals 3

    const/4 v0, 0x0

    .line 462
    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v1, 0x0

    .line 463
    iput-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 464
    iput-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    const/4 v2, 0x1

    .line 466
    iput v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 467
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 468
    iput-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const v1, 0x7fffffff

    .line 469
    iput v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 470
    iput-wide v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 472
    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private dstOffsetAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 766
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private getHistoricalOffset(JZII[I)V
    .locals 14

    move-object v0, p0

    .line 677
    iget v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v6, p1

    .line 678
    invoke-static {v6, v7, v4, v5}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v4

    if-nez p3, :cond_0

    .line 679
    iget-object v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v1, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v2

    .line 682
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v3

    goto/16 :goto_a

    .line 687
    :cond_0
    iget v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_12

    .line 688
    iget-object v6, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v7, v6, v1

    if-eqz p3, :cond_10

    const-wide/32 v9, 0x15180

    sub-long v9, v7, v9

    cmp-long v6, v4, v9

    if-ltz v6, :cond_10

    add-int/lit8 v6, v1, -0x1

    .line 690
    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v9

    .line 691
    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 693
    :goto_1
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v10

    .line 694
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v6, :cond_3

    if-nez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    sub-int v11, v10, v9

    const/4 v13, 0x3

    if-ltz v11, :cond_a

    and-int/lit8 v11, p4, 0x3

    if-ne v11, v3, :cond_5

    if-nez v12, :cond_6

    :cond_5
    if-ne v11, v13, :cond_7

    if-eqz v6, :cond_7

    :cond_6
    :goto_5
    int-to-long v9, v9

    goto :goto_7

    :cond_7
    if-ne v11, v3, :cond_8

    if-nez v6, :cond_c

    :cond_8
    if-ne v11, v13, :cond_9

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_9
    and-int/lit8 v6, p4, 0xc

    const/16 v11, 0xc

    if-ne v6, v11, :cond_c

    goto :goto_5

    :cond_a
    and-int/lit8 v11, p5, 0x3

    if-ne v11, v3, :cond_b

    if-nez v12, :cond_c

    :cond_b
    if-ne v11, v13, :cond_d

    if-eqz v6, :cond_d

    :cond_c
    :goto_6
    int-to-long v9, v10

    :goto_7
    add-long/2addr v7, v9

    goto :goto_8

    :cond_d
    if-ne v11, v3, :cond_e

    if-nez v6, :cond_6

    :cond_e
    if-ne v11, v13, :cond_f

    if-eqz v12, :cond_f

    goto :goto_5

    :cond_f
    and-int/lit8 v6, p5, 0xc

    const/4 v11, 0x4

    if-ne v6, v11, :cond_c

    goto :goto_5

    :cond_10
    :goto_8
    cmp-long v6, v4, v7

    if-ltz v6, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 736
    :cond_12
    :goto_9
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->rawOffsetAt(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    aput v4, p6, v2

    .line 737
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v3

    goto :goto_a

    .line 741
    :cond_13
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v2

    .line 742
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v3

    :goto_a
    return-void
.end method

.method private getInt(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1107
    :try_start_0
    iget-boolean v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1108
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1111
    :try_start_1
    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1112
    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1113
    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1114
    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const/4 v2, 0x0

    .line 1115
    iput v2, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    .line 1116
    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(STD)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(DST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1124
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    .line 1126
    new-instance v7, Lcom/ibm/icu/util/InitialTimeZoneRule;

    if-nez v6, :cond_1

    move-object v8, v3

    goto :goto_0

    :cond_1
    move-object v8, v4

    :goto_0
    invoke-direct {v7, v8, v5, v6}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v7, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1128
    iget v5, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v6, 0x1

    if-lez v5, :cond_c

    const/4 v5, 0x0

    .line 1134
    :goto_1
    iget v7, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v5, v7, :cond_3

    .line 1135
    iget-object v7, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v7, v7, v5

    invoke-direct {v1, v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 1138
    :cond_2
    iget v7, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1140
    :cond_3
    :goto_2
    iget v7, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v5, v7, :cond_4

    goto/16 :goto_7

    .line 1144
    :cond_4
    new-array v5, v7, [J

    const/4 v7, 0x0

    .line 1145
    :goto_3
    iget v8, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    const-wide/16 v9, 0x3e8

    if-ge v7, v8, :cond_b

    .line 1148
    iget v8, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const/4 v11, 0x0

    :goto_4
    iget v12, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v8, v12, :cond_7

    .line 1149
    iget-object v12, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v12, v12, v8

    invoke-direct {v1, v12}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v12

    if-ne v7, v12, :cond_5

    .line 1150
    iget-object v12, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v13, v12, v8

    mul-long v13, v13, v9

    long-to-double v9, v13

    move v15, v7

    .line 1151
    iget-wide v6, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpg-double v16, v9, v6

    if-gez v16, :cond_6

    add-int/lit8 v6, v11, 0x1

    .line 1153
    aput-wide v13, v5, v11

    move v11, v6

    goto :goto_5

    :cond_5
    move v15, v7

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move v7, v15

    const/4 v6, 0x1

    const-wide/16 v9, 0x3e8

    goto :goto_4

    :cond_7
    move v15, v7

    if-lez v11, :cond_a

    .line 1158
    new-array v6, v11, [J

    .line 1159
    invoke-static {v5, v2, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    iget-object v7, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v8, v15, 0x2

    aget v9, v7, v8

    mul-int/lit16 v9, v9, 0x3e8

    add-int/lit8 v8, v8, 0x1

    .line 1162
    aget v7, v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    .line 1163
    iget-object v8, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-nez v8, :cond_8

    .line 1164
    iget v8, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    new-array v8, v8, [Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iput-object v8, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    .line 1166
    :cond_8
    iget-object v8, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    new-instance v10, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-nez v7, :cond_9

    move-object/from16 v17, v3

    goto :goto_6

    :cond_9
    move-object/from16 v17, v4

    :goto_6
    const/16 v21, 0x2

    move-object/from16 v16, v10

    move/from16 v18, v9

    move/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v21}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v10, v8, v15

    :cond_a
    add-int/lit8 v7, v15, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 1172
    :cond_b
    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget v4, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-byte v3, v3, v4

    invoke-direct {v1, v3}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v3

    .line 1173
    new-instance v4, Lcom/ibm/icu/util/TimeZoneTransition;

    iget-object v5, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget v6, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-wide v6, v5, v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    iget-object v5, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    iget-object v8, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    aget-object v3, v8, v3

    invoke-direct {v4, v6, v7, v5, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    iput-object v4, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1179
    :cond_c
    :goto_7
    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_10

    .line 1181
    iget-wide v4, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v4, v4

    .line 1183
    invoke-virtual {v3}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1192
    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v3}, Lcom/ibm/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/SimpleTimeZone;

    iput-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1193
    iget v6, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v3, v6}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 1195
    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v3, v4, v5, v2}, Lcom/ibm/icu/util/SimpleTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v2

    .line 1196
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    .line 1197
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    goto :goto_8

    .line 1199
    :cond_d
    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    iput-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1200
    new-instance v13, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    invoke-virtual {v3}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1201
    invoke-virtual {v3}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v8

    const/4 v9, 0x0

    const/4 v3, 0x1

    new-array v10, v3, [J

    aput-wide v4, v10, v2

    const/4 v11, 0x2

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-object v3, v13

    .line 1204
    :goto_8
    iget v2, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v2, :cond_e

    .line 1205
    iget-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v6, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    aget-byte v2, v6, v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v2

    aget-object v0, v0, v2

    :cond_e
    if-nez v0, :cond_f

    .line 1209
    iget-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1211
    :cond_f
    new-instance v2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v2, v4, v5, v0, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    iput-object v2, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    :cond_10
    const/4 v0, 0x1

    .line 1214
    iput-boolean v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method private initialDstOffset()I
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private initialRawOffset()I
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static loadRule(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    const-string v0, "Rules"

    .line 887
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 888
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private rawOffsetAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget p1, v0, p1

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1231
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1233
    iget p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 1237
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    const-string v3, "zoneinfo64"

    .line 1240
    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 1242
    invoke-static {v2, p1}, Lcom/ibm/icu/impl/ZoneMeta;->openOlsonResource(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 1243
    invoke-direct {p0, v2, v3, p1}, Lcom/ibm/icu/impl/OlsonTimeZone;->construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 1251
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->constructEmpty()V

    .line 1256
    :cond_1
    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method private zoneOffsetAt(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 756
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1284
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    .line 1285
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_0

    .line 1286
    invoke-virtual {v1}, Lcom/ibm/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/SimpleTimeZone;

    iput-object v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    :cond_0
    const/4 v1, 0x0

    .line 1296
    iput-boolean v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 894
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 896
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/OlsonTimeZone;

    .line 898
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    invoke-static {v0, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_3

    .line 905
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/SimpleTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    iget v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 908
    invoke-static {v0, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 909
    invoke-static {v0, v2}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object p1, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 910
    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 1275
    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalID()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 442
    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 452
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 454
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    return-object v0
.end method

.method public getDSTSavings()I
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    return v0

    .line 379
    :cond_0
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    return v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 7

    .line 948
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 950
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 951
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 952
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    return-object p1

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_8

    .line 965
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 966
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const-wide/16 v2, 0x3e8

    if-lt v0, v1, :cond_4

    .line 967
    iget-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v5, v4, v0

    mul-long v5, v5, v2

    cmp-long v4, p1, v5

    if-gtz v4, :cond_4

    if-nez p3, :cond_3

    cmp-long v4, p1, v5

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 972
    :cond_4
    :goto_1
    iget p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_5

    .line 973
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    return-object p1

    :cond_5
    if-ge v0, v1, :cond_6

    .line 975
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    return-object p1

    .line 978
    :cond_6
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object p2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 p3, v0, 0x1

    aget-byte p2, p2, p3

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p2

    aget-object p1, p1, p2

    .line 979
    iget-object p2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    aget-object p2, p2, v0

    .line 980
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v0, p3

    mul-long v4, v4, v2

    .line 983
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 984
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    if-ne p3, v0, :cond_7

    const/4 p1, 0x0

    .line 985
    invoke-virtual {p0, v4, v5, p1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p1

    return-object p1

    .line 988
    :cond_7
    new-instance p3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {p3, v4, v5, p2, p1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    return-object p3

    :cond_8
    return-object v1
.end method

.method public getOffset(IIIIII)I
    .locals 9

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-gt p3, v0, :cond_0

    .line 130
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(IIIIIII)I

    move-result p1

    return p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Month is not in the legal range: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOffset(IIIIIII)I
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-ltz p3, :cond_3

    const/16 v1, 0xb

    if-gt p3, v1, :cond_3

    if-lt p4, v0, :cond_3

    if-gt p4, p7, :cond_3

    if-lt p5, v0, :cond_3

    const/4 v1, 0x7

    if-gt p5, v1, :cond_3

    if-ltz p6, :cond_3

    const v1, 0x5265c00

    if-ge p6, v1, :cond_3

    const/16 v1, 0x1c

    if-lt p7, v1, :cond_3

    const/16 v1, 0x1f

    if-gt p7, v1, :cond_3

    if-nez p1, :cond_1

    neg-int p2, p2

    :cond_1
    move v3, p2

    .line 157
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_2

    iget p2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-lt v3, p2, :cond_2

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 158
    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result p1

    return p1

    .line 162
    :cond_2
    invoke-static {v3, p3, p4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide p1

    const-wide/32 p3, 0x5265c00

    mul-long p1, p1, p3

    int-to-long p3, p6

    add-long v2, p1, p3

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v7, p1

    .line 165
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    const/4 p2, 0x0

    aget p2, p1, p2

    aget p1, p1, v0

    add-int/2addr p2, p1

    return p2

    .line 150
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getOffset(JZ[I)V
    .locals 8

    .line 270
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v3, p1

    iget-wide v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_0

    .line 271
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(JZ[I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const/16 v5, 0xc

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    .line 273
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    :goto_0
    return-void
.end method

.method public getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V
    .locals 8

    .line 284
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v3, p1

    iget-wide v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 285
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 287
    invoke-static {p3}, Lcom/ibm/icu/impl/OlsonTimeZone;->getLocalOptionValue(Lcom/ibm/icu/util/BasicTimeZone$LocalOption;)I

    move-result v4

    invoke-static {p4}, Lcom/ibm/icu/impl/OlsonTimeZone;->getLocalOptionValue(Lcom/ibm/icu/util/BasicTimeZone$LocalOption;)I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    :goto_0
    return-void
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 8

    .line 999
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 1001
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1003
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    return-object p1

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p1

    return-object p1

    .line 1009
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    return-object p1

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1016
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1017
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const-wide/16 v3, 0x3e8

    if-lt v0, v2, :cond_4

    .line 1018
    iget-object v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v5, v0

    mul-long v6, v6, v3

    cmp-long v5, p1, v6

    if-gtz v5, :cond_4

    if-eqz p3, :cond_3

    cmp-long v5, p1, v6

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge v0, v2, :cond_5

    return-object v1

    :cond_5
    if-ne v0, v2, :cond_6

    .line 1027
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    return-object p1

    .line 1030
    :cond_6
    iget-object p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object p2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p2, p2, v0

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p2

    aget-object p1, p1, p2

    .line 1031
    iget-object p2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object p3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v1, v0, -0x1

    aget-byte p3, p3, v1

    invoke-direct {p0, p3}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p3

    aget-object p2, p2, p3

    .line 1032
    iget-object p3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v0, p3, v0

    mul-long v0, v0, v3

    .line 1035
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    if-ne p3, v2, :cond_7

    .line 1036
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    if-ne p3, v2, :cond_7

    const/4 p1, 0x0

    .line 1037
    invoke-virtual {p0, v0, v1, p1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p1

    return-object p1

    .line 1040
    :cond_7
    new-instance p3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {p3, v0, v1, p2, p1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    return-object p3

    :cond_8
    return-object v1
.end method

.method public getRawOffset()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    aget v0, v0, v3

    return v0
.end method

.method public getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
    .locals 12

    .line 1051
    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 1053
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1056
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 1057
    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_4

    .line 1063
    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1070
    :cond_4
    :goto_1
    new-array v0, v3, [Lcom/ibm/icu/util/TimeZoneRule;

    .line 1072
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    aput-object v3, v0, v1

    .line 1074
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1075
    :goto_2
    iget-object v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 1076
    aget-object v6, v5, v3

    if-eqz v6, :cond_5

    add-int/lit8 v6, v4, 0x1

    .line 1077
    aget-object v5, v5, v3

    aput-object v5, v0, v4

    move v4, v6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    .line 1082
    :cond_7
    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_9

    .line 1083
    invoke-virtual {v3}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1084
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/SimpleTimeZone;->getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    add-int/lit8 v3, v4, 0x1

    .line 1086
    aget-object v2, v1, v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 1087
    aget-object v1, v1, v2

    aput-object v1, v0, v3

    goto :goto_3

    .line 1090
    :cond_8
    new-instance v3, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(STD)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v5}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v7

    const/4 v8, 0x0

    new-array v9, v2, [J

    iget-wide v10, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v10, v10

    aput-wide v10, v9, v1

    const/4 v10, 0x2

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v3, v0, v4

    :cond_9
    :goto_3
    return-object v0
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 402
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 406
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/impl/OlsonTimeZone;

    if-nez v1, :cond_2

    return v2

    .line 412
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/OlsonTimeZone;

    .line 413
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v1, :cond_3

    .line 414
    iget-object v1, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_4

    return v2

    .line 418
    :cond_3
    iget-object v3, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_6

    iget v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v5, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v4, v5, :cond_6

    .line 420
    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 427
    :cond_4
    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v3, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v3, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 428
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    iget v3, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v3, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 430
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object p1, p1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 431
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 9

    .line 917
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    ushr-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v2, 0x6

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    int-to-long v0, v0

    const/16 v3, 0x8

    ushr-int/2addr v2, v3

    int-to-long v4, v2

    iget-wide v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 920
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v6, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 921
    :cond_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/SimpleTimeZone;->hashCode()I

    move-result v2

    :goto_0
    int-to-long v7, v2

    add-long/2addr v4, v7

    .line 922
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->hashCode()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    xor-long/2addr v0, v4

    long-to-int v1, v0

    .line 923
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 924
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v4, v2

    if-ge v0, v4, :cond_1

    int-to-long v4, v1

    .line 925
    aget-wide v7, v2, v0

    aget-wide v1, v2, v0

    ushr-long/2addr v1, v3

    xor-long/2addr v1, v7

    add-long/2addr v4, v1

    long-to-int v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 928
    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 929
    aget v4, v2, v0

    aget v2, v2, v0

    ushr-int/2addr v2, v3

    xor-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v0, :cond_3

    .line 932
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v0

    if-ge v6, v2, :cond_3

    .line 933
    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    return v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 388
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public isFrozen()Z
    .locals 1

    .line 1267
    iget-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 9

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 344
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {v2}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    long-to-double v5, v0

    .line 347
    iget-wide v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v5, 0x3e8

    .line 353
    invoke-static {v0, v1, v5, v6}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v0

    .line 354
    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v2, v4

    .line 355
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    :goto_0
    if-ltz v2, :cond_5

    .line 359
    iget-object v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v5, v2

    cmp-long v5, v6, v0

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v2, -0x1

    .line 362
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_4

    return v4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v3
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 666
    :cond_1
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 667
    iput-boolean p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 650
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRawOffset(I)V
    .locals 12

    .line 174
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getRawOffset()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    .line 183
    iget-wide v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    const/4 v6, 0x0

    cmpg-double v7, v2, v4

    if-gez v7, :cond_6

    .line 184
    new-instance v2, Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->useDaylightTime()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    .line 189
    array-length v5, v4

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    .line 194
    invoke-virtual {p0, v0, v1, v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 196
    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    .line 199
    :cond_1
    array-length v5, v4

    if-ne v5, v7, :cond_3

    aget-object v5, v4, v3

    instance-of v5, v5, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    aget-object v7, v4, v5

    instance-of v7, v7, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v7, :cond_3

    .line 203
    aget-object v7, v4, v3

    check-cast v7, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 204
    aget-object v4, v4, v5

    check-cast v4, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 206
    invoke-virtual {v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual {v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    add-int/2addr v5, v8

    .line 207
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    add-int/2addr v8, v9

    if-le v5, v8, :cond_2

    .line 210
    invoke-virtual {v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v7

    .line 211
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v4

    sub-int/2addr v5, v8

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v4

    .line 215
    invoke-virtual {v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v7

    sub-int v5, v8, v5

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    .line 219
    :goto_0
    invoke-virtual {v7}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v8

    invoke-virtual {v7}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v9

    invoke-virtual {v7}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v10

    .line 220
    invoke-virtual {v7}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v7

    .line 219
    invoke-virtual {v2, v8, v9, v10, v7}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 221
    invoke-virtual {v4}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v7

    invoke-virtual {v4}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v8

    invoke-virtual {v4}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v9

    .line 222
    invoke-virtual {v4}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v4

    .line 221
    invoke-virtual {v2, v7, v8, v9, v4}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 224
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/SimpleTimeZone;->setDSTSavings(I)V

    goto :goto_1

    .line 232
    :cond_3
    invoke-virtual {v2, v6, v3, v6}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(III)V

    const/16 v4, 0xb

    const/16 v5, 0x1f

    const v7, 0x5265bff

    .line 233
    invoke-virtual {v2, v4, v5, v7}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(III)V

    :cond_4
    :goto_1
    const/4 v4, 0x0

    .line 237
    invoke-static {v0, v1, v4}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 239
    aget v1, v0, v6

    iput v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 240
    aget v0, v0, v6

    invoke-static {v0, v6, v3}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    if-eqz p1, :cond_5

    .line 245
    iget p1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 248
    :cond_5
    iput-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    goto :goto_2

    .line 251
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/SimpleTimeZone;->setRawOffset(I)V

    .line 254
    :goto_2
    iput-boolean v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 175
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transitionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",typeCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",transitionTimes="

    .line 785
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/16 v3, 0x2c

    const/16 v4, 0x5d

    const/4 v5, 0x0

    const-string v6, "null"

    if-eqz v2, :cond_2

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 788
    :goto_0
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v7, v7

    if-ge v2, v7, :cond_1

    if-lez v2, :cond_0

    .line 790
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 792
    :cond_0
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v7, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 796
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, ",typeOffsets="

    .line 798
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    if-eqz v2, :cond_5

    .line 800
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 801
    :goto_2
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v7, v7

    if-ge v2, v7, :cond_4

    if-lez v2, :cond_3

    .line 803
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    :cond_3
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 807
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 809
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v2, ",typeMapData="

    .line 811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v2, :cond_7

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    :goto_4
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v1, v1

    if-ge v5, v1, :cond_8

    if-lez v5, :cond_6

    .line 816
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v1, v1, v5

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 821
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalStartYear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalStartMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalZone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 11

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 313
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    long-to-double v5, v0

    iget-wide v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v9, v5, v7

    if-ltz v9, :cond_1

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    .line 317
    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 320
    aget v1, v0, v4

    invoke-static {v1, v4, v3}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    const-wide/32 v5, 0x15180

    mul-long v1, v1, v5

    .line 321
    aget v0, v0, v4

    add-int/2addr v0, v3

    invoke-static {v0, v4, v3}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v7

    mul-long v7, v7, v5

    const/4 v0, 0x0

    .line 325
    :goto_1
    iget v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v0, v5, :cond_6

    .line 326
    iget-object v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v9, v5, v0

    cmp-long v6, v9, v7

    if-ltz v6, :cond_2

    goto :goto_2

    .line 329
    :cond_2
    aget-wide v9, v5, v0

    cmp-long v5, v9, v1

    if-ltz v5, :cond_3

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v9, v5, v0

    cmp-long v5, v9, v1

    if-lez v5, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v5, v0, -0x1

    .line 330
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v4
.end method
