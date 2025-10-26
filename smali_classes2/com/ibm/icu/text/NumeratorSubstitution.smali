.class Lcom/ibm/icu/text/NumeratorSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final denominator:D

.field private final withZeros:Z


# direct methods
.method constructor <init>(IDLcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 1

    .line 1512
    invoke-static {p5}, Lcom/ibm/icu/text/NumeratorSubstitution;->fixdesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1517
    iput-wide p2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    const-string p1, "<<"

    .line 1519
    invoke-virtual {p5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    return-void
.end method

.method static fixdesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<<"

    .line 1523
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1524
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 0

    .line 1705
    iget-wide p1, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    return-wide p1
.end method

.method public composeRuleValue(DD)D
    .locals 0

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZI)Ljava/lang/Number;
    .locals 13

    move-object v9, p0

    move-object v2, p2

    .line 1634
    iget-boolean v0, v9, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1636
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v11, p1

    const/4 v12, 0x0

    .line 1639
    :cond_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1640
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1641
    iget-object v3, v9, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v4, v11

    move-object v5, v0

    move/from16 v8, p8

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;DI)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1642
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 1649
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1650
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 1651
    :goto_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 1652
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1653
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 1657
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    move-object v3, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1658
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v3, p1

    move-object v1, v3

    const/4 v12, 0x0

    .line 1662
    :goto_2
    iget-boolean v0, v9, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v0, :cond_4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_4
    move-wide/from16 v3, p3

    :goto_3
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v5, p5

    move/from16 v8, p8

    invoke-super/range {v0 .. v8}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZI)Ljava/lang/Number;

    move-result-object v0

    .line 1664
    iget-boolean v1, v9, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v1, :cond_7

    .line 1669
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    :goto_4
    const-wide/16 v4, 0xa

    cmp-long v6, v2, v0

    if-gtz v6, :cond_5

    mul-long v2, v2, v4

    goto :goto_4

    :cond_5
    :goto_5
    if-lez v12, :cond_6

    mul-long v2, v2, v4

    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 1680
    :cond_6
    new-instance v4, Ljava/lang/Double;

    long-to-double v0, v0

    long-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v4

    :cond_7
    return-object v0
.end method

.method public doSubstitution(DLjava/lang/StringBuilder;II)V
    .locals 13

    move-object v0, p0

    move-object/from16 v7, p3

    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumeratorSubstitution;->transformNumber(D)D

    move-result-wide v8

    .line 1568
    iget-boolean v1, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v1, :cond_1

    double-to-long v1, v8

    .line 1571
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    :goto_0
    const-wide/16 v3, 0xa

    mul-long v11, v1, v3

    long-to-double v1, v11

    .line 1572
    iget-wide v3, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 1573
    iget v1, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v1, p4, v1

    const/16 v2, 0x20

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1574
    iget-object v1, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    const-wide/16 v2, 0x0

    iget v4, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v5, p4, v4

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    move-wide v1, v11

    goto :goto_0

    .line 1576
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v10

    add-int v1, p4, v1

    goto :goto_1

    :cond_1
    move/from16 v1, p4

    .line 1581
    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v4, v8, v2

    if-nez v4, :cond_2

    iget-object v2, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v2, :cond_2

    .line 1582
    iget-object v2, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    double-to-long v3, v8

    iget v5, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int/2addr v5, v1

    move-object v1, v2

    move-wide v2, v3

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    goto :goto_2

    .line 1588
    :cond_2
    iget-object v2, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v2, :cond_3

    .line 1589
    iget-object v2, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    iget v3, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int v5, v1, v3

    move-object v1, v2

    move-wide v2, v8

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    goto :goto_2

    .line 1591
    :cond_3
    iget v2, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v2, v8, v9}, Lcom/ibm/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1539
    invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1540
    check-cast p1, Lcom/ibm/icu/text/NumeratorSubstitution;

    .line 1541
    iget-wide v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    iget-wide v4, p1, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    iget-boolean p1, p1, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .locals 2

    .line 1613
    iget-wide v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public transformNumber(J)J
    .locals 2

    long-to-double p1, p1

    .line 1603
    iget-wide v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method
