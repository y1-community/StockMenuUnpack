.class public Lcom/ibm/icu/util/RangeDateRule;
.super Ljava/lang/Object;
.source "RangeDateRule.java"

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# instance fields
.field ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    return-void
.end method

.method private rangeAt(I)Lcom/ibm/icu/util/Range;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Range;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private startIndex(Ljava/util/Date;)I
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v1, v0

    const/4 v0, 0x0

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Range;

    .line 139
    iget-object v2, v2, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public add(Lcom/ibm/icu/util/DateRule;)V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/RangeDateRule;->add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V

    return-void
.end method

.method public add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    new-instance v1, Lcom/ibm/icu/util/Range;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/util/Range;-><init>(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    .line 62
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/ibm/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;

    move-result-object v0

    if-eqz v2, :cond_2

    .line 71
    iget-object v3, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 74
    iget-object v1, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    iget-object v0, v0, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;

    invoke-interface {v1, p1, v0}, Lcom/ibm/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1}, Lcom/ibm/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 97
    iget-object v3, v2, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v3, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 100
    invoke-direct {p0, v3}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;

    move-result-object v3

    .line 102
    iget-object v4, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    .line 103
    iget-object v1, v3, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v3, Lcom/ibm/icu/util/Range;->start:Ljava/util/Date;

    goto :goto_1

    :cond_1
    move-object v1, p2

    .line 105
    :goto_1
    iget-object v2, v2, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v2, p1, v1}, Lcom/ibm/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/RangeDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 2

    .line 116
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/RangeDateRule;->rangeAt(I)Lcom/ibm/icu/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, v0, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/ibm/icu/util/Range;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1}, Lcom/ibm/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
