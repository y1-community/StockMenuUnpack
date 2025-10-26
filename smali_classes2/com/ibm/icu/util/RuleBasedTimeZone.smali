.class public Lcom/ibm/icu/util/RuleBasedTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "RuleBasedTimeZone.java"


# static fields
.field private static final serialVersionUID:J = 0x693487808c366c3fL


# instance fields
.field private finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private historicRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/TimeZoneRule;",
            ">;"
        }
    .end annotation
.end field

.field private transient historicTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/TimeZoneTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private transient upToDate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 761
    iput-boolean p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 47
    iput-object p2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    return-void
.end method

.method private complete()V
    .locals 19

    move-object/from16 v0, p0

    .line 495
    iget-boolean v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    if-eqz v1, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    goto :goto_0

    .line 503
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Incomplete final rules"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_c

    .line 508
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    const-wide v4, -0x28ec76c40e65000L

    if-eqz v3, :cond_12

    .line 514
    new-instance v3, Ljava/util/BitSet;

    iget-object v7, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/BitSet;-><init>(I)V

    .line 517
    :goto_3
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    .line 518
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    const-wide v7, 0x28d47dbbf19b000L

    const/4 v9, 0x0

    move-wide v15, v7

    move-object/from16 v17, v9

    const/4 v12, 0x0

    .line 524
    :goto_4
    iget-object v7, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v12, v7, :cond_9

    .line 525
    invoke-virtual {v3, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v12

    goto :goto_5

    .line 528
    :cond_5
    iget-object v7, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/ibm/icu/util/TimeZoneRule;

    const/16 v18, 0x0

    move-object v7, v11

    move-wide v8, v4

    move v10, v13

    move-object v2, v11

    move v11, v14

    move v6, v12

    move/from16 v12, v18

    .line 529
    invoke-virtual/range {v7 .. v12}, Lcom/ibm/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    if-nez v7, :cond_6

    .line 532
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    :cond_6
    if-eq v2, v1, :cond_8

    .line 535
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 536
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 537
    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    if-ne v8, v9, :cond_7

    goto :goto_5

    .line 540
    :cond_7
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v9, v7, v15

    if-gez v9, :cond_8

    move-object/from16 v17, v2

    move-wide v15, v7

    :cond_8
    :goto_5
    add-int/lit8 v12, v6, 0x1

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    if-nez v17, :cond_c

    const/4 v2, 0x0

    .line 551
    :goto_6
    iget-object v6, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_b

    .line 552
    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_c

    goto :goto_a

    .line 562
    :cond_c
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_8
    const/4 v6, 0x2

    if-ge v2, v6, :cond_f

    .line 565
    iget-object v6, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v7, v6, v2

    if-ne v7, v1, :cond_d

    goto :goto_9

    .line 568
    :cond_d
    aget-object v7, v6, v2

    const/4 v12, 0x0

    move-wide v8, v4

    move v10, v13

    move v11, v14

    invoke-virtual/range {v7 .. v12}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 570
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v6, v15

    if-gez v8, :cond_e

    .line 573
    iget-object v8, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    move-wide v15, v6

    move-object/from16 v17, v8

    :cond_e
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    move-wide v6, v15

    move-object/from16 v2, v17

    if-nez v2, :cond_10

    :goto_a
    goto :goto_b

    .line 584
    :cond_10
    iget-object v4, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v4, :cond_11

    .line 585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 587
    :cond_11
    iget-object v4, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v5, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v5, v6, v7, v1, v2}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    move-wide v4, v6

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_12
    :goto_b
    move-wide v8, v4

    .line 592
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v2, :cond_3

    .line 593
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v2, :cond_13

    .line 594
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 597
    :cond_13
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    const/4 v7, 0x0

    move-wide v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    .line 598
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v2

    .line 599
    invoke-virtual {v2, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 600
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    aget-object v11, v1, v2

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v14

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 602
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    const/4 v7, 0x1

    .line 604
    iget-object v3, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v4, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v8, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v7

    invoke-direct {v4, v5, v6, v1, v8}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v8, v1, v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 606
    iget-object v2, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x1

    aget-object v7, v1, v6

    const/4 v8, 0x0

    aget-object v1, v1, v8

    invoke-direct {v3, v4, v5, v7, v1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :goto_c
    iput-boolean v6, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    return-void
.end method

.method private findRuleInFinal(JZII)Lcom/ibm/icu/util/TimeZoneRule;
    .locals 13

    move-object v0, p0

    .line 660
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    aget-object v4, v1, v3

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_1

    .line 670
    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    .line 671
    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    move/from16 v9, p4

    move/from16 v10, p5

    .line 670
    invoke-static/range {v5 .. v10}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v1

    int-to-long v5, v1

    sub-long v5, p1, v5

    move-wide v8, v5

    goto :goto_0

    :cond_1
    move-wide v8, p1

    .line 675
    :goto_0
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v7, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 679
    iget-object v5, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v6

    iget-object v5, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v7

    iget-object v5, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v4

    .line 680
    invoke-virtual {v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    iget-object v5, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    move/from16 v10, p4

    move/from16 v11, p5

    .line 679
    invoke-static/range {v6 .. v11}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v5

    int-to-long v5, v5

    sub-long v5, p1, v5

    move-wide v8, v5

    goto :goto_1

    :cond_2
    move-wide v8, p1

    .line 684
    :goto_1
    iget-object v5, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v7, v5, v4

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v5, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v5

    if-eqz v1, :cond_5

    if-nez v5, :cond_3

    goto :goto_3

    .line 696
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v4

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 688
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    return-object v1

    :cond_6
    if-eqz v5, :cond_7

    .line 690
    iget-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v4

    return-object v1

    :cond_7
    :goto_4
    return-object v2
.end method

.method private static getLocalDelta(IIIIII)I
    .locals 4

    add-int/2addr p0, p1

    add-int/2addr p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    sub-int p1, p2, p0

    const/16 p3, 0xc

    const/4 v3, 0x3

    if-ltz p1, :cond_6

    and-int/lit8 p1, p4, 0x3

    if-ne p1, v1, :cond_2

    if-nez v2, :cond_c

    :cond_2
    if-ne p1, v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    if-nez v0, :cond_b

    :cond_4
    if-ne p1, v3, :cond_5

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    and-int/lit8 p1, p4, 0xc

    if-ne p1, p3, :cond_b

    goto :goto_2

    :cond_6
    and-int/lit8 p1, p5, 0x3

    if-ne p1, v1, :cond_7

    if-nez v2, :cond_b

    :cond_7
    if-ne p1, v3, :cond_8

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    if-ne p1, v1, :cond_9

    if-nez v0, :cond_c

    :cond_9
    if-ne p1, v3, :cond_a

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    and-int/lit8 p1, p5, 0xc

    const/4 p3, 0x4

    if-ne p1, p3, :cond_b

    goto :goto_2

    :cond_b
    :goto_1
    move p0, p2

    :cond_c
    :goto_2
    return p0
.end method

.method private getOffset(JZII[I)V
    .locals 6

    .line 617
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    .line 619
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 620
    iget-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    goto :goto_3

    .line 622
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v0, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    .line 625
    iget-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    goto :goto_3

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 628
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v3, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-lez v5, :cond_3

    .line 631
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_2

    .line 632
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->findRuleInFinal(JZII)Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    .line 637
    iget-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_1
    if-ltz v0, :cond_5

    .line 642
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v3, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-ltz v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 648
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    .line 652
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p2

    aput p2, p6, v2

    .line 653
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p1

    aput p1, p6, v1

    return-void
.end method

.method private static getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J
    .locals 8

    .line 704
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    .line 707
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    move v6, p2

    move v7, p3

    .line 706
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->isTransitionRule()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    instance-of v0, p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 68
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 70
    iget-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 71
    iput-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aput-object v0, p1, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 73
    aget-object v3, p1, v2

    if-nez v3, :cond_1

    .line 74
    aput-object v0, p1, v2

    goto :goto_0

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many final rules"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v0, :cond_3

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    iput-boolean v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    return-void

    .line 65
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rule must be a transition rule"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen RuleBasedTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 3

    .line 789
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/RuleBasedTimeZone;

    .line 790
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 791
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_1

    .line 794
    invoke-virtual {v1}, [Lcom/ibm/icu/util/AnnualTimeZoneRule;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iput-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    :cond_1
    const/4 v1, 0x0

    .line 796
    iput-boolean v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .line 778
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    const/4 v0, 0x1

    .line 779
    iput-boolean v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 12

    .line 347
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    .line 348
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 353
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 354
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v3, p1

    if-gtz v6, :cond_8

    if-eqz p3, :cond_1

    cmp-long v6, v3, p1

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .line 359
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 360
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    if-eqz p3, :cond_3

    cmp-long v4, v6, p1

    if-nez v4, :cond_3

    :cond_2
    :goto_0
    move-object v0, v3

    goto/16 :goto_2

    :cond_3
    cmp-long v4, v6, p1

    if-gtz v4, :cond_6

    .line 364
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_5

    .line 366
    aget-object v6, v0, v2

    aget-object v0, v0, v5

    .line 367
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v9

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v10

    move-wide v7, p1

    move v11, p3

    .line 366
    invoke-virtual/range {v6 .. v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 368
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v6, v3, v5

    aget-object v3, v3, v2

    .line 369
    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v9

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v10

    .line 368
    invoke-virtual/range {v6 .. v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    .line 371
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 372
    new-instance p1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v3, v0, v5

    aget-object v0, v0, v2

    invoke-direct {p1, p2, p3, v3, v0}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, p1

    goto :goto_3

    .line 374
    :cond_4
    new-instance p2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object p3, p1, v2

    aget-object p1, p1, v5

    invoke-direct {p2, v3, v4, p3, p1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, p2

    goto :goto_3

    :cond_5
    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_2

    .line 386
    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 387
    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-ltz v7, :cond_2

    if-nez p3, :cond_7

    cmp-long v7, v5, p1

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, -0x1

    move-object v3, v4

    goto :goto_1

    :cond_8
    :goto_2
    const/4 v5, 0x0

    .line 398
    :goto_3
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    .line 399
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p2

    .line 400
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-ne p3, v3, :cond_a

    .line 401
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p1

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-ne p1, p2, :cond_a

    if-eqz v5, :cond_9

    return-object v1

    .line 406
    :cond_9
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 7

    if-nez p1, :cond_0

    rsub-int/lit8 p2, p2, 0x1

    .line 103
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide p1

    const-wide/32 p3, 0x5265c00

    mul-long p1, p1, p3

    int-to-long p3, p6

    add-long v1, p1, p3

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p1

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 p3, 0x1

    aget p1, p1, p3

    add-int/2addr p2, p1

    return p2
.end method

.method public getOffset(JZ[I)V
    .locals 7

    const/4 v4, 0x4

    const/16 v5, 0xc

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    .line 116
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V
    .locals 7

    .line 126
    invoke-static {p3}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalOptionValue(Lcom/ibm/icu/util/BasicTimeZone$LocalOption;)I

    move-result v4

    .line 127
    invoke-static {p4}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalOptionValue(Lcom/ibm/icu/util/BasicTimeZone$LocalOption;)I

    move-result v5

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p5

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 10

    .line 419
    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    .line 420
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 424
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 425
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    if-eqz p3, :cond_1

    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    return-object v1

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 432
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 433
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    if-eqz p3, :cond_4

    cmp-long v6, v4, p1

    if-nez v6, :cond_4

    :cond_3
    :goto_0
    move-object v0, v3

    goto/16 :goto_1

    :cond_4
    cmp-long v6, v4, p1

    if-gez v6, :cond_6

    .line 437
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_3

    .line 439
    aget-object v4, v0, v2

    aget-object v0, v0, v1

    .line 440
    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    move-wide v5, p1

    move v9, p3

    .line 439
    invoke-virtual/range {v4 .. v9}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 441
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v3, v1

    aget-object v3, v3, v2

    .line 442
    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    .line 441
    invoke-virtual/range {v4 .. v9}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    .line 444
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 445
    new-instance p1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, p1

    goto :goto_1

    .line 447
    :cond_5
    new-instance p2, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object p3, p1, v2

    aget-object p1, p1, v1

    invoke-direct {p2, v3, v4, p3, p1}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, p2

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 455
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/ibm/icu/util/TimeZoneTransition;

    .line 456
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-ltz v1, :cond_3

    if-eqz p3, :cond_6

    cmp-long v1, v4, p1

    if-nez v1, :cond_6

    goto :goto_0

    .line 466
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    .line 467
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p2

    .line 468
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    if-ne p3, v1, :cond_7

    .line 469
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p1

    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 471
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public getRawOffset()I
    .locals 4

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    aget v0, v2, v3

    return v0
.end method

.method public getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 315
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v2, :cond_2

    .line 316
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 322
    :cond_2
    :goto_1
    new-array v0, v0, [Lcom/ibm/icu/util/TimeZoneRule;

    .line 323
    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 326
    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 327
    :goto_2
    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v2, v4, :cond_4

    .line 328
    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/TimeZoneRule;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 331
    :cond_4
    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v4, :cond_5

    add-int/lit8 v5, v2, 0x1

    .line 332
    aget-object v3, v4, v3

    aput-object v3, v0, v2

    .line 333
    aget-object v2, v4, v1

    if-eqz v2, :cond_5

    .line 334
    aget-object v1, v4, v1

    aput-object v1, v0, v5

    :cond_5
    return-object v0
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 250
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 254
    :cond_1
    check-cast p1, Lcom/ibm/icu/util/RuleBasedTimeZone;

    .line 257
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    iget-object v3, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    .line 263
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 264
    aget-object v4, v3, v1

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v1

    if-nez v4, :cond_3

    goto :goto_1

    .line 267
    :cond_3
    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v5, v4, v1

    if-eqz v5, :cond_4

    aget-object v3, v3, v1

    aget-object v4, v4, v1

    .line 268
    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    if-nez v1, :cond_d

    .line 274
    iget-object v1, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_6

    goto :goto_3

    .line 279
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v3, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v3, :cond_b

    .line 280
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 283
    :cond_7
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/TimeZoneRule;

    .line 285
    iget-object v4, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/util/TimeZoneRule;

    .line 286
    invoke-virtual {v3, v5}, Lcom/ibm/icu/util/TimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_8

    return v2

    :cond_b
    if-nez v1, :cond_d

    .line 295
    iget-object p1, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    return v0

    :cond_d
    :goto_3
    return v2
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 154
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public isFrozen()Z
    .locals 1

    .line 769
    iget-boolean v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 8

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    const/4 v4, 0x1

    aget v2, v2, v4

    if-eqz v2, :cond_0

    return v4

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/BitSet;

    iget-object v5, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    array-length v5, v5

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 213
    :goto_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    if-eqz v2, :cond_6

    const/4 v5, 0x0

    .line 224
    :goto_1
    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    array-length v7, v6

    if-ge v5, v7, :cond_5

    .line 225
    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 226
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 229
    :cond_5
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    iget-object v5, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    array-length v5, v5

    if-ne v1, v5, :cond_6

    :goto_2
    return v3

    .line 234
    :cond_6
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 1

    .line 167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setRawOffset in RuleBasedTimeZone is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useDaylightTime()Z
    .locals 5

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    const/4 v4, 0x1

    aget v2, v2, v4

    if-eqz v2, :cond_0

    return v4

    .line 188
    :cond_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    return v3
.end method
