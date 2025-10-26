.class public final Lcom/ibm/icu/text/StringSearch;
.super Lcom/ibm/icu/text/SearchIterator;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/StringSearch$CEBuffer;,
        Lcom/ibm/icu/text/StringSearch$CEI;,
        Lcom/ibm/icu/text/StringSearch$CollationPCE;,
        Lcom/ibm/icu/text/StringSearch$Pattern;,
        Lcom/ibm/icu/text/StringSearch$Match;
    }
.end annotation


# static fields
.field private static CE_LEVEL2_BASE:I = 0x5

.field private static CE_LEVEL3_BASE:I = 0x50000

.field private static final CE_MATCH:I = -0x1

.field private static final CE_NO_MATCH:I = 0x0

.field private static final CE_SKIP_PATN:I = 0x2

.field private static final CE_SKIP_TARG:I = 0x1

.field private static final INITIAL_ARRAY_SIZE_:I = 0x100

.field private static final PRIMARYORDERMASK:I = -0x10000

.field private static final SECONDARYORDERMASK:I = 0xff00

.field private static final TERTIARYORDERMASK:I = 0xff


# instance fields
.field ceMask_:I

.field private collator_:Lcom/ibm/icu/text/RuleBasedCollator;

.field private nfd_:Lcom/ibm/icu/text/Normalizer2;

.field private pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

.field private strength_:I

.field private textIter_:Lcom/ibm/icu/text/CollationElementIterator;

.field private textProcessedIter_:Lcom/ibm/icu/text/StringSearch$CollationPCE;

.field private toShift_:Z

.field private utilIter_:Lcom/ibm/icu/text/CollationElementIterator;

.field variableTop_:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 286
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getInstance()Lcom/ibm/icu/text/Collator;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/RuleBasedCollator;

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/ibm/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/BreakIterator;)V
    .locals 0

    .line 181
    invoke-direct {p0, p2, p4}, Lcom/ibm/icu/text/SearchIterator;-><init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/BreakIterator;)V

    .line 184
    invoke-virtual {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result p4

    if-nez p4, :cond_1

    .line 188
    iput-object p3, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    .line 189
    invoke-virtual {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I

    move-result p4

    iput p4, p0, Lcom/ibm/icu/text/StringSearch;->strength_:I

    .line 190
    invoke-static {p4}, Lcom/ibm/icu/text/StringSearch;->getMask(I)I

    move-result p4

    iput p4, p0, Lcom/ibm/icu/text/StringSearch;->ceMask_:I

    .line 191
    invoke-virtual {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result p4

    iput-boolean p4, p0, Lcom/ibm/icu/text/StringSearch;->toShift_:Z

    .line 192
    invoke-virtual {p3}, Lcom/ibm/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result p4

    iput p4, p0, Lcom/ibm/icu/text/StringSearch;->variableTop_:I

    .line 194
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object p4

    iput-object p4, p0, Lcom/ibm/icu/text/StringSearch;->nfd_:Lcom/ibm/icu/text/Normalizer2;

    .line 196
    new-instance p4, Lcom/ibm/icu/text/StringSearch$Pattern;

    invoke-direct {p4, p1}, Lcom/ibm/icu/text/StringSearch$Pattern;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    .line 198
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 199
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 p4, -0x1

    iput p4, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/ibm/icu/text/StringSearch;->utilIter_:Lcom/ibm/icu/text/CollationElementIterator;

    .line 202
    new-instance p4, Lcom/ibm/icu/text/CollationElementIterator;

    invoke-direct {p4, p2, p3}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;)V

    iput-object p4, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    .line 204
    iput-object p1, p0, Lcom/ibm/icu/text/StringSearch;->textProcessedIter_:Lcom/ibm/icu/text/StringSearch$CollationPCE;

    .line 214
    sget-object p1, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 215
    iget-object p3, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    if-nez p1, :cond_0

    sget-object p1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/BreakIterator;->getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p3, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    .line 216
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    invoke-interface {p2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/CharacterIterator;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 218
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initialize()V

    return-void

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Numeric collation is not supported by StringSearch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 271
    invoke-static {p3}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p3

    check-cast p3, Lcom/ibm/icu/text/RuleBasedCollator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Ljava/util/Locale;)V
    .locals 0

    .line 250
    invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/StringSearch;)Lcom/ibm/icu/text/StringSearch$Pattern;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ibm/icu/text/StringSearch;)Z
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/text/StringSearch;)Lcom/ibm/icu/text/StringSearch$CollationPCE;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/ibm/icu/text/StringSearch;->textProcessedIter_:Lcom/ibm/icu/text/StringSearch$CollationPCE;

    return-object p0
.end method

.method private static addToIntArray([IIII)[I
    .locals 2

    .line 661
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    add-int/2addr v0, p3

    .line 664
    new-array p3, v0, [I

    const/4 v0, 0x0

    .line 665
    invoke-static {p0, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p3

    .line 668
    :cond_0
    aput p2, p0, p1

    return-object p0
.end method

.method private static addToLongArray([JIIJI)[J
    .locals 1

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    add-int/2addr p2, p5

    .line 689
    new-array p2, p2, [J

    const/4 p5, 0x0

    .line 690
    invoke-static {p0, p5, p2, p5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p2

    .line 693
    :cond_0
    aput-wide p3, p0, p1

    return-object p0
.end method

.method private checkIdentical(II)Z
    .locals 3

    .line 872
    iget v0, p0, Lcom/ibm/icu/text/StringSearch;->strength_:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/StringSearch;->getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    move-result-object p1

    .line 878
    sget-object p2, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object p2

    sget-object v1, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-ne p2, v1, :cond_1

    .line 879
    invoke-static {p1, v0}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 881
    :cond_1
    iget-object p2, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object p2, p2, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 882
    sget-object v1, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {p2, v1, v0}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-ne v1, v2, :cond_2

    .line 883
    invoke-static {p2, v0}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 885
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static codePointAt(Ljava/text/CharacterIterator;I)I
    .locals 3

    .line 1250
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 1251
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    .line 1253
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    .line 1255
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1256
    invoke-static {p1, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    .line 1259
    :cond_0
    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return p1
.end method

.method private static codePointBefore(Ljava/text/CharacterIterator;I)I
    .locals 3

    .line 1264
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 1265
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1266
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result p1

    .line 1268
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v1

    .line 1270
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1271
    invoke-static {v1, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    .line 1274
    :cond_0
    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return p1
.end method

.method private static compareCE64s(JJLcom/ibm/icu/text/SearchIterator$ElementComparisonType;)I
    .locals 15

    move-object/from16 v0, p4

    const/4 v1, -0x1

    cmp-long v2, p0, p2

    if-nez v2, :cond_0

    return v1

    .line 945
    :cond_0
    sget-object v2, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    const/16 v2, 0x20

    ushr-long v4, p0, v2

    ushr-long v6, p2, v2

    const-wide v8, 0xffff0000L

    and-long v10, v4, v8

    long-to-int v2, v10

    and-long v10, v6, v8

    long-to-int v11, v10

    const/4 v10, 0x2

    const/4 v12, 0x1

    if-eq v2, v11, :cond_4

    if-nez v2, :cond_2

    return v12

    :cond_2
    if-nez v11, :cond_3

    .line 960
    sget-object v1, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v1, :cond_3

    return v10

    :cond_3
    return v3

    :cond_4
    const-wide/32 v13, 0xffff

    and-long/2addr v4, v13

    long-to-int v2, v4

    and-long v4, v6, v13

    long-to-int v5, v4

    if-eq v2, v5, :cond_9

    if-nez v2, :cond_5

    return v12

    :cond_5
    if-nez v5, :cond_6

    .line 974
    sget-object v4, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v4, :cond_6

    return v10

    .line 978
    :cond_6
    sget v4, Lcom/ibm/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-eq v5, v4, :cond_8

    sget-object v4, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v4, :cond_7

    sget v0, Lcom/ibm/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-ne v2, v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_0
    return v1

    :cond_9
    and-long v4, p0, v8

    long-to-int v2, v4

    and-long v4, p2, v8

    long-to-int v5, v4

    if-eq v2, v5, :cond_b

    .line 987
    sget v4, Lcom/ibm/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-eq v5, v4, :cond_b

    sget-object v4, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v4, :cond_a

    sget v0, Lcom/ibm/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-ne v2, v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_1
    return v1
.end method

.method private getCE(I)I
    .locals 2

    .line 626
    iget v0, p0, Lcom/ibm/icu/text/StringSearch;->ceMask_:I

    and-int/2addr p1, v0

    .line 628
    iget-boolean v0, p0, Lcom/ibm/icu/text/StringSearch;->toShift_:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 634
    iget v0, p0, Lcom/ibm/icu/text/StringSearch;->variableTop_:I

    if-le v0, p1, :cond_2

    .line 635
    iget v0, p0, Lcom/ibm/icu/text/StringSearch;->strength_:I

    if-lt v0, v1, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 641
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/StringSearch;->strength_:I

    if-lt v0, v1, :cond_2

    if-nez p1, :cond_2

    const p1, 0xffff

    :cond_2
    :goto_0
    return p1
.end method

.method private static getMask(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, -0x100

    return p0

    :cond_1
    const/high16 p0, -0x10000

    return p0
.end method

.method private static final getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 3

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1597
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 1598
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1600
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1601
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1603
    :cond_0
    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleNextCanonical()Z
    .locals 1

    .line 1518
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result v0

    return v0
.end method

.method private handleNextCommonImpl()Z
    .locals 3

    .line 1522
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 1523
    new-instance v1, Lcom/ibm/icu/text/StringSearch$Match;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/StringSearch$Match;-><init>(Lcom/ibm/icu/text/StringSearch$1;)V

    .line 1525
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/StringSearch;->search(ILcom/ibm/icu/text/StringSearch$Match;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v2, v1, Lcom/ibm/icu/text/StringSearch$Match;->start_:I

    iput v2, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 1527
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v2, v1, Lcom/ibm/icu/text/StringSearch$Match;->limit_:I

    iget v1, v1, Lcom/ibm/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    const/4 v0, 0x1

    return v0

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/StringSearch;->setMatchNotFound()V

    const/4 v0, 0x0

    return v0
.end method

.method private handleNextExact()Z
    .locals 1

    .line 1514
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result v0

    return v0
.end method

.method private handlePreviousCanonical()Z
    .locals 1

    .line 1545
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result v0

    return v0
.end method

.method private handlePreviousCommonImpl()Z
    .locals 9

    .line 1551
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1552
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v4, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    goto :goto_2

    .line 1556
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1557
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1558
    invoke-virtual {p0}, Lcom/ibm/icu/text/StringSearch;->setMatchNotFound()V

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1561
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v4, v4, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_3

    .line 1562
    iget-object v4, p0, Lcom/ibm/icu/text/StringSearch;->textProcessedIter_:Lcom/ibm/icu/text/StringSearch$CollationPCE;

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/StringSearch$CollationPCE;->nextProcessed(Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1568
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    goto :goto_2

    .line 1571
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 1574
    :goto_2
    new-instance v4, Lcom/ibm/icu/text/StringSearch$Match;

    invoke-direct {v4, v1}, Lcom/ibm/icu/text/StringSearch$Match;-><init>(Lcom/ibm/icu/text/StringSearch$1;)V

    .line 1575
    invoke-direct {p0, v0, v4}, Lcom/ibm/icu/text/StringSearch;->searchBackwards(ILcom/ibm/icu/text/StringSearch$Match;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1576
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v1, v4, Lcom/ibm/icu/text/StringSearch$Match;->start_:I

    iput v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 1577
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v1, v4, Lcom/ibm/icu/text/StringSearch$Match;->limit_:I

    iget v2, v4, Lcom/ibm/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return v3

    .line 1580
    :cond_5
    invoke-virtual {p0}, Lcom/ibm/icu/text/StringSearch;->setMatchNotFound()V

    return v2
.end method

.method private handlePreviousExact()Z
    .locals 1

    .line 1541
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result v0

    return v0
.end method

.method private initTextProcessedIter()Z
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textProcessedIter_:Lcom/ibm/icu/text/StringSearch$CollationPCE;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Lcom/ibm/icu/text/StringSearch$CollationPCE;

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/StringSearch$CollationPCE;-><init>(Lcom/ibm/icu/text/CollationElementIterator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textProcessedIter_:Lcom/ibm/icu/text/StringSearch$CollationPCE;

    goto :goto_0

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/StringSearch$CollationPCE;->init(Lcom/ibm/icu/text/CollationElementIterator;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private initialize()V
    .locals 0

    .line 820
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initializePattern()I

    return-void
.end method

.method private initializePattern()I
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->PCE_:[J

    .line 802
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initializePatternCETable()I

    move-result v0

    return v0
.end method

.method private initializePatternCETable()I
    .locals 9

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 708
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 709
    iget-object v2, p0, Lcom/ibm/icu/text/StringSearch;->utilIter_:Lcom/ibm/icu/text/CollationElementIterator;

    if-nez v2, :cond_0

    .line 712
    new-instance v2, Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {v2, v3, v4}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V

    .line 713
    iput-object v2, p0, Lcom/ibm/icu/text/StringSearch;->utilIter_:Lcom/ibm/icu/text/CollationElementIterator;

    goto :goto_0

    .line 715
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 722
    :goto_1
    invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 723
    invoke-direct {p0, v6}, Lcom/ibm/icu/text/StringSearch;->getCE(I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 726
    invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result v8

    sub-int v8, v1, v8

    add-int/lit8 v8, v8, 0x1

    .line 725
    invoke-static {v0, v4, v7, v8}, Lcom/ibm/icu/text/StringSearch;->addToIntArray([IIII)[I

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    .line 730
    :cond_1
    invoke-virtual {v2, v6}, Lcom/ibm/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    goto :goto_1

    .line 733
    :cond_2
    aput v3, v0, v4

    .line 734
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iput-object v0, v1, Lcom/ibm/icu/text/StringSearch$Pattern;->CE_:[I

    .line 735
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iput v4, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->CELength_:I

    return v5
.end method

.method private initializePatternPCETable()I
    .locals 11

    const/16 v0, 0x100

    new-array v0, v0, [J

    .line 751
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 752
    iget-object v2, p0, Lcom/ibm/icu/text/StringSearch;->utilIter_:Lcom/ibm/icu/text/CollationElementIterator;

    if-nez v2, :cond_0

    .line 755
    new-instance v2, Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v3, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-direct {v2, v3, v4}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V

    .line 756
    iput-object v2, p0, Lcom/ibm/icu/text/StringSearch;->utilIter_:Lcom/ibm/icu/text/CollationElementIterator;

    goto :goto_0

    .line 758
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 765
    :goto_0
    new-instance v3, Lcom/ibm/icu/text/StringSearch$CollationPCE;

    invoke-direct {v3, v2}, Lcom/ibm/icu/text/StringSearch$CollationPCE;-><init>(Lcom/ibm/icu/text/CollationElementIterator;)V

    const/4 v4, 0x0

    move-object v5, v0

    const/4 v0, 0x0

    :goto_1
    const/4 v6, 0x0

    .line 770
    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/StringSearch$CollationPCE;->nextProcessed(Lcom/ibm/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v8

    const-wide/16 v6, -0x1

    cmp-long v10, v8, v6

    if-eqz v10, :cond_1

    .line 771
    invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result v6

    sub-int v6, v1, v6

    add-int/lit8 v10, v6, 0x1

    const/16 v7, 0x100

    move v6, v0

    invoke-static/range {v5 .. v10}, Lcom/ibm/icu/text/StringSearch;->addToLongArray([JIIJI)[J

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 776
    aput-wide v1, v5, v0

    .line 777
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iput-object v5, v1, Lcom/ibm/icu/text/StringSearch$Pattern;->PCE_:[J

    .line 778
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iput v0, v1, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    return v4
.end method

.method private isBreakBoundary(I)Z
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    :cond_0
    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->isBoundary(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final isOutOfBounds(III)Z
    .locals 0

    if-lt p2, p0, :cond_1

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private nextBoundaryAfter(I)I
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->breakIter()Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    :cond_0
    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result p1

    :cond_1
    return p1
.end method

.method private search(ILcom/ibm/icu/text/StringSearch$Match;)Z
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1006
    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->CELength_:I

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 1007
    invoke-virtual {v3}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v3

    if-lt v1, v3, :cond_1d

    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 1008
    invoke-virtual {v3}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-gt v1, v3, :cond_1d

    .line 1013
    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->PCE_:[J

    if-nez v3, :cond_0

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1017
    :cond_0
    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    .line 1018
    new-instance v1, Lcom/ibm/icu/text/StringSearch$CEBuffer;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/StringSearch$CEBuffer;-><init>(Lcom/ibm/icu/text/StringSearch;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 1052
    :goto_0
    invoke-virtual {v1, v6}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->get(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v9

    if-eqz v9, :cond_1c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    .line 1057
    :goto_1
    iget-object v4, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v4, v4, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    const/4 v5, 0x1

    if-ge v12, v4, :cond_4

    .line 1058
    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->PCE_:[J

    aget-wide v14, v3, v12

    add-int v3, v6, v12

    add-int/2addr v3, v13

    .line 1059
    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->get(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v3

    .line 1063
    iget-wide v10, v3, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    iget-object v4, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v4, v4, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v10, v11, v14, v15, v4}, Lcom/ibm/icu/text/StringSearch;->compareCE64s(JJLcom/ibm/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_3

    :cond_1
    if-lez v4, :cond_3

    if-ne v4, v5, :cond_2

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, -0x1

    :cond_3
    :goto_2
    add-int/2addr v12, v5

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    .line 1078
    :goto_3
    iget-object v10, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v10, v10, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v13, v10

    const-wide/16 v10, -0x1

    move v12, v6

    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    .line 1080
    iget-wide v5, v3, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v19, v5, v10

    if-eqz v19, :cond_6

    :cond_5
    move-object/from16 v25, v1

    move-object v11, v3

    goto/16 :goto_b

    :cond_6
    if-nez v4, :cond_7

    goto/16 :goto_a

    :cond_7
    add-int v6, v12, v13

    add-int/lit8 v5, v6, -0x1

    .line 1095
    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->get(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v5

    .line 1097
    iget v7, v9, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1098
    iget v8, v5, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1109
    iget-object v10, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v10, v10, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    sget-object v11, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    const-wide v21, 0xffff0000L

    const/16 v23, 0x20

    if-ne v10, v11, :cond_a

    .line 1110
    invoke-virtual {v1, v6}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->get(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v6

    .line 1111
    iget v10, v6, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1112
    iget v11, v6, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v13, v6, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v11, v13, :cond_9

    iget-wide v13, v6, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    const-wide/16 v19, -0x1

    cmp-long v11, v13, v19

    if-eqz v11, :cond_9

    move-object/from16 v25, v1

    move-object v11, v3

    :cond_8
    :goto_4
    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    move-object/from16 v25, v1

    move-object v11, v3

    goto :goto_7

    :cond_a
    const-wide/16 v19, -0x1

    :goto_5
    add-int v6, v12, v13

    .line 1117
    invoke-virtual {v1, v6}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->get(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v6

    .line 1118
    iget v10, v6, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    move-object v11, v3

    move/from16 v24, v4

    .line 1120
    iget-wide v3, v6, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v25, v3, v19

    if-nez v25, :cond_b

    move-object/from16 v25, v1

    goto :goto_6

    .line 1126
    :cond_b
    iget-wide v3, v6, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    ushr-long v3, v3, v23

    and-long v3, v3, v21

    const-wide/16 v16, 0x0

    cmp-long v25, v3, v16

    if-nez v25, :cond_d

    .line 1127
    iget-wide v3, v6, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v1, v1, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v3, v4, v14, v15, v1}, Lcom/ibm/icu/text/StringSearch;->compareCE64s(JJLcom/ibm/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v13, v13, 0x1

    move-object v3, v11

    move/from16 v4, v24

    move-object/from16 v1, v25

    goto :goto_5

    :cond_d
    move-object/from16 v25, v1

    .line 1134
    iget v1, v6, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v3, v6, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v1, v3, :cond_e

    goto :goto_4

    :cond_e
    :goto_6
    move/from16 v4, v24

    .line 1150
    :goto_7
    invoke-direct {v0, v7}, Lcom/ibm/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v4, 0x0

    .line 1159
    :cond_f
    iget v1, v9, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v7, v1, :cond_10

    const/4 v4, 0x0

    .line 1175
    :cond_10
    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    if-nez v1, :cond_12

    iget-wide v13, v6, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    ushr-long v13, v13, v23

    and-long v13, v13, v21

    const-wide/16 v16, 0x0

    cmp-long v1, v13, v16

    if-eqz v1, :cond_12

    iget v1, v5, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v10, v1, :cond_12

    iget v1, v6, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-le v1, v10, :cond_12

    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->nfd_:Lcom/ibm/icu/text/Normalizer2;

    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1179
    invoke-static {v3, v10}, Lcom/ibm/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->nfd_:Lcom/ibm/icu/text/Normalizer2;

    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1180
    invoke-static {v3, v10}, Lcom/ibm/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/16 v18, 0x1

    goto :goto_8

    :cond_12
    const/16 v18, 0x0

    :goto_8
    if-ge v8, v10, :cond_15

    .line 1200
    iget v1, v5, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v8, v1, :cond_13

    invoke-direct {v0, v8}, Lcom/ibm/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    .line 1203
    :cond_13
    invoke-direct {v0, v8}, Lcom/ibm/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v1

    .line 1207
    iget v3, v5, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v1, v3, :cond_15

    if-eqz v18, :cond_14

    if-ge v1, v10, :cond_15

    :cond_14
    move v8, v1

    goto :goto_9

    :cond_15
    move v8, v10

    :goto_9
    if-nez v18, :cond_17

    if-le v8, v10, :cond_16

    const/4 v4, 0x0

    .line 1220
    :cond_16
    invoke-direct {v0, v8}, Lcom/ibm/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v4, 0x0

    .line 1225
    :cond_17
    invoke-direct {v0, v7, v8}, Lcom/ibm/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v4, 0x0

    :cond_18
    if-eqz v4, :cond_1b

    :goto_a
    if-nez v4, :cond_19

    const/4 v7, -0x1

    const/4 v8, -0x1

    :cond_19
    if-eqz v2, :cond_1a

    .line 1242
    iput v7, v2, Lcom/ibm/icu/text/StringSearch$Match;->start_:I

    .line 1243
    iput v8, v2, Lcom/ibm/icu/text/StringSearch$Match;->limit_:I

    :cond_1a
    return v4

    :cond_1b
    :goto_b
    add-int/lit8 v6, v12, 0x1

    move-object v3, v11

    move-object/from16 v1, v25

    goto/16 :goto_0

    :cond_1c
    move v12, v6

    .line 1054
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CEBuffer.get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") returned null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1009
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m) - expected position to be between "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 1010
    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v2

    :goto_d
    goto :goto_c
.end method

.method private searchBackwards(ILcom/ibm/icu/text/StringSearch$Match;)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1282
    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->CELength_:I

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 1283
    invoke-virtual {v3}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v3

    if-lt v1, v3, :cond_1c

    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 1284
    invoke-virtual {v3}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-gt v1, v3, :cond_1c

    .line 1289
    iget-object v3, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Lcom/ibm/icu/text/StringSearch$Pattern;->PCE_:[J

    if-nez v3, :cond_0

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1293
    :cond_0
    new-instance v3, Lcom/ibm/icu/text/StringSearch$CEBuffer;

    invoke-direct {v3, v0}, Lcom/ibm/icu/text/StringSearch$CEBuffer;-><init>(Lcom/ibm/icu/text/StringSearch;)V

    .line 1305
    iget-object v4, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1306
    iget-object v4, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v4, v4, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    .line 1307
    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result v4

    .line 1309
    iget-object v6, v0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v6, v4}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    const/4 v4, 0x0

    .line 1312
    :goto_0
    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->getPrevious(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v6

    iget v6, v6, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    if-ge v6, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1317
    :cond_2
    iget-object v4, v0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 1341
    :goto_2
    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->getPrevious(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v10

    if-eqz v10, :cond_1b

    .line 1348
    iget-object v11, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v11, v11, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    :goto_3
    if-ltz v11, :cond_6

    .line 1349
    iget-object v6, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v6, v6, Lcom/ibm/icu/text/StringSearch$Pattern;->PCE_:[J

    aget-wide v14, v6, v11

    .line 1351
    iget-object v6, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v6, v6, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v6, v4

    sub-int/2addr v6, v12

    sub-int/2addr v6, v11

    add-int/2addr v6, v13

    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->getPrevious(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v6

    move/from16 v17, v8

    .line 1355
    iget-wide v7, v6, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    iget-object v5, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v5, v5, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v7, v8, v14, v15, v5}, Lcom/ibm/icu/text/StringSearch;->compareCE64s(JJLcom/ibm/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, -0x1

    const/4 v7, 0x0

    goto :goto_5

    :cond_3
    if-lez v5, :cond_5

    if-ne v5, v12, :cond_4

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, -0x1

    :cond_5
    :goto_4
    const/4 v5, -0x1

    add-int/2addr v11, v5

    move/from16 v8, v17

    goto :goto_3

    :cond_6
    move/from16 v17, v8

    const/4 v5, -0x1

    const/4 v7, 0x1

    :goto_5
    const-wide/16 v14, -0x1

    if-nez v7, :cond_8

    if-eqz v6, :cond_7

    move v11, v13

    .line 1371
    iget-wide v12, v6, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v16, v12, v14

    if-eqz v16, :cond_9

    :cond_7
    move/from16 v8, v17

    goto/16 :goto_b

    :cond_8
    move v11, v13

    :cond_9
    if-nez v7, :cond_a

    move/from16 v8, v17

    goto/16 :goto_a

    .line 1386
    :cond_a
    iget-object v9, v0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v9, v9, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v9, v4

    const/4 v8, 0x1

    sub-int/2addr v9, v8

    add-int/2addr v9, v11

    invoke-virtual {v3, v9}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->getPrevious(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v9

    .line 1387
    iget v11, v9, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1395
    invoke-direct {v0, v11}, Lcom/ibm/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v12

    if-nez v12, :cond_b

    const/4 v7, 0x0

    .line 1401
    :cond_b
    iget v9, v9, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v11, v9, :cond_c

    const/4 v7, 0x0

    .line 1405
    :cond_c
    iget v9, v10, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    if-lez v4, :cond_14

    add-int/lit8 v12, v4, -0x1

    .line 1416
    invoke-virtual {v3, v12}, Lcom/ibm/icu/text/StringSearch$CEBuffer;->getPrevious(I)Lcom/ibm/icu/text/StringSearch$CEI;

    move-result-object v12

    .line 1418
    iget v13, v12, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v5, v12, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v13, v5, :cond_d

    move v13, v9

    iget-wide v8, v12, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v17, v8, v14

    if-eqz v17, :cond_e

    const/4 v7, 0x0

    goto :goto_6

    :cond_d
    move v13, v9

    .line 1422
    :cond_e
    :goto_6
    iget v8, v12, Lcom/ibm/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1435
    iget-object v9, v0, Lcom/ibm/icu/text/StringSearch;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    if-nez v9, :cond_10

    iget-wide v14, v12, Lcom/ibm/icu/text/StringSearch$CEI;->ce_:J

    const/16 v9, 0x20

    ushr-long/2addr v14, v9

    const-wide v18, 0xffff0000L

    and-long v14, v14, v18

    const-wide/16 v18, 0x0

    cmp-long v9, v14, v18

    if-eqz v9, :cond_10

    iget v9, v10, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v8, v9, :cond_10

    iget v9, v12, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-le v9, v8, :cond_10

    iget-object v9, v0, Lcom/ibm/icu/text/StringSearch;->nfd_:Lcom/ibm/icu/text/Normalizer2;

    iget-object v12, v0, Lcom/ibm/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1439
    invoke-static {v12, v8}, Lcom/ibm/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, v0, Lcom/ibm/icu/text/StringSearch;->nfd_:Lcom/ibm/icu/text/Normalizer2;

    iget-object v12, v0, Lcom/ibm/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1440
    invoke-static {v12, v8}, Lcom/ibm/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_f
    move v5, v13

    const/4 v12, 0x1

    goto :goto_7

    :cond_10
    move v5, v13

    const/4 v12, 0x0

    :goto_7
    if-ge v5, v8, :cond_11

    .line 1453
    invoke-direct {v0, v5}, Lcom/ibm/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v5

    .line 1457
    iget v9, v10, Lcom/ibm/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v5, v9, :cond_11

    if-eqz v12, :cond_12

    if-ge v5, v8, :cond_11

    goto :goto_8

    :cond_11
    move v5, v8

    :cond_12
    :goto_8
    if-nez v12, :cond_16

    if-le v5, v8, :cond_13

    const/4 v7, 0x0

    .line 1470
    :cond_13
    invoke-direct {v0, v5}, Lcom/ibm/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v8

    if-nez v8, :cond_16

    const/4 v7, 0x0

    goto :goto_9

    :cond_14
    move v5, v9

    .line 1480
    invoke-direct {v0, v5}, Lcom/ibm/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v5

    if-lez v5, :cond_15

    if-le v1, v5, :cond_15

    goto :goto_9

    :cond_15
    move v5, v1

    :cond_16
    :goto_9
    move v9, v5

    .line 1484
    invoke-direct {v0, v11, v9}, Lcom/ibm/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v5

    if-nez v5, :cond_17

    const/4 v7, 0x0

    :cond_17
    move v8, v11

    if-eqz v7, :cond_1a

    :goto_a
    if-nez v7, :cond_18

    const/4 v8, -0x1

    const/4 v9, -0x1

    :cond_18
    if-eqz v2, :cond_19

    .line 1501
    iput v8, v2, Lcom/ibm/icu/text/StringSearch$Match;->start_:I

    .line 1502
    iput v9, v2, Lcom/ibm/icu/text/StringSearch$Match;->limit_:I

    :cond_19
    return v7

    :cond_1a
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1343
    :cond_1b
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CEBuffer.getPrevious("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") returned null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1285
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchBackwards("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m) - expected position to be between "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    .line 1286
    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v2

    :goto_d
    goto :goto_c
.end method


# virtual methods
.method public getCollator()Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public getIndex()I
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/text/StringSearch;->isOutOfBounds(III)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v0, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    return-object v0
.end method

.method protected handleNext(I)I
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v0, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->CELength_:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 488
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne v0, v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/ibm/icu/text/StringSearch;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 490
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 491
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    .line 492
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 493
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput v1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    :cond_1
    return v1

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    if-gtz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    add-int/lit8 v2, p1, -0x1

    iput v2, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    .line 512
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz p1, :cond_4

    .line 514
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handleNextCanonical()Z

    goto :goto_1

    .line 516
    :cond_4
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handleNextExact()Z

    .line 519
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne p1, v1, :cond_5

    .line 520
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_2

    .line 522
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    .line 525
    :goto_2
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    return p1
.end method

.method protected handlePrevious(I)I
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget v0, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->CELength_:I

    if-nez v0, :cond_2

    .line 538
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/ibm/icu/text/StringSearch;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    :goto_0
    iput v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 540
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Lcom/ibm/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/ibm/icu/text/StringSearch;->setMatchNotFound()V

    goto :goto_1

    .line 543
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 544
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    .line 545
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    goto :goto_1

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    .line 550
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz p1, :cond_3

    .line 552
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handlePreviousCanonical()Z

    goto :goto_1

    .line 554
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->handlePreviousExact()Z

    .line 558
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget p1, p1, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    return p1
.end method

.method public isCanonical()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    return v0
.end method

.method public reset()V
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    .line 442
    iget v1, p0, Lcom/ibm/icu/text/StringSearch;->strength_:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    if-lt v1, v3, :cond_2

    if-ge v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/text/StringSearch;->strength_:I

    .line 448
    invoke-static {v1}, Lcom/ibm/icu/text/StringSearch;->getMask(I)I

    move-result v1

    .line 449
    iget v3, p0, Lcom/ibm/icu/text/StringSearch;->ceMask_:I

    if-eq v3, v1, :cond_3

    .line 450
    iput v1, p0, Lcom/ibm/icu/text/StringSearch;->ceMask_:I

    const/4 v0, 0x0

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v1

    .line 455
    iget-boolean v3, p0, Lcom/ibm/icu/text/StringSearch;->toShift_:Z

    if-eq v3, v1, :cond_4

    .line 456
    iput-boolean v1, p0, Lcom/ibm/icu/text/StringSearch;->toShift_:Z

    const/4 v0, 0x0

    .line 460
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v1

    .line 461
    iget v3, p0, Lcom/ibm/icu/text/StringSearch;->variableTop_:I

    if-eq v3, v1, :cond_5

    .line 462
    iput v1, p0, Lcom/ibm/icu/text/StringSearch;->variableTop_:I

    const/4 v0, 0x0

    :cond_5
    if-nez v0, :cond_6

    .line 467
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initialize()V

    .line 470
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 472
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 473
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 474
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v4, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 475
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v4, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 476
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    sget-object v1, Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    iput-object v1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->elementComparisonType_:Lcom/ibm/icu/text/SearchIterator$ElementComparisonType;

    .line 477
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 478
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Lcom/ibm/icu/text/SearchIterator$Search;->reset_:Z

    return-void
.end method

.method public setCanonical(Z)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iput-boolean p1, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    return-void
.end method

.method public setCollator(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 320
    iput-object p1, p0, Lcom/ibm/icu/text/StringSearch;->collator_:Lcom/ibm/icu/text/RuleBasedCollator;

    .line 321
    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/StringSearch;->getMask(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/StringSearch;->ceMask_:I

    .line 323
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, v1, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    .line 325
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-object v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->internalBreakIter_:Lcom/ibm/icu/text/BreakIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 327
    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/text/StringSearch;->toShift_:Z

    .line 328
    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/StringSearch;->variableTop_:I

    .line 329
    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    .line 330
    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V

    iput-object v0, p0, Lcom/ibm/icu/text/StringSearch;->utilIter_:Lcom/ibm/icu/text/CollationElementIterator;

    .line 333
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initialize()V

    return-void

    .line 318
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Collator can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndex(I)V
    .locals 1

    .line 421
    invoke-super {p0, p1}, Lcom/ibm/icu/text/SearchIterator;->setIndex(I)V

    .line 422
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    return-void
.end method

.method protected setMatchNotFound()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 843
    invoke-super {p0}, Lcom/ibm/icu/text/SearchIterator;->setMatchNotFound()V

    .line 847
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Lcom/ibm/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch;->search_:Lcom/ibm/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Lcom/ibm/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CollationElementIterator;->setOffset(I)V

    :goto_0
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->pattern_:Lcom/ibm/icu/text/StringSearch$Pattern;

    iput-object p1, v0, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch;->initialize()V

    return-void

    .line 356
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pattern to search for can not be null or of length 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 1

    .line 394
    invoke-super {p0, p1}, Lcom/ibm/icu/text/SearchIterator;->setTarget(Ljava/text/CharacterIterator;)V

    .line 395
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch;->textIter_:Lcom/ibm/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
