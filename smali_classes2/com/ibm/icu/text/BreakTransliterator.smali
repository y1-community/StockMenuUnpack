.class final Lcom/ibm/icu/text/BreakTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "BreakTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    }
.end annotation


# static fields
.field static final LETTER_OR_MARK_MASK:I = 0x1fe


# instance fields
.field private bi:Lcom/ibm/icu/text/BreakIterator;

.field private boundaries:[I

.field private boundaryCount:I

.field private insertion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, " "

    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;Lcom/ibm/icu/text/BreakIterator;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;Lcom/ibm/icu/text/BreakIterator;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    const/16 p1, 0x32

    new-array p1, p1, [I

    .line 25
    iput-object p1, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaries:[I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    .line 30
    iput-object p3, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    .line 31
    iput-object p4, p0, Lcom/ibm/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-void
.end method

.method static register()V
    .locals 3

    .line 145
    new-instance v0, Lcom/ibm/icu/text/BreakTransliterator;

    const-string v1, "Any-BreakInternal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    const/4 v1, 0x0

    .line 146
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Transliterator;->registerInstance(Lcom/ibm/icu/text/Transliterator;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/BreakTransliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/ibm/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method public getBreakIterator()Lcom/ibm/icu/text/BreakIterator;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v1, "th_TH"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    return-object v0
.end method

.method public getInsertion()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ibm/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iput v0, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    .line 80
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakTransliterator;->getBreakIterator()Lcom/ibm/icu/text/BreakIterator;

    .line 81
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    new-instance v2, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    iget v3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iget v5, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/ibm/icu/text/BreakTransliterator$ReplaceableCharacterIterator;-><init>(Lcom/ibm/icu/text/Replaceable;III)V

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 93
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator;->first()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ge v1, v2, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 97
    invoke-static {p1, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Lcom/ibm/icu/text/Replaceable;I)I

    move-result v2

    .line 98
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v3, v2

    and-int/lit16 v2, v2, 0x1fe

    if-nez v2, :cond_1

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {p1, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Lcom/ibm/icu/text/Replaceable;I)I

    move-result v2

    .line 103
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v3, v2

    and-int/lit16 v2, v2, 0x1fe

    if-nez v2, :cond_2

    goto :goto_1

    .line 107
    :cond_2
    iget v2, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    iget-object v3, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaries:[I

    array-length v4, v3

    if-lt v2, v4, :cond_3

    .line 108
    array-length v2, v3

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 109
    array-length v4, v3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v2, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaries:[I

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaries:[I

    iget v3, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    aput v1, v2, v3

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result v1

    goto :goto_0

    .line 120
    :cond_4
    iget v1, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    if-eqz v1, :cond_5

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int v0, v0, v1

    .line 122
    iget-object v1, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaries:[I

    iget v2, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    sub-int/2addr v2, v3

    aget v1, v1, v2

    .line 126
    :goto_2
    iget v2, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    if-lez v2, :cond_6

    .line 127
    iget-object v3, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaries:[I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ibm/icu/text/BreakTransliterator;->boundaryCount:I

    aget v2, v3, v2

    .line 128
    iget-object v3, p0, Lcom/ibm/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-interface {p1, v2, v2, v3}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 133
    :cond_6
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr p1, v0

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 134
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    add-int/2addr p1, v0

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-eqz p3, :cond_7

    add-int/2addr v1, v0

    goto :goto_3

    .line 135
    :cond_7
    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    :goto_3
    iput v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public setBreakIterator(Lcom/ibm/icu/text/BreakIterator;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ibm/icu/text/BreakTransliterator;->bi:Lcom/ibm/icu/text/BreakIterator;

    return-void
.end method

.method public setInsertion(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ibm/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-void
.end method
