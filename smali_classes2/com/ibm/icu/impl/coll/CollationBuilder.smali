.class public final Lcom/ibm/icu/impl/coll/CollationBuilder;
.super Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;
.source "CollationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationBuilder$CEFinalizer;,
        Lcom/ibm/icu/impl/coll/CollationBuilder$BundleImporter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMPOSITES:Lcom/ibm/icu/text/UnicodeSet;

.field private static final DEBUG:Z = false

.field private static final HAS_BEFORE2:I = 0x40

.field private static final HAS_BEFORE3:I = 0x20

.field private static final IS_TAILORED:I = 0x8

.field private static final MAX_INDEX:I = 0xfffff


# instance fields
.field private base:Lcom/ibm/icu/impl/coll/CollationTailoring;

.field private baseData:Lcom/ibm/icu/impl/coll/CollationData;

.field private ces:[J

.field private cesLength:I

.field private dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

.field private fastLatinEnabled:Z

.field private fcd:Lcom/ibm/icu/text/Normalizer2;

.field private nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

.field private nfd:Lcom/ibm/icu/text/Normalizer2;

.field private nodes:Lcom/ibm/icu/impl/coll/UVector64;

.field private optimizeSet:Lcom/ibm/icu/text/UnicodeSet;

.field private rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

.field private rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

.field private variableTop:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1068
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:NFD_QC=N:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->COMPOSITES:Lcom/ibm/icu/text/UnicodeSet;

    const v1, 0xac00

    const v2, 0xd7a3

    .line 1071
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/coll/CollationTailoring;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;-><init>()V

    .line 1501
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->optimizeSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 1503
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    .line 40
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    .line 41
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getFCDNormalizer2()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->fcd:Lcom/ibm/icu/text/Normalizer2;

    .line 42
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 43
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->base:Lcom/ibm/icu/impl/coll/CollationTailoring;

    .line 44
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    .line 45
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationRootElements;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/coll/CollationRootElements;-><init>([J)V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->variableTop:J

    .line 47
    new-instance p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 50
    new-instance p1, Lcom/ibm/icu/impl/coll/UVector32;

    invoke-direct {p1}, Lcom/ibm/icu/impl/coll/UVector32;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

    .line 51
    new-instance p1, Lcom/ibm/icu/impl/coll/UVector64;

    invoke-direct {p1}, Lcom/ibm/icu/impl/coll/UVector64;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    .line 52
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 53
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->initForTailoring(Lcom/ibm/icu/impl/coll/CollationData;)V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTempCE32(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(I)I
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->indexFromTempCE32(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(J)Z
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(J)I
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    move-result p0

    return p0
.end method

.method private addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 3

    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 1095
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    move-result v1

    .line 1096
    invoke-static {p3, p4, v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->sameCEs([JI[JI)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p5, v0, :cond_0

    .line 1098
    iget-object p5, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {p5, p3, p4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p3

    move p5, p3

    .line 1100
    :cond_0
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {p3, p1, p2, p5}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    return p5
.end method

.method private addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 10

    .line 869
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 870
    new-instance v0, Lcom/ibm/icu/text/CanonicalIterator;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    move v6, p5

    .line 873
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 875
    :cond_1
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, ""

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    .line 876
    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v6

    goto :goto_0

    .line 879
    :cond_3
    new-instance v0, Lcom/ibm/icu/text/CanonicalIterator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    .line 880
    new-instance v1, Lcom/ibm/icu/text/CanonicalIterator;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    .line 882
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    move v6, p5

    :goto_2
    return v6

    .line 884
    :cond_4
    invoke-direct {p0, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 885
    :cond_5
    invoke-virtual {v8, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    move v7, p5

    .line 887
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/ibm/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 892
    invoke-virtual {v1}, Lcom/ibm/icu/text/CanonicalIterator;->reset()V

    move p5, v7

    goto :goto_1

    .line 889
    :cond_7
    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_6

    if-eqz v9, :cond_8

    invoke-virtual {v4, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, p0

    move-object v3, v8

    move-object v5, p3

    move v6, p4

    .line 890
    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v7

    goto :goto_3
.end method

.method private addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 16

    move-object/from16 v7, p0

    .line 901
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v8, v0

    :goto_0
    if-nez v8, :cond_0

    return-void

    :cond_0
    move-object/from16 v9, p2

    .line 904
    invoke-static {v9, v8}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 905
    iget-object v1, v7, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v1

    if-nez v1, :cond_7

    .line 909
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 914
    :cond_1
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 915
    iget-object v2, v7, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCanonStartSet(ILcom/ibm/icu/text/UnicodeSet;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 917
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x1f

    new-array v13, v12, [J

    .line 919
    new-instance v14, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v14, v1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 920
    :cond_3
    :goto_1
    invoke-virtual {v14}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 922
    iget v3, v14, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    .line 923
    iget-object v0, v7, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v8

    move-object v5, v10

    move-object v6, v11

    .line 924
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/coll/CollationBuilder;->mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 928
    :cond_4
    iget-object v0, v7, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    const/4 v1, 0x0

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v10, v13, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    move-result v15

    if-le v15, v12, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v13

    move v4, v15

    .line 948
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v5

    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v13

    move v4, v15

    .line 952
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    move-object/from16 v6, p1

    .line 906
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int/2addr v8, v0

    goto/16 :goto_0
.end method

.method private addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 6

    .line 859
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 860
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result p3

    .line 861
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return p3
.end method

.method private static final alignWeightRight(I)I
    .locals 1

    if-eqz p0, :cond_0

    :goto_0
    and-int/lit16 v0, p0, 0xff

    if-nez v0, :cond_0

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_0
    return p0
.end method

.method private static final binarySearchForRootPrimaryNode([II[JJ)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    int-to-long v4, p1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    .line 591
    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 592
    aget v2, p0, v3

    aget-wide v4, p2, v2

    const/16 v2, 0x20

    ushr-long/2addr v4, v2

    cmp-long v2, p3, v4

    if-nez v2, :cond_1

    return v3

    :cond_1
    cmp-long v2, p3, v4

    if-gez v2, :cond_3

    if-ne v3, v1, :cond_2

    xor-int/lit8 p0, v1, -0x1

    return p0

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_4

    add-int/lit8 v1, v1, 0x1

    xor-int/lit8 p0, v1, -0x1

    return p0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method private static ceStrength(J)I
    .locals 5

    .line 1414
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromTempCE(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, p0, v2

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method private static changeNodeNextIndex(JI)J
    .locals 2

    const-wide/32 v0, -0xfffff01

    and-long/2addr p0, v0

    .line 1488
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    move-result-wide v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static changeNodePreviousIndex(JI)J
    .locals 2

    const-wide v0, -0xfffff0000001L

    and-long/2addr p0, v0

    .line 1485
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    move-result-wide v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private closeOverComposites()V
    .locals 9

    .line 1076
    new-instance v0, Lcom/ibm/icu/text/UnicodeSetIterator;

    sget-object v1, Lcom/ibm/icu/impl/coll/CollationBuilder;->COMPOSITES:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 1077
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    iget v2, v0, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v1

    .line 1080
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSetIterator;->getString()Ljava/lang/String;

    move-result-object v5

    .line 1088
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v7, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    const/4 v8, -0x1

    const-string v4, ""

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static countTailoredNodes([JII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    .line 1308
    :cond_0
    aget-wide v1, p0, p1

    .line 1309
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result p1

    if-ge p1, p2, :cond_1

    goto :goto_1

    .line 1310
    :cond_1
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 1311
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    return v0

    .line 1317
    :cond_3
    :goto_2
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    goto :goto_0
.end method

.method private equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z
    .locals 4

    .line 1046
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v1, v0, p2

    .line 1047
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    add-int/lit8 v1, p2, 0x1

    .line 1049
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v2, p4, 0x1

    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-eq p2, p4, :cond_1

    return v3

    :cond_1
    move p2, v1

    move p4, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private finalizeCEs()V
    .locals 3

    .line 1351
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;-><init>()V

    .line 1352
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->initForTailoring(Lcom/ibm/icu/impl/coll/CollationData;)V

    .line 1353
    new-instance v1, Lcom/ibm/icu/impl/coll/CollationBuilder$CEFinalizer;

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder$CEFinalizer;-><init>([J)V

    .line 1354
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->copyFrom(Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    .line 1355
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    return-void
.end method

.method private findCommonNode(II)I
    .locals 4

    .line 752
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 753
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-lt v2, p2, :cond_0

    return p1

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 757
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return p1

    .line 761
    :cond_2
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    .line 762
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 767
    :cond_3
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    .line 768
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 770
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-gt v2, p2, :cond_3

    .line 771
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v2

    const/16 v3, 0x500

    if-lt v2, v3, :cond_3

    return p1
.end method

.method private findOrInsertNodeForCEs(I)I
    .locals 5

    .line 535
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    .line 537
    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    goto :goto_1

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v2, v0

    .line 542
    invoke-static {v3, v4}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v0

    if-gt v0, p1, :cond_3

    .line 545
    :goto_1
    invoke-static {v3, v4}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    invoke-static {v3, v4}, Lcom/ibm/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x38

    ushr-long v0, v3, v0

    long-to-int v1, v0

    const/16 v0, 0xfe

    if-eq v1, v0, :cond_2

    .line 556
    invoke-direct {p0, v3, v4, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result p1

    return p1

    .line 553
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "tailoring relative to an unassigned code point not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 534
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    goto :goto_0
.end method

.method private findOrInsertNodeForPrimary(J)I
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

    .line 613
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector32;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v2

    .line 612
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->binarySearchForRootPrimaryNode([II[JJ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 615
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/coll/UVector32;->elementAti(I)I

    move-result p1

    return p1

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v1

    .line 619
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromWeight32(J)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    .line 620
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

    xor-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, v1, p2}, Lcom/ibm/icu/impl/coll/UVector32;->insertElementAt(II)V

    return v1
.end method

.method private findOrInsertNodeForRootCE(JI)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    .line 566
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    move-result v0

    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    long-to-int p2, p1

    ushr-int/lit8 p1, p2, 0x10

    .line 569
    invoke-direct {p0, v0, p1, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v0

    const/4 p1, 0x2

    if-lt p3, p1, :cond_0

    and-int/lit16 p2, p2, 0x3f3f

    .line 571
    invoke-direct {p0, v0, p2, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v0

    :cond_0
    return v0
.end method

.method private findOrInsertWeakNode(III)I
    .locals 11

    const/16 v0, 0x500

    if-ne p2, v0, :cond_0

    .line 631
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p1

    return p1

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    if-eqz p2, :cond_3

    if-ge p2, v0, :cond_3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    const/16 v4, 0x40

    goto :goto_0

    :cond_1
    const/16 v4, 0x20

    :goto_0
    int-to-long v4, v4

    and-long v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    .line 643
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v6

    invoke-static {p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v8

    or-long/2addr v6, v8

    if-ne p3, v3, :cond_2

    const-wide/16 v8, 0x20

    and-long/2addr v8, v1

    or-long/2addr v6, v8

    const-wide/16 v8, -0x21

    and-long/2addr v1, v8

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    or-long/2addr v4, v1

    invoke-virtual {v0, v4, v5, p1}, Lcom/ibm/icu/impl/coll/UVector64;->setElementAt(JI)V

    .line 652
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    .line 653
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v1

    invoke-static {p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide p2

    or-long/2addr p2, v1

    .line 654
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result p1

    .line 656
    invoke-direct {p0, p1, v0, v6, v7}, Lcom/ibm/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    return p1

    .line 667
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    if-eqz v0, :cond_7

    .line 668
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 669
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v3

    if-gt v3, p3, :cond_6

    if-ge v3, p3, :cond_4

    goto :goto_2

    .line 674
    :cond_4
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v3

    if-nez v3, :cond_6

    .line 675
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v3

    if-ne v3, p2, :cond_5

    return v0

    :cond_5
    if-le v3, p2, :cond_6

    goto :goto_2

    :cond_6
    move p1, v0

    goto :goto_1

    .line 687
    :cond_7
    :goto_2
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v1

    invoke-static {p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide p2

    or-long/2addr p2, v1

    .line 688
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result p1

    return p1
.end method

.method private getSpecialResetPosition(Ljava/lang/CharSequence;)J
    .locals 9

    .line 284
    sget-object v0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const/4 v1, 0x1

    .line 285
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    add-int/lit16 p1, p1, -0x2800

    aget-object p1, v0, p1

    .line 286
    sget-object v0, Lcom/ibm/icu/impl/coll/CollationBuilder$1;->$SwitchMap$com$ibm$icu$impl$coll$CollationRuleParser$Position:[I

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 369
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LDML forbids tailoring to U+FFFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const-wide v2, 0xff020200L

    .line 365
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v2

    goto :goto_1

    .line 362
    :pswitch_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "reset to [last implicit] not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :pswitch_3
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    const/16 v2, 0x4e00

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/coll/CollationData;->getSingleCE(I)J

    move-result-wide v2

    goto :goto_0

    .line 354
    :pswitch_4
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    const/16 v3, 0x11

    .line 355
    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v2

    .line 354
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    move-result-wide v2

    goto :goto_0

    .line 347
    :pswitch_5
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    iget-wide v5, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->variableTop:J

    add-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/ibm/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    move-result-wide v2

    goto :goto_1

    .line 344
    :pswitch_6
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    iget-wide v5, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->variableTop:J

    add-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/ibm/icu/impl/coll/CollationRootElements;->lastCEWithPrimaryBefore(J)J

    move-result-wide v2

    :goto_0
    const/4 v0, 0x0

    goto :goto_4

    .line 340
    :pswitch_7
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getFirstPrimaryCE()J

    move-result-wide v2

    :goto_1
    const/4 v0, 0x0

    const/4 v5, 0x1

    goto :goto_5

    .line 336
    :pswitch_8
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getLastSecondaryCE()J

    move-result-wide v2

    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    .line 313
    :pswitch_9
    invoke-direct {p0, v6, v7, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v0

    .line 314
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    .line 315
    :cond_0
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    .line 317
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v5

    if-ge v5, v1, :cond_1

    goto :goto_3

    :cond_1
    if-ne v5, v1, :cond_0

    .line 320
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 321
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    .line 325
    :cond_2
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v0

    return-wide v0

    .line 331
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    move-result-wide v2

    goto :goto_2

    .line 308
    :pswitch_a
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getLastTertiaryCE()J

    move-result-wide v2

    const/4 v0, 0x2

    :goto_4
    const/4 v5, 0x0

    .line 375
    :goto_5
    invoke-direct {p0, v2, v3, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v6

    .line 376
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v7, v6}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    .line 377
    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result p1

    and-int/2addr p1, v1

    if-nez p1, :cond_8

    .line 379
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v5, :cond_5

    .line 384
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    if-eqz v6, :cond_4

    .line 388
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    .line 390
    invoke-static {v6, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v2

    goto :goto_6

    :cond_4
    const/16 p1, 0x20

    ushr-long v1, v2, p1

    .line 394
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result p1

    .line 395
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v3, v1, v2}, Lcom/ibm/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v3

    .line 396
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v5, v1, v2, p1, v3}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    move-result-wide v1

    .line 397
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v2

    .line 398
    invoke-direct {p0, v2, v3, v4}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v6

    .line 399
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    .line 402
    :cond_5
    :goto_6
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 404
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 405
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    .line 406
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    .line 408
    :cond_6
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 409
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    .line 412
    :cond_7
    invoke-static {v6, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v2

    goto :goto_9

    .line 419
    :cond_8
    :goto_7
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_8

    .line 421
    :cond_9
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v4

    .line 422
    invoke-static {v4, v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v1

    if-ge v1, v0, :cond_b

    .line 429
    :goto_8
    invoke-static {v7, v8}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 430
    invoke-static {v6, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v2

    :cond_a
    :goto_9
    return-wide v2

    :cond_b
    move v6, p1

    move-wide v7, v4

    goto :goto_7

    .line 295
    :pswitch_b
    invoke-direct {p0, v6, v7, v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 297
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    if-eqz p1, :cond_c

    .line 298
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 300
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 301
    invoke-static {p1, v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v0

    return-wide v0

    .line 304
    :cond_c
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    move-result-wide v0

    return-wide v0

    :goto_a
    :pswitch_c
    return-wide v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWeight16Before(IJI)I
    .locals 4

    .line 242
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result p1

    const/4 v0, 0x2

    const/16 v1, 0x500

    if-ne p1, v0, :cond_0

    .line 243
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x500

    .line 247
    :goto_0
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 248
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p2

    .line 249
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p3, p2}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p2

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v0

    const/16 v3, 0x100

    if-eqz v0, :cond_2

    return v3

    .line 255
    :cond_2
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 256
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v1

    .line 260
    :cond_3
    :goto_1
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v0

    if-lez v0, :cond_4

    .line 261
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p2

    .line 262
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p3, p2}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p2

    goto :goto_1

    .line 264
    :cond_4
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 268
    :cond_5
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide p2

    if-ne p4, v2, :cond_6

    .line 271
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {p1, p2, p3, v1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getSecondaryBefore(JI)I

    move-result p1

    goto :goto_2

    .line 273
    :cond_6
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {p4, p2, p3, v1, p1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getTertiaryBefore(JII)I

    move-result p1

    :goto_2
    return p1
.end method

.method private ignorePrefix(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1057
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private ignoreString(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1062
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isHangul(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static indexFromTempCE(J)I
    .locals 3

    const-wide v0, 0x4040000006002000L    # 32.000000715313945

    sub-long/2addr p0, v0

    const/16 v0, 0x2b

    shr-long v0, p0, v0

    long-to-int v1, v0

    const v0, 0xfe000

    and-int/2addr v0, v1

    const/16 v1, 0x2a

    shr-long v1, p0, v1

    long-to-int v2, v1

    and-int/lit16 v1, v2, 0x1fc0

    or-int/2addr v0, v1

    const/16 v1, 0x18

    shr-long/2addr p0, v1

    long-to-int p1, p0

    and-int/lit8 p0, p1, 0x3f

    or-int/2addr p0, v0

    return p0
.end method

.method private static indexFromTempCE32(I)I
    .locals 2

    const v0, 0x40400620    # 3.0003738f

    sub-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0xb

    const v1, 0xfe000

    and-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0xa

    and-int/lit16 v1, v1, 0x1fc0

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0x3f

    or-int/2addr p0, v0

    return p0
.end method

.method private insertNodeBetween(IIJ)I
    .locals 5

    .line 729
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->size()I

    move-result v0

    .line 730
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    move-result-wide v1

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    move-result-wide v3

    or-long/2addr v1, v3

    or-long/2addr p3, v1

    .line 731
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1, p3, p4}, Lcom/ibm/icu/impl/coll/UVector64;->addElement(J)V

    .line 733
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p3

    .line 734
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-static {p3, p4, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->changeNodeNextIndex(JI)J

    move-result-wide p3

    invoke-virtual {v1, p3, p4, p1}, Lcom/ibm/icu/impl/coll/UVector64;->setElementAt(JI)V

    if-eqz p2, :cond_0

    .line 737
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p3

    .line 738
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-static {p3, p4, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->changeNodePreviousIndex(JI)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/ibm/icu/impl/coll/UVector64;->setElementAt(JI)V

    :cond_0
    return v0
.end method

.method private insertTailoredNodeAfter(II)I
    .locals 5

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 700
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p1

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 702
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p1

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 709
    :goto_0
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 711
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v3

    if-gt v3, p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    move-wide v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v1, 0x8

    .line 715
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 716
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result p1

    return p1
.end method

.method private isFCD(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->fcd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private static isTailoredNode(J)Z
    .locals 3

    const-wide/16 v0, 0x8

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

.method private static isTempCE(J)Z
    .locals 0

    long-to-int p1, p0

    ushr-int/lit8 p0, p1, 0x18

    const/4 p1, 0x6

    if-gt p1, p0, :cond_0

    const/16 p1, 0x45

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTempCE32(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    if-gt v0, p0, :cond_0

    const/16 v0, 0x45

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeTailoredCEs()V
    .locals 29

    move-object/from16 v0, p0

    .line 1130
    new-instance v7, Lcom/ibm/icu/impl/coll/CollationWeights;

    invoke-direct {v7}, Lcom/ibm/icu/impl/coll/CollationWeights;-><init>()V

    .line 1131
    new-instance v8, Lcom/ibm/icu/impl/coll/CollationWeights;

    invoke-direct {v8}, Lcom/ibm/icu/impl/coll/CollationWeights;-><init>()V

    .line 1132
    new-instance v9, Lcom/ibm/icu/impl/coll/CollationWeights;

    invoke-direct {v9}, Lcom/ibm/icu/impl/coll/CollationWeights;-><init>()V

    .line 1133
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v10

    const/4 v12, 0x0

    .line 1138
    :goto_0
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/UVector32;->size()I

    move-result v1

    if-ge v12, v1, :cond_18

    .line 1139
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1, v12}, Lcom/ibm/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v1

    .line 1140
    aget-wide v1, v10, v1

    .line 1141
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v14, v3, v5

    if-nez v14, :cond_0

    const/4 v14, 0x0

    goto :goto_1

    :cond_0
    const/16 v14, 0x500

    :goto_1
    cmp-long v15, v3, v5

    if-nez v15, :cond_1

    const/4 v15, 0x0

    goto :goto_2

    .line 1151
    :cond_1
    iget-object v5, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v5, v3, v4}, Lcom/ibm/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v5

    move v15, v5

    .line 1152
    :goto_2
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v1

    move-wide v4, v3

    move v6, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v14, v1

    move v1, v6

    :goto_3
    if-eqz v14, :cond_17

    .line 1155
    aget-wide v18, v10, v14

    .line 1156
    invoke-static/range {v18 .. v19}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v11

    .line 1157
    invoke-static/range {v18 .. v19}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v13

    move-wide/from16 v22, v4

    const/4 v4, 0x3

    if-ne v13, v4, :cond_3

    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, v22

    const/16 v13, 0x500

    const/16 v20, 0x0

    move/from16 v22, v12

    goto/16 :goto_f

    .line 1165
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "quaternary tailoring gap too small"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v3, 0x2

    const/16 v4, 0x100

    const/4 v5, 0x1

    if-ne v13, v3, :cond_a

    .line 1170
    invoke-static/range {v18 .. v19}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v13

    if-eqz v13, :cond_9

    if-nez v2, :cond_8

    .line 1176
    invoke-static {v10, v11, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    if-nez v1, :cond_4

    .line 1181
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v1

    sub-int/2addr v1, v4

    .line 1182
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    move-result-wide v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0x3f3f

    goto :goto_4

    :cond_4
    if-nez v17, :cond_5

    if-nez v16, :cond_5

    .line 1185
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2, v15, v6, v1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getTertiaryAfter(III)I

    move-result v2

    goto :goto_4

    :cond_5
    if-ne v1, v4, :cond_6

    const/16 v2, 0x500

    goto :goto_4

    .line 1191
    :cond_6
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v2

    .line 1194
    :goto_4
    invoke-virtual {v9}, Lcom/ibm/icu/impl/coll/CollationWeights;->initForTertiary()V

    int-to-long v3, v1

    int-to-long v1, v2

    move-wide/from16 v24, v1

    move-object v1, v9

    move-wide v2, v3

    move-wide/from16 v26, v22

    move/from16 v22, v12

    const/4 v12, 0x1

    move-wide/from16 v4, v24

    move/from16 v28, v6

    move v6, v13

    .line 1195
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    .line 1197
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "tertiary tailoring gap too small"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move/from16 v28, v6

    move-wide/from16 v26, v22

    move/from16 v22, v12

    .line 1201
    :goto_5
    invoke-virtual {v9}, Lcom/ibm/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v3

    long-to-int v1, v3

    move-wide/from16 v4, v26

    move/from16 v6, v28

    goto :goto_6

    :cond_9
    move/from16 v28, v6

    move-wide/from16 v26, v22

    move/from16 v22, v12

    .line 1204
    invoke-static/range {v18 .. v19}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v1

    move-wide/from16 v4, v26

    const/4 v2, 0x0

    :goto_6
    const/16 v13, 0x500

    const/16 v20, 0x0

    goto/16 :goto_e

    :cond_a
    move/from16 v28, v6

    move-wide/from16 v26, v22

    move/from16 v22, v12

    const/4 v12, 0x1

    if-ne v13, v12, :cond_12

    .line 1212
    invoke-static/range {v18 .. v19}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v16, :cond_10

    .line 1218
    invoke-static {v10, v11, v12}, Lcom/ibm/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move/from16 v1, v28

    if-nez v1, :cond_b

    .line 1223
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v1

    sub-int/2addr v1, v4

    .line 1224
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    move-result-wide v2

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v3, v2

    :goto_7
    const/16 v13, 0x500

    goto :goto_8

    :cond_b
    if-nez v17, :cond_c

    .line 1227
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2, v15, v1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getSecondaryAfter(II)I

    move-result v3

    goto :goto_7

    :cond_c
    if-ne v1, v4, :cond_d

    const/16 v3, 0x500

    goto :goto_7

    .line 1233
    :cond_d
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v3

    goto :goto_7

    :goto_8
    if-ne v1, v13, :cond_e

    .line 1238
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getLastCommonSecondary()I

    move-result v1

    .line 1240
    :cond_e
    invoke-virtual {v8}, Lcom/ibm/icu/impl/coll/CollationWeights;->initForSecondary()V

    int-to-long v4, v1

    int-to-long v2, v3

    move-object v1, v8

    move-wide/from16 v23, v2

    move-wide v2, v4

    move-wide/from16 v4, v23

    .line 1241
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v16, 0x1

    goto :goto_9

    .line 1248
    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "secondary tailoring gap too small"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/16 v13, 0x500

    .line 1252
    :goto_9
    invoke-virtual {v8}, Lcom/ibm/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v1

    long-to-int v2, v1

    move v6, v2

    move-wide/from16 v4, v26

    goto :goto_a

    :cond_11
    const/16 v13, 0x500

    .line 1255
    invoke-static/range {v18 .. v19}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v1

    move v6, v1

    move-wide/from16 v4, v26

    const/16 v16, 0x0

    :goto_a
    const/16 v20, 0x0

    goto :goto_c

    :cond_12
    const/16 v13, 0x500

    if-nez v17, :cond_14

    const/4 v6, 0x0

    .line 1268
    invoke-static {v10, v11, v6}, Lcom/ibm/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v1

    add-int/lit8 v16, v1, 0x1

    .line 1270
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    move-wide/from16 v3, v26

    invoke-virtual {v1, v3, v4}, Lcom/ibm/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v1

    .line 1271
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    .line 1272
    invoke-virtual {v2, v3, v4, v15, v1}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    move-result-wide v20

    .line 1273
    invoke-virtual {v7, v1}, Lcom/ibm/icu/impl/coll/CollationWeights;->initForPrimary(Z)V

    move-object v1, v7

    move-wide v2, v3

    move-wide/from16 v4, v20

    const/16 v20, 0x0

    move/from16 v6, v16

    .line 1274
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v17, 0x1

    goto :goto_b

    .line 1276
    :cond_13
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "primary tailoring gap too small"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    const/16 v20, 0x0

    .line 1280
    :goto_b
    invoke-virtual {v7}, Lcom/ibm/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v4

    const/16 v6, 0x500

    const/16 v16, 0x0

    :goto_c
    if-nez v6, :cond_15

    const/4 v1, 0x0

    goto :goto_d

    :cond_15
    const/16 v1, 0x500

    :goto_d
    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x0

    .line 1290
    :goto_f
    invoke-static/range {v18 .. v19}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1291
    invoke-static {v4, v5, v6, v1, v3}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(JIII)J

    move-result-wide v18

    aput-wide v18, v10, v14

    :cond_16
    move v14, v11

    move/from16 v12, v22

    goto/16 :goto_3

    :cond_17
    move/from16 v22, v12

    const/16 v20, 0x0

    add-int/lit8 v12, v22, 0x1

    goto/16 :goto_0

    :cond_18
    return-void
.end method

.method private mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 962
    invoke-static {p4, v0, v1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 963
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    return v0

    .line 968
    :cond_0
    invoke-direct {p0, p1, p2, p4, v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 976
    :cond_1
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 977
    invoke-virtual {p5, p1, v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int v3, p2, v2

    .line 979
    invoke-virtual {p6, p1, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 p3, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gez v3, :cond_3

    .line 996
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt p2, v6, :cond_2

    goto :goto_1

    .line 997
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 998
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v4

    .line 1002
    :cond_3
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v2, v6, :cond_7

    :goto_1
    if-ltz v3, :cond_5

    if-ge v4, v5, :cond_4

    return v0

    .line 1033
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p5, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1034
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p6, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1035
    :cond_5
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge v2, p1, :cond_6

    .line 1036
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p5, p4, v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    return v1

    .line 1003
    :cond_7
    invoke-static {p4, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1004
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v6

    if-nez v6, :cond_8

    return v0

    :cond_8
    if-ge v4, v6, :cond_9

    return v0

    :cond_9
    if-ge v6, v4, :cond_a

    .line 1015
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1016
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_3

    :cond_a
    if-eq v5, v3, :cond_b

    return v0

    .line 1021
    :cond_b
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1022
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1023
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    const/4 v3, -0x1

    :goto_3
    move v5, v6

    goto :goto_0
.end method

.method private static nextIndexFromNode(J)I
    .locals 0

    long-to-int p1, p0

    shr-int/lit8 p0, p1, 0x8

    const p1, 0xfffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static nodeFromNextIndex(I)J
    .locals 2

    shl-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    return-wide v0
.end method

.method private static nodeFromPreviousIndex(I)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x1c

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method private static nodeFromStrength(I)J
    .locals 2

    int-to-long v0, p0

    return-wide v0
.end method

.method private static nodeFromWeight16(I)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x30

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method private static nodeFromWeight32(J)J
    .locals 1

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    return-wide p0
.end method

.method private static nodeHasAnyBefore(J)Z
    .locals 3

    const-wide/16 v0, 0x60

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

.method private static nodeHasBefore2(J)Z
    .locals 3

    const-wide/16 v0, 0x40

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

.method private static nodeHasBefore3(J)Z
    .locals 3

    const-wide/16 v0, 0x20

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

.method private static previousIndexFromNode(J)I
    .locals 1

    const/16 v0, 0x1c

    shr-long/2addr p0, v0

    long-to-int p1, p0

    const p0, 0xfffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static sameCEs([JI[JI)Z
    .locals 6

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 1112
    aget-wide v1, p0, p3

    aget-wide v3, p2, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private setCaseBits(Ljava/lang/CharSequence;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 778
    :goto_0
    iget v4, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    if-ge v2, v4, :cond_1

    .line 779
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    aget-wide v5, v4, v2

    invoke-static {v5, v6}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    if-lez v3, :cond_7

    .line 789
    new-instance v7, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object v8, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    move-object/from16 v9, p1

    invoke-direct {v7, v8, v1, v9, v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 790
    invoke-virtual {v7}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move-wide v12, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v10, v8, :cond_5

    .line 796
    invoke-virtual {v7, v10}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->getCE(I)J

    move-result-wide v1

    const/16 v15, 0x20

    ushr-long v15, v1, v15

    cmp-long v17, v15, v4

    if-eqz v17, :cond_4

    add-int/lit8 v11, v11, 0x1

    long-to-int v2, v1

    const/16 v1, 0xe

    shr-int/2addr v2, v1

    and-int/lit8 v1, v2, 0x3

    if-ge v11, v3, :cond_2

    int-to-long v1, v1

    add-int/lit8 v15, v11, -0x1

    mul-int/lit8 v15, v15, 0x2

    shl-long/2addr v1, v15

    or-long/2addr v12, v1

    goto :goto_2

    :cond_2
    if-ne v11, v3, :cond_3

    move v14, v1

    goto :goto_2

    :cond_3
    if-eq v1, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_3
    if-lt v11, v3, :cond_6

    int-to-long v1, v14

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x2

    shl-long/2addr v1, v3

    or-long v4, v12, v1

    goto :goto_4

    :cond_6
    move-wide v4, v12

    :cond_7
    :goto_4
    const/4 v1, 0x0

    .line 819
    :goto_5
    iget v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    if-ge v1, v2, :cond_a

    .line 820
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    aget-wide v7, v2, v1

    const-wide/32 v2, -0xc001

    and-long/2addr v2, v7

    .line 821
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v7

    if-nez v7, :cond_8

    const-wide/16 v7, 0x3

    and-long/2addr v7, v4

    const/16 v9, 0xe

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    ushr-long/2addr v4, v6

    goto :goto_6

    :cond_8
    const/16 v9, 0xe

    if-ne v7, v6, :cond_9

    const-wide/32 v7, 0x8000

    or-long/2addr v2, v7

    .line 835
    :cond_9
    :goto_6
    iget-object v7, v0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    aput-wide v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method private static strengthFromNode(J)I
    .locals 0

    long-to-int p1, p0

    and-int/lit8 p0, p1, 0x3

    return p0
.end method

.method private static strengthFromTempCE(J)I
    .locals 0

    long-to-int p1, p0

    shr-int/lit8 p0, p1, 0x8

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static tempCEFromIndexAndStrength(II)J
    .locals 5

    const v0, 0xfe000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x2b

    shl-long/2addr v0, v2

    const-wide v2, 0x4040000006002000L    # 32.000000715313945

    add-long/2addr v0, v2

    and-int/lit16 v2, p0, 0x1fc0

    int-to-long v2, v2

    const/16 v4, 0x2a

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p0, p0, 0x18

    int-to-long v2, p0

    add-long/2addr v0, v2

    shl-int/lit8 p0, p1, 0x8

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static weight16FromNode(J)I
    .locals 1

    const/16 v0, 0x30

    shr-long/2addr p0, v0

    long-to-int p1, p0

    const p0, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static weight32FromNode(J)J
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 10

    .line 440
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 445
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v4, 0x0

    .line 452
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 453
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v0, -0x1

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 460
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 461
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 465
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "contractions ending with conjoining Jamo L or L+V not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "contractions starting with conjoining Jamo L or V not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/16 v0, 0xf

    if-eq p1, v0, :cond_9

    .line 478
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    move-result v0

    .line 480
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v1, v4

    const-wide/16 v6, 0x0

    if-nez p1, :cond_5

    .line 481
    invoke-static {v4, v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x20

    ushr-long v8, v4, v1

    cmp-long v1, v8, v6

    if-eqz v1, :cond_4

    goto :goto_2

    .line 483
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "tailoring primary after ignorables not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    goto :goto_3

    .line 489
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "tailoring quaternary after tertiary ignorables not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_7
    :goto_3
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->insertTailoredNodeAfter(II)I

    move-result v0

    .line 496
    invoke-static {v4, v5}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v1

    if-ge p1, v1, :cond_8

    goto :goto_4

    :cond_8
    move p1, v1

    .line 498
    :goto_4
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 501
    :cond_9
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->setCaseBits(Ljava/lang/CharSequence;)V

    .line 503
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 504
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 505
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p4}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 506
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    invoke-virtual {v0, p4, v1, v4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result p4

    iput p4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v0, 0x1f

    if-gt p4, v0, :cond_a

    goto :goto_5

    .line 508
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "extension string adds too many collation elements (more than 31 total)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    const/4 v9, -0x1

    .line 513
    invoke-virtual {v2, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-virtual {v3, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_d

    .line 514
    :cond_c
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_d

    invoke-direct {p0, p3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_d

    .line 518
    iget-object v7, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v8, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result p2

    move v6, p2

    goto :goto_6

    :cond_d
    const/4 v6, -0x1

    .line 520
    :goto_6
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v5, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/impl/coll/CollationBuilder;->addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    .line 521
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    return-void
.end method

.method addReset(ILjava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    .line 110
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xfffe

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->getSpecialResetPosition(Ljava/lang/CharSequence;)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 112
    iput v3, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v1, p2}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 117
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    invoke-virtual {v1, p2, v2, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result p2

    iput p2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_10

    :goto_0
    const/16 p2, 0xf

    if-ne p1, p2, :cond_1

    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    move-result p2

    .line 129
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 132
    :goto_1
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-le v2, p1, :cond_2

    .line 133
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p2

    .line 134
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    goto :goto_1

    .line 138
    :cond_2
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p2

    goto/16 :goto_8

    :cond_3
    if-nez p1, :cond_8

    .line 143
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-eqz p2, :cond_7

    .line 148
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    move-result-wide v4

    cmp-long p2, v0, v4

    if-lez p2, :cond_6

    const-wide v4, 0xff020200L

    cmp-long p2, v0, v4

    if-eqz p2, :cond_5

    .line 158
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->rootElements:Lcom/ibm/icu/impl/coll/CollationRootElements;

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v2, v0, v1}, Lcom/ibm/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/ibm/icu/impl/coll/CollationRootElements;->getPrimaryBefore(JZ)J

    move-result-wide v0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    move-result p2

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 164
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_8

    :cond_4
    move p2, v0

    goto :goto_2

    .line 155
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "reset primary-before [first trailing] not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "reset primary-before first non-ignorable not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "reset primary-before ignorable not possible"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_8
    invoke-direct {p0, p2, v3}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_9

    .line 172
    invoke-direct {p0, p2, v0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p2

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 177
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-ne v2, p1, :cond_f

    .line 179
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v2

    if-nez v2, :cond_b

    .line 181
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    if-ne p1, v3, :cond_a

    const-string p1, "reset secondary-before secondary ignorable not possible"

    goto :goto_3

    :cond_a
    const-string p1, "reset tertiary-before completely ignorable not possible"

    :goto_3
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 190
    :cond_b
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    move-result v2

    .line 193
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v4

    move v0, v4

    .line 195
    :goto_4
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodes:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 196
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v5

    if-ge v5, p1, :cond_c

    const/16 v0, 0x500

    goto :goto_5

    :cond_c
    if-ne v5, p1, :cond_e

    .line 205
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v5

    if-nez v5, :cond_e

    .line 206
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v0

    :goto_5
    if-ne v0, v2, :cond_d

    goto :goto_6

    .line 218
    :cond_d
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 219
    invoke-direct {p0, v4, p2, v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result v4

    :goto_6
    move p2, v4

    goto :goto_7

    .line 194
    :cond_e
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v0

    goto :goto_4

    .line 223
    :cond_f
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    move-result v0

    .line 224
    invoke-direct {p0, p2, v0, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result p1

    move p2, p1

    .line 228
    :goto_7
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    sub-int/2addr v0, v3

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result p1

    .line 230
    :goto_8
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->ces:[J

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->cesLength:I

    sub-int/2addr v1, v3

    invoke-static {p2, p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide p1

    aput-wide p1, v0, v1

    return-void

    .line 119
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reset position maps to too many collation elements (more than 31)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method optimize(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->optimizeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public parseAndBuild(Ljava/lang/String;)Lcom/ibm/icu/impl/coll/CollationTailoring;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->base:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/coll/CollationTailoring;-><init>(Lcom/ibm/icu/impl/coll/SharedObject$Reference;)V

    .line 63
    new-instance v1, Lcom/ibm/icu/impl/coll/CollationRuleParser;

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;-><init>(Lcom/ibm/icu/impl/coll/CollationData;)V

    .line 69
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->base:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v2, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-wide v2, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    iput-wide v2, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->variableTop:J

    .line 70
    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setSink(Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;)V

    .line 73
    new-instance v2, Lcom/ibm/icu/impl/coll/CollationBuilder$BundleImporter;

    invoke-direct {v2}, Lcom/ibm/icu/impl/coll/CollationBuilder$BundleImporter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setImporter(Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;)V

    .line 74
    iget-object v2, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 75
    invoke-virtual {v1, p1, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/coll/CollationSettings;)V

    .line 76
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->hasMappings()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->makeTailoredCEs()V

    .line 78
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->closeOverComposites()V

    .line 79
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationBuilder;->finalizeCEs()V

    .line 81
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->optimizeSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v4, 0x7f

    invoke-virtual {v1, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 82
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->optimizeSet:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v4, 0xc0

    const/16 v5, 0xff

    invoke-virtual {v1, v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 85
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->optimizeSet:Lcom/ibm/icu/text/UnicodeSet;

    const v4, 0xac00

    const v5, 0xd7a3

    invoke-virtual {v1, v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->remove(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 86
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->optimizeSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->optimize(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 87
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    .line 88
    iget-boolean v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->enableFastLatin()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->ownedData:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->build(Lcom/ibm/icu/impl/coll/CollationData;)V

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v1, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 95
    :goto_0
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v1, v2, v4}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I

    move-result v1

    iput v1, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    .line 98
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationTailoring;->setRules(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->base:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget p1, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->version:I

    invoke-virtual {v0, p1, v3}, Lcom/ibm/icu/impl/coll/CollationTailoring;->setVersion(II)V

    return-object v0

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "missing root elements data, tailoring not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method suppressContractions(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder;->dataBuilder:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->suppressContractions(Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method
