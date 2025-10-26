.class public final Lcom/ibm/icu/text/Edits$Iterator;
.super Ljava/lang/Object;
.source "Edits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Edits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final array:[C

.field private changed:Z

.field private final coarse:Z

.field private destIndex:I

.field private dir:I

.field private index:I

.field private final length:I

.field private newLength_:I

.field private oldLength_:I

.field private final onlyChanges_:Z

.field private remaining:I

.field private replIndex:I

.field private srcIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 274
    const-class v0, Lcom/ibm/icu/text/Edits;

    return-void
.end method

.method private constructor <init>([CIZZ)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    .line 292
    iput p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    .line 293
    iput-boolean p3, p0, Lcom/ibm/icu/text/Edits$Iterator;->onlyChanges_:Z

    .line 294
    iput-boolean p4, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    return-void
.end method

.method synthetic constructor <init>([CIZZLcom/ibm/icu/text/Edits$1;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZ)V

    return-void
.end method

.method private findIndex(IZ)I
    .locals 7

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 593
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 594
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_0

    .line 596
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    .line 597
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_8

    .line 600
    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_7

    .line 603
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->previous()Z

    if-eqz p2, :cond_3

    .line 605
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    :goto_2
    if-lt p1, v0, :cond_4

    return v3

    .line 610
    :cond_4
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    if-lez v1, :cond_2

    if-eqz p2, :cond_5

    .line 613
    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    .line 614
    :goto_3
    iget-object v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    iget v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v5, v5, v6

    and-int/lit16 v5, v5, 0x1ff

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    mul-int v6, v5, v4

    sub-int v6, v0, v6

    if-lt p1, v6, :cond_6

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 619
    div-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 621
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    mul-int p2, p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 622
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iget p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    mul-int v2, v0, p2

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    .line 623
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    mul-int p2, p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    add-int/2addr v1, v0

    .line 624
    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    return v3

    .line 628
    :cond_6
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    mul-int v1, v1, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 629
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    mul-int v4, v5, v1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    .line 630
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    mul-int v5, v5, v1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    .line 631
    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    goto :goto_1

    .line 636
    :cond_7
    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    .line 637
    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    goto :goto_4

    :cond_8
    add-int/2addr v0, v1

    if-ge p1, v0, :cond_9

    return v3

    .line 642
    :cond_9
    :goto_4
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/Edits$Iterator;->next(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_a

    .line 644
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 645
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_5

    .line 647
    :cond_a
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    .line 648
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    :goto_5
    add-int v4, v0, v1

    if-ge p1, v4, :cond_b

    return v3

    .line 654
    :cond_b
    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    if-le v4, v2, :cond_9

    mul-int v5, v4, v1

    add-int/2addr v5, v0

    if-ge p1, v5, :cond_c

    sub-int/2addr p1, v0

    .line 659
    div-int/2addr p1, v1

    .line 660
    iget p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    mul-int v0, v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 661
    iget p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    mul-int v1, p1, v0

    add-int/2addr p2, v1

    iput p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    .line 662
    iget p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    mul-int v0, v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    sub-int/2addr v4, p1

    .line 663
    iput v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    return v3

    .line 667
    :cond_c
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    mul-int v0, v0, v4

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 668
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    mul-int v0, v0, v4

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    .line 669
    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    goto :goto_4

    :cond_d
    return v2
.end method

.method private next(Z)Z
    .locals 6

    .line 353
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updateNextIndexes()V

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 359
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    if-lez v0, :cond_1

    .line 362
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    .line 363
    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    return v1

    .line 367
    :cond_1
    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    .line 369
    :goto_0
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    .line 372
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    return v1

    .line 375
    :cond_2
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    .line 377
    :cond_3
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-lt v0, v3, :cond_4

    .line 378
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->noNext()Z

    move-result p1

    return p1

    .line 380
    :cond_4
    iget-object v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v0, v3, v0

    const/16 v3, 0xfff

    if-gt v0, v3, :cond_8

    .line 383
    iput-boolean v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    add-int/lit8 v2, v0, 0x1

    .line 384
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 385
    :goto_1
    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-ge v2, v4, :cond_5

    iget-object v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    aget-char v0, v0, v2

    if-gt v0, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 386
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    .line 387
    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_1

    .line 389
    :cond_5
    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    if-eqz p1, :cond_7

    .line 391
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updateNextIndexes()V

    .line 392
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-lt p1, v2, :cond_6

    .line 393
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->noNext()Z

    move-result p1

    return p1

    :cond_6
    add-int/2addr p1, v1

    .line 396
    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    goto :goto_2

    :cond_7
    return v1

    .line 401
    :cond_8
    :goto_2
    iput-boolean v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    const/16 p1, 0x6fff

    if-gt v0, p1, :cond_b

    shr-int/lit8 v2, v0, 0xc

    shr-int/lit8 v4, v0, 0x9

    and-int/lit8 v4, v4, 0x7

    and-int/lit16 v0, v0, 0x1ff

    add-int/2addr v0, v1

    .line 406
    iget-boolean v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    if-eqz v5, :cond_9

    mul-int v2, v2, v0

    .line 407
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    mul-int v0, v0, v4

    .line 408
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    .line 411
    :cond_9
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 412
    iput v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    if-le v0, v1, :cond_a

    .line 414
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    :cond_a
    return v1

    :cond_b
    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 420
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit8 v0, v0, 0x3f

    .line 421
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    .line 422
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    if-nez v0, :cond_c

    return v1

    .line 427
    :cond_c
    :goto_3
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    aget-char v2, v2, v0

    if-le v2, v3, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 428
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    if-gt v2, p1, :cond_d

    and-int/lit16 v0, v2, 0x1ff

    add-int/2addr v0, v1

    .line 431
    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v5, v2, 0xc

    mul-int v5, v5, v0

    add-int/2addr v4, v5

    iput v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 432
    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    shr-int/lit8 v2, v2, 0x9

    and-int/lit8 v2, v2, 0x7

    mul-int v2, v2, v0

    add-int/2addr v4, v2

    iput v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    .line 435
    :cond_d
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    invoke-direct {p0, v4}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 436
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    and-int/lit8 v2, v2, 0x3f

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    :cond_e
    return v1
.end method

.method private noNext()Z
    .locals 1

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    .line 335
    iput-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    .line 336
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    return v0
.end method

.method private previous()Z
    .locals 8

    .line 446
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    const/4 v2, -0x1

    if-lez v0, :cond_1

    .line 451
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    if-lez v0, :cond_0

    .line 454
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    .line 455
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    return v1

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updateNextIndexes()V

    .line 460
    :cond_1
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->dir:I

    .line 462
    :cond_2
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 464
    iget-object v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v3, v3, v4

    and-int/lit16 v3, v3, 0x1ff

    if-gt v0, v3, :cond_3

    add-int/2addr v0, v1

    .line 467
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    .line 468
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    .line 471
    :cond_3
    iput v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    .line 473
    :cond_4
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    if-gtz v0, :cond_5

    .line 474
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->noNext()Z

    move-result v0

    return v0

    .line 476
    :cond_5
    iget-object v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v0, v3, v0

    const/16 v3, 0xfff

    if-gt v0, v3, :cond_7

    .line 479
    iput-boolean v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    add-int/2addr v0, v1

    .line 480
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 481
    :goto_0
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    if-lez v0, :cond_6

    iget-object v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v2, v2, v4

    if-gt v2, v3, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 482
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    .line 483
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_0

    .line 485
    :cond_6
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    .line 487
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    .line 490
    :cond_7
    iput-boolean v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    const/16 v2, 0x6fff

    const/16 v4, 0x7fff

    if-gt v0, v2, :cond_a

    shr-int/lit8 v5, v0, 0xc

    shr-int/lit8 v6, v0, 0x9

    and-int/lit8 v6, v6, 0x7

    and-int/lit16 v0, v0, 0x1ff

    add-int/2addr v0, v1

    .line 495
    iget-boolean v7, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    if-eqz v7, :cond_8

    mul-int v5, v5, v0

    .line 496
    iput v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    mul-int v0, v0, v6

    .line 497
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    .line 500
    :cond_8
    iput v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 501
    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    if-le v0, v1, :cond_9

    .line 503
    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    .line 505
    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    :cond_a
    if-gt v0, v4, :cond_b

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    .line 511
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    iput v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit8 v0, v0, 0x3f

    .line 512
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_2

    .line 517
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    iget v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v0, v0, v5

    if-le v0, v4, :cond_c

    goto :goto_1

    :cond_c
    add-int/lit8 v6, v5, 0x1

    .line 519
    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 520
    invoke-direct {p0, v6}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v6

    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit8 v0, v0, 0x3f

    .line 521
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    .line 522
    iput v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    .line 524
    :goto_2
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    if-nez v0, :cond_d

    .line 525
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    .line 530
    :cond_d
    :goto_3
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    if-lez v0, :cond_f

    iget-object v5, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    add-int/lit8 v6, v0, -0x1

    aget-char v5, v5, v6

    if-le v5, v3, :cond_f

    add-int/lit8 v0, v0, -0x1

    .line 531
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    if-gt v5, v2, :cond_e

    and-int/lit16 v0, v5, 0x1ff

    add-int/2addr v0, v1

    .line 534
    iget v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v7, v5, 0xc

    mul-int v7, v7, v0

    add-int/2addr v6, v7

    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 535
    iget v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    shr-int/lit8 v5, v5, 0x9

    and-int/lit8 v5, v5, 0x7

    mul-int v5, v5, v0

    add-int/2addr v6, v5

    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    :cond_e
    if-gt v5, v4, :cond_d

    add-int/lit8 v6, v0, 0x1

    .line 538
    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    .line 539
    iget v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    invoke-direct {p0, v7}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 540
    iget v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    and-int/lit8 v5, v5, 0x3f

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    add-int/2addr v6, v5

    iput v6, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    .line 541
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    goto :goto_3

    .line 544
    :cond_f
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1
.end method

.method private readLength(I)I
    .locals 3

    const/16 v0, 0x3d

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x3e

    if-ge p1, v0, :cond_1

    .line 303
    iget-object p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char p1, p1, v0

    and-int/lit16 p1, p1, 0x7fff

    return p1

    :cond_1
    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1e

    .line 308
    iget-object v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v2, v0, v1

    and-int/lit16 v2, v2, 0x7fff

    shl-int/lit8 v2, v2, 0xf

    or-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    and-int/lit16 v0, v0, 0x7fff

    or-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x2

    .line 311
    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    return p1
.end method

.method private updateNextIndexes()V
    .locals 2

    .line 317
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 318
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_0

    .line 319
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    .line 321
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    return-void
.end method

.method private updatePreviousIndexes()V
    .locals 2

    .line 325
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 326
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_0

    .line 327
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    .line 329
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    return-void
.end method


# virtual methods
.method public destinationIndex()I
    .locals 1

    .line 815
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    return v0
.end method

.method public destinationIndexFromSourceIndex(I)I
    .locals 2

    const/4 v0, 0x1

    .line 695
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-gtz v0, :cond_3

    .line 700
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 704
    :cond_1
    iget-boolean v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    if-eqz v1, :cond_2

    .line 706
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr p1, v0

    return p1

    .line 709
    :cond_2
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1

    .line 702
    :cond_3
    :goto_0
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    return p1
.end method

.method public findDestinationIndex(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 585
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public findSourceIndex(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 565
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChange()Z
    .locals 1

    .line 758
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    return v0
.end method

.method public newLength()I
    .locals 1

    .line 777
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    return v0
.end method

.method public next()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->onlyChanges_:Z

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits$Iterator;->next(Z)Z

    move-result v0

    return v0
.end method

.method public oldLength()I
    .locals 1

    .line 766
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    return v0
.end method

.method public replacementIndex()I
    .locals 1

    .line 805
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    return v0
.end method

.method public sourceIndex()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    return v0
.end method

.method public sourceIndexFromDestinationIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 733
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    if-gtz v1, :cond_3

    .line 738
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 742
    :cond_1
    iget-boolean v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    if-eqz v1, :cond_2

    .line 744
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr p1, v0

    return p1

    .line 747
    :cond_2
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1

    .line 740
    :cond_3
    :goto_0
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ src["

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    iget-boolean v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    if-eqz v2, :cond_0

    const-string v2, "] \u21dd dest["

    .line 832
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "] \u2261 dest["

    .line 834
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :goto_0
    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    iget-boolean v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    if-eqz v2, :cond_1

    const-string v2, "], repl["

    .line 840
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] }"

    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "] (no-change) }"

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
