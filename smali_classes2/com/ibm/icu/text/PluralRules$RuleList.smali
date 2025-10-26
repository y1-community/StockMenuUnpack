.class Lcom/ibm/icu/text/PluralRules$RuleList;
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
    name = "RuleList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private hasExplicitBoundingInfo:Z

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/PluralRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1911
    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    .line 1913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/PluralRules$1;)V
    .locals 0

    .line 1910
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/PluralRules$RuleList;)Z
    .locals 0

    .line 1910
    iget-boolean p0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ibm/icu/text/PluralRules$RuleList;Z)Z
    .locals 0

    .line 1910
    iput-boolean p1, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return p1
.end method

.method private selectRule(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 3

    .line 1944
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1945
    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/PluralRules$Rule;->appliesTo(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;
    .locals 3

    .line 1916
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 1917
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1918
    invoke-virtual {v2}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1919
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1922
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public computeLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z
    .locals 5

    .line 1983
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1984
    invoke-virtual {v3}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1985
    invoke-virtual {v3, p2}, Lcom/ibm/icu/text/PluralRules$Rule;->isLimited(Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public finish()Lcom/ibm/icu/text/PluralRules$RuleList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1929
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1930
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1931
    invoke-virtual {v2}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    const-string v4, "other"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1933
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "other:"

    .line 1937
    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->access$600(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v1

    .line 1939
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDecimalSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 3

    .line 2025
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 2026
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2027
    sget-object p1, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne p2, p1, :cond_1

    invoke-static {v1}, Lcom/ibm/icu/text/PluralRules$Rule;->access$300(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/ibm/icu/text/PluralRules$Rule;->access$400(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1961
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1962
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1963
    invoke-virtual {v2}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2007
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 2008
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2009
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Rule;->getConstraint()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z
    .locals 1

    .line 1971
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    if-eqz v0, :cond_1

    .line 1972
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 1973
    :cond_0
    iget-boolean p1, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    :goto_0
    return p1

    .line 1976
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result p1

    return p1
.end method

.method public select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .locals 1

    .line 1953
    invoke-interface {p1}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1956
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->selectRule(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object p1

    .line 1957
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "other"

    return-object p1
.end method

.method public select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;Ljava/lang/String;)Z
    .locals 3

    .line 2016
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 2017
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/PluralRules$Rule;->appliesTo(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1997
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ";  "

    .line 1999
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2003
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
