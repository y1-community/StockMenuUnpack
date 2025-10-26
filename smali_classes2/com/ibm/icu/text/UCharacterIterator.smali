.class public abstract Lcom/ibm/icu/text/UCharacterIterator;
.super Ljava/lang/Object;
.source "UCharacterIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/text/UForwardCharacterIterator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance(Lcom/ibm/icu/text/Replaceable;)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 1

    .line 53
    new-instance v0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;-><init>(Lcom/ibm/icu/text/Replaceable;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 1

    .line 67
    new-instance v0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 1

    .line 109
    new-instance v0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 1

    .line 123
    new-instance v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    return-object v0
.end method

.method public static final getInstance([C)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 2

    .line 81
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance([CII)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance([CII)Lcom/ibm/icu/text/UCharacterIterator;
    .locals 1

    .line 95
    new-instance v0, Lcom/ibm/icu/impl/UCharArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/UCharArrayIterator;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 406
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract current()I
.end method

.method public currentCodePoint()I
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v1, v0

    .line 156
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    .line 163
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v2

    .line 166
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    int-to-char v2, v2

    .line 168
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 1

    .line 135
    new-instance v0, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/UCharacterIteratorWrapper;-><init>(Lcom/ibm/icu/text/UCharacterIterator;)V

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public abstract getLength()I
.end method

.method public final getText([C)I
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/UCharacterIterator;->getText([CI)I

    move-result p1

    return p1
.end method

.method public abstract getText([CI)I
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    new-array v0, v0, [C

    .line 343
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UCharacterIterator;->getText([C)I

    .line 344
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public moveCodePointIndex(I)I
    .locals 2

    const/4 v0, -0x1

    if-lez p1, :cond_0

    :goto_0
    if-lez p1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-eq v1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p1, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    if-eq v1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result p1

    return p1

    .line 391
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public moveIndex(I)I
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 362
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    return p1
.end method

.method public abstract next()I
.end method

.method public nextCodePoint()I
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    int-to-char v1, v0

    .line 214
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v2

    int-to-char v3, v2

    .line 216
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    :cond_1
    return v0
.end method

.method public abstract previous()I
.end method

.method public previousCodePoint()I
    .locals 5

    .line 245
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v1, v0

    .line 246
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v2

    int-to-char v3, v2

    .line 248
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    :cond_1
    return v0
.end method

.method public abstract setIndex(I)V
.end method

.method public setToLimit()V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method

.method public setToStart()V
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method
