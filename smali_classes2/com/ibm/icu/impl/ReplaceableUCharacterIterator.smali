.class public Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source "ReplaceableUCharacterIterator.java"


# instance fields
.field private currentIndex:I

.field private replaceable:Lcom/ibm/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/Replaceable;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Lcom/ibm/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Lcom/ibm/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/ReplaceableString;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 76
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public current()I
    .locals 2

    .line 88
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public currentCodePoint()I
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v0

    int-to-char v1, v0

    .line 105
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->next()I

    .line 110
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->previous()I

    int-to-char v2, v2

    .line 114
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    return v0
.end method

.method public getText([CI)I
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    if-ltz p2, :cond_0

    add-int v1, p2, v0

    .line 194
    array-length v2, p1

    if-gt v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/ibm/icu/text/Replaceable;->getChars(II[CI)V

    return v0

    .line 195
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public next()I
    .locals 3

    .line 150
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public previous()I
    .locals 2

    .line 167
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    if-lez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 188
    iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
