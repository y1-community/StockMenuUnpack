.class Lcom/ibm/icu/text/CompoundTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "CompoundTransliterator.java"


# instance fields
.field private numAnonymousRBTs:I

.field private trans:[Lcom/ibm/icu/text/Transliterator;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;[Lcom/ibm/icu/text/Transliterator;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    .line 126
    iput-object p3, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    .line 127
    iput p4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/Transliterator;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/ibm/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    .line 111
    iput-object v1, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    .line 112
    invoke-direct {p0, p1, v0, v0}, Lcom/ibm/icu/text/CompoundTransliterator;->init(Ljava/util/List;IZ)V

    .line 113
    iput p2, p0, Lcom/ibm/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    return-void
.end method

.method private static _smartAppend(Ljava/lang/StringBuilder;C)V
    .locals 1

    .line 250
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private computeMaximumContextLength()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 516
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 517
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ibm/icu/text/Transliterator;->getMaximumContextLength()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/CompoundTransliterator;->setMaximumContextLength(I)V

    return-void
.end method

.method private init(Ljava/util/List;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/Transliterator;",
            ">;IZ)V"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 187
    new-array v1, v0, [Lcom/ibm/icu/text/Transliterator;

    iput-object v1, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    .line 194
    :goto_1
    iget-object v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/Transliterator;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v1, v0, :cond_3

    if-lez v1, :cond_2

    const/16 p2, 0x3b

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CompoundTransliterator;->setID(Ljava/lang/String;)V

    .line 210
    :cond_4
    invoke-direct {p0}, Lcom/ibm/icu/text/CompoundTransliterator;->computeMaximumContextLength()V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 315
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CompoundTransliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 316
    new-instance p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/4 v1, 0x0

    .line 317
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 321
    iget-object v2, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p2, p1}, Lcom/ibm/icu/text/Transliterator;->addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    .line 322
    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 323
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    array-length v0, v0

    return v0
.end method

.method public getTransliterator(I)Lcom/ibm/icu/text/Transliterator;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 7

    .line 401
    iget-object v0, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 402
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return-void

    .line 410
    :cond_0
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 414
    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 430
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 431
    iput v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 432
    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 434
    iget v5, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v6, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 458
    :cond_1
    iget-object v5, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1, p2, p3}, Lcom/ibm/icu/text/Transliterator;->filteredTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V

    if-nez p3, :cond_3

    .line 467
    iget v5, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v6, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 468
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERROR: Incomplete non-incremental transliteration by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_3
    :goto_1
    iget v5, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v5, v4

    add-int/2addr v3, v5

    if-eqz p3, :cond_4

    .line 488
    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iput v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    add-int/2addr v0, v3

    .line 497
    iput v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public safeClone()Lcom/ibm/icu/text/Transliterator;
    .locals 5

    .line 529
    invoke-virtual {p0}, Lcom/ibm/icu/text/CompoundTransliterator;->getFilter()Lcom/ibm/icu/text/UnicodeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    instance-of v1, v0, Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v1, :cond_0

    .line 531
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    move-object v0, v1

    .line 533
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/CompoundTransliterator;

    invoke-virtual {p0}, Lcom/ibm/icu/text/CompoundTransliterator;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    iget v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ibm/icu/text/CompoundTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;[Lcom/ibm/icu/text/Transliterator;I)V

    return-object v1
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 8

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    iget v1, p0, Lcom/ibm/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/CompoundTransliterator;->getFilter()Lcom/ibm/icu/text/UnicodeFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "::"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/text/CompoundTransliterator;->getFilter()Lcom/ibm/icu/text/UnicodeFilter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/UnicodeFilter;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 280
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 287
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%Pass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    iget-object v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lcom/ibm/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    move-result-object v4

    .line 289
    iget v6, p0, Lcom/ibm/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    if-le v6, v3, :cond_3

    if-lez v1, :cond_3

    iget-object v6, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::Null;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 297
    iget-object v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lcom/ibm/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 301
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/text/CompoundTransliterator;->trans:[Lcom/ibm/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lcom/ibm/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_1
    const/16 v5, 0xa

    .line 303
    invoke-static {v0, v5}, Lcom/ibm/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    .line 304
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v0, v2}, Lcom/ibm/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
