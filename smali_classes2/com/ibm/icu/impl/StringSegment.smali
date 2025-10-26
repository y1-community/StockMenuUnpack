.class public Lcom/ibm/icu/impl/StringSegment;
.super Ljava/lang/Object;
.source "StringSegment.java"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private end:I

.field private foldCase:Z

.field private start:I

.field private final str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    .line 30
    iput-boolean p2, p0, Lcom/ibm/icu/impl/StringSegment;->foldCase:Z

    return-void
.end method

.method private static final codePointsEqual(IIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 199
    :cond_1
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    .line 200
    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPrefixLengthInternal(Ljava/lang/CharSequence;Z)I
    .locals 3

    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 182
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 183
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 184
    invoke-static {v1, v2, p2}, Lcom/ibm/icu/impl/StringSegment;->codePointsEqual(IIZ)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public adjustOffset(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    return-void
.end method

.method public adjustOffsetByCodePoint()V
    .locals 2

    .line 61
    iget v0, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->getCodePoint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    iget v2, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public codePointAt(I)I
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    return p1
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 211
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->charSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public getCaseSensitivePrefixLength(Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/StringSegment;->getPrefixLengthInternal(Ljava/lang/CharSequence;Z)I

    move-result p1

    return p1
.end method

.method public getCodePoint()I
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCommonPrefixLength(Ljava/lang/CharSequence;)I
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/ibm/icu/impl/StringSegment;->foldCase:Z

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/StringSegment;->getPrefixLengthInternal(Ljava/lang/CharSequence;Z)I

    move-result p1

    return p1
.end method

.method public getOffset()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    return v0
.end method

.method public length()I
    .locals 2

    .line 76
    iget v0, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    iget v1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public resetLength()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    return-void
.end method

.method public setLength(I)V
    .locals 1

    .line 67
    iget v0, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    return-void
.end method

.method public startsWith(I)Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->getCodePoint()I

    move-result v0

    iget-boolean v1, p0, Lcom/ibm/icu/impl/StringSegment;->foldCase:Z

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/StringSegment;->codePointsEqual(IIZ)Z

    move-result p1

    return p1
.end method

.method public startsWith(Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->getCodePoint()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public startsWith(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 147
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 148
    iget-boolean v0, p0, Lcom/ibm/icu/impl/StringSegment;->foldCase:Z

    invoke-static {v1, p1, v0}, Lcom/ibm/icu/impl/StringSegment;->codePointsEqual(IIZ)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v2, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v2, p0, Lcom/ibm/icu/impl/StringSegment;->start:I

    iget v3, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/StringSegment;->str:Ljava/lang/String;

    iget v2, p0, Lcom/ibm/icu/impl/StringSegment;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
