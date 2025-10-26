.class public Lcom/ibm/icu/impl/locale/LocaleDistance;
.super Ljava/lang/Object;
.source "LocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/LocaleDistance$Data;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ABOVE_THRESHOLD:I = 0x64

.field private static final DEBUG_OUTPUT:Z = false

.field private static final DISTANCE_FRACTION_MASK:I = 0x7

.field private static final DISTANCE_INT_SHIFT:I = 0x7

.field private static final DISTANCE_IS_FINAL:I = 0x100

.field private static final DISTANCE_IS_FINAL_OR_SKIP_SCRIPT:I = 0x180

.field private static final DISTANCE_MASK:I = 0x3ff

.field private static final DISTANCE_SHIFT:I = 0x3

.field public static final DISTANCE_SKIP_SCRIPT:I = 0x80

.field public static final END_OF_SUBTAG:I = 0x80

.field private static final INDEX_NEG_1:I = -0x400

.field private static final INDEX_SHIFT:I = 0xa

.field public static final INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

.field public static final IX_DEF_LANG_DISTANCE:I = 0x0

.field public static final IX_DEF_REGION_DISTANCE:I = 0x2

.field public static final IX_DEF_SCRIPT_DISTANCE:I = 0x1

.field public static final IX_LIMIT:I = 0x4

.field public static final IX_MIN_REGION_DISTANCE:I = 0x3


# instance fields
.field private final defaultDemotionPerDesiredLocale:I

.field private final defaultLanguageDistance:I

.field private final defaultRegionDistance:I

.field private final defaultScriptDistance:I

.field private final minRegionDistance:I

.field private final paradigmLSRs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/locale/LSR;",
            ">;"
        }
    .end annotation
.end field

.field private final partitionArrays:[Ljava/lang/String;

.field private final regionToPartitionsIndex:[B

.field private final trie:Lcom/ibm/icu/util/BytesTrie;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 194
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleDistance;

    invoke-static {}, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->load()Lcom/ibm/icu/impl/locale/LocaleDistance$Data;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/locale/LocaleDistance;-><init>(Lcom/ibm/icu/impl/locale/LocaleDistance$Data;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/locale/LocaleDistance$Data;)V
    .locals 10

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Lcom/ibm/icu/util/BytesTrie;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->trie:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/BytesTrie;-><init>([BI)V

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->trie:Lcom/ibm/icu/util/BytesTrie;

    .line 198
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->regionToPartitionsIndex:[B

    .line 199
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->partitionArrays:[Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->paradigmLSRs:Ljava/util/Set;

    .line 201
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->distances:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultLanguageDistance:I

    .line 202
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->distances:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultScriptDistance:I

    .line 203
    iget-object v0, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->distances:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    iput v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultRegionDistance:I

    .line 204
    iget-object p1, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->distances:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    iput p1, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->minRegionDistance:I

    .line 212
    new-instance v4, Lcom/ibm/icu/impl/locale/LSR;

    const-string p1, "en"

    const-string v0, "Latn"

    const-string v3, "US"

    const/4 v5, 0x7

    invoke-direct {v4, p1, v0, v3, v5}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    new-instance v3, Lcom/ibm/icu/impl/locale/LSR;

    const-string v6, "GB"

    invoke-direct {v3, p1, v0, v6, v5}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v5, v1, [Lcom/ibm/icu/impl/locale/LSR;

    aput-object v3, v5, v2

    const/16 p1, 0x32

    .line 215
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v7

    sget-object v8, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;->LANGUAGE:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    sget-object v9, Lcom/ibm/icu/util/LocaleMatcher$Direction;->WITH_ONE_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const/4 v6, 0x1

    move-object v3, p0

    .line 214
    invoke-virtual/range {v3 .. v9}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result p1

    .line 216
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getDistanceFloor(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultDemotionPerDesiredLocale:I

    return-void
.end method

.method private static final getDesSuppScriptDistance(Lcom/ibm/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 401
    invoke-static {p0, p3, v0}, Lcom/ibm/icu/impl/locale/LocaleDistance;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 403
    invoke-static {p0, p4, v1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v1

    :cond_0
    if-gez v1, :cond_3

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move-result-object p1

    const/16 p2, 0x2a

    invoke-virtual {p1, p2}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    .line 408
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result v0

    .line 414
    :goto_0
    sget-object p0, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne p1, p0, :cond_2

    or-int/lit16 v1, v0, 0x100

    goto :goto_1

    :cond_2
    move v1, v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static final getDistanceDouble(I)D
    .locals 4

    .line 91
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getShiftedDistance(I)I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final getDistanceFloor(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x3ff

    shr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static final getFallbackRegionDistance(Lcom/ibm/icu/util/BytesTrie;J)I
    .locals 0

    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move-result-object p1

    const/16 p2, 0x2a

    invoke-virtual {p1, p2}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    .line 489
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result p0

    return p0
.end method

.method public static final getIndex(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private static final getRegionPartitionsDistance(Lcom/ibm/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;I)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 423
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    .line 424
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    if-ne v5, v7, :cond_1

    .line 427
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result v0

    return v0

    .line 434
    :cond_0
    invoke-static/range {p0 .. p2}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getFallbackRegionDistance(Lcom/ibm/icu/util/BytesTrie;J)I

    move-result v0

    return v0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v8, 0x1

    .line 443
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    or-int/lit16 v8, v8, 0x80

    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v8

    .line 444
    invoke-virtual {v8}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    if-le v5, v7, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v12

    goto :goto_1

    :cond_2
    const-wide/16 v12, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v14, v8, 0x1

    .line 447
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    or-int/lit16 v8, v8, 0x80

    invoke-virtual {p0, v8}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v8

    .line 449
    invoke-virtual {v8}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 450
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result v8

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    .line 454
    :cond_4
    invoke-static/range {p0 .. p2}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getFallbackRegionDistance(Lcom/ibm/icu/util/BytesTrie;J)I

    move-result v8

    const/4 v9, 0x1

    :goto_3
    if-le v8, v3, :cond_5

    return v8

    :cond_5
    if-ge v10, v8, :cond_6

    move v10, v8

    :cond_6
    if-ge v14, v5, :cond_a

    .line 463
    invoke-virtual {p0, v12, v13}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move v8, v14

    goto :goto_2

    :cond_7
    if-nez v9, :cond_a

    .line 469
    invoke-static/range {p0 .. p2}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getFallbackRegionDistance(Lcom/ibm/icu/util/BytesTrie;J)I

    move-result v8

    if-le v8, v3, :cond_8

    return v8

    :cond_8
    if-ge v10, v8, :cond_9

    move v10, v8

    :cond_9
    const/4 v9, 0x1

    :cond_a
    if-ge v11, v4, :cond_b

    .line 478
    invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    move v8, v11

    goto :goto_0

    :cond_b
    return v10
.end method

.method public static final getShiftedDistance(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method

.method private isMatch(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/impl/locale/LSR;ILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;)Z
    .locals 9

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/ibm/icu/impl/locale/LSR;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    .line 393
    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private partitionsForRegion(Lcom/ibm/icu/impl/locale/LSR;)Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->regionToPartitionsIndex:[B

    iget p1, p1, Lcom/ibm/icu/impl/locale/LSR;->regionIndex:I

    aget-byte p1, v0, p1

    .line 533
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->partitionArrays:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public static final shiftDistance(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static final trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;Z)I
    .locals 5

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 498
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 499
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v3, v0, :cond_2

    .line 501
    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    or-int/lit16 p1, v4, 0x80

    .line 506
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 508
    invoke-virtual {p1}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 509
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result p0

    .line 510
    sget-object p2, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne p1, p2, :cond_3

    or-int/lit16 p0, p0, 0x100

    :cond_3
    return p0

    .line 516
    :cond_4
    invoke-virtual {p1}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method public getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 247
    new-instance v11, Lcom/ibm/icu/util/BytesTrie;

    iget-object v5, v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-direct {v11, v5}, Lcom/ibm/icu/util/BytesTrie;-><init>(Lcom/ibm/icu/util/BytesTrie;)V

    .line 251
    iget-object v5, v1, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v5, v12}, Lcom/ibm/icu/impl/locale/LocaleDistance;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v13

    const/4 v14, 0x1

    if-ltz v13, :cond_0

    if-le v2, v14, :cond_0

    .line 252
    invoke-virtual {v11}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    move-wide v9, v5

    move/from16 v8, p4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v16, -0x1

    :goto_1
    if-ge v6, v2, :cond_16

    .line 258
    aget-object v5, p2, v6

    if-ltz v13, :cond_2

    if-eqz v6, :cond_1

    .line 264
    invoke-virtual {v11, v9, v10}, Lcom/ibm/icu/util/BytesTrie;->resetToState64(J)Lcom/ibm/icu/util/BytesTrie;

    .line 266
    :cond_1
    iget-object v12, v5, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-static {v11, v12, v14}, Lcom/ibm/icu/impl/locale/LocaleDistance;->trieNext(Lcom/ibm/icu/util/BytesTrie;Ljava/lang/String;Z)I

    move-result v12

    goto :goto_2

    :cond_2
    move v12, v13

    :goto_2
    if-ltz v12, :cond_3

    and-int/lit16 v14, v12, 0x180

    and-int/lit16 v12, v12, -0x181

    const/16 v17, 0x0

    goto :goto_4

    .line 277
    :cond_3
    iget-object v12, v1, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v14, v5, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    goto :goto_3

    .line 280
    :cond_4
    iget v12, v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultLanguageDistance:I

    :goto_3
    const/4 v14, 0x0

    const/16 v17, 0x1

    :goto_4
    add-int/lit8 v18, v8, 0x7

    shr-int/lit8 v15, v18, 0x3

    .line 296
    sget-object v2, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;->SCRIPT:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    if-ne v3, v2, :cond_5

    shr-int/lit8 v12, v12, 0x2

    :cond_5
    if-le v12, v15, :cond_6

    move/from16 v18, v6

    move v15, v7

    :goto_5
    move-wide/from16 v20, v9

    move-object/from16 v19, v11

    move/from16 v17, v13

    move v11, v8

    goto/16 :goto_c

    :cond_6
    if-nez v17, :cond_8

    if-eqz v14, :cond_7

    goto :goto_6

    :cond_7
    move v2, v6

    move/from16 p4, v7

    .line 313
    invoke-virtual {v11}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v6

    iget-object v14, v1, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    move/from16 v18, v2

    iget-object v2, v5, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-static {v11, v6, v7, v14, v2}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getDesSuppScriptDistance(Lcom/ibm/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v14, v2, 0x100

    and-int/lit16 v2, v2, -0x101

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v18, v6

    move/from16 p4, v7

    .line 307
    iget-object v2, v1, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v6, v5, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    .line 310
    :cond_9
    iget v2, v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultScriptDistance:I

    :goto_7
    add-int/2addr v12, v2

    if-le v12, v15, :cond_a

    :goto_8
    move/from16 v15, p4

    goto :goto_5

    .line 323
    :cond_a
    iget-object v2, v1, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v6, v5, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-wide/from16 v20, v9

    move-object/from16 v19, v11

    move/from16 v17, v13

    move-object v13, v5

    move v11, v8

    goto :goto_b

    :cond_b
    if-nez v17, :cond_e

    and-int/lit16 v2, v14, 0x100

    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    sub-int v2, v15, v12

    .line 329
    iget v6, v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->minRegionDistance:I

    if-le v6, v2, :cond_d

    goto :goto_8

    .line 339
    :cond_d
    invoke-virtual {v11}, Lcom/ibm/icu/util/BytesTrie;->getState64()J

    move-result-wide v6

    .line 340
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->partitionsForRegion(Lcom/ibm/icu/impl/locale/LSR;)Ljava/lang/String;

    move-result-object v14

    .line 341
    invoke-direct {v0, v5}, Lcom/ibm/icu/impl/locale/LocaleDistance;->partitionsForRegion(Lcom/ibm/icu/impl/locale/LSR;)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v13

    move-object v13, v5

    move-object v5, v11

    move-object/from16 v19, v11

    move/from16 v11, p4

    move v11, v8

    move-object v8, v14

    move-wide/from16 v20, v9

    move-object v9, v15

    move v10, v2

    .line 338
    invoke-static/range {v5 .. v10}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getRegionPartitionsDistance(Lcom/ibm/icu/util/BytesTrie;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_a

    :cond_e
    :goto_9
    move-wide/from16 v20, v9

    move-object/from16 v19, v11

    move/from16 v17, v13

    move-object v13, v5

    move v11, v8

    .line 326
    iget v2, v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultRegionDistance:I

    :goto_a
    add-int/2addr v12, v2

    .line 344
    :goto_b
    invoke-static {v12}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v2

    if-nez v2, :cond_11

    .line 348
    iget v5, v1, Lcom/ibm/icu/impl/locale/LSR;->flags:I

    iget v6, v13, Lcom/ibm/icu/impl/locale/LSR;->flags:I

    xor-int/2addr v5, v6

    or-int/2addr v2, v5

    if-ge v2, v11, :cond_10

    .line 350
    sget-object v5, Lcom/ibm/icu/util/LocaleMatcher$Direction;->ONLY_TWO_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    if-ne v4, v5, :cond_f

    .line 352
    invoke-direct {v0, v13, v1, v11, v3}, Lcom/ibm/icu/impl/locale/LocaleDistance;->isMatch(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/impl/locale/LSR;ILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    if-nez v2, :cond_12

    shl-int/lit8 v1, v18, 0xa

    return v1

    :cond_10
    move/from16 v15, p4

    goto :goto_c

    :cond_11
    if-ge v2, v11, :cond_13

    .line 363
    sget-object v5, Lcom/ibm/icu/util/LocaleMatcher$Direction;->ONLY_TWO_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    if-ne v4, v5, :cond_12

    .line 365
    invoke-direct {v0, v13, v1, v11, v3}, Lcom/ibm/icu/impl/locale/LocaleDistance;->isMatch(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/impl/locale/LSR;ILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_12
    move v8, v2

    move/from16 v16, v18

    const/4 v7, -0x1

    goto :goto_d

    :cond_13
    if-ne v2, v11, :cond_10

    if-ltz v16, :cond_10

    .line 371
    sget-object v2, Lcom/ibm/icu/util/LocaleMatcher$Direction;->ONLY_TWO_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    if-ne v4, v2, :cond_14

    .line 373
    invoke-direct {v0, v13, v1, v11, v3}, Lcom/ibm/icu/impl/locale/LocaleDistance;->isMatch(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/impl/locale/LSR;ILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 374
    :cond_14
    sget-object v2, Lcom/ibm/icu/impl/locale/XLikelySubtags;->INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

    aget-object v5, p2, v16

    move/from16 v15, p4

    invoke-virtual {v2, v13, v5, v15}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->compareLikely(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/impl/locale/LSR;I)I

    move-result v7

    and-int/lit8 v2, v7, 0x1

    move v8, v11

    if-eqz v2, :cond_15

    move/from16 v16, v18

    goto :goto_d

    :goto_c
    move v8, v11

    move v7, v15

    :cond_15
    :goto_d
    add-int/lit8 v6, v18, 0x1

    move/from16 v2, p3

    move/from16 v13, v17

    move-object/from16 v11, v19

    move-wide/from16 v9, v20

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_16
    move v11, v8

    if-ltz v16, :cond_17

    shl-int/lit8 v1, v16, 0xa

    or-int/2addr v1, v11

    goto :goto_e

    :cond_17
    const/16 v1, 0x64

    .line 388
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v1

    or-int/lit16 v1, v1, -0x400

    :goto_e
    return v1
.end method

.method public getDefaultDemotionPerDesiredLocale()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultDemotionPerDesiredLocale:I

    return v0
.end method

.method getDefaultRegionDistance()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultRegionDistance:I

    return v0
.end method

.method public getDefaultScriptDistance()I
    .locals 1

    .line 552
    iget v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->defaultScriptDistance:I

    return v0
.end method

.method public isParadigmLSR(Lcom/ibm/icu/impl/locale/LSR;)Z
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->paradigmLSRs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/locale/LSR;

    .line 543
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/locale/LSR;->isEquivalentTo(Lcom/ibm/icu/impl/locale/LSR;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public testOnlyDistance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;)I
    .locals 8

    .line 230
    sget-object v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->makeMaximizedLsrFrom(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p2

    .line 231
    sget-object v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->makeMaximizedLsrFrom(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v2

    const/4 p1, 0x1

    new-array v3, p1, [Lcom/ibm/icu/impl/locale/LSR;

    const/4 p1, 0x0

    aput-object p2, v3, p1

    .line 233
    invoke-static {p3}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v5

    sget-object v7, Lcom/ibm/icu/util/LocaleMatcher$Direction;->WITH_ONE_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v6, p4

    .line 232
    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result p1

    .line 234
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getDistanceFloor(I)I

    move-result p1

    return p1
.end method

.method public testOnlyGetDistanceTable()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleDistance;->trie:Lcom/ibm/icu/util/BytesTrie;

    invoke-virtual {v2}, Lcom/ibm/icu/util/BytesTrie;->iterator()Lcom/ibm/icu/util/BytesTrie$Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/BytesTrie$Entry;

    const/4 v4, 0x0

    .line 568
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 569
    invoke-virtual {v3}, Lcom/ibm/icu/util/BytesTrie$Entry;->bytesLength()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_2

    .line 571
    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/BytesTrie$Entry;->byteAt(I)B

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_0

    const-string v6, "*-*-"

    .line 574
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    if-ltz v6, :cond_1

    int-to-char v6, v6

    .line 577
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    and-int/lit8 v6, v6, 0x7f

    int-to-char v6, v6

    .line 579
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 584
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v3, v3, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public testOnlyPrintDistanceTable()V
    .locals 6

    .line 592
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/LocaleDistance;->testOnlyGetDistanceTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 594
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    and-int/lit16 v2, v2, -0x81

    const-string v3, " skip script"

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 599
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/LocaleDistance;->testOnlyGetDistanceTable()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
