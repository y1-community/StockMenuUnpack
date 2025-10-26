.class public Lcom/ibm/icu/impl/CharacterIteratorWrapper;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source "CharacterIteratorWrapper.java"


# instance fields
.field private iterator:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 132
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;

    .line 133
    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public current()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getText([CI)I
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ltz p2, :cond_1

    add-int v2, p2, v0

    .line 113
    array-length v3, p1

    if-gt v2, v3, :cond_1

    .line 117
    iget-object v2, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result v2

    :goto_0
    const v3, 0xffff

    if-eq v2, v3, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 118
    aput-char v2, p1, p2

    .line 117
    iget-object p2, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    move p2, v3

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v0

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public moveIndex(I)I
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    return p1
.end method

.method public next()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public previous()I
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public setIndex(I)V
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 94
    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public setToLimit()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return-void
.end method
