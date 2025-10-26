.class public final Lcom/ibm/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;,
        Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;,
        Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;,
        Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CANON_HAS_COMPOSITIONS:I = 0x40000000

.field private static final CANON_HAS_SET:I = 0x200000

.field private static final CANON_NOT_SEGMENT_STARTER:I = -0x80000000

.field private static final CANON_VALUE_MASK:I = 0x1fffff

.field public static final COMP_1_LAST_TUPLE:I = 0x8000

.field public static final COMP_1_TRAIL_LIMIT:I = 0x3400

.field public static final COMP_1_TRAIL_MASK:I = 0x7ffe

.field public static final COMP_1_TRAIL_SHIFT:I = 0x9

.field public static final COMP_1_TRIPLE:I = 0x1

.field public static final COMP_2_TRAIL_MASK:I = 0xffc0

.field public static final COMP_2_TRAIL_SHIFT:I = 0x6

.field private static final DATA_FORMAT:I = 0x4e726d32

.field public static final DELTA_SHIFT:I = 0x3

.field public static final DELTA_TCCC_0:I = 0x0

.field public static final DELTA_TCCC_1:I = 0x2

.field public static final DELTA_TCCC_GT_1:I = 0x4

.field public static final DELTA_TCCC_MASK:I = 0x6

.field public static final HAS_COMP_BOUNDARY_AFTER:I = 0x1

.field public static final INERT:I = 0x1

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

.field public static final IX_COUNT:I = 0x14

.field public static final IX_EXTRA_DATA_OFFSET:I = 0x1

.field public static final IX_LIMIT_NO_NO:I = 0xc

.field public static final IX_MIN_COMP_NO_MAYBE_CP:I = 0x9

.field public static final IX_MIN_DECOMP_NO_CP:I = 0x8

.field public static final IX_MIN_LCCC_CP:I = 0x12

.field public static final IX_MIN_MAYBE_YES:I = 0xd

.field public static final IX_MIN_NO_NO:I = 0xb

.field public static final IX_MIN_NO_NO_COMP_BOUNDARY_BEFORE:I = 0xf

.field public static final IX_MIN_NO_NO_COMP_NO_MAYBE_CC:I = 0x10

.field public static final IX_MIN_NO_NO_EMPTY:I = 0x11

.field public static final IX_MIN_YES_NO:I = 0xa

.field public static final IX_MIN_YES_NO_MAPPINGS_ONLY:I = 0xe

.field public static final IX_NORM_TRIE_OFFSET:I = 0x0

.field public static final IX_RESERVED3_OFFSET:I = 0x3

.field public static final IX_SMALL_FCD_OFFSET:I = 0x2

.field public static final IX_TOTAL_SIZE:I = 0x7

.field public static final JAMO_L:I = 0x2

.field public static final JAMO_VT:I = 0xfe00

.field public static final MAPPING_HAS_CCC_LCCC_WORD:I = 0x80

.field public static final MAPPING_HAS_RAW_MAPPING:I = 0x40

.field public static final MAPPING_LENGTH_MASK:I = 0x1f

.field public static final MAX_DELTA:I = 0x40

.field public static final MIN_NORMAL_MAYBE_YES:I = 0xfc00

.field public static final MIN_YES_YES_WITH_CC:I = 0xfe02

.field public static final OFFSET_SHIFT:I = 0x1

.field private static final segmentStarterMapper:Lcom/ibm/icu/util/CodePointMap$ValueFilter;


# instance fields
.field private canonIterData:Lcom/ibm/icu/util/CodePointTrie;

.field private canonStartSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field

.field private centerNoNoDelta:I

.field private dataVersion:Lcom/ibm/icu/util/VersionInfo;

.field private extraData:Ljava/lang/String;

.field private limitNoNo:I

.field private maybeYesCompositions:Ljava/lang/String;

.field private minCompNoMaybeCP:I

.field private minDecompNoCP:I

.field private minLcccCP:I

.field private minMaybeYes:I

.field private minNoNo:I

.field private minNoNoCompBoundaryBefore:I

.field private minNoNoCompNoMaybeCC:I

.field private minNoNoEmpty:I

.field private minYesNo:I

.field private minYesNoMappingsOnly:I

.field private normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

.field private smallFCD:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 448
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl$1;)V

    sput-object v0, Lcom/ibm/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    .line 574
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/Normalizer2Impl;->segmentStarterMapper:Lcom/ibm/icu/util/CodePointMap$ValueFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addComposites(ILcom/ibm/icu/text/UnicodeSet;)V
    .locals 4

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 1926
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 1929
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, -0xffc1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x2

    .line 1930
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    :goto_0
    shr-int/lit8 v2, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1935
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->addComposites(ILcom/ibm/icu/text/UnicodeSet;)V

    .line 1937
    :cond_2
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void
.end method

.method private addToStartSet(Lcom/ibm/icu/util/MutableCodePointTrie;II)V
    .locals 4

    .line 2235
    invoke-virtual {p1, p3}, Lcom/ibm/icu/util/MutableCodePointTrie;->get(I)I

    move-result v0

    const v1, 0x3fffff

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    or-int/2addr p2, v0

    .line 2239
    invoke-virtual {p1, p3, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->set(II)V

    goto :goto_1

    :cond_0
    const/high16 v1, 0x200000

    and-int v2, v0, v1

    const v3, 0x1fffff

    if-nez v2, :cond_1

    and-int v2, v0, v3

    const/high16 v3, -0x200000

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 2245
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    or-int/2addr v0, v1

    .line 2246
    invoke-virtual {p1, p3, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;->set(II)V

    .line 2247
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    new-instance p3, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p3}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 2249
    invoke-virtual {p3, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 2252
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    and-int p3, v0, v3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/ibm/icu/text/UnicodeSet;

    .line 2254
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :goto_1
    return-void
.end method

.method private static combine(Ljava/lang/String;II)I
    .locals 3

    const/16 v0, 0x3400

    if-ge p2, v0, :cond_2

    shl-int/lit8 p2, p2, 0x1

    .line 1879
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le p2, v0, :cond_0

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0x7ffe

    if-ne p2, v1, :cond_6

    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 1884
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p2

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 1886
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_2
    shr-int/lit8 v1, p2, 0x9

    and-int/lit8 v1, v1, -0x2

    add-int/2addr v1, v0

    shl-int/lit8 p2, p2, 0x6

    const v0, 0xffff

    and-int/2addr p2, v0

    .line 1896
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v1, v0, :cond_3

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    and-int/lit16 v2, v0, 0x7ffe

    if-ne v1, v2, :cond_6

    add-int/lit8 v2, p1, 0x1

    .line 1899
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le p2, v2, :cond_5

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_5
    const v0, 0xffc0

    and-int/2addr v0, v2

    if-ne p2, v0, :cond_6

    const p2, -0xffc1

    and-int/2addr p2, v2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x2

    .line 1906
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p2

    return p0

    :cond_6
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method private decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 9

    .line 1817
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p2, v0, :cond_1

    .line 1818
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    invoke-static {p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    return-void

    .line 1823
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 1824
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result p2

    .line 1826
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_2

    .line 1828
    invoke-virtual {p3, p1, v1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_2

    .line 1829
    :cond_2
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    shr-int/lit8 p1, p2, 0x1

    .line 1835
    iget-object p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    and-int/lit8 v0, p2, 0x1f

    shr-int/lit8 v8, p2, 0x8

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_4

    .line 1840
    iget-object p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    shr-int/lit8 v1, p2, 0x8

    move v7, v1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v4, p1, 0x1

    .line 1845
    iget-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v5, v4, v0

    const/4 v6, 0x1

    move-object v2, p3

    invoke-virtual/range {v2 .. v8}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIZII)V

    goto :goto_2

    .line 1831
    :cond_5
    :goto_1
    invoke-static {p1, p3}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    :goto_2
    return-void
.end method

.method private decomposeShort(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 3

    :cond_0
    if-ge p2, p3, :cond_3

    .line 1799
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz p4, :cond_1

    .line 1800
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-ge v0, v1, :cond_1

    return p2

    .line 1803
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    if-eqz p4, :cond_2

    .line 1804
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return p2

    .line 1807
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    .line 1808
    invoke-direct {p0, v0, v1, p6}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    if-eqz p4, :cond_0

    .line 1809
    invoke-direct {p0, v1, p5}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return p2
.end method

.method private findNextCompBoundary(Ljava/lang/CharSequence;IIZ)I
    .locals 3

    :cond_0
    if-ge p2, p3, :cond_2

    .line 2185
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2186
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v1

    .line 2187
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2190
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 2191
    invoke-direct {p0, v1, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private findNextFCDBoundary(Ljava/lang/CharSequence;II)I
    .locals 3

    :cond_0
    if-ge p2, p3, :cond_2

    .line 2214
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2216
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2219
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 2220
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private findPreviousCompBoundary(Ljava/lang/CharSequence;IZ)I
    .locals 3

    :cond_0
    if-lez p2, :cond_2

    .line 2171
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2172
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    .line 2173
    invoke-direct {p0, v1, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2176
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr p2, v2

    .line 2177
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I
    .locals 3

    :cond_0
    if-lez p2, :cond_2

    .line 2200
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2202
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2205
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 2206
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return p2
.end method

.method private getCCFromNoNo(I)I
    .locals 1

    shr-int/lit8 p1, p1, 0x1

    .line 1725
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static getCCFromNormalYesOrMaybe(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getCCFromYesOrMaybe(I)I
    .locals 1

    const v0, 0xfc00

    if-lt p0, v0, :cond_0

    .line 722
    invoke-static {p0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCompositionsList(I)I
    .locals 1

    .line 1784
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result p1

    goto :goto_0

    .line 1786
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getCompositionsListForComposite(I)I
    .locals 2

    .line 1769
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    const v1, 0xfc00

    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    shr-int/lit8 p1, v1, 0x1

    .line 1770
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 v0, v0, 0x1f

    add-int/2addr p1, v0

    return p1
.end method

.method private getCompositionsListForDecompYes(I)I
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const v0, 0xfc00

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 1755
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr p1, v1

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    :cond_1
    shr-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private getCompositionsListForMaybe(I)I
    .locals 1

    .line 1777
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getPreviousTrailCC(Ljava/lang/CharSequence;II)I
    .locals 0

    if-ne p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2231
    :cond_0
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p1

    return p1
.end method

.method private hangulLVT()I
    .locals 1

    .line 1688
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasCompBoundaryAfter(Ljava/lang/CharSequence;IIZ)Z
    .locals 0

    if-eq p2, p3, :cond_1

    .line 2161
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hasCompBoundaryBefore(II)Z
    .locals 1

    .line 2148
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z
    .locals 0

    if-eq p2, p3, :cond_1

    .line 2154
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isCompYesAndZeroCC(I)Z
    .locals 1

    .line 1693
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDecompNoAlgorithmic(I)Z
    .locals 1

    .line 1716
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDecompYesAndZeroCC(I)Z
    .locals 1

    .line 1704
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    const v0, 0xfe00

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_0

    const v0, 0xfc00

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isHangulLV(I)Z
    .locals 1

    .line 1689
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHangulLVT(I)Z
    .locals 1

    .line 1691
    invoke-direct {p0}, Lcom/ibm/icu/impl/Normalizer2Impl;->hangulLVT()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isInert(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isJamoL(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJamoVT(I)Z
    .locals 1

    const v0, 0xfe00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMaybe(I)Z
    .locals 1

    .line 1683
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_0

    const v0, 0xfe00

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMaybeOrNonZeroCC(I)Z
    .locals 1

    .line 1684
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMostDecompYesAndZeroCC(I)Z
    .locals 1

    .line 1714
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    const v0, 0xfc00

    if-eq p1, v0, :cond_1

    const v0, 0xfe00

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isTrailCC01ForCompBoundaryAfter(I)Z
    .locals 2

    .line 2165
    invoke-static {p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x6

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    shr-int/2addr p1, v1

    .line 2166
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private mapAlgorithmic(II)I
    .locals 0

    shr-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    .line 1742
    iget p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->centerNoNoDelta:I

    sub-int/2addr p1, p2

    return p1
.end method

.method private norm16HasCompBoundaryAfter(IZ)Z
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2158
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isTrailCC01ForCompBoundaryAfter(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private norm16HasCompBoundaryBefore(I)Z
    .locals 1

    .line 2151
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private recompose(Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V
    .locals 15

    move-object v0, p0

    .line 1952
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1954
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move/from16 v3, p2

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 1973
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v10

    .line 1974
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v3, v11

    .line 1975
    invoke-virtual {p0, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v11

    .line 1976
    invoke-static {v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v12

    .line 1978
    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    move-result v13

    const v14, 0xffff

    if-eqz v13, :cond_9

    if-ltz v6, :cond_9

    if-lt v7, v12, :cond_1

    if-nez v7, :cond_9

    .line 1984
    :cond_1
    invoke-static {v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v6, 0x11a7

    if-ge v10, v6, :cond_3

    .line 1988
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    add-int/lit16 v11, v11, -0x1100

    int-to-char v11, v11

    const/16 v12, 0x13

    if-ge v11, v12, :cond_3

    add-int/lit8 v12, v3, -0x1

    const v13, 0xac00

    mul-int/lit8 v11, v11, 0x15

    add-int/lit16 v10, v10, -0x1161

    add-int/2addr v11, v10

    const/16 v10, 0x1c

    mul-int/lit8 v11, v11, 0x1c

    add-int/2addr v11, v13

    int-to-char v11, v11

    .line 1996
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eq v3, v13, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    sub-int/2addr v13, v6

    int-to-char v6, v13

    if-ge v6, v10, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v11, v6

    int-to-char v11, v11

    .line 2000
    :cond_2
    invoke-virtual {v1, v9, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2002
    invoke-virtual {v1, v12, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v3, v12

    .line 2012
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v3, v6, :cond_d

    goto/16 :goto_3

    .line 2017
    :cond_4
    iget-object v13, v0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-static {v13, v6, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result v13

    if-ltz v13, :cond_9

    shr-int/lit8 v6, v13, 0x1

    .line 2022
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    sub-int v11, v3, v11

    .line 2023
    invoke-virtual {v1, v11, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_6

    if-le v6, v14, :cond_5

    .line 2029
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 2030
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v10

    invoke-virtual {v1, v3, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_5
    int-to-char v3, v10

    .line 2032
    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 2033
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    move v3, v11

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    if-le v6, v14, :cond_7

    .line 2043
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 2044
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v8

    invoke-virtual {v1, v3, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move v3, v11

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    int-to-char v3, v6

    .line 2048
    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    move v3, v11

    .line 2053
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ne v3, v10, :cond_8

    goto :goto_3

    :cond_8
    and-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_d

    .line 2059
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v6

    goto/16 :goto_0

    .line 2071
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v3, v7, :cond_a

    .line 2093
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    return-void

    :cond_a
    if-nez v12, :cond_c

    .line 2078
    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v6

    if-ltz v6, :cond_e

    if-gt v10, v14, :cond_b

    add-int/lit8 v9, v3, -0x1

    move v7, v12

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v9, v3, -0x2

    move v7, v12

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz p3, :cond_e

    move v7, v12

    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_e
    move v7, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public addCanonIterPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 4

    .line 565
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Normalizer2Impl;->ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 568
    new-instance v0, Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-direct {v0}, Lcom/ibm/icu/util/CodePointMap$Range;-><init>()V

    const/4 v1, 0x0

    .line 569
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/util/CodePointTrie;

    sget-object v3, Lcom/ibm/icu/impl/Normalizer2Impl;->segmentStarterMapper:Lcom/ibm/icu/util/CodePointMap$ValueFilter;

    invoke-virtual {v2, v1, v3, v0}, Lcom/ibm/icu/util/CodePointTrie;->getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 571
    invoke-virtual {v0}, Lcom/ibm/icu/util/CodePointMap$Range;->getEnd()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addLcccChars(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 8

    .line 515
    new-instance v6, Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-direct {v6}, Lcom/ibm/icu/util/CodePointMap$Range;-><init>()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    sget-object v2, Lcom/ibm/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, v7

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->getRange(ILcom/ibm/icu/util/CodePointMap$RangeOption;ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-virtual {v6}, Lcom/ibm/icu/util/CodePointMap$Range;->getEnd()I

    move-result v0

    .line 519
    invoke-virtual {v6}, Lcom/ibm/icu/util/CodePointMap$Range;->getValue()I

    move-result v1

    const v2, 0xfc00

    if-le v1, v2, :cond_0

    const v2, 0xfe00

    if-eq v1, v2, :cond_0

    .line 521
    invoke-virtual {p1, v7, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    .line 522
    :cond_0
    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    if-gt v2, v1, :cond_1

    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-ge v1, v2, :cond_1

    .line 523
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 524
    invoke-virtual {p1, v7, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    :goto_1
    add-int/lit8 v7, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 8

    .line 533
    new-instance v6, Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-direct {v6}, Lcom/ibm/icu/util/CodePointMap$Range;-><init>()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    sget-object v2, Lcom/ibm/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, v7

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->getRange(ILcom/ibm/icu/util/CodePointMap$RangeOption;ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {v6}, Lcom/ibm/icu/util/CodePointMap$Range;->getEnd()I

    move-result v0

    .line 537
    invoke-virtual {v6}, Lcom/ibm/icu/util/CodePointMap$Range;->getValue()I

    move-result v1

    .line 538
    invoke-virtual {p1, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    if-eq v7, v0, :cond_1

    .line 539
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, 0x6

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 543
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    if-gt v7, v0, :cond_1

    .line 545
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 547
    invoke-virtual {p1, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v0, 0x1

    goto :goto_0

    :cond_2
    const v0, 0xac00

    :goto_2
    const v1, 0xd7a4

    if-ge v0, v1, :cond_3

    .line 557
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v1, v0, 0x1

    .line 558
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v0, v0, 0x1c

    goto :goto_2

    .line 560
    :cond_3
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    .line 1100
    iget v12, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    move/from16 v0, p2

    :goto_0
    move v1, v0

    :goto_1
    const/4 v2, 0x1

    if-ne v0, v9, :cond_1

    if-eq v1, v9, :cond_0

    if-eqz p5, :cond_0

    .line 1111
    invoke-virtual {v11, v8, v1, v9}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_0
    return v2

    .line 1115
    :cond_1
    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_21

    iget-object v4, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    .line 1116
    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->bmpGet(I)I

    move-result v4

    invoke-direct {v7, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v5, v0, 0x1

    .line 1121
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    if-eq v5, v9, :cond_1b

    .line 1125
    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1b

    add-int/lit8 v5, v5, 0x1

    int-to-char v3, v3

    .line 1127
    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 1128
    iget-object v4, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->suppGet(I)I

    move-result v4

    .line 1129
    invoke-direct {v7, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1143
    :goto_2
    invoke-direct {v7, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v6

    const/4 v13, 0x0

    if-nez v6, :cond_c

    if-nez p5, :cond_4

    return v13

    .line 1149
    :cond_4
    invoke-direct {v7, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1152
    invoke-direct {v7, v4, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1153
    invoke-direct {v7, v8, v5, v9}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_5
    if-eq v1, v0, :cond_6

    .line 1155
    invoke-virtual {v11, v8, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1157
    :cond_6
    invoke-direct {v7, v3, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v0

    invoke-virtual {v11, v0, v13}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto/16 :goto_4

    .line 1161
    :cond_7
    iget v2, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoCompBoundaryBefore:I

    if-ge v4, v2, :cond_a

    .line 1163
    invoke-direct {v7, v4, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1164
    invoke-direct {v7, v8, v5, v9}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_8
    if-eq v1, v0, :cond_9

    .line 1166
    invoke-virtual {v11, v8, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_9
    shr-int/lit8 v0, v4, 0x1

    .line 1169
    iget-object v1, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 1170
    iget-object v1, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v11, v1, v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto/16 :goto_4

    .line 1174
    :cond_a
    iget v2, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoEmpty:I

    if-lt v4, v2, :cond_1c

    .line 1178
    invoke-direct {v7, v8, v5, v9}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1179
    invoke-direct {v7, v8, v1, v0, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(Ljava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_b
    if-eq v1, v0, :cond_14

    .line 1181
    invoke-virtual {v11, v8, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_4

    .line 1189
    :cond_c
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v6

    if-eqz v6, :cond_15

    if-eq v1, v0, :cond_15

    add-int/lit8 v2, v0, -0x1

    .line 1190
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x11a7

    if-ge v3, v6, :cond_11

    add-int/lit16 v2, v2, -0x1100

    int-to-char v2, v2

    const/16 v14, 0x13

    if-ge v2, v14, :cond_1c

    if-nez p5, :cond_d

    return v13

    :cond_d
    const/16 v14, 0x1c

    if-eq v5, v9, :cond_e

    .line 1201
    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    sub-int/2addr v15, v6

    if-lez v15, :cond_e

    if-ge v15, v14, :cond_e

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1205
    :cond_e
    invoke-direct {v7, v8, v5, v9}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v15, 0x0

    goto :goto_3

    :cond_f
    const/4 v15, -0x1

    :goto_3
    if-ltz v15, :cond_1c

    const v4, 0xac00

    mul-int/lit8 v2, v2, 0x15

    add-int/lit16 v3, v3, -0x1161

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v2, v4

    add-int/2addr v2, v15

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_10

    .line 1217
    invoke-virtual {v11, v8, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_10
    int-to-char v0, v2

    .line 1219
    invoke-virtual {v11, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_4

    .line 1231
    :cond_11
    invoke-static {v2}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isHangulLV(I)Z

    move-result v14

    if-eqz v14, :cond_1c

    if-nez p5, :cond_12

    return v13

    :cond_12
    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_13

    .line 1240
    invoke-virtual {v11, v8, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_13
    int-to-char v0, v2

    .line 1242
    invoke-virtual {v11, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_14
    :goto_4
    move v0, v5

    goto/16 :goto_0

    :cond_15
    const v3, 0xfe00

    if-le v4, v3, :cond_1c

    .line 1252
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v3

    if-eqz v10, :cond_16

    .line 1253
    invoke-direct {v7, v8, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getPreviousTrailCC(Ljava/lang/CharSequence;II)I

    move-result v6

    if-le v6, v3, :cond_16

    if-nez p5, :cond_1c

    return v13

    :cond_16
    :goto_5
    if-ne v5, v9, :cond_18

    if-eqz p5, :cond_17

    .line 1265
    invoke-virtual {v11, v8, v1, v9}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_17
    return v2

    .line 1270
    :cond_18
    invoke-static {v8, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 1271
    iget-object v14, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v14, v6}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v14

    const v15, 0xfe02

    if-lt v14, v15, :cond_1a

    .line 1273
    invoke-static {v14}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v15

    if-le v3, v15, :cond_19

    if-nez p5, :cond_1a

    return v13

    .line 1283
    :cond_19
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v15

    goto :goto_5

    .line 1287
    :cond_1a
    invoke-direct {v7, v14}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1288
    invoke-direct {v7, v14}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1289
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v5

    goto/16 :goto_1

    :cond_1b
    move v0, v5

    goto/16 :goto_1

    :cond_1c
    move v14, v5

    if-eq v1, v0, :cond_1d

    .line 1299
    invoke-direct {v7, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1300
    invoke-static {v8, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1301
    iget-object v3, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v3

    .line 1302
    invoke-direct {v7, v3, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1303
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_1d
    move v15, v0

    if-eqz p5, :cond_1e

    if-eq v1, v15, :cond_1e

    .line 1307
    invoke-virtual {v11, v8, v1, v15}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1309
    :cond_1e
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v5, p4

    move v13, v6

    move-object/from16 v6, p6

    .line 1311
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    const/4 v4, 0x1

    move v2, v14

    move/from16 v3, p3

    .line 1314
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v1

    .line 1316
    invoke-direct {v7, v11, v13, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->recompose(Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    if-nez p5, :cond_20

    .line 1318
    invoke-virtual {v11, v8, v15, v1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->equals(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    return v0

    .line 1321
    :cond_1f
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    :cond_20
    move v0, v1

    goto/16 :goto_1

    :cond_21
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public composeAndAppend(Ljava/lang/CharSequence;ZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 11

    .line 1440
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1441
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1442
    invoke-direct {p0, p1, v1, v3, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1445
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    .line 1444
    invoke-direct {p0, v2, v4, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 1446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1448
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v4, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1449
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p4, v4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1450
    invoke-virtual {v5, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1451
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v9, 0x1

    move-object v4, p0

    move v8, p3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v6, p4

    .line 1456
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    goto :goto_1

    .line 1458
    :cond_1
    invoke-virtual {p4, p1, v2, v3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_1
    return-void
.end method

.method public composePair(II)I
    .locals 5

    .line 2097
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 2099
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    .line 2101
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    const v3, 0xfc00

    if-ge v0, v1, :cond_5

    .line 2103
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isJamoL(I)Z

    move-result v1

    const/16 v4, 0x1c

    if-eqz v1, :cond_2

    add-int/lit16 p2, p2, -0x1161

    if-ltz p2, :cond_1

    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    const v1, 0xac00

    add-int/lit16 p1, p1, -0x1100

    mul-int/lit8 p1, p1, 0x15

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x1c

    add-int/2addr p1, v1

    return p1

    :cond_1
    return v2

    .line 2113
    :cond_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit16 p2, p2, -0x11a7

    if-lez p2, :cond_3

    if-ge p2, v4, :cond_3

    add-int/2addr p1, p2

    return p1

    :cond_3
    return v2

    .line 2122
    :cond_4
    iget p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr v3, p1

    add-int/2addr v3, v0

    shr-int/lit8 p1, v3, 0x1

    .line 2123
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v0, v1, :cond_7

    .line 2124
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    .line 2126
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    goto :goto_0

    .line 2129
    :cond_5
    iget p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v0, p1, :cond_9

    if-gt v3, v0, :cond_6

    goto :goto_1

    .line 2132
    :cond_6
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForMaybe(I)I

    move-result p1

    :cond_7
    :goto_0
    if-ltz p2, :cond_9

    const v0, 0x10ffff

    if-ge v0, p2, :cond_8

    goto :goto_1

    .line 2137
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    return p1

    :cond_9
    :goto_1
    return v2
.end method

.method public composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I
    .locals 8

    .line 1339
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    const/4 v1, 0x0

    move v1, p2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ne p2, p3, :cond_0

    shl-int/lit8 p1, p2, 0x1

    :goto_1
    or-int/2addr p1, v2

    return p1

    .line 1351
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-lt v4, v0, :cond_d

    iget-object v5, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    .line 1352
    invoke-virtual {v5, v4}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->bmpGet(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v6, p2, 0x1

    .line 1357
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    if-eq v6, p3, :cond_c

    .line 1361
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_c

    add-int/lit8 v6, v6, 0x1

    int-to-char v4, v4

    .line 1363
    invoke-static {v4, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 1364
    iget-object v5, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v5, v4}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->suppGet(I)I

    move-result v5

    .line 1365
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v4

    if-nez v4, :cond_c

    :goto_2
    if-eq v1, p2, :cond_4

    .line 1381
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1382
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1383
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v4

    .line 1384
    invoke-direct {p0, v4, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1385
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int v1, p2, v1

    goto :goto_3

    :cond_3
    move v1, p2

    :cond_4
    const/4 v4, 0x1

    .line 1391
    :goto_3
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1392
    invoke-static {v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p2

    if-eqz p4, :cond_5

    if-eqz p2, :cond_5

    .line 1394
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(I)I

    move-result v4

    if-le v4, p2, :cond_5

    goto :goto_7

    :cond_5
    :goto_4
    const v4, 0xfe02

    if-ge v5, v4, :cond_7

    if-nez p5, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    shl-int/lit8 p1, v1, 0x1

    return p1

    :cond_7
    :goto_5
    if-ne v6, p3, :cond_8

    shl-int/lit8 p1, v6, 0x1

    goto/16 :goto_1

    .line 1413
    :cond_8
    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1414
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v5

    .line 1415
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1416
    invoke-static {v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v7

    if-le p2, v7, :cond_9

    if-eqz v7, :cond_9

    goto :goto_6

    .line 1423
    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr v6, p2

    move p2, v7

    goto :goto_4

    .line 1426
    :cond_a
    :goto_6
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1428
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p2, v6

    move v1, v6

    goto/16 :goto_0

    :cond_b
    :goto_7
    shl-int/lit8 p1, v1, 0x1

    return p1

    :cond_c
    move p2, v6

    goto/16 :goto_0

    :cond_d
    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method

.method public decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 10

    .line 998
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    move v6, p2

    :goto_1
    if-eq v6, p3, :cond_4

    .line 1011
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v0, :cond_3

    iget-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    .line 1012
    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->bmpGet(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 1015
    :cond_0
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v6, 0x1

    if-eq v7, p3, :cond_2

    .line 1019
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_2

    int-to-char v3, v3

    .line 1020
    invoke-static {v3, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 1021
    iget-object v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->suppGet(I)I

    move-result v4

    .line 1022
    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eq v6, p2, :cond_6

    if-eqz p4, :cond_5

    .line 1035
    invoke-virtual {p4, p1, p2, v6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_4

    :cond_5
    move v2, v6

    const/4 v5, 0x0

    :cond_6
    :goto_4
    if-ne v6, p3, :cond_7

    return v6

    .line 1046
    :cond_7
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p2, v6

    if-eqz p4, :cond_8

    .line 1048
    invoke-direct {p0, v3, v4, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    goto :goto_0

    .line 1050
    :cond_8
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1051
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v6

    if-le v5, v6, :cond_9

    if-nez v6, :cond_b

    :cond_9
    const/4 v5, 0x1

    if-gt v6, v5, :cond_a

    move v2, p2

    :cond_a
    move v5, v6

    goto :goto_0

    :cond_b
    return v2
.end method

.method public decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;
    .locals 6

    .line 975
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    return-object p2
.end method

.method public decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V
    .locals 1

    if-gez p5, :cond_0

    sub-int p5, p3, p2

    :cond_0
    const/4 v0, 0x0

    .line 988
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 989
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    invoke-direct {v0, p0, p4, p5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 990
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void
.end method

.method public decomposeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 11

    .line 1066
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1071
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void

    .line 1075
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 1078
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v8

    move v2, v8

    move v3, v2

    :goto_0
    if-eqz v2, :cond_3

    .line 1081
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr v1, p2

    if-lt v1, v0, :cond_2

    move v9, v2

    goto :goto_1

    .line 1085
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 1086
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v3

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_0

    :cond_3
    move v9, v3

    :goto_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    move-object v4, p1

    move v6, v1

    .line 1088
    invoke-virtual/range {v3 .. v9}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIZII)V

    .line 1089
    invoke-virtual {p3, p1, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    return-void
.end method

.method public declared-synchronized ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 13

    monitor-enter p0

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/util/CodePointTrie;

    if-nez v0, :cond_b

    .line 601
    new-instance v0, Lcom/ibm/icu/util/MutableCodePointTrie;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/util/MutableCodePointTrie;-><init>(II)V

    .line 602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    .line 604
    new-instance v2, Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-direct {v2}, Lcom/ibm/icu/util/CodePointMap$Range;-><init>()V

    .line 605
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    sget-object v5, Lcom/ibm/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v4, v1

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->getRange(ILcom/ibm/icu/util/CodePointMap$RangeOption;ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 607
    invoke-virtual {v2}, Lcom/ibm/icu/util/CodePointMap$Range;->getEnd()I

    move-result v3

    .line 608
    invoke-virtual {v2}, Lcom/ibm/icu/util/CodePointMap$Range;->getValue()I

    move-result v4

    .line 609
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v5

    if-nez v5, :cond_9

    iget v5, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v5, v4, :cond_0

    iget v5, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge v4, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    :goto_1
    if-gt v1, v3, :cond_9

    .line 620
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/MutableCodePointTrie;->get(I)I

    move-result v5

    .line 622
    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eqz v6, :cond_1

    or-int v6, v5, v8

    const v8, 0xfc00

    if-ge v4, v8, :cond_7

    or-int/2addr v6, v7

    goto/16 :goto_5

    .line 628
    :cond_1
    iget v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v4, v6, :cond_2

    or-int v6, v5, v7

    goto :goto_5

    .line 635
    :cond_2
    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 637
    invoke-direct {p0, v1, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v6

    .line 638
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v7

    goto :goto_2

    :cond_3
    move v6, v1

    move v7, v4

    .line 642
    :goto_2
    iget v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v7, v9, :cond_6

    shr-int/lit8 v9, v7, 0x1

    .line 645
    iget-object v10, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit8 v11, v10, 0x1f

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_4

    if-ne v1, v6, :cond_4

    .line 648
    iget-object v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_4

    or-int v6, v5, v8

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    if-eqz v11, :cond_7

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v11, v9

    .line 657
    iget-object v10, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 658
    invoke-direct {p0, v0, v1, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->addToStartSet(Lcom/ibm/icu/util/MutableCodePointTrie;II)V

    .line 662
    iget v12, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v7, v12, :cond_7

    .line 663
    :cond_5
    :goto_4
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v9, v7

    if-ge v9, v11, :cond_7

    .line 664
    iget-object v7, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 665
    invoke-virtual {v0, v10}, Lcom/ibm/icu/util/MutableCodePointTrie;->get(I)I

    move-result v7

    and-int v12, v7, v8

    if-nez v12, :cond_5

    or-int/2addr v7, v8

    .line 667
    invoke-virtual {v0, v10, v7}, Lcom/ibm/icu/util/MutableCodePointTrie;->set(II)V

    goto :goto_4

    .line 674
    :cond_6
    invoke-direct {p0, v0, v1, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->addToStartSet(Lcom/ibm/icu/util/MutableCodePointTrie;II)V

    move v6, v5

    :cond_7
    :goto_5
    if-eq v6, v5, :cond_8

    .line 678
    invoke-virtual {v0, v1, v6}, Lcom/ibm/icu/util/MutableCodePointTrie;->set(II)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    :goto_6
    add-int/lit8 v1, v3, 0x1

    goto/16 :goto_0

    .line 683
    :cond_a
    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    sget-object v2, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/MutableCodePointTrie;->buildImmutable(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/util/CodePointTrie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_b
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public getCC(I)I
    .locals 1

    const v0, 0xfc00

    if-lt p1, v0, :cond_0

    .line 711
    invoke-static {p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result p1

    return p1

    .line 713
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 716
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNoNo(I)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCCFromYesOrMaybeCP(I)I
    .locals 1

    .line 725
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 726
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p1

    return p1
.end method

.method public getCanonStartSet(ILcom/ibm/icu/text/UnicodeSet;)Z
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/util/CodePointTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 886
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    const v1, 0x1fffff

    and-int/2addr v1, v0

    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 889
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 891
    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_2
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 894
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const v0, 0xac00

    add-int/lit16 p1, p1, -0x1100

    mul-int/lit16 p1, p1, 0x24c

    add-int/2addr p1, v0

    add-int/lit16 v0, p1, 0x24c

    sub-int/2addr v0, v1

    .line 897
    invoke-virtual {p2, p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    .line 899
    :cond_3
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsList(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->addComposites(ILcom/ibm/icu/text/UnicodeSet;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public getCompQuickCheck(I)I
    .locals 1

    .line 697
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_2

    const v0, 0xfe02

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 4

    .line 791
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 796
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 798
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 800
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v0

    move v2, p1

    .line 802
    :cond_1
    iget v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v0, v3, :cond_3

    if-gez v2, :cond_2

    return-object v1

    .line 806
    :cond_2
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 808
    :cond_3
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    shr-int/lit8 p1, v0, 0x1

    .line 816
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    .line 817
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr p1, v1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 810
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    .line 812
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public getFCD16(I)I
    .locals 2

    .line 735
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 738
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 740
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result p1

    return p1
.end method

.method public getFCD16FromNormData(I)I
    .locals 4

    .line 752
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 753
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    const v1, 0xfc00

    if-lt v0, v1, :cond_0

    .line 756
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result p1

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    return p1

    .line 758
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v0, v1, :cond_1

    return v2

    :cond_1
    and-int/lit8 v1, v0, 0x6

    const/4 v3, 0x2

    if-gt v1, v3, :cond_2

    shr-int/lit8 p1, v1, 0x1

    return p1

    .line 766
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 767
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v0

    .line 770
    :cond_3
    iget p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v0, p1, :cond_6

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    shr-int/lit8 p1, v0, 0x1

    .line 776
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr v1, p1

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method public getNorm16(I)I
    .locals 1

    .line 692
    invoke-static {p1}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 4

    .line 827
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 830
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 835
    :cond_1
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    shr-int/lit8 p1, v0, 0x1

    .line 840
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_4

    shr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 846
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_3

    .line 848
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int v1, v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 851
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x3

    .line 853
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 857
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 832
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->getRawDecomposition(ILjava/lang/Appendable;)V

    .line 834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRawNorm16(I)I
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result p1

    return p1
.end method

.method getTrailCCFromCompYesAndZeroCC(I)I
    .locals 1

    .line 1732
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    shr-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public hasCompBoundaryAfter(IZ)Z
    .locals 0

    .line 1670
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result p1

    return p1
.end method

.method public hasCompBoundaryBefore(I)Z
    .locals 1

    .line 1667
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasDecompBoundaryAfter(I)Z
    .locals 2

    .line 1630
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 1633
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1636
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result p1

    return p1
.end method

.method public hasDecompBoundaryBefore(I)Z
    .locals 1

    .line 1613
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-lt p1, v0, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1614
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasFCDBoundaryAfter(I)Z
    .locals 0

    .line 1680
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasDecompBoundaryAfter(I)Z

    move-result p1

    return p1
.end method

.method public hasFCDBoundaryBefore(I)Z
    .locals 0

    .line 1679
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasDecompBoundaryBefore(I)Z

    move-result p1

    return p1
.end method

.method public isAlgorithmicNoNo(I)Z
    .locals 1

    .line 705
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCanonSegmentStarter(I)Z
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/util/CodePointTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCompInert(IZ)Z
    .locals 2

    .line 1673
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    .line 1674
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 1676
    invoke-static {p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    shr-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x1ff

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isCompNo(I)Z
    .locals 1

    .line 706
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDecompInert(I)Z
    .locals 0

    .line 1664
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result p1

    return p1
.end method

.method public isDecompYes(I)Z
    .locals 1

    .line 707
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isFCDInert(I)Z
    .locals 1

    .line 1681
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Ljava/lang/String;)Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 0

    .line 510
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Normalizer2Impl;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 7

    const v0, 0x4e726d32

    .line 453
    :try_start_0
    sget-object v1, Lcom/ibm/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->dataVersion:Lcom/ibm/icu/util/VersionInfo;

    .line 454
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/16 v1, 0x12

    if-le v0, v1, :cond_3

    .line 458
    new-array v2, v0, [I

    mul-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    .line 459
    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 464
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/16 v0, 0x9

    .line 465
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    .line 466
    aget v0, v2, v1

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minLcccCP:I

    const/16 v0, 0xa

    .line 468
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    const/16 v0, 0xe

    .line 469
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    const/16 v0, 0xb

    .line 470
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    const/16 v0, 0xf

    .line 471
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoCompBoundaryBefore:I

    const/16 v0, 0x10

    .line 472
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    const/16 v0, 0x11

    .line 473
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoEmpty:I

    const/16 v0, 0xc

    .line 474
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/16 v0, 0xd

    .line 475
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x40

    sub-int/2addr v0, v3

    .line 477
    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->centerNoNoDelta:I

    .line 480
    aget v0, v2, v4

    .line 481
    aget v1, v2, v3

    .line 482
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 483
    invoke-static {p1}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->fromBinary(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie$Fast16;

    move-result-object v6

    iput-object v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/util/CodePointTrie$Fast16;

    .line 484
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int v0, v1, v0

    if-gt v6, v0, :cond_2

    sub-int/2addr v0, v6

    .line 488
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/4 v0, 0x2

    .line 492
    aget v2, v2, v0

    sub-int/2addr v2, v1

    .line 493
    div-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 495
    invoke-static {p1, v2, v4}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    const v1, 0xfc00

    .line 496
    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr v1, v2

    shr-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 501
    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    .line 502
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0

    .line 486
    :cond_2
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v0, "Normalizer2 data: not enough bytes for normTrie"

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_3
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v0, "Normalizer2 data: not enough indexes"

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 506
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v11, 0x0

    move/from16 v0, p2

    move v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    move v5, v0

    :goto_1
    const/16 v6, 0xff

    if-eq v5, v9, :cond_3

    .line 1482
    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget v12, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-ge v3, v12, :cond_0

    xor-int/lit8 v2, v3, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1485
    :cond_0
    invoke-virtual {v7, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v12

    if-nez v12, :cond_1

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto :goto_1

    .line 1489
    :cond_1
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v5, 0x1

    if-eq v4, v9, :cond_2

    .line 1491
    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v12

    if-eqz v12, :cond_2

    int-to-char v3, v3

    .line 1492
    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 1495
    :cond_2
    invoke-virtual {v7, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v4

    if-gt v4, v6, :cond_3

    .line 1497
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v5, v2

    move v2, v4

    goto :goto_1

    :cond_3
    move v12, v3

    move v13, v4

    const/4 v3, 0x1

    if-eq v5, v0, :cond_b

    if-ne v5, v9, :cond_4

    if-eqz v10, :cond_c

    .line 1507
    invoke-virtual {v10, v8, v0, v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_3

    :cond_4
    if-gez v2, :cond_6

    xor-int/lit8 v1, v2, -0x1

    .line 1516
    iget v2, v7, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-ge v1, v2, :cond_5

    move v2, v5

    const/4 v1, 0x0

    goto :goto_2

    .line 1519
    :cond_5
    invoke-virtual {v7, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v1

    if-le v1, v3, :cond_9

    add-int/lit8 v2, v5, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v5, -0x1

    .line 1526
    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ge v0, v1, :cond_7

    add-int/lit8 v4, v1, -0x1

    .line 1527
    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v1, v1, -0x1

    .line 1532
    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v2

    :cond_7
    if-le v2, v3, :cond_8

    move v15, v2

    move v2, v1

    move v1, v15

    goto :goto_2

    :cond_8
    move v1, v2

    :cond_9
    move v2, v5

    :goto_2
    if-eqz v10, :cond_a

    .line 1542
    invoke-virtual {v10, v8, v0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1543
    invoke-virtual {v10, v8, v2, v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_a
    move v4, v2

    move v0, v5

    move v2, v1

    goto :goto_4

    :cond_b
    if-ne v5, v9, :cond_d

    :cond_c
    :goto_3
    return v5

    :cond_d
    move v4, v1

    .line 1551
    :goto_4
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, v5

    and-int/2addr v2, v6

    shr-int/lit8 v5, v13, 0x8

    if-gt v2, v5, :cond_10

    and-int/lit16 v0, v13, 0xff

    if-gt v0, v3, :cond_e

    move v4, v1

    :cond_e
    if-eqz v10, :cond_f

    .line 1560
    invoke-virtual {v10, v12}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    :cond_f
    move v0, v1

    move v1, v4

    move v3, v12

    move v2, v13

    move v4, v2

    goto/16 :goto_0

    :cond_10
    if-nez v10, :cond_11

    return v4

    :cond_11
    sub-int/2addr v0, v4

    .line 1572
    invoke-virtual {v10, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1577
    invoke-direct {v7, v8, v1, v9}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v14

    move v4, v5

    move v5, v6

    move-object/from16 v6, p4

    .line 1582
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move v3, v12

    move v4, v13

    move v0, v14

    move v1, v0

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public makeFCDAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    .line 1590
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1591
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1592
    invoke-direct {p0, p1, v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1595
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    .line 1594
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1598
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1599
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p3, v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1600
    invoke-virtual {v4, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1601
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move v2, v1

    :cond_0
    if-eqz p2, :cond_1

    .line 1606
    invoke-virtual {p0, p1, v2, v0, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    goto :goto_0

    .line 1608
    :cond_1
    invoke-virtual {p3, p1, v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_0
    return-void
.end method

.method public norm16HasDecompBoundaryAfter(I)Z
    .locals 4

    .line 1639
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_9

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1642
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt p1, v0, :cond_5

    .line 1643
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0xfc00

    if-le p1, v0, :cond_2

    const v0, 0xfe00

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    and-int/lit8 p1, p1, 0x6

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_5
    shr-int/2addr p1, v1

    .line 1651
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x1ff

    if-le v0, v3, :cond_6

    return v2

    :cond_6
    const/16 v3, 0xff

    if-gt v0, v3, :cond_7

    return v1

    :cond_7
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 1662
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v0, 0xff00

    and-int/2addr p1, v0

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_2
    return v1
.end method

.method public norm16HasDecompBoundaryBefore(I)Z
    .locals 3

    .line 1617
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    .line 1620
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt p1, v0, :cond_3

    const v0, 0xfc00

    if-le p1, v0, :cond_2

    const v0, 0xfe00

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    shr-int/2addr p1, v1

    .line 1625
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 1627
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v0, 0xff00

    and-int/2addr p1, v0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public singleLeadMightHaveNonZeroFCD16(I)Z
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v1, p1, 0x8

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x7

    shr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
