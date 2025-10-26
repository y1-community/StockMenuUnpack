.class public Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;
.super Lcom/ibm/icu/text/BreakIterator;
.source "SimpleFilteredSentenceBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
    }
.end annotation


# instance fields
.field private backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

.field private delegate:Lcom/ibm/icu/text/BreakIterator;

.field private forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

.field private text:Lcom/ibm/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/CharsTrie;Lcom/ibm/icu/util/CharsTrie;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ibm/icu/text/BreakIterator;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    .line 47
    iput-object p2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    .line 48
    iput-object p3, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    return-void
.end method

.method private final breakExceptionAt(I)Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    .line 73
    iget-object p1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CharsTrie;->reset()Lcom/ibm/icu/util/CharsTrie;

    .line 77
    iget-object p1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    :goto_0
    const/4 p1, -0x1

    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v2

    if-ltz v2, :cond_3

    .line 84
    iget-object v3, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {v1}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result v1

    .line 89
    :cond_2
    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {v2}, Lcom/ibm/icu/util/CharsTrie;->reset()Lcom/ibm/icu/util/CharsTrie;

    if-ltz v0, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    if-ne v1, v3, :cond_6

    .line 98
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    if-eqz v1, :cond_6

    .line 102
    invoke-virtual {v1}, Lcom/ibm/icu/util/CharsTrie;->reset()Lcom/ibm/icu/util/CharsTrie;

    .line 104
    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 105
    iget-object v2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-eq v0, p1, :cond_5

    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    .line 107
    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CharsTrie;->reset()Lcom/ibm/icu/util/CharsTrie;

    .line 110
    invoke-virtual {v1}, Lcom/ibm/icu/util/BytesTrie$Result;->matches()Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private final internalNext(I)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    if-nez v1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    .line 132
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v1

    :goto_0
    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 138
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object p1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private final internalPrev(I)I
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    if-nez v1, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    :goto_0
    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 166
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {p1}, Lcom/ibm/icu/text/BreakIterator;->previous()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private final resetState()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/BreakIterator;

    iput-object v1, v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/UCharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1}, Lcom/ibm/icu/util/CharsTrie;->clone()Lcom/ibm/icu/util/CharsTrie;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    if-eqz v1, :cond_3

    .line 214
    invoke-virtual {v1}, Lcom/ibm/icu/util/CharsTrie;->clone()Lcom/ibm/icu/util/CharsTrie;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public current()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 183
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 185
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;

    .line 188
    iget-object v2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    iget-object v3, p1, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    iget-object v3, p1, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    iget-object v3, p1, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    iget-object p1, p1, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    .line 190
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public first()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result p1

    return p1
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x27

    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isBoundary(I)Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Lcom/ibm/icu/util/CharsTrie;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    .line 256
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public last()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result v0

    return v0
.end method

.method public next(I)I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->next(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result p1

    return p1
.end method

.method public preceding(I)I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->preceding(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->internalPrev(I)I

    move-result p1

    return p1
.end method

.method public previous()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->previous()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->internalPrev(I)I

    move-result v0

    return v0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
