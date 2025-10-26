.class public Lcom/ibm/icu/impl/UCharacterIteratorWrapper;
.super Ljava/lang/Object;
.source "UCharacterIteratorWrapper.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private iterator:Lcom/ibm/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/UCharacterIterator;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 144
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;

    .line 145
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/UCharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public current()C
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public first()C
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V

    .line 40
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public last()C
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToLimit()V

    .line 52
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public next()C
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    .line 78
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public previous()C
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public setIndex(I)C
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    .line 105
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;->iterator:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result p1

    int-to-char p1, p1

    return p1
.end method
