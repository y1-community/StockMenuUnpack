.class Lcom/ibm/icu/text/PluralRules$Rule;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

.field private final decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

.field private final integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

.field private final keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V
    .locals 0

    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1861
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    .line 1862
    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1863
    iput-object p3, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    .line 1864
    iput-object p4, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    return-void
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 0

    .line 1851
    iget-object p0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 0

    .line 1851
    iget-object p0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    return-object p0
.end method


# virtual methods
.method public and(Lcom/ibm/icu/text/PluralRules$Constraint;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 4

    .line 1869
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Rule;

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Lcom/ibm/icu/text/PluralRules$AndConstraint;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Lcom/ibm/icu/text/PluralRules$AndConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    iget-object p1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v0
.end method

.method public appliesTo(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 1

    .line 1882
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z

    move-result p1

    return p1
.end method

.method public getConstraint()Ljava/lang/String;
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1878
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1902
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLimited(Lcom/ibm/icu/text/PluralRules$SampleType;)Z
    .locals 1

    .line 1886
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Lcom/ibm/icu/text/PluralRules$Constraint;->isLimited(Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result p1

    return p1
.end method

.method public or(Lcom/ibm/icu/text/PluralRules$Constraint;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 4

    .line 1874
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Rule;

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Lcom/ibm/icu/text/PluralRules$OrConstraint;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Lcom/ibm/icu/text/PluralRules$OrConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    iget-object p1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    const-string v2, ""

    const-string v3, " "

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$Rule;->integerSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    .line 1892
    invoke-virtual {v4}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$Rule;->decimalSamples:Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    .line 1893
    invoke-virtual {v2}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
