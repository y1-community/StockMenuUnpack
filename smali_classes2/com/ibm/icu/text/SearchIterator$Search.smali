.class final Lcom/ibm/icu/text/SearchIterator$Search;
.super Ljava/lang/Object;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SearchIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Search"
.end annotation


# instance fields
.field elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

.field internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

.field isCanonicalMatch_:Z

.field isForwardSearching_:Z

.field isOverlap_:Z

.field matchedIndex_:I

.field reset_:Z

.field final synthetic this$0:Lcom/ibm/icu/text/SearchIterator;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/SearchIterator;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method beginIndex()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    return v0
.end method

.method breakIter()Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    return-object v0
.end method

.method endIndex()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    return v0
.end method

.method matchedLength()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator;->matchLength:I

    return v0
.end method

.method setBreakIter(Lcom/ibm/icu/text/BreakIterator;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iput-object p1, v0, Lcom/ibm/icu/text/SearchIterator;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    return-void
.end method

.method setMatchedLength(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iput p1, v0, Lcom/ibm/icu/text/SearchIterator;->matchLength:I

    return-void
.end method

.method setTarget(Ljava/text/CharacterIterator;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iput-object p1, v0, Lcom/ibm/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    return-void
.end method

.method text()Ljava/text/CharacterIterator;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator$Search;->this$0:Lcom/ibm/icu/text/SearchIterator;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    return-object v0
.end method
