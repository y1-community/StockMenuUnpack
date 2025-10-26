.class final Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
.super Ljava/lang/Object;
.source "BreakTransliterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BreakTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaceableCharacterIterator"
.end annotation


# instance fields
.field private begin:I

.field private end:I

.field private pos:I

.field private text:Lcom/ibm/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/Replaceable;III)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    iput-object p1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    if-ltz p2, :cond_1

    if-gt p2, p3, :cond_1

    .line 199
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result p1

    if-gt p3, p1, :cond_1

    if-lt p4, p2, :cond_0

    if-gt p4, p3, :cond_0

    .line 207
    iput p2, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    .line 208
    iput p3, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    .line 209
    iput p4, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    return-void

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid substring range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 397
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 401
    :catch_0
    new-instance v0, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public current()C
    .locals 2

    .line 277
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 360
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 364
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    .line 366
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    iget-object v3, p1, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 372
    :cond_3
    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v3, p1, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    iget v3, p1, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iget p1, p1, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-eq v1, p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public first()C
    .locals 1

    .line 237
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 238
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .locals 2

    .line 248
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 249
    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    goto :goto_0

    .line 251
    :cond_0
    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public next()C
    .locals 3

    .line 292
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 293
    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 294
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    .line 297
    :cond_0
    iput v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    const v0, 0xffff

    return v0
.end method

.method public previous()C
    .locals 2

    .line 309
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 310
    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 311
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public setIndex(I)C
    .locals 1

    .line 263
    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-gt p1, v0, :cond_0

    .line 266
    iput p1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 267
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result p1

    return p1

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Lcom/ibm/icu/text/Replaceable;)V
    .locals 1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    iput-object p1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Lcom/ibm/icu/text/Replaceable;

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    .line 226
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    .line 227
    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    return-void
.end method
