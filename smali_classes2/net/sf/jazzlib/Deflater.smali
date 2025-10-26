.class public Lnet/sf/jazzlib/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field private static final BUSY_STATE:I = 0x10

.field private static final CLOSED_STATE:I = 0x7f

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field private static final FINISHED_STATE:I = 0x1e

.field private static final FINISHING_STATE:I = 0x1c

.field private static final FLUSHING_STATE:I = 0x14

.field public static final HUFFMAN_ONLY:I = 0x2

.field private static final INIT_STATE:I = 0x0

.field private static final IS_FINISHING:I = 0x8

.field private static final IS_FLUSHING:I = 0x4

.field private static final IS_SETDICT:I = 0x1

.field public static final NO_COMPRESSION:I = 0x0

.field private static final SETDICT_STATE:I = 0x1


# instance fields
.field private engine:Lnet/sf/jazzlib/DeflaterEngine;

.field private level:I

.field private final noHeader:Z

.field private pending:Lnet/sf/jazzlib/DeflaterPending;

.field private state:I

.field private totalOut:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, v0, v1}, Lnet/sf/jazzlib/Deflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0}, Lnet/sf/jazzlib/Deflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_1

    .line 183
    :goto_0
    new-instance v0, Lnet/sf/jazzlib/DeflaterPending;

    invoke-direct {v0}, Lnet/sf/jazzlib/DeflaterPending;-><init>()V

    iput-object v0, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    .line 184
    new-instance v1, Lnet/sf/jazzlib/DeflaterEngine;

    invoke-direct {v1, v0}, Lnet/sf/jazzlib/DeflaterEngine;-><init>(Lnet/sf/jazzlib/DeflaterPending;)V

    iput-object v1, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    .line 185
    iput-boolean p2, p0, Lnet/sf/jazzlib/Deflater;->noHeader:Z

    const/4 p2, 0x0

    .line 186
    invoke-virtual {p0, p2}, Lnet/sf/jazzlib/Deflater;->setStrategy(I)V

    .line 187
    invoke-virtual {p0, p1}, Lnet/sf/jazzlib/Deflater;->setLevel(I)V

    .line 188
    invoke-virtual {p0}, Lnet/sf/jazzlib/Deflater;->reset()V

    return-void

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public deflate([B)I
    .locals 2

    .line 371
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/jazzlib/Deflater;->deflate([BII)I

    move-result p1

    return p1
.end method

.method public deflate([BII)I
    .locals 9

    .line 393
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_e

    const v1, 0xffff

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-ge v0, v3, :cond_4

    const/16 v4, 0x7800

    .line 400
    iget v5, p0, Lnet/sf/jazzlib/Deflater;->level:I

    sub-int/2addr v5, v2

    shr-int/2addr v5, v2

    const/4 v6, 0x3

    if-ltz v5, :cond_0

    if-le v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x3

    :cond_1
    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    or-int/lit8 v4, v4, 0x20

    .line 409
    :cond_2
    rem-int/lit8 v0, v4, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    add-int/2addr v4, v0

    .line 411
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {v0, v4}, Lnet/sf/jazzlib/DeflaterPending;->writeShortMSB(I)V

    .line 412
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterEngine;->getAdler()I

    move-result v0

    .line 414
    iget-object v4, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v4}, Lnet/sf/jazzlib/DeflaterEngine;->resetAdler()V

    .line 415
    iget-object v4, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    shr-int/lit8 v5, v0, 0x10

    invoke-virtual {v4, v5}, Lnet/sf/jazzlib/DeflaterPending;->writeShortMSB(I)V

    .line 416
    iget-object v4, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    and-int/2addr v0, v1

    invoke-virtual {v4, v0}, Lnet/sf/jazzlib/DeflaterPending;->writeShortMSB(I)V

    .line 419
    :cond_3
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    and-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v3

    iput v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    :cond_4
    move v0, p3

    .line 423
    :cond_5
    :goto_0
    iget-object v4, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {v4, p1, p2, v0}, Lnet/sf/jazzlib/DeflaterPending;->flush([BII)I

    move-result v4

    add-int/2addr p2, v4

    .line 425
    iget v5, p0, Lnet/sf/jazzlib/Deflater;->totalOut:I

    add-int/2addr v5, v4

    iput v5, p0, Lnet/sf/jazzlib/Deflater;->totalOut:I

    sub-int/2addr v0, v4

    if-eqz v0, :cond_d

    .line 427
    iget v4, p0, Lnet/sf/jazzlib/Deflater;->state:I

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_6

    goto :goto_3

    .line 431
    :cond_6
    iget-object v6, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    and-int/lit8 v7, v4, 0x4

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_1
    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_8

    const/4 v8, 0x1

    :cond_8
    invoke-virtual {v6, v7, v8}, Lnet/sf/jazzlib/DeflaterEngine;->deflate(ZZ)Z

    move-result v4

    if-nez v4, :cond_5

    .line 433
    iget v4, p0, Lnet/sf/jazzlib/Deflater;->state:I

    if-ne v4, v3, :cond_9

    sub-int/2addr p3, v0

    return p3

    :cond_9
    const/16 v6, 0x14

    if-ne v4, v6, :cond_b

    .line 437
    iget v4, p0, Lnet/sf/jazzlib/Deflater;->level:I

    if-eqz v4, :cond_a

    .line 443
    iget-object v4, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {v4}, Lnet/sf/jazzlib/DeflaterPending;->getBitCount()I

    move-result v4

    neg-int v4, v4

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x8

    :goto_2
    if-lez v4, :cond_a

    .line 449
    iget-object v5, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Lnet/sf/jazzlib/DeflaterPending;->writeBits(II)V

    add-int/lit8 v4, v4, -0xa

    goto :goto_2

    .line 453
    :cond_a
    iput v3, p0, Lnet/sf/jazzlib/Deflater;->state:I

    goto :goto_0

    :cond_b
    const/16 v6, 0x1c

    if-ne v4, v6, :cond_5

    .line 455
    iget-object v4, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {v4}, Lnet/sf/jazzlib/DeflaterPending;->alignToByte()V

    .line 457
    iget-boolean v4, p0, Lnet/sf/jazzlib/Deflater;->noHeader:Z

    if-nez v4, :cond_c

    .line 458
    iget-object v4, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v4}, Lnet/sf/jazzlib/DeflaterEngine;->getAdler()I

    move-result v4

    .line 459
    iget-object v6, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    shr-int/lit8 v7, v4, 0x10

    invoke-virtual {v6, v7}, Lnet/sf/jazzlib/DeflaterPending;->writeShortMSB(I)V

    .line 460
    iget-object v6, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    and-int/2addr v4, v1

    invoke-virtual {v6, v4}, Lnet/sf/jazzlib/DeflaterPending;->writeShortMSB(I)V

    .line 462
    :cond_c
    iput v5, p0, Lnet/sf/jazzlib/Deflater;->state:I

    goto :goto_0

    :cond_d
    :goto_3
    sub-int/2addr p3, v0

    return p3

    .line 394
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Deflater closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public end()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    .line 214
    iput-object v0, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    const/16 v0, 0x7f

    .line 215
    iput v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    return-void
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 1

    .line 263
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    or-int/lit8 v0, v0, 0xc

    iput v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    return-void
.end method

.method public finished()Z
    .locals 2

    .line 271
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterPending;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method flush()V
    .locals 1

    .line 254
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    return-void
.end method

.method public getAdler()I
    .locals 1

    .line 222
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterEngine;->getAdler()I

    move-result v0

    return v0
.end method

.method public getTotalIn()I
    .locals 1

    .line 229
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterEngine;->getTotalIn()I

    move-result v0

    return v0
.end method

.method public getTotalOut()I
    .locals 1

    .line 236
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->totalOut:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterEngine;->needsInput()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lnet/sf/jazzlib/Deflater;->noHeader:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    .line 197
    iput v1, p0, Lnet/sf/jazzlib/Deflater;->totalOut:I

    .line 198
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->pending:Lnet/sf/jazzlib/DeflaterPending;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterPending;->reset()V

    .line 199
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0}, Lnet/sf/jazzlib/DeflaterEngine;->reset()V

    return-void
.end method

.method public setDictionary([B)V
    .locals 2

    .line 482
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/jazzlib/Deflater;->setDictionary([BII)V

    return-void
.end method

.method public setDictionary([BII)V
    .locals 1

    .line 504
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 508
    iput v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    .line 509
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/DeflaterEngine;->setDictionary([BII)V

    return-void

    .line 505
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setInput([B)V
    .locals 2

    .line 299
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/jazzlib/Deflater;->setInput([BII)V

    return-void
.end method

.method public setInput([BII)V
    .locals 1

    .line 318
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->state:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/DeflaterEngine;->setInput([BII)V

    return-void

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "finish()/end() already called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLevel(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0x9

    if-gt p1, v0, :cond_2

    .line 340
    :goto_0
    iget v0, p0, Lnet/sf/jazzlib/Deflater;->level:I

    if-eq v0, p1, :cond_1

    .line 341
    iput p1, p0, Lnet/sf/jazzlib/Deflater;->level:I

    .line 342
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0, p1}, Lnet/sf/jazzlib/DeflaterEngine;->setLevel(I)V

    :cond_1
    return-void

    .line 337
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setStrategy(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 359
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/jazzlib/Deflater;->engine:Lnet/sf/jazzlib/DeflaterEngine;

    invoke-virtual {v0, p1}, Lnet/sf/jazzlib/DeflaterEngine;->setStrategy(I)V

    return-void
.end method
