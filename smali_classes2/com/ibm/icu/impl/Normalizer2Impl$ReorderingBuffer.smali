.class public final Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReorderingBuffer"
.end annotation


# instance fields
.field private final app:Ljava/lang/Appendable;

.field private final appIsStringBuilder:Z

.field private codePointLimit:I

.field private codePointStart:I

.field private final impl:Lcom/ibm/icu/impl/Normalizer2Impl;

.field private lastCC:I

.field private reorderStart:I

.field private final str:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 138
    iput-object p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    .line 139
    instance-of p1, p2, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 141
    check-cast p2, Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 144
    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 146
    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    goto :goto_1

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    .line 149
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result p2

    iput p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le p2, p1, :cond_1

    .line 152
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result p2

    if-le p2, p1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    iget p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_1

    .line 157
    :cond_2
    iput-boolean v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    .line 159
    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 160
    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    :goto_1
    return-void
.end method

.method private insert(II)V
    .locals 3

    .line 321
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->skipPrevious()V

    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    const/4 v1, 0x1

    if-gt p1, v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    int-to-char p1, p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    if-gt p2, v1, :cond_2

    .line 326
    iget p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_1

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    if-gt p2, v1, :cond_2

    .line 331
    iget p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_2
    :goto_1
    return-void
.end method

.method private previousCC()I
    .locals 3

    .line 350
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 351
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 355
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    .line 356
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeCP(I)I

    move-result v0

    return v0
.end method

.method private setIterator()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method

.method private skipPrevious()V
    .locals 3

    .line 346
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    .line 347
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method


# virtual methods
.method public append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 224
    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 225
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    .line 235
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 237
    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 238
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    if-eq p2, p3, :cond_0

    .line 245
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 246
    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 247
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_0
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object p1

    return-object p1
.end method

.method public append(II)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    goto :goto_1

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 177
    iput p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    const/4 p1, 0x1

    if-gt p2, p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_2
    :goto_1
    return-void
.end method

.method public append(Ljava/lang/CharSequence;IIZII)V
    .locals 2

    if-ne p2, p3, :cond_0

    return-void

    .line 190
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p5, :cond_4

    if-nez p5, :cond_1

    goto :goto_2

    .line 199
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 200
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 201
    invoke-direct {p0, v0, p5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    :goto_0
    if-ge p2, p3, :cond_7

    .line 203
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p5

    .line 204
    invoke-static {p5}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    if-ge p2, p3, :cond_3

    if-eqz p4, :cond_2

    .line 207
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p5}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v0

    goto :goto_1

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p5}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, p6

    .line 214
    :goto_1
    invoke-virtual {p0, p5, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p4, 0x1

    if-gt p6, p4, :cond_5

    .line 192
    iget-object p4, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    sub-int p5, p3, p2

    add-int/2addr p4, p5

    iput p4, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_3

    :cond_5
    if-gt p5, p4, :cond_6

    .line 194
    iget-object p5, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result p5

    add-int/2addr p5, p4

    iput p5, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    .line 196
    :cond_6
    :goto_3
    iget-object p4, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 197
    iput p6, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    :cond_7
    return-void
.end method

.method public appendZeroCC(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 230
    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 231
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method

.method public equals(Ljava/lang/CharSequence;II)Z
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 3

    .line 258
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 262
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 263
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iput v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    iput v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return-void

    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 3

    .line 278
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 280
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 284
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 285
    iput v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    iput v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return-object p0

    :catch_0
    move-exception p1

    .line 287
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getLastCC()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return v0
.end method

.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 295
    iput v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 296
    iput v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method

.method public removeSuffix(I)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    sub-int p1, v0, p1

    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 301
    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    .line 302
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method
