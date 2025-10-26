.class public abstract Lcom/ibm/icu/text/SearchIterator;
.super Ljava/lang/Object;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;,
        Lcom/ibm/icu/text/SearchIterator$Search;
    }
.end annotation


# static fields
.field public static final DONE:I = -0x1


# instance fields
.field protected breakIterator:Lcom/ibm/icu/text/BreakIterator;

.field protected matchLength:I

.field search_:Lcom/ibm/icu/text/SearchIterator$Search;

.field protected targetText:Ljava/text/CharacterIterator;


# direct methods
.method protected constructor <init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/BreakIterator;)V
    .locals 2

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/SearchIterator$Search;-><init>(Lcom/ibm/icu/text/SearchIterator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    if-eqz p1, :cond_1

    .line 635
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    .line 642
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/SearchIterator$Search;->setBreakIter(Lcom/ibm/icu/text/BreakIterator;)V

    .line 643
    iget-object p2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {p2}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 644
    iget-object p2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {p2}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 646
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 647
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean p2, p1, Lcom/ibm/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 648
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    sget-object v0, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    iput-object v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    .line 649
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 650
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    .line 651
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v0, -0x1

    iput v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 652
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void

    .line 636
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument target.  Argument can not be null or of length 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final first()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    .line 544
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->setIndex(I)V

    .line 545
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->handleNext(I)I

    move-result v0

    return v0
.end method

.method public final following(I)I
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SearchIterator;->setIndex(I)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SearchIterator;->handleNext(I)I

    move-result p1

    return p1
.end method

.method public getBreakIterator()Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public getElementComparisonType()Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public getMatchLength()I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    return v0
.end method

.method public getMatchStart()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    return v0
.end method

.method public getMatchedText()Ljava/lang/String;
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    iget-object v2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Lcom/ibm/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v2

    .line 373
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v3, v3, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v2, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 374
    :goto_0
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 375
    invoke-interface {v2}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v2, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTarget()Ljava/text/CharacterIterator;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleNext(I)I
.end method

.method protected abstract handlePrevious(I)I
.end method

.method public isOverlapping()Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    return v0
.end method

.method public final last()I
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    .line 584
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->setIndex(I)V

    .line 585
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 6

    .line 401
    invoke-virtual {p0}, Lcom/ibm/icu/text/SearchIterator;->getIndex()I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v1, v1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 403
    iget-object v2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v2

    .line 404
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    .line 405
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    .line 406
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_2

    add-int/2addr v1, v2

    if-lt v1, v3, :cond_2

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/SearchIterator;->setMatchNotFound()V

    return v4

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 420
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v3, v3, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    if-lez v2, :cond_4

    .line 429
    iget-object v1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v1, v1, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v2

    .line 436
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->handleNext(I)I

    move-result v0

    return v0
.end method

.method public final preceding(I)I
    .locals 0

    .line 611
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SearchIterator;->setIndex(I)V

    .line 612
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/SearchIterator;->handlePrevious(I)I

    move-result p1

    return p1
.end method

.method public previous()I
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    .line 456
    iget-object v2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v1, v2, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 457
    iget-object v2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v1, v2, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    .line 458
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->setIndex(I)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/SearchIterator;->getIndex()I

    move-result v0

    .line 463
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v2, v2, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 464
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v1, v3, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eq v2, v4, :cond_2

    return v2

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    if-eq v0, v1, :cond_5

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eq v2, v4, :cond_4

    .line 484
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/2addr v2, v0

    .line 488
    :cond_3
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v0

    return v0

    .line 491
    :cond_4
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v0

    return v0

    .line 478
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/SearchIterator;->setMatchNotFound()V

    return v4
.end method

.method public reset()V
    .locals 2

    .line 519
    invoke-virtual {p0}, Lcom/ibm/icu/text/SearchIterator;->setMatchNotFound()V

    .line 520
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SearchIterator;->setIndex(I)V

    .line 521
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 522
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 523
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    sget-object v1, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    iput-object v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    .line 524
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 525
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    return-void
.end method

.method public setBreakIterator(Lcom/ibm/icu/text/BreakIterator;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/SearchIterator$Search;->setBreakIter(Lcom/ibm/icu/text/BreakIterator;)V

    .line 230
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {p1}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_0
    return-void
.end method

.method public setElementComparisonType(Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-object p1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    return-void
.end method

.method public setIndex(I)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 190
    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 195
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    .line 196
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 197
    iget-object p1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v0, -0x1

    iput v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndex(int) expected position to be between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 193
    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setMatchLength(I)V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void
.end method

.method protected setMatchNotFound()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 721
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void
.end method

.method public setOverlapping(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean p1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    return-void
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 252
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 256
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 259
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 260
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    .line 261
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 262
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/ibm/icu/text/SearchIterator;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_1
    return-void

    .line 253
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null or empty text"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
