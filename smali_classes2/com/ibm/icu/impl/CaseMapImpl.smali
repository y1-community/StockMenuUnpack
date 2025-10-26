.class public final Lcom/ibm/icu/impl/CaseMapImpl;
.super Ljava/lang/Object;
.source "CaseMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;,
        Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;,
        Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CASE_TRIE:Lcom/ibm/icu/impl/Trie2_16;

.field private static final LNS:I = 0xf020e2e

.field public static final OMIT_UNCHANGED_TEXT:I = 0x4000

.field private static final TITLECASE_ADJUSTMENT_MASK:I = 0x600

.field public static final TITLECASE_ADJUST_TO_CASED:I = 0x400

.field private static final TITLECASE_ITERATOR_MASK:I = 0xe0

.field public static final TITLECASE_SENTENCES:I = 0x40

.field public static final TITLECASE_WHOLE_STRING:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 423
    invoke-static {}, Lcom/ibm/icu/impl/UCaseProps;->getTrie()Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/CaseMapImpl;->CASE_TRIE:Lcom/ibm/icu/impl/Trie2_16;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    return-void
.end method

.method public static addTitleAdjustmentOption(II)I
    .locals 1

    and-int/lit16 v0, p0, 0x600

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "multiple titlecasing index adjustment options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public static addTitleIteratorOption(II)I
    .locals 1

    and-int/lit16 v0, p0, 0xe0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "multiple titlecasing iterator options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    .line 354
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0xd7c0

    shr-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v0

    int-to-char v0, v1

    .line 357
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v0, 0xdc00

    and-int/lit16 p1, p1, 0x3ff

    add-int/2addr p1, v0

    int-to-char p1, p1

    .line 358
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p0, 0x2

    return p0
.end method

.method private static appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p0, :cond_2

    if-eqz p4, :cond_0

    .line 373
    invoke-virtual {p4, p2}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    :cond_0
    and-int/lit16 p2, p3, 0x4000

    if-eqz p2, :cond_1

    return-void

    :cond_1
    xor-int/lit8 p0, p0, -0x1

    .line 378
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    goto :goto_0

    :cond_2
    const/16 p3, 0x1f

    if-gt p0, p3, :cond_3

    if-eqz p4, :cond_4

    .line 382
    invoke-virtual {p4, p2, p0}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    goto :goto_0

    .line 386
    :cond_3
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    move-result p0

    if-eqz p4, :cond_4

    .line 388
    invoke-virtual {p4, p2, p0}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_2

    if-eqz p5, :cond_0

    .line 397
    invoke-virtual {p5, p2}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    :cond_0
    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_1

    return-void

    :cond_1
    add-int/2addr p2, p1

    .line 402
    invoke-interface {p3, p0, p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    :cond_2
    return-void
.end method

.method private static applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;
    .locals 3

    .line 407
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits;->lengthDelta()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits;->getCoarseIterator()Lcom/ibm/icu/text/Edits$Iterator;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->replacementIndex()I

    move-result v1

    .line 414
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->newLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    .line 417
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->oldLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 802
    :try_start_0
    invoke-virtual {p3}, Lcom/ibm/icu/text/Edits;->reset()V

    :cond_0
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 804
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToLower(IILjava/lang/CharSequence;IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 807
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static fold(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 783
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p0, 0x4000

    if-nez v0, :cond_1

    .line 784
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 785
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 789
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/Edits;

    invoke-direct {v0}, Lcom/ibm/icu/text/Edits;-><init>()V

    or-int/lit16 p0, p0, 0x4000

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v1, v0}, Lcom/ibm/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTitleBreakIterator(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;
    .locals 0

    and-int/lit16 p1, p1, 0xe0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "titlecasing iterator option together with an explicit iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    const/16 p2, 0x20

    if-eq p1, p2, :cond_3

    const/16 p2, 0x40

    if-ne p1, p2, :cond_2

    .line 269
    invoke-static {p0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    goto :goto_1

    .line 272
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown titlecasing iterator option"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 266
    :cond_3
    new-instance p2, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;

    const/4 p0, 0x0

    invoke-direct {p2, p0}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>(Lcom/ibm/icu/impl/CaseMapImpl$1;)V

    goto :goto_1

    .line 263
    :cond_4
    invoke-static {p0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    :cond_5
    :goto_1
    return-object p2
.end method

.method public static getTitleBreakIterator(Ljava/util/Locale;ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;
    .locals 0

    and-int/lit16 p1, p1, 0xe0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "titlecasing iterator option together with an explicit iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    const/16 p2, 0x20

    if-eq p1, p2, :cond_3

    const/16 p2, 0x40

    if-ne p1, p2, :cond_2

    .line 244
    invoke-static {p0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    goto :goto_1

    .line 247
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown titlecasing iterator option"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_3
    new-instance p2, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;

    const/4 p0, 0x0

    invoke-direct {p2, p0}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>(Lcom/ibm/icu/impl/CaseMapImpl$1;)V

    goto :goto_1

    .line 238
    :cond_4
    invoke-static {p0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    :cond_5
    :goto_1
    return-object p2
.end method

.method private static internalToLower(IILjava/lang/CharSequence;IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v12, 0x1

    if-eq v0, v12, :cond_2

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v7, 0x7

    if-nez v1, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps$LatinCase;->TO_LOWER_TR_LT:[B

    goto :goto_1

    .line 437
    :cond_2
    :goto_0
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps$LatinCase;->TO_LOWER_NORMAL:[B

    :goto_1
    move-object v13, v1

    move/from16 v2, p3

    move v14, v2

    move-object/from16 v15, p5

    :goto_2
    if-lt v14, v9, :cond_3

    sub-int v3, v14, v2

    move-object/from16 v0, p2

    move v1, v2

    move v2, v3

    move-object/from16 v3, p6

    move/from16 v4, p1

    move-object/from16 v5, p7

    .line 509
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    return-void

    .line 451
    :cond_3
    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x17f

    if-ge v1, v3, :cond_5

    .line 454
    aget-byte v3, v13, v1

    const/16 v4, -0x80

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v14, v14, 0x1

    if-nez v3, :cond_c

    goto :goto_2

    :cond_5
    const v3, 0xd800

    if-lt v1, v3, :cond_6

    goto :goto_3

    .line 462
    :cond_6
    sget-object v3, Lcom/ibm/icu/impl/CaseMapImpl;->CASE_TRIE:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v3

    .line 463
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_3
    add-int/lit8 v3, v14, 0x1

    .line 482
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ge v3, v9, :cond_7

    .line 483
    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 484
    invoke-static {v1, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    :cond_7
    move v5, v1

    move v6, v3

    sub-int v3, v14, v2

    move-object/from16 v1, p2

    move-object/from16 v4, p6

    move v12, v5

    move/from16 v5, p1

    move v9, v6

    move-object/from16 v6, p7

    .line 492
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    if-ltz v0, :cond_9

    if-nez v15, :cond_8

    .line 496
    new-instance v15, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v15, v8, v14, v9}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;II)V

    goto :goto_4

    .line 498
    :cond_8
    invoke-virtual {v15, v14, v9}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->setCPStartAndLimit(II)V

    .line 500
    :goto_4
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v1, v12, v15, v10, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v1

    goto :goto_5

    .line 502
    :cond_9
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v1, v12, v10, v7}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_a

    sub-int v6, v9, v14

    .line 505
    invoke-static {v1, v10, v6, v7, v11}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    move v2, v9

    goto :goto_6

    :cond_a
    move v2, v14

    :goto_6
    move v14, v9

    const/4 v12, 0x1

    move/from16 v9, p4

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 465
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->isUpperOrTitleFromProps(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 466
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    add-int/2addr v1, v3

    int-to-char v9, v1

    add-int/lit8 v1, v14, -0x1

    sub-int v3, v1, v2

    move-object/from16 v1, p2

    move-object/from16 v4, p6

    move/from16 v5, p1

    move-object/from16 v6, p7

    .line 471
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 472
    invoke-interface {v10, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v1, 0x1

    if-eqz v11, :cond_d

    .line 474
    invoke-virtual {v11, v1, v1}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    :cond_d
    move/from16 v9, p4

    move v2, v14

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v1, 0x1

    move/from16 v9, p4

    :goto_8
    const/4 v12, 0x1

    goto/16 :goto_2
.end method

.method private static internalToUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 517
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps$LatinCase;->TO_UPPER_TR:[B

    goto :goto_0

    .line 519
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps$LatinCase;->TO_UPPER_NORMAL:[B

    :goto_0
    move-object v10, v1

    .line 523
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v13, v2

    const/4 v2, 0x0

    const/4 v12, 0x0

    :cond_1
    :goto_1
    if-lt v12, v11, :cond_2

    sub-int v3, v12, v2

    move-object/from16 v0, p2

    move v1, v2

    move v2, v3

    move-object/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p4

    .line 586
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    return-void

    .line 532
    :cond_2
    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x17f

    const/4 v14, 0x1

    if-ge v1, v3, :cond_5

    .line 535
    aget-byte v3, v10, v1

    const/16 v4, -0x80

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v12, 0x1

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v15, p1

    goto/16 :goto_5

    :cond_5
    const v3, 0xd800

    if-lt v1, v3, :cond_6

    goto :goto_2

    .line 543
    :cond_6
    sget-object v3, Lcom/ibm/icu/impl/CaseMapImpl;->CASE_TRIE:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v3

    .line 544
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_2
    add-int/lit8 v3, v12, 0x1

    .line 563
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ge v3, v11, :cond_7

    .line 564
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 565
    invoke-static {v1, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    :cond_7
    move v15, v1

    move v14, v3

    if-nez v13, :cond_8

    .line 571
    new-instance v1, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v1, v7, v12, v14}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;II)V

    move-object v13, v1

    goto :goto_3

    .line 573
    :cond_8
    invoke-virtual {v13, v12, v14}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->setCPStartAndLimit(II)V

    :goto_3
    sub-int v3, v12, v2

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p4

    .line 578
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 580
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v1, v15, v13, v8, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v1

    if-ltz v1, :cond_9

    sub-int v2, v14, v12

    move/from16 v15, p1

    .line 582
    invoke-static {v1, v8, v2, v15, v9}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    move v2, v14

    goto :goto_4

    :cond_9
    move/from16 v15, p1

    move v2, v12

    :goto_4
    move v12, v14

    goto/16 :goto_1

    :cond_a
    move/from16 v15, p1

    add-int/lit8 v12, v12, 0x1

    .line 546
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v4

    if-ne v4, v14, :cond_1

    .line 547
    invoke-static {v3}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_1

    :cond_b
    :goto_5
    add-int/2addr v1, v3

    int-to-char v6, v1

    add-int/lit8 v1, v12, -0x1

    sub-int v3, v1, v2

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move/from16 v5, p1

    move v14, v6

    move-object/from16 v6, p4

    .line 552
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 553
    invoke-interface {v8, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    if-eqz v9, :cond_c

    const/4 v1, 0x1

    .line 555
    invoke-virtual {v9, v1, v1}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    :cond_c
    move v2, v12

    goto/16 :goto_1
.end method

.method private static isLNS(I)Z
    .locals 4

    .line 214
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, v0

    const v3, 0xf020e2e

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 215
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 217
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 610
    :try_start_0
    invoke-virtual {p4}, Lcom/ibm/icu/text/Edits;->reset()V

    :cond_0
    const/4 v3, 0x0

    .line 612
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToLower(IILjava/lang/CharSequence;IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 615
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toLower(IILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 590
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_1

    .line 591
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 592
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 596
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/Edits;

    invoke-direct {v0}, Lcom/ibm/icu/text/Edits;-><init>()V

    or-int/lit16 p1, p1, 0x4000

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v1, v0}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 599
    invoke-static {p2, p0, v0}, Lcom/ibm/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 601
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 602
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 601
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Lcom/ibm/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    if-eqz v12, :cond_0

    .line 675
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 679
    :cond_0
    new-instance v13, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v13, v10}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 680
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v15, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v14, :cond_f

    if-eqz v1, :cond_1

    .line 690
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->first()I

    move-result v1

    const/16 v16, 0x0

    goto :goto_1

    .line 692
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result v3

    move/from16 v16, v1

    move v1, v3

    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-le v1, v14, :cond_2

    goto :goto_2

    :cond_2
    move v7, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v14

    :goto_3
    if-ge v2, v7, :cond_e

    .line 707
    invoke-virtual {v13, v7}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->setLimit(I)V

    .line 708
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    and-int/lit16 v3, v9, 0x200

    if-nez v3, :cond_8

    and-int/lit16 v3, v9, 0x400

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_5

    .line 716
    sget-object v4, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 717
    invoke-virtual {v4, v1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    .line 718
    :cond_5
    invoke-static {v1}, Lcom/ibm/icu/impl/CaseMapImpl;->isLNS(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 719
    :goto_5
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v17, v1

    .line 722
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPStart()I

    move-result v6

    if-ge v2, v6, :cond_7

    sub-int v3, v6, v2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move/from16 v5, p1

    move/from16 v18, v6

    move-object/from16 v6, p5

    .line 724
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    goto :goto_6

    :cond_7
    move/from16 v18, v6

    :goto_6
    move/from16 v1, v17

    move/from16 v2, v18

    :cond_8
    if-ge v2, v7, :cond_e

    .line 729
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v17

    .line 731
    sget-object v3, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v3, v1, v13, v11, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v1

    .line 732
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v3

    invoke-static {v1, v11, v3, v9, v12}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v7, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 736
    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-eq v1, v2, :cond_9

    const/16 v2, 0x49

    if-ne v1, v2, :cond_c

    .line 738
    :cond_9
    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x6a

    const/16 v4, 0x4a

    if-ne v1, v2, :cond_b

    .line 740
    invoke-interface {v11, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    if-eqz v12, :cond_a

    .line 742
    invoke-virtual {v12, v8, v8}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    .line 744
    :cond_a
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_b
    if-ne v1, v4, :cond_c

    const/4 v4, 0x1

    move-object/from16 v1, p3

    move v2, v3

    move v3, v4

    move-object/from16 v4, p4

    move/from16 v5, p1

    move-object/from16 v6, p5

    .line 750
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 751
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    goto :goto_7

    :cond_c
    :goto_8
    move/from16 v4, v17

    if-ge v4, v7, :cond_e

    and-int/lit16 v1, v9, 0x100

    if-nez v1, :cond_d

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move v5, v7

    move-object v6, v13

    move/from16 v17, v7

    move-object/from16 v7, p4

    const/16 v18, 0x1

    move-object/from16 v8, p5

    .line 763
    invoke-static/range {v1 .. v8}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToLower(IILjava/lang/CharSequence;IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V

    goto :goto_9

    :cond_d
    move/from16 v17, v7

    const/16 v18, 0x1

    sub-int v3, v17, v4

    move-object/from16 v1, p3

    move v2, v4

    move-object/from16 v4, p4

    move/from16 v5, p1

    move-object/from16 v6, p5

    .line 767
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 769
    :goto_9
    invoke-virtual {v13}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->moveToLimit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_e
    move/from16 v17, v7

    const/16 v18, 0x1

    :goto_a
    move/from16 v1, v16

    move/from16 v2, v17

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v11

    :catch_0
    move-exception v0

    .line 778
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method

.method public static toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    .line 653
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_1

    .line 654
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 659
    :cond_0
    new-instance v6, Lcom/ibm/icu/text/Edits;

    invoke-direct {v6}, Lcom/ibm/icu/text/Edits;-><init>()V

    or-int/lit16 v1, p1, 0x4000

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 663
    invoke-static {p3, p0, v6}, Lcom/ibm/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 665
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 666
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 665
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 640
    :try_start_0
    invoke-virtual {p4}, Lcom/ibm/icu/text/Edits;->reset()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 643
    invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->access$100(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 645
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    .line 648
    :goto_1
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 620
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_1

    .line 621
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 626
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/Edits;

    invoke-direct {v0}, Lcom/ibm/icu/text/Edits;-><init>()V

    or-int/lit16 p1, p1, 0x4000

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v1, v0}, Lcom/ibm/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 629
    invoke-static {p2, p0, v0}, Lcom/ibm/icu/impl/CaseMapImpl;->applyEdits(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Lcom/ibm/icu/text/Edits;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 631
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 632
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 631
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
