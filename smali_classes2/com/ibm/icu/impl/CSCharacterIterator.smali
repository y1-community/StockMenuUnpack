.class public Lcom/ibm/icu/impl/CSCharacterIterator;
.super Ljava/lang/Object;
.source "CSCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private index:I

.field private seq:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iput-object p1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 102
    new-instance v0, Lcom/ibm/icu/impl/CSCharacterIterator;

    iget-object v1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/CSCharacterIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    iget v1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CSCharacterIterator;->setIndex(I)C

    return-object v0
.end method

.method public current()C
    .locals 2

    .line 46
    iget v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    iget-object v1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public first()C
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    .line 33
    invoke-virtual {p0}, Lcom/ibm/icu/impl/CSCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    return v0
.end method

.method public last()C
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    .line 40
    invoke-virtual {p0}, Lcom/ibm/icu/impl/CSCharacterIterator;->previous()C

    move-result v0

    return v0
.end method

.method public next()C
    .locals 2

    .line 55
    iget v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    iget-object v1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    iget v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/CSCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public previous()C
    .locals 1

    .line 64
    iget v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    if-nez v0, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 67
    iput v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    .line 68
    invoke-virtual {p0}, Lcom/ibm/icu/impl/CSCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public setIndex(I)C
    .locals 1

    if-ltz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 77
    iput p1, p0, Lcom/ibm/icu/impl/CSCharacterIterator;->index:I

    .line 78
    invoke-virtual {p0}, Lcom/ibm/icu/impl/CSCharacterIterator;->current()C

    move-result p1

    return p1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
