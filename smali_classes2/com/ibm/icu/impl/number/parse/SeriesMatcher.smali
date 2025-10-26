.class public Lcom/ibm/icu/impl/number/parse/SeriesMatcher;
.super Ljava/lang/Object;
.source "SeriesMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected frozen:Z

.field protected matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->frozen:Z

    return-void
.end method


# virtual methods
.method public addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->frozen:Z

    return-void
.end method

.method public length()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 9

    .line 40
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 46
    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->copyFrom(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 48
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 50
    :goto_0
    iget-object v6, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 51
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;

    .line 52
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v6

    .line 53
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    invoke-interface {v5, p1, p2}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    .line 60
    :goto_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v8

    if-eq v8, v6, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 61
    :goto_2
    instance-of v5, v5, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher$Flexible;

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 69
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v5

    iget v8, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    if-eq v5, v8, :cond_5

    iget v5, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    if-le v5, v6, :cond_5

    .line 70
    iget v5, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_5
    :goto_3
    move v5, v7

    goto :goto_0

    .line 77
    :cond_6
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    .line 78
    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->copyFrom(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    return v7

    :cond_7
    return v5
.end method

.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;

    .line 108
    invoke-interface {v1, p1}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;->smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<SeriesMatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;->matchers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
