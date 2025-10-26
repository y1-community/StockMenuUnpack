.class Lcom/ibm/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final inRange:Z

.field private final integersOnly:Z

.field private final lowerBound:D

.field private final mod:I

.field private final operand:Lcom/ibm/icu/text/PluralRules$Operand;

.field private final range_list:[J

.field private final upperBound:D


# direct methods
.method constructor <init>(IZLcom/ibm/icu/text/PluralRules$Operand;ZDD[J)V
    .locals 0

    .line 1688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1689
    iput p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    .line 1690
    iput-boolean p2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    .line 1691
    iput-boolean p4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    .line 1692
    iput-wide p5, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    .line 1693
    iput-wide p7, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    .line 1694
    iput-object p9, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    .line 1695
    iput-object p3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    return-void
.end method


# virtual methods
.method public isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 8

    .line 1700
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-interface {p1, v0}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    .line 1701
    iget-boolean v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    double-to-long v6, v0

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v0, v6

    cmpl-double v2, v6, v3

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v6, Lcom/ibm/icu/text/PluralRules$Operand;->j:Lcom/ibm/icu/text/PluralRules$Operand;

    if-ne v2, v6, :cond_2

    sget-object v2, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 1702
    invoke-interface {p1, v2}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v6

    cmpl-double p1, v6, v3

    if-eqz p1, :cond_2

    .line 1703
    :cond_1
    iget-boolean p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    xor-int/2addr p1, v5

    return p1

    .line 1705
    :cond_2
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz p1, :cond_3

    int-to-double v2, p1

    .line 1706
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v0, v2

    .line 1708
    :cond_3
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    const/4 p1, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_4

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 1709
    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_6

    .line 1711
    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v6, v4

    if-ge v3, v6, :cond_6

    .line 1712
    aget-wide v6, v4, v3

    long-to-double v6, v6

    cmpl-double v2, v0, v6

    if-ltz v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget-wide v6, v4, v2

    long-to-double v6, v6

    cmpg-double v2, v0, v6

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1715
    :cond_6
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-ne v0, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    return v5
.end method

.method public isLimited(Lcom/ibm/icu/text/PluralRules$SampleType;)Z
    .locals 7

    .line 1720
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-double v6, v0, v2

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1721
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$Operand;->w:Lcom/ibm/icu/text/PluralRules$Operand;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$Operand;->f:Lcom/ibm/icu/text/PluralRules$Operand;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$Operand;->t:Lcom/ibm/icu/text/PluralRules$Operand;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1724
    :goto_1
    sget-object v1, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$SampleType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$SampleType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    return v5

    :cond_3
    if-eqz v0, :cond_4

    .line 1732
    iget-object p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->n:Lcom/ibm/icu/text/PluralRules$Operand;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->j:Lcom/ibm/icu/text/PluralRules$Operand;

    if-ne p1, v0, :cond_6

    :cond_4
    iget-boolean p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-nez p1, :cond_5

    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_6

    :cond_5
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_7
    if-nez v0, :cond_a

    .line 1726
    iget-object p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->n:Lcom/ibm/icu/text/PluralRules$Operand;

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->i:Lcom/ibm/icu/text/PluralRules$Operand;

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->j:Lcom/ibm/icu/text/PluralRules$Operand;

    if-ne p1, v0, :cond_9

    :cond_8
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :cond_a
    :goto_3
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1743
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1744
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v0, :cond_0

    const-string v0, " % "

    .line 1745
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1747
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, " = "

    const-string v2, " != "

    if-nez v0, :cond_3

    .line 1748
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_5

    const-string v1, " within "

    goto :goto_1

    :cond_5
    const-string v1, " not within "

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v0, :cond_7

    const/4 v9, 0x0

    .line 1754
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v1, v0

    if-ge v9, v1, :cond_8

    .line 1755
    aget-wide v1, v0, v9

    long-to-double v1, v1

    add-int/lit8 v3, v9, 0x1

    aget-wide v3, v0, v3

    long-to-double v3, v3

    if-eqz v9, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 1758
    :cond_7
    iget-wide v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    .line 1760
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
