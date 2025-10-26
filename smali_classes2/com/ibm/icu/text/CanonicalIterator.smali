.class public final Lcom/ibm/icu/text/CanonicalIterator;
.super Ljava/lang/Object;
.source "CanonicalIterator.java"


# static fields
.field private static PROGRESS:Z = false

.field private static final SET_WITH_NULL_STRING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SKIP_ZEROS:Z = true


# instance fields
.field private transient buffer:Ljava/lang/StringBuilder;

.field private current:[I

.field private done:Z

.field private final nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

.field private final nfd:Lcom/ibm/icu/text/Normalizer2;

.field private pieces:[[Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 445
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    const-string v1, ""

    .line 447
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    .line 54
    iget-object v1, v0, Lcom/ibm/icu/impl/Norm2AllModes;->decomp:Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    iput-object v1, p0, Lcom/ibm/icu/text/CanonicalIterator;->nfd:Lcom/ibm/icu/text/Normalizer2;

    .line 55
    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 56
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method private extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    sget-boolean v0, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extract: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 374
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 381
    invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 382
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 384
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v4, p3

    .line 386
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 387
    invoke-static {p2, v4}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 389
    sget-boolean v2, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  matches: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 391
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    goto :goto_2

    .line 395
    :cond_3
    invoke-static {v0, v3}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 396
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_1

    .line 399
    :cond_4
    sget-boolean v6, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v6, :cond_5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  buffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    :cond_5
    invoke-static {p4, v5}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 386
    :goto_1
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x0

    if-nez v0, :cond_7

    return-object v2

    .line 416
    :cond_7
    sget-boolean v0, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Matches"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_9

    sget-object p1, Lcom/ibm/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    return-object p1

    .line 418
    :cond_9
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/ibm/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_a

    return-object v2

    .line 430
    :cond_a
    invoke-direct {p0, p4}, Lcom/ibm/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private getEquivalents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 252
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 258
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 262
    sget-boolean v4, Lcom/ibm/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    invoke-static {v3, v4, v2}, Lcom/ibm/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    .line 263
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 264
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 271
    invoke-static {v4, p1, v5}, Lcom/ibm/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    .line 273
    sget-boolean v5, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding Permutation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_3
    sget-boolean v5, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-Skipping Permutation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 284
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 293
    sget-boolean v1, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 301
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 304
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 305
    iget-object v6, p0, Lcom/ibm/icu/text/CanonicalIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v5, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCanonStartSet(ILcom/ibm/icu/text/UnicodeSet;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 309
    :cond_1
    new-instance v6, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v6, v2}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    :cond_2
    :goto_1
    invoke-virtual {v6}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 310
    iget v7, v6, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    .line 311
    invoke-direct {p0, v7, p1, v4, v1}, Lcom/ibm/icu/text/CanonicalIterator;->extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 317
    :cond_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 318
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 319
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 320
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 301
    :cond_4
    :goto_3
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static permute(Ljava/lang/String;ZLjava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->countCodePoint(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 175
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 180
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 183
    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 188
    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 194
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-static {v4, p1, v0}, Lcom/ibm/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    .line 199
    invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->valueOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    :goto_2
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 7

    .line 87
    iget-boolean v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I

    aget v4, v4, v0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-gez v2, :cond_2

    .line 101
    iput-boolean v3, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z

    goto :goto_2

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I

    aget v5, v4, v2

    add-int/2addr v5, v3

    aput v5, v4, v2

    .line 105
    aget v5, v4, v2

    iget-object v6, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_3

    :goto_2
    return-object v0

    .line 106
    :cond_3
    aput v1, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z

    const/4 v1, 0x0

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 75
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/ibm/icu/text/CanonicalIterator;->done:Z

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v1, [[Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    new-array v2, v1, [I

    .line 124
    iput-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    aput-object v1, p1, v0

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ibm/icu/text/UTF16;->findOffsetFromCodePoint(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 141
    iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCanonSegmentStarter(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    iget-object v4, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 139
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ibm/icu/text/CanonicalIterator;->current:[I

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 152
    sget-boolean v1, Lcom/ibm/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SEGMENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/CanonicalIterator;->getEquivalents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
