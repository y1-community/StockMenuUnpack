.class public final Lcom/ibm/icu/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollationElementIterator$MaxExpSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final IGNORABLE:I = 0x0

.field public static final NULLORDER:I = -0x1


# instance fields
.field private dir_:B

.field private iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

.field private offsets_:Lcom/ibm/icu/impl/coll/UVector32;

.field private otherHalf_:I

.field private rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

.field private string_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 199
    iput-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    .line 201
    iput-byte p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    .line 202
    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 257
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Lcom/ibm/icu/text/UCharacterIterator;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 217
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 241
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method static synthetic access$000(J)Z
    .locals 0

    .line 108
    invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->ceNeedsTwoParts(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(JI)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(JI)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result p0

    return p0
.end method

.method private static final ceNeedsTwoParts(J)Z
    .locals 3

    const-wide v0, 0xffff00ff003fL

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final computeMaxExpansions(Lcom/ibm/icu/impl/coll/CollationData;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/coll/CollationData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 628
    new-instance v1, Lcom/ibm/icu/text/CollationElementIterator$MaxExpSink;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/CollationElementIterator$MaxExpSink;-><init>(Ljava/util/Map;)V

    .line 629
    new-instance v2, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v3, v1, v4}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;-><init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    invoke-virtual {v2, p0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->forData(Lcom/ibm/icu/impl/coll/CollationData;)V

    return-object v0
.end method

.method private static final getFirstHalf(JI)I
    .locals 1

    long-to-int p1, p0

    const/high16 p0, -0x10000

    and-int/2addr p0, p1

    shr-int/lit8 p1, p2, 0x10

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method static getMaxExpansion(Ljava/util/Map;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 652
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 653
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0xc0

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method private static final getSecondHalf(JI)I
    .locals 1

    long-to-int p1, p0

    shl-int/lit8 p0, p1, 0x10

    shr-int/lit8 p1, p2, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    return p0
.end method

.method private normalizeDir()B
    .locals 2

    .line 665
    iget-byte v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static final primaryOrder(I)I
    .locals 1

    ushr-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final secondaryOrder(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final tertiaryOrder(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 681
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/text/CollationElementIterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 682
    check-cast p1, Lcom/ibm/icu/text/CollationElementIterator;

    .line 683
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, p1, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    iget v3, p1, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    if-ne v1, v3, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v1

    invoke-direct {p1}, Lcom/ibm/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 686
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    iget-object p1, p1, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 687
    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getMaxExpansion(I)I
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->getMaxExpansion(Ljava/util/Map;I)I

    move-result p1

    return p1
.end method

.method public getOffset()I
    .locals 2

    .line 289
    iget-byte v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    .line 293
    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v0

    return v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public getRuleBasedCollator()Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public next()I
    .locals 5

    .line 322
    iget-byte v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 324
    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 326
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 331
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0

    :cond_1
    if-nez v0, :cond_5

    .line 334
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    .line 341
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    .line 342
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v2, 0x101000100L

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 v0, -0x1

    return v0

    :cond_3
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v1, v0

    .line 349
    invoke-static {v2, v3, v1}, Lcom/ibm/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v0

    .line 350
    invoke-static {v2, v3, v1}, Lcom/ibm/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit16 v1, v1, 0xc0

    .line 352
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    :cond_4
    return v0

    .line 337
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal change of direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()I
    .locals 7

    .line 377
    iget-byte v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez v0, :cond_0

    .line 379
    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v0, :cond_2

    .line 381
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    return v0

    :cond_0
    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 386
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 389
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    .line 395
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    if-nez v0, :cond_3

    .line 396
    new-instance v0, Lcom/ibm/icu/impl/coll/UVector32;

    invoke-direct {v0}, Lcom/ibm/icu/impl/coll/UVector32;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/coll/CollationIterator;->previousCE(Lcom/ibm/icu/impl/coll/UVector32;)J

    move-result-wide v3

    const-wide v5, 0x101000100L

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0x20

    ushr-long v5, v3, v0

    long-to-int v0, v3

    .line 409
    invoke-static {v5, v6, v0}, Lcom/ibm/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v2

    .line 410
    invoke-static {v5, v6, v0}, Lcom/ibm/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v0

    if-eqz v0, :cond_7

    .line 412
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 416
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    iget-object v4, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/coll/UVector32;->addElement(I)V

    .line 417
    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/coll/UVector32;->addElement(I)V

    .line 419
    :cond_6
    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    or-int/lit16 v0, v0, 0xc0

    return v0

    :cond_7
    return v2

    .line 392
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal change of direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 438
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    .line 439
    iput-byte v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setOffset(I)V
    .locals 3

    if-lez p1, :cond_6

    .line 465
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_6

    move v0, p1

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 469
    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_6

    .line 484
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 486
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    .line 487
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    if-eq v1, v0, :cond_4

    if-gt v1, p1, :cond_5

    move v0, v1

    :cond_5
    if-lt v1, p1, :cond_3

    move p1, v0

    .line 495
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    const/4 p1, 0x0

    .line 496
    iput p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    const/4 p1, 0x1

    .line 497
    iput-byte p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setText(Lcom/ibm/icu/text/UCharacterIterator;)V
    .locals 4

    .line 531
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 539
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V

    .line 548
    iget-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object p1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p1

    .line 549
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v1, v1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 550
    new-instance v1, Lcom/ibm/icu/impl/coll/IterCollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0}, Lcom/ibm/icu/impl/coll/IterCollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLcom/ibm/icu/text/UCharacterIterator;)V

    goto :goto_0

    .line 552
    :cond_0
    new-instance v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0, v2}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLcom/ibm/icu/text/UCharacterIterator;I)V

    .line 554
    :goto_0
    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 555
    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    .line 556
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    return-void

    .line 543
    :catch_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .line 508
    iput-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 510
    iget-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object p1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p1

    .line 511
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 516
    :goto_0
    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 517
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    .line 518
    iput-byte v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 4

    .line 572
    new-instance v0, Lcom/ibm/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    .line 573
    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V

    .line 574
    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 576
    iget-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object p1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p1

    .line 577
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v1, v1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 578
    new-instance v1, Lcom/ibm/icu/impl/coll/IterCollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0}, Lcom/ibm/icu/impl/coll/IterCollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLcom/ibm/icu/text/UCharacterIterator;)V

    goto :goto_0

    .line 580
    :cond_0
    new-instance v1, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, p1, v0, v2}, Lcom/ibm/icu/impl/coll/FCDIterCollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLcom/ibm/icu/text/UCharacterIterator;I)V

    .line 582
    :goto_0
    iput-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 583
    iput v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    .line 584
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method
