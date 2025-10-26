.class final Lcom/ibm/icu/impl/coll/CollationDataBuilder;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;,
        Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;,
        Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;,
        Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final IS_BUILDER_JAMO_CE32:I = 0x100


# instance fields
.field protected base:Lcom/ibm/icu/impl/coll/CollationData;

.field protected baseSettings:Lcom/ibm/icu/impl/coll/CollationSettings;

.field protected ce32s:Lcom/ibm/icu/impl/coll/UVector32;

.field protected ce64s:Lcom/ibm/icu/impl/coll/UVector64;

.field protected collIter:Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

.field protected conditionalCE32s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;",
            ">;"
        }
    .end annotation
.end field

.field protected contextChars:Lcom/ibm/icu/text/UnicodeSet;

.field protected contexts:Ljava/lang/StringBuilder;

.field protected fastLatinBuilder:Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

.field protected fastLatinEnabled:Z

.field protected modified:Z

.field protected nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

.field protected trie:Lcom/ibm/icu/impl/Trie2Writable;

.field protected unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    .line 1348
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 51
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 53
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->baseSettings:Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 54
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    .line 55
    new-instance v1, Lcom/ibm/icu/impl/coll/UVector32;

    invoke-direct {v1}, Lcom/ibm/icu/impl/coll/UVector32;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    .line 56
    new-instance v1, Lcom/ibm/icu/impl/coll/UVector64;

    invoke-direct {v1}, Lcom/ibm/icu/impl/coll/UVector64;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    .line 59
    iput-boolean v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    .line 60
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

    .line 61
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->collIter:Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    .line 63
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/UVector32;->addElement(I)V

    return-void
.end method

.method protected static encodeOneCEAsCE32(J)I
    .locals 9

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v2, p0

    const v3, 0xffff

    and-int/2addr v3, v2

    const-wide v4, 0xffff00ff00ffL

    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    long-to-int p0, v0

    ushr-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shr-int/lit8 p1, v3, 0x8

    or-int/2addr p0, p1

    return p0

    :cond_0
    const-wide v4, 0xffffffffffL

    and-long/2addr p0, v4

    const-wide/32 v4, 0x5000500

    cmp-long v8, p0, v4

    if-nez v8, :cond_1

    .line 459
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result p0

    return p0

    :cond_1
    cmp-long p0, v0, v6

    if-nez p0, :cond_2

    and-int/lit16 p0, v3, 0xff

    if-nez p0, :cond_2

    .line 462
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->makeLongSecondaryCE32(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static enumRangeForCopy(IIILcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc0

    if-eq p2, v0, :cond_0

    .line 789
    invoke-virtual {p3, p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyRangeCE32(III)V

    :cond_0
    return-void
.end method

.method protected static isBuilderContextCE32(I)Z
    .locals 1

    const/4 v0, 0x7

    .line 446
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method protected static jamoCpFromIndex(I)I
    .locals 1

    const/16 v0, 0x13

    if-ge p0, v0, :cond_0

    add-int/lit16 p0, p0, 0x1100

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x13

    const/16 v0, 0x15

    if-ge p0, v0, :cond_1

    add-int/lit16 p0, p0, 0x1161

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x15

    add-int/lit16 p0, p0, 0x11a8

    return p0
.end method

.method protected static makeBuilderContextCE32(I)I
    .locals 1

    const/4 v0, 0x7

    .line 443
    invoke-static {v0, p0}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)V
    .locals 0

    .line 120
    invoke-virtual {p0, p3, p4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p3

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected addCE(J)I
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 407
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    return v0
.end method

.method protected addCE32(I)I
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 416
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/coll/UVector32;->addElement(I)V

    return v0
.end method

.method addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 7

    .line 174
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 177
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 180
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 181
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .line 182
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    .line 183
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const/16 v4, 0xc0

    if-ne v3, v4, :cond_3

    .line 189
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v4, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ibm/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v4

    if-nez v0, :cond_2

    .line 190
    invoke-static {v4}, Lcom/ibm/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    :cond_2
    invoke-virtual {p0, v1, v4, v5}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v3

    .line 192
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v4, v1, v3}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    :cond_3
    if-nez v0, :cond_5

    .line 197
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 198
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {p1, v1, p3}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    goto/16 :goto_2

    .line 200
    :cond_4
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    .line 201
    iput v5, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 202
    iput p3, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    goto :goto_2

    .line 206
    :cond_5
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u0000"

    .line 209
    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v0

    .line 210
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result v3

    .line 211
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v4, v1, v3}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 212
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 213
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_6
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    .line 216
    iput v5, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 218
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 224
    :goto_1
    iget p2, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez p2, :cond_7

    .line 227
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p1

    .line 228
    iput p1, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_2

    .line 231
    :cond_7
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v1

    .line 232
    iget-object v2, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    .line 235
    invoke-virtual {p0, p1, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p1

    .line 236
    iput p1, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 237
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    iput p2, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_2

    :cond_8
    if-nez v2, :cond_9

    .line 241
    iput p3, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 247
    :goto_2
    iput-boolean v5, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void

    :cond_9
    move-object v0, v1

    goto :goto_1

    .line 178
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to add mappings after build()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mapping from empty string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected addConditionalCE32(Ljava/lang/String;I)I
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7ffff

    if-gt v0, v1, :cond_0

    .line 430
    new-instance v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 431
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    .line 426
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "too many context-sensitive mappings"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected addContextTrie(ILcom/ibm/icu/util/CharsTrieBuilder;)I
    .locals 2

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    .line 1133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1134
    sget-object p1, Lcom/ibm/icu/util/StringTrieBuilder$Option;->SMALL:Lcom/ibm/icu/util/StringTrieBuilder$Option;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/util/CharsTrieBuilder;->buildCharSequence(Lcom/ibm/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1135
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    .line 1137
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 1138
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return p1
.end method

.method build(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 2

    .line 311
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->buildMappings(Lcom/ibm/icu/impl/coll/CollationData;)V

    .line 312
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-eqz v0, :cond_0

    .line 313
    iget-wide v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    iput-wide v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    .line 314
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    .line 315
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    iput v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    .line 316
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    .line 317
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    .line 319
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->buildFastLatinTable(Lcom/ibm/icu/impl/coll/CollationData;)V

    return-void
.end method

.method protected buildContext(Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 18

    move-object/from16 v0, p0

    .line 1024
    new-instance v1, Lcom/ibm/icu/util/CharsTrieBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/util/CharsTrieBuilder;-><init>()V

    .line 1025
    new-instance v2, Lcom/ibm/icu/util/CharsTrieBuilder;

    invoke-direct {v2}, Lcom/ibm/icu/util/CharsTrieBuilder;-><init>()V

    move-object/from16 v3, p1

    .line 1029
    :goto_0
    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v4

    .line 1030
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v9, v3

    .line 1035
    :goto_1
    iget v10, v9, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-ltz v10, :cond_0

    iget v10, v9, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 1036
    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v10

    iget-object v11, v10, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v9, v10

    goto :goto_1

    .line 1041
    :cond_0
    iget-object v10, v9, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "too many context-sensitive mappings"

    if-ne v10, v7, :cond_1

    .line 1044
    iget v6, v9, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    goto :goto_5

    .line 1048
    :cond_1
    invoke-virtual {v2}, Lcom/ibm/icu/util/CharsTrieBuilder;->clear()Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 1052
    iget-object v10, v3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v7, :cond_2

    .line 1055
    iget v6, v3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 1056
    iget v10, v3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    move-object/from16 v15, p1

    const/4 v14, 0x1

    .line 1068
    :goto_2
    invoke-virtual {v15}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v10

    if-ne v10, v4, :cond_a

    move v6, v14

    const/16 v10, 0x100

    move-object v14, v3

    :goto_3
    or-int/lit16 v10, v10, 0x200

    .line 1085
    :goto_4
    iget-object v15, v14, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1086
    iget-object v13, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v15, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v12

    const/16 v13, 0xff

    if-gt v12, v13, :cond_3

    and-int/lit16 v10, v10, -0x201

    .line 1090
    :cond_3
    iget-object v12, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    invoke-virtual {v12, v8}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v8

    if-le v8, v13, :cond_4

    or-int/lit16 v8, v10, 0x400

    move v10, v8

    .line 1095
    :cond_4
    iget v8, v14, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    invoke-virtual {v2, v15, v8}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    if-ne v14, v9, :cond_9

    .line 1099
    invoke-virtual {v0, v6, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILcom/ibm/icu/util/CharsTrieBuilder;)I

    move-result v6

    const v7, 0x7ffff

    if-gt v6, v7, :cond_8

    const/16 v7, 0x9

    .line 1105
    invoke-static {v7, v6}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v6

    or-int/2addr v6, v10

    move-object v9, v14

    .line 1108
    :goto_5
    iput v6, v3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    if-nez v4, :cond_5

    .line 1110
    iget v3, v9, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez v3, :cond_7

    return v6

    :cond_5
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1115
    invoke-virtual {v5, v8, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v1, v5, v6}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 1118
    iget v3, v9, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez v3, :cond_7

    move-object/from16 v12, p1

    .line 1122
    iget v2, v12, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILcom/ibm/icu/util/CharsTrieBuilder;)I

    move-result v1

    const v13, 0x7ffff

    if-gt v1, v13, :cond_6

    const/16 v2, 0x8

    .line 1128
    invoke-static {v2, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v1

    return v1

    .line 1124
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object/from16 v12, p1

    .line 1026
    iget v3, v9, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    goto/16 :goto_0

    .line 1101
    :cond_8
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object/from16 v12, p1

    const/4 v8, 0x0

    const v13, 0x7ffff

    .line 1097
    iget v14, v14, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v14}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v14

    goto/16 :goto_4

    :cond_a
    move-object/from16 v12, p1

    const v13, 0x7ffff

    .line 1070
    iget v8, v15, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    const/4 v13, 0x1

    if-eq v8, v13, :cond_c

    if-eqz v10, :cond_b

    .line 1072
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v10

    move-object/from16 v16, v1

    iget-object v1, v15, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    .line 1071
    invoke-virtual {v6, v8, v1, v13, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_b
    move-object/from16 v16, v1

    .line 1074
    :goto_6
    iget v14, v15, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    goto :goto_7

    :cond_c
    move-object/from16 v16, v1

    .line 1067
    :cond_d
    :goto_7
    iget v1, v15, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v15

    move-object/from16 v1, v16

    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method protected buildContexts()V
    .locals 4

    .line 1004
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1005
    new-instance v0, Lcom/ibm/icu/text/UnicodeSetIterator;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 1006
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    iget v1, v0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    .line 1009
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    .line 1010
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1013
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v2

    .line 1014
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->buildContext(Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v2

    .line 1015
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1, v2}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    goto :goto_0

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Impossible: No context data for c in contextChars."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected buildFastLatinTable(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 4

    .line 1144
    iget-boolean v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1146
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

    .line 1147
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->forData(Lcom/ibm/icu/impl/coll/CollationData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getHeader()[C

    move-result-object v0

    .line 1149
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;->getTable()[C

    move-result-object v2

    .line 1150
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1151
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 1152
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1154
    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

    .line 1155
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1156
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v2, v1, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 1158
    :cond_1
    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1159
    iput-object v2, p1, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    goto :goto_0

    .line 1161
    :cond_2
    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Lcom/ibm/icu/impl/coll/CollationFastLatinBuilder;

    :goto_0
    return-void
.end method

.method protected buildMappings(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 13

    .line 908
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 912
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->buildContexts()V

    const/16 v0, 0x43

    new-array v1, v0, [I

    const/4 v2, -0x1

    .line 916
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getJamoCE32s([I)Z

    move-result v3

    const v4, 0xac00

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 917
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/UVector32;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 919
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    aget v8, v1, v3

    invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/coll/UVector32;->addElement(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    const/16 v7, 0x13

    :goto_1
    if-ge v7, v0, :cond_2

    .line 930
    aget v8, v1, v7

    invoke-static {v8}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v7, 0xc

    .line 935
    invoke-static {v7, v5}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_5

    if-nez v0, :cond_3

    .line 939
    aget v9, v1, v8

    invoke-static {v9}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-nez v9, :cond_3

    or-int/lit16 v9, v7, 0x100

    goto :goto_4

    :cond_3
    move v9, v7

    :goto_4
    add-int/lit16 v10, v4, 0x24c

    .line 943
    iget-object v11, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v11, v4, v12, v9, v6}, Lcom/ibm/icu/impl/Trie2Writable;->setRange(IIIZ)Lcom/ibm/icu/impl/Trie2Writable;

    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto :goto_3

    :cond_4
    :goto_5
    const v0, 0xd7a4

    if-ge v4, v0, :cond_5

    .line 950
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    add-int/lit16 v3, v4, 0x24c

    .line 953
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v4, v8, v0, v6}, Lcom/ibm/icu/impl/Trie2Writable;->setRange(IIIZ)Lcom/ibm/icu/impl/Trie2Writable;

    move v4, v3

    goto :goto_5

    .line 958
    :cond_5
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->setDigitTags()V

    .line 959
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->setLeadSurrogates()V

    .line 962
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v3, v5}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/ibm/icu/impl/coll/UVector32;->setElementAt(II)V

    .line 963
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    const/16 v3, 0xb

    invoke-static {v3, v5}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 965
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2Writable;->toTrie2_32()Lcom/ibm/icu/impl/Trie2_32;

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    const/high16 v0, 0x10000

    const v3, 0xd800

    :goto_6
    const v4, 0xdc00

    if-ge v3, v4, :cond_7

    .line 971
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit16 v5, v0, 0x3ff

    invoke-virtual {v4, v0, v5}, Lcom/ibm/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 972
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    add-int/lit16 v0, v0, 0x400

    goto :goto_6

    .line 975
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 977
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    .line 978
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    .line 979
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    .line 981
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-ltz v2, :cond_8

    .line 983
    iput-object v1, p1, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    goto :goto_7

    .line 985
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 987
    :goto_7
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 909
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to build() after build()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method protected clearContexts()V
    .locals 3

    .line 991
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 992
    new-instance v0, Lcom/ibm/icu/text/UnicodeSetIterator;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 993
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    iget v2, v0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    .line 997
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 5

    .line 637
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    and-int/lit16 p3, p3, 0x100

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    .line 646
    :cond_0
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p3, v0}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    .line 648
    invoke-virtual {p0, p2, p3, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    .line 649
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p3

    iput p3, p4, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 650
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    .line 653
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 654
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/ibm/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/CharsTrie$Iterator;

    move-result-object v0

    .line 655
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    invoke-virtual {v0}, Lcom/ibm/icu/util/CharsTrie$Iterator;->next()Lcom/ibm/icu/util/CharsTrie$Entry;

    move-result-object p3

    .line 657
    iget-object v3, p3, Lcom/ibm/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 658
    iget p3, p3, Lcom/ibm/icu/util/CharsTrie$Entry;->value:I

    invoke-virtual {p0, p2, p3, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    .line 659
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result p3

    iput p3, p4, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 662
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    .line 663
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_1
    return p3
.end method

.method copyFrom(Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .locals 4

    .line 255
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;-><init>(Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    .line 259
    iget-object p2, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/Trie2Writable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 261
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 262
    iget v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-static {v2, v3, v1, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->enumRangeForCopy(IIILcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-boolean p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    iget-boolean p1, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void

    .line 256
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to copyFrom() after build()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected copyFromBaseCE32(IIZ)I
    .locals 7

    .line 547
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 548
    :cond_0
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_d

    const/4 v3, 0x5

    if-eq v0, v3, :cond_c

    const/4 v3, 0x6

    if-eq v0, v3, :cond_b

    const/16 v3, 0x8

    const-string v4, "\u0000"

    const-string v5, ""

    const/4 v6, 0x0

    if-eq v0, v3, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    const/16 p3, 0xc

    if-eq v0, p3, :cond_3

    const/16 p3, 0xe

    if-eq v0, p3, :cond_2

    const/16 p2, 0xf

    if-ne v0, p2, :cond_1

    .line 621
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result p2

    goto/16 :goto_3

    .line 624
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "copyFromBaseCE32(c, ce32, withContext) requires ce32 == base.getFinalCE32(ce32)"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 618
    :cond_2
    invoke-virtual {p0, v1, p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result p2

    goto/16 :goto_3

    .line 616
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "We forbid tailoring of Hangul syllables."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez p3, :cond_5

    .line 604
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 605
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p3, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    .line 606
    invoke-virtual {p0, p1, p2, v6}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p1

    return p1

    .line 608
    :cond_5
    new-instance p3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {p3, v5, v6}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    .line 611
    iget p2, p3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    .line 612
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_3

    .line 569
    :cond_6
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 570
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    if-nez p3, :cond_7

    .line 572
    invoke-virtual {p0, p1, v0, v6}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p1

    return p1

    .line 574
    :cond_7
    new-instance p3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {p3, v5, v6}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 578
    invoke-virtual {p0, v3, p1, v0, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v0

    goto :goto_0

    .line 580
    :cond_8
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v0

    .line 581
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 583
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    .line 584
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, v4, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/2addr p2, v2

    invoke-static {v4, p2, v6}, Lcom/ibm/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/CharsTrie$Iterator;

    move-result-object p2

    .line 585
    :goto_1
    invoke-virtual {p2}, Lcom/ibm/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 586
    invoke-virtual {p2}, Lcom/ibm/icu/util/CharsTrie$Iterator;->next()Lcom/ibm/icu/util/CharsTrie$Entry;

    move-result-object v2

    .line 587
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 588
    iget-object v4, v2, Lcom/ibm/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/ibm/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 589
    iget v2, v2, Lcom/ibm/icu/util/CharsTrie$Entry;->value:I

    .line 590
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 591
    invoke-virtual {p0, v3, p1, v2, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v0

    goto :goto_2

    .line 593
    :cond_9
    invoke-virtual {p0, p1, v2, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v2

    .line 594
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move v0, v2

    .line 596
    :goto_2
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    goto :goto_1

    .line 598
    :cond_a
    iget p2, p3, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    .line 599
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_3

    .line 561
    :cond_b
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    .line 562
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p2

    .line 563
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p3, p3, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    invoke-virtual {p0, p3, p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result p2

    goto :goto_3

    .line 555
    :cond_c
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    .line 556
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p2

    .line 557
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p3, p3, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    invoke-virtual {p0, p3, p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result p2

    :cond_d
    :goto_3
    return p2
.end method

.method enableFastLatin()V
    .locals 1

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    return-void
.end method

.method encodeCEs([JI)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-ltz v2, :cond_6

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_6

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    if-nez v2, :cond_0

    .line 140
    invoke-static {v4, v5}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v1

    return v1

    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_1

    .line 142
    aget-wide v2, v1, v7

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result v1

    return v1

    :cond_1
    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    .line 145
    aget-wide v8, v1, v7

    .line 146
    aget-wide v10, v1, v6

    const/16 v12, 0x20

    ushr-long v12, v8, v12

    const-wide v14, 0xffffffffff00ffL

    and-long/2addr v14, v8

    const-wide/32 v16, 0x5000000

    cmp-long v18, v14, v16

    if-nez v18, :cond_2

    const-wide v14, -0xff000001L

    and-long/2addr v14, v10

    const-wide/16 v16, 0x500

    cmp-long v18, v14, v16

    if-nez v18, :cond_2

    cmp-long v14, v12, v4

    if-eqz v14, :cond_2

    long-to-int v1, v12

    long-to-int v2, v8

    const v3, 0xff00

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    long-to-int v2, v10

    shr-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0xc0

    or-int/lit8 v1, v1, 0x4

    return v1

    :cond_2
    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_0
    if-ne v4, v2, :cond_3

    .line 164
    invoke-virtual {v0, v3, v7, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result v1

    return v1

    .line 166
    :cond_3
    aget-wide v8, v1, v4

    invoke-static {v8, v9}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 170
    invoke-virtual {v0, v1, v7, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result v1

    return v1

    .line 168
    :cond_4
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "attempt to add mappings after build()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mapping to too many CEs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected encodeExpansion([JII)I
    .locals 12

    .line 482
    aget-wide v0, p1, p2

    .line 483
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v2

    sub-int/2addr v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x6

    const-string v6, "too many mappings"

    const v7, 0x7ffff

    if-gt v4, v2, :cond_4

    .line 485
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v8, v4}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v8

    cmp-long v10, v0, v8

    if-nez v10, :cond_3

    if-gt v4, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    if-ne v6, p3, :cond_0

    .line 493
    invoke-static {v5, v4, p3}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p1

    return p1

    .line 496
    :cond_0
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    add-int v8, v4, v6

    invoke-virtual {v7, v8}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    add-int v9, p2, v6

    aget-wide v9, p1, v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 487
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v0

    if-gt v0, v7, :cond_6

    :goto_3
    if-ge v3, p3, :cond_5

    .line 508
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    add-int v2, p2, v3

    aget-wide v6, p1, v2

    invoke-virtual {v1, v6, v7}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 510
    :cond_5
    invoke-static {v5, v0, p3}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p1

    return p1

    .line 503
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected encodeExpansion32([III)I
    .locals 8

    .line 515
    aget v0, p1, p2

    .line 516
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector32;->size()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    const-string v5, "too many mappings"

    const v6, 0x7ffff

    if-gt v3, v1, :cond_4

    .line 518
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v7, v3}, Lcom/ibm/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v7

    if-ne v0, v7, :cond_3

    if-gt v3, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-ne v5, p3, :cond_0

    .line 526
    invoke-static {v4, v3, p3}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p1

    return p1

    .line 529
    :cond_0
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    add-int v7, v3, v5

    invoke-virtual {v6, v7}, Lcom/ibm/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v6

    add-int v7, p2, v5

    aget v7, p1, v7

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 520
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->size()I

    move-result v0

    if-gt v0, v6, :cond_6

    :goto_3
    if-ge v2, p3, :cond_5

    .line 541
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    add-int v3, p2, v2

    aget v3, p1, v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/coll/UVector32;->addElement(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 543
    :cond_5
    invoke-static {v4, v0, p3}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p1

    return p1

    .line 536
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected encodeOneCE(J)I
    .locals 2

    .line 469
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 471
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addCE(J)I

    move-result p1

    const p2, 0x7ffff

    if-gt p1, p2, :cond_1

    const/4 p2, 0x6

    .line 477
    invoke-static {p2, p1, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result p1

    return p1

    .line 473
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "too many mappings"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getCE32FromOffsetCE32(ZII)I
    .locals 2

    .line 398
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    aget-wide v0, p1, p3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 400
    :goto_0
    invoke-static {p2, v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide p1

    .line 401
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result p1

    return p1
.end method

.method protected getCEs(Ljava/lang/CharSequence;I[JI)I
    .locals 3

    .line 1166
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->collIter:Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    if-nez v0, :cond_0

    .line 1167
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    new-instance v1, Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/coll/CollationData;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->collIter:Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->collIter:Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->fetchCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p1

    return p1
.end method

.method getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I
    .locals 2

    .line 336
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 338
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p1

    return p1

    .line 340
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0, p3, p4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p1

    return p1
.end method

.method getCEs(Ljava/lang/CharSequence;[JI)I
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result p1

    return p1
.end method

.method protected getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    return-object p1
.end method

.method protected getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 0

    .line 439
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    return-object p1
.end method

.method protected getJamoCE32s([I)Z
    .locals 11

    .line 794
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x43

    const/16 v6, 0xc0

    if-ge v3, v5, :cond_4

    .line 797
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v5

    .line 799
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v7, v5}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v7

    .line 800
    invoke-static {v7}, Lcom/ibm/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result v8

    or-int/2addr v0, v8

    if-ne v7, v6, :cond_1

    .line 805
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v7, v5}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v7

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 807
    :goto_2
    invoke-static {v7}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 808
    invoke-static {v7}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    packed-switch v9, :pswitch_data_0

    goto :goto_3

    .line 831
    :pswitch_0
    invoke-virtual {p0, v8, v5, v7}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result v6

    goto :goto_4

    :pswitch_1
    if-eqz v8, :cond_3

    :pswitch_2
    const/4 v4, 0x1

    goto :goto_4

    .line 840
    :cond_2
    :pswitch_3
    new-instance p1, Ljava/lang/AssertionError;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "unexpected special tag in ce32=0x%08x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_3
    move v6, v7

    .line 843
    :goto_4
    aput v6, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    :goto_5
    if-ge v1, v5, :cond_6

    .line 847
    aget v3, p1, v1

    if-ne v3, v6, :cond_5

    .line 848
    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v3

    .line 849
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v3

    aput v3, p1, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method hasMappings()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    return v0
.end method

.method initForTailoring(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 73
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 76
    new-instance v0, Lcom/ibm/icu/impl/Trie2Writable;

    const v1, -0x2fafb

    const/16 v2, 0xc0

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/Trie2Writable;-><init>(II)V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    const/16 v0, 0xc0

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    const v2, 0xac00

    const v3, 0xd7a3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/ibm/icu/impl/Trie2Writable;->setRange(IIIZ)Lcom/ibm/icu/impl/Trie2Writable;

    .line 96
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null CollationData"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to reuse a CollationDataBuilder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method isAssigned(I)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result p1

    return p1
.end method

.method isCompressibleLeadByte(I)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    move-result p1

    return p1
.end method

.method isCompressiblePrimary(J)Z
    .locals 0

    long-to-int p2, p1

    ushr-int/lit8 p1, p2, 0x18

    .line 104
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isCompressibleLeadByte(I)Z

    move-result p1

    return p1
.end method

.method protected final isMutable()Z
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method optimize(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 4

    .line 271
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 273
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget p1, v0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    sget v2, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq p1, v2, :cond_2

    .line 274
    iget p1, v0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    .line 275
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_1

    .line 277
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    .line 278
    invoke-virtual {p0, p1, v2, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    goto :goto_0

    .line 282
    :cond_2
    iput-boolean v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void
.end method

.method protected setDigitTags()V
    .locals 5

    .line 858
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:Nd:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 859
    new-instance v1, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 860
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget v0, v1, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    .line 863
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 865
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addCE32(I)I

    move-result v2

    const v3, 0x7ffff

    if-gt v2, v3, :cond_1

    const/16 v3, 0xa

    .line 872
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v4

    .line 871
    invoke-static {v3, v2, v4}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v2

    .line 873
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v3, v0, v2}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    goto :goto_0

    .line 867
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "too many mappings"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method protected setLeadSurrogates()V
    .locals 8

    const v0, 0xd800

    :goto_0
    const v1, 0xdc00

    if-ge v0, v1, :cond_5

    .line 882
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/Trie2Writable;->iteratorForLeadSurrogate(C)Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 883
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x200

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 884
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/Trie2$Range;

    .line 886
    iget v4, v4, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    if-ne v4, v2, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const/16 v7, 0xc0

    if-ne v4, v7, :cond_3

    const/16 v4, 0x100

    :goto_2
    if-gez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    if-eq v3, v4, :cond_0

    :cond_3
    const/16 v3, 0x200

    .line 902
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    const/16 v2, 0xd

    .line 903
    invoke-static {v2, v6}, Lcom/ibm/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v2

    or-int/2addr v2, v3

    .line 902
    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Lcom/ibm/icu/impl/Trie2Writable;

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method suppressContractions(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 286
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    sget v1, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq p1, v1, :cond_3

    .line 289
    iget p1, v0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    .line 290
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_2

    .line 292
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v1

    .line 293
    invoke-static {v1}, Lcom/ibm/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 294
    invoke-virtual {p0, p1, v1, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    .line 295
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v1

    iget v1, v1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 302
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 303
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/UnicodeSet;->remove(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void
.end method
