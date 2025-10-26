.class public Lcom/ibm/icu/impl/coll/IterCollationIterator;
.super Lcom/ibm/icu/impl/coll/CollationIterator;
.source "IterCollationIterator.java"


# instance fields
.field protected iter:Lcom/ibm/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/coll/CollationData;ZLcom/ibm/icu/text/UCharacterIterator;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;Z)V

    .line 26
    iput-object p3, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    return-void
.end method

.method public getOffset()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 62
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/IterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    :cond_0
    int-to-char v0, v0

    return v0
.end method

.method protected handleNextCE32()J
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_0

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->trie:Lcom/ibm/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/coll/IterCollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextCodePoint()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    return v0
.end method

.method public previousCodePoint()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    return v0
.end method

.method public resetToOffset(I)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/IterCollationIterator;->reset()V

    .line 32
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/IterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method
