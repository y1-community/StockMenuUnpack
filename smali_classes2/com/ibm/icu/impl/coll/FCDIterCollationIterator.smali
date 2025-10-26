.class public final Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;
.super Lcom/ibm/icu/impl/coll/IterCollationIterator;
.source "FCDIterCollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private limit:I

.field private final nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

.field private normalized:Ljava/lang/StringBuilder;

.field private pos:I

.field private s:Ljava/lang/StringBuilder;

.field private start:I

.field private state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/coll/CollationData;ZLcom/ibm/icu/text/UCharacterIterator;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/coll/IterCollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLcom/ibm/icu/text/UCharacterIterator;)V

    .line 26
    sget-object p2, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object p2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    .line 27
    iput p4, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 28
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    return-void
.end method

.method private nextSegment()Z
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 261
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    const/4 v0, 0x0

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    goto :goto_3

    .line 271
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v4

    shr-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_3

    .line 273
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    goto :goto_3

    .line 278
    :cond_3
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    if-gt v0, v5, :cond_4

    .line 279
    invoke-static {v4}, Lcom/ibm/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_5

    goto :goto_2

    .line 284
    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v2

    const/16 v4, 0xff

    if-gt v2, v4, :cond_6

    .line 285
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    .line 290
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    .line 291
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 292
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 293
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    .line 294
    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v3

    .line 288
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    and-int/lit16 v0, v4, 0xff

    if-nez v0, :cond_1

    .line 303
    :goto_3
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 305
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 306
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    return v3
.end method

.method private normalize(Ljava/lang/CharSequence;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;

    return-void
.end method

.method private previousSegment()Z
    .locals 6

    .line 348
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 350
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 358
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    goto/16 :goto_3

    .line 360
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    and-int/lit16 v4, v3, 0xff

    if-nez v4, :cond_3

    .line 362
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    goto :goto_3

    .line 367
    :cond_3
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_9

    if-eqz v1, :cond_4

    if-gt v4, v1, :cond_5

    .line 369
    :cond_4
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    :goto_1
    const/16 v0, 0xff

    if-le v3, v0, :cond_8

    .line 372
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    if-gez v0, :cond_6

    goto :goto_2

    .line 374
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    if-nez v3, :cond_7

    .line 376
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    goto :goto_2

    .line 379
    :cond_7
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 381
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 382
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    .line 383
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 384
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 385
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    .line 386
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v2

    :cond_9
    shr-int/lit8 v1, v3, 0x8

    if-nez v1, :cond_1

    .line 395
    :goto_3
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 397
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 398
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    return v2
.end method

.method private switchToBackward()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 320
    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-ne v0, v1, :cond_0

    .line 321
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 323
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_3

    .line 333
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    iget v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 335
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 337
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    :goto_1
    return-void
.end method

.method private switchToForward()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 231
    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-ne v0, v1, :cond_0

    .line 232
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 234
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_3

    .line 244
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iget v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 246
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 248
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    :goto_1
    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1

    .line 43
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 44
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-nez v0, :cond_2

    .line 45
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    return v0

    .line 47
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 189
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v2, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 192
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    :cond_1
    :goto_0
    int-to-char v0, v0

    return v0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    :cond_3
    return v0
.end method

.method protected handleNextCE32()J
    .locals 3

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_3

    .line 153
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_1

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 157
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    .line 159
    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    .line 161
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc0

    return-wide v0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v0, v1, :cond_4

    .line 170
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 171
    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    goto :goto_1

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 176
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 182
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->trie:Lcom/ibm/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0

    .line 179
    :cond_6
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_0
.end method

.method public nextCodePoint()I
    .locals 3

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_6

    .line 56
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_1

    return v0

    .line 60
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    .line 62
    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->current()I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    .line 64
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 70
    :cond_3
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    move-result v1

    .line 72
    invoke-static {v1}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-char v0, v0

    int-to-char v1, v1

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    :cond_4
    if-ltz v1, :cond_5

    .line 75
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    :cond_5
    return v0

    .line 79
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v0, v1, :cond_7

    .line 80
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    .line 81
    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 84
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 86
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 87
    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 90
    :cond_8
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_0
.end method

.method public previousCodePoint()I
    .locals 4

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_8

    .line 100
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 103
    sget-object v0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    return v1

    .line 106
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    .line 109
    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-gez v2, :cond_3

    .line 122
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->previous()I

    move-result v2

    .line 124
    :cond_3
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-char v1, v2

    int-to-char v0, v0

    .line 125
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    :cond_4
    if-ltz v2, :cond_7

    .line 129
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    if-ltz v2, :cond_6

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->next()I

    .line 114
    :cond_6
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->previousSegment()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_7
    :goto_2
    return v0

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-eq v0, v1, :cond_9

    .line 134
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->iter:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    .line 135
    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 138
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-eqz v0, :cond_a

    .line 139
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 140
    iget v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 143
    :cond_a
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->switchToBackward()V

    goto/16 :goto_0
.end method

.method public resetToOffset(I)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/coll/IterCollationIterator;->resetToOffset(I)V

    .line 34
    iput p1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 35
    sget-object p1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;->state:Lcom/ibm/icu/impl/coll/FCDIterCollationIterator$State;

    return-void
.end method
