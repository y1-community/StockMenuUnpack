.class public final Lcom/ibm/icu/util/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;,
        Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;,
        Lcom/ibm/icu/util/LocaleMatcher$Builder;,
        Lcom/ibm/icu/util/LocaleMatcher$Result;,
        Lcom/ibm/icu/util/LocaleMatcher$Direction;,
        Lcom/ibm/icu/util/LocaleMatcher$Demotion;,
        Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;,
        Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_LOCALE:Ljava/util/Locale;

.field private static final TRACE_MATCHER:Z = false

.field private static final UND_LOCALE:Ljava/util/Locale;

.field private static final UND_LSR:Lcom/ibm/icu/impl/locale/LSR;

.field private static final UND_ULOCALE:Lcom/ibm/icu/util/ULocale;


# instance fields
.field private final defaultLocale:Ljava/util/Locale;

.field private final defaultULocale:Lcom/ibm/icu/util/ULocale;

.field private final demotionPerDesiredLocale:I

.field private final direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

.field private final favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

.field private final supportedIndexes:[I

.field private final supportedLSRs:[Lcom/ibm/icu/impl/locale/LSR;

.field private final supportedLSRsLength:I

.field private final supportedLocales:[Ljava/util/Locale;

.field private final supportedLsrToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/locale/LSR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedULocales:[Lcom/ibm/icu/util/ULocale;

.field private final thresholdDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Lcom/ibm/icu/impl/locale/LSR;

    const/4 v1, 0x7

    const-string v2, "und"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/LocaleMatcher;->UND_LSR:Lcom/ibm/icu/impl/locale/LSR;

    .line 68
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/LocaleMatcher;->UND_ULOCALE:Lcom/ibm/icu/util/ULocale;

    .line 70
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/LocaleMatcher;->UND_LOCALE:Ljava/util/Locale;

    .line 71
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/LocaleMatcher;->EMPTY_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/LocaleMatcher$Builder;)V
    .locals 19

    move-object/from16 v0, p0

    .line 679
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 680
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$200(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v2

    .line 685
    invoke-static {v1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 690
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$300(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 691
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$300(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 692
    :goto_1
    new-array v6, v4, [Lcom/ibm/icu/util/ULocale;

    iput-object v6, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    .line 693
    new-array v6, v4, [Ljava/util/Locale;

    iput-object v6, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    .line 695
    new-array v6, v4, [Lcom/ibm/icu/impl/locale/LSR;

    const/4 v7, 0x1

    if-lez v4, :cond_2

    .line 698
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$300(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ibm/icu/util/ULocale;

    .line 699
    iget-object v11, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    aput-object v10, v11, v9

    .line 700
    iget-object v11, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    invoke-virtual {v10}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v12

    aput-object v12, v11, v9

    .line 701
    invoke-static {v10}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v10

    aput-object v10, v6, v9

    add-int/2addr v9, v7

    goto :goto_2

    .line 712
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    .line 713
    new-array v8, v4, [Lcom/ibm/icu/impl/locale/LSR;

    iput-object v8, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRs:[Lcom/ibm/icu/impl/locale/LSR;

    .line 714
    new-array v8, v4, [I

    iput-object v8, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedIndexes:[I

    .line 718
    new-array v8, v4, [B

    .line 721
    iget-object v9, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    const/4 v7, 0x2

    if-ge v11, v10, :cond_6

    aget-object v16, v9, v11

    .line 722
    aget-object v15, v6, v14

    if-nez v2, :cond_3

    .line 723
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$400(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 727
    iget-object v1, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v1, v1, v5

    .line 729
    invoke-direct {v0, v15, v5, v12}, Lcom/ibm/icu/util/LocaleMatcher;->putIfAbsent(Lcom/ibm/icu/impl/locale/LSR;II)I

    move-result v12

    move-object v3, v1

    move-object v2, v15

    move-object/from16 v1, v16

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_4

    .line 730
    invoke-virtual {v15, v2}, Lcom/ibm/icu/impl/locale/LSR;->isEquivalentTo(Lcom/ibm/icu/impl/locale/LSR;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 731
    invoke-direct {v0, v15, v14, v12}, Lcom/ibm/icu/util/LocaleMatcher;->putIfAbsent(Lcom/ibm/icu/impl/locale/LSR;II)I

    move-result v12

    goto :goto_4

    .line 732
    :cond_4
    sget-object v5, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    invoke-virtual {v5, v15}, Lcom/ibm/icu/impl/locale/LocaleDistance;->isParadigmLSR(Lcom/ibm/icu/impl/locale/LSR;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 733
    aput-byte v7, v8, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x3

    .line 736
    aput-byte v5, v8, v14

    :goto_4
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v13, v12

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_8

    if-ge v12, v13, :cond_8

    .line 743
    aget-byte v5, v8, v2

    if-ne v5, v7, :cond_7

    .line 744
    aget-object v5, v6, v2

    invoke-direct {v0, v5, v2, v12}, Lcom/ibm/icu/util/LocaleMatcher;->putIfAbsent(Lcom/ibm/icu/impl/locale/LSR;II)I

    move-result v5

    move v12, v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_a

    .line 749
    aget-byte v5, v8, v2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_9

    .line 750
    aget-object v5, v6, v2

    invoke-direct {v0, v5, v2, v12}, Lcom/ibm/icu/util/LocaleMatcher;->putIfAbsent(Lcom/ibm/icu/impl/locale/LSR;II)I

    move-result v5

    move v12, v5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 753
    :cond_a
    iput v12, v0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRsLength:I

    .line 758
    iput-object v1, v0, Lcom/ibm/icu/util/LocaleMatcher;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 759
    iput-object v3, v0, Lcom/ibm/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$500(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/LocaleMatcher$Demotion;->NONE:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x0

    goto :goto_7

    :cond_b
    sget-object v1, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    .line 762
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getDefaultDemotionPerDesiredLocale()I

    move-result v1

    :goto_7
    iput v1, v0, Lcom/ibm/icu/util/LocaleMatcher;->demotionPerDesiredLocale:I

    .line 763
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$600(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    move-result-object v7

    iput-object v7, v0, Lcom/ibm/icu/util/LocaleMatcher;->favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    .line 764
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$700(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/LocaleMatcher$Direction;

    move-result-object v8

    iput-object v8, v0, Lcom/ibm/icu/util/LocaleMatcher;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    .line 767
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$800(Lcom/ibm/icu/util/LocaleMatcher$Builder;)I

    move-result v1

    if-ltz v1, :cond_c

    .line 768
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$800(Lcom/ibm/icu/util/LocaleMatcher$Builder;)I

    move-result v1

    goto :goto_8

    .line 769
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$900(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 770
    sget-object v2, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    .line 771
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$900(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Lcom/ibm/icu/impl/locale/LSR;

    .line 772
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->access$1000(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const/16 v1, 0x64

    .line 773
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v6

    .line 770
    invoke-virtual/range {v2 .. v8}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result v1

    .line 775
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getDistanceFloor(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_8

    .line 777
    :cond_d
    sget-object v1, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getDefaultScriptDistance()I

    move-result v1

    .line 779
    :goto_8
    iput v1, v0, Lcom/ibm/icu/util/LocaleMatcher;->thresholdDistance:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/LocaleMatcher$Builder;Lcom/ibm/icu/util/LocaleMatcher$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/LocaleMatcher;-><init>(Lcom/ibm/icu/util/LocaleMatcher$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/LocalePriorityList;)V
    .locals 1

    .line 662
    invoke-static {}, Lcom/ibm/icu/util/LocaleMatcher;->builder()Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/LocalePriorityList;->getULocales()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->setSupportedULocales(Ljava/util/Collection;)Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/LocaleMatcher;-><init>(Lcom/ibm/icu/util/LocaleMatcher$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 676
    invoke-static {}, Lcom/ibm/icu/util/LocaleMatcher;->builder()Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->setSupportedLocales(Ljava/lang/String;)Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/LocaleMatcher;-><init>(Lcom/ibm/icu/util/LocaleMatcher$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 2

    .line 651
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;-><init>(Lcom/ibm/icu/util/LocaleMatcher$1;)V

    return-object v0
.end method

.method private defaultResult()Lcom/ibm/icu/util/LocaleMatcher$Result;
    .locals 9

    .line 940
    new-instance v8, Lcom/ibm/icu/util/LocaleMatcher$Result;

    iget-object v2, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    iget-object v4, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/util/LocaleMatcher$Result;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILcom/ibm/icu/util/LocaleMatcher$1;)V

    return-object v8
.end method

.method private getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I
    .locals 10

    .line 1042
    iget v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->thresholdDistance:I

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v4, p1

    const/4 p1, -0x1

    .line 1047
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 1049
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p2, :cond_0

    .line 1054
    invoke-virtual {p2, v2}, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;->rememberCurrent(I)V

    :cond_0
    return p1

    .line 1057
    :cond_1
    sget-object v3, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    iget-object v5, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRs:[Lcom/ibm/icu/impl/locale/LSR;

    iget v6, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRsLength:I

    iget-object v8, p0, Lcom/ibm/icu/util/LocaleMatcher;->favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v9, p0, Lcom/ibm/icu/util/LocaleMatcher;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    move v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1061
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getShiftedDistance(I)I

    move-result v0

    if-eqz p2, :cond_2

    .line 1062
    invoke-virtual {p2, v2}, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;->rememberCurrent(I)V

    .line 1063
    :cond_2
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getIndex(I)I

    move-result p1

    .line 1065
    :cond_3
    iget v3, p0, Lcom/ibm/icu/util/LocaleMatcher;->demotionPerDesiredLocale:I

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v3

    sub-int/2addr v0, v3

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 1069
    invoke-virtual {p2}, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 1072
    :cond_5
    invoke-virtual {p2}, Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ibm/icu/impl/locale/LSR;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-gez p1, :cond_7

    return v1

    .line 1081
    :cond_7
    iget-object p2, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedIndexes:[I

    aget p1, p2, p1

    return p1
.end method

.method private static final getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 1

    .line 796
    sget-object v0, Lcom/ibm/icu/util/LocaleMatcher;->UND_ULOCALE:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    sget-object p0, Lcom/ibm/icu/util/LocaleMatcher;->UND_LSR:Lcom/ibm/icu/impl/locale/LSR;

    return-object p0

    .line 799
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->makeMaximizedLsrFrom(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p0

    return-object p0
.end method

.method private static final getMaximalLsrOrUnd(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;
    .locals 1

    .line 804
    sget-object v0, Lcom/ibm/icu/util/LocaleMatcher;->UND_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ibm/icu/util/LocaleMatcher;->EMPTY_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->makeMaximizedLsrFrom(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p0

    return-object p0

    .line 805
    :cond_1
    :goto_0
    sget-object p0, Lcom/ibm/icu/util/LocaleMatcher;->UND_LSR:Lcom/ibm/icu/impl/locale/LSR;

    return-object p0
.end method

.method private makeResult(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;I)Lcom/ibm/icu/util/LocaleMatcher$Result;
    .locals 9

    if-gez p3, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/ibm/icu/util/LocaleMatcher;->defaultResult()Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 947
    new-instance v8, Lcom/ibm/icu/util/LocaleMatcher$Result;

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v2, v0, p3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v4, v0, p3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/util/LocaleMatcher$Result;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILcom/ibm/icu/util/LocaleMatcher$1;)V

    return-object v8

    .line 950
    :cond_1
    new-instance v8, Lcom/ibm/icu/util/LocaleMatcher$Result;

    invoke-static {p2}, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->access$1500(Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v2, v0, p3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v4, v0, p3

    iget v5, p2, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->bestDesiredIndex:I

    const/4 v7, 0x0

    move-object v0, v8

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/util/LocaleMatcher$Result;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILcom/ibm/icu/util/LocaleMatcher$1;)V

    return-object v8
.end method

.method private makeResult(Ljava/util/Locale;Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;I)Lcom/ibm/icu/util/LocaleMatcher$Result;
    .locals 9

    if-gez p3, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/ibm/icu/util/LocaleMatcher;->defaultResult()Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 959
    new-instance v8, Lcom/ibm/icu/util/LocaleMatcher$Result;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v2, v0, p3

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v4, v0, p3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/util/LocaleMatcher$Result;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILcom/ibm/icu/util/LocaleMatcher$1;)V

    return-object v8

    .line 962
    :cond_1
    new-instance v8, Lcom/ibm/icu/util/LocaleMatcher$Result;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v2, v0, p3

    .line 963
    invoke-static {p2}, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->access$1600(Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;)Ljava/util/Locale;

    move-result-object v3

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v4, v0, p3

    iget v5, p2, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->bestDesiredIndex:I

    const/4 v7, 0x0

    move-object v0, v8

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/util/LocaleMatcher$Result;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILcom/ibm/icu/util/LocaleMatcher$1;)V

    return-object v8
.end method

.method private final putIfAbsent(Lcom/ibm/icu/impl/locale/LSR;II)I
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRs:[Lcom/ibm/icu/impl/locale/LSR;

    aput-object p1, v0, p3

    .line 790
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedIndexes:[I

    add-int/lit8 v0, p3, 0x1

    aput p2, p1, p3

    move p3, v0

    :cond_0
    return p3
.end method


# virtual methods
.method public canonicalize(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1172
    sget-object v0, Lcom/ibm/icu/impl/locale/XLikelySubtags;->INSTANCE:Lcom/ibm/icu/impl/locale/XLikelySubtags;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/XLikelySubtags;->canonicalize(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    return-object p1
.end method

.method public getBestLocale(Ljava/lang/Iterable;)Ljava/util/Locale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 929
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 930
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    return-object p1

    .line 933
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 934
    invoke-virtual {v0}, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->next()Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    .line 935
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 936
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    :goto_0
    return-object p1
.end method

.method public getBestLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1

    .line 916
    invoke-static {p1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    const/4 v0, 0x0

    .line 917
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 918
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    :goto_0
    return-object p1
.end method

.method public getBestLocaleResult(Ljava/lang/Iterable;)Lcom/ibm/icu/util/LocaleMatcher$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Locale;",
            ">;)",
            "Lcom/ibm/icu/util/LocaleMatcher$Result;"
        }
    .end annotation

    .line 1020
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1021
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/ibm/icu/util/LocaleMatcher;->defaultResult()Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p1

    return-object p1

    .line 1024
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 1025
    invoke-virtual {v0}, Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;->next()Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    .line 1026
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result p1

    const/4 v1, 0x0

    .line 1027
    invoke-direct {p0, v1, v0, p1}, Lcom/ibm/icu/util/LocaleMatcher;->makeResult(Ljava/util/Locale;Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;I)Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p1

    return-object p1
.end method

.method public getBestLocaleResult(Ljava/util/Locale;)Lcom/ibm/icu/util/LocaleMatcher$Result;
    .locals 2

    .line 1007
    invoke-static {p1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v0

    const/4 v1, 0x0

    .line 1008
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v0

    .line 1009
    invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->makeResult(Ljava/util/Locale;Lcom/ibm/icu/util/LocaleMatcher$LocaleLsrIterator;I)Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p1

    return-object p1
.end method

.method public getBestMatch(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 871
    invoke-static {p1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    const/4 v0, 0x0

    .line 872
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1
.end method

.method public getBestMatch(Ljava/lang/Iterable;)Lcom/ibm/icu/util/ULocale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)",
            "Lcom/ibm/icu/util/ULocale;"
        }
    .end annotation

    .line 885
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 886
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    return-object p1

    .line 889
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 890
    invoke-virtual {v0}, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->next()Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    .line 891
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 892
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object p1
.end method

.method public getBestMatch(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 905
    invoke-static {p1}, Lcom/ibm/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->build()Lcom/ibm/icu/util/LocalePriorityList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/LocaleMatcher;->getBestMatch(Ljava/lang/Iterable;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    return-object p1
.end method

.method public getBestMatchResult(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Result;
    .locals 2

    .line 976
    invoke-static {p1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v0

    const/4 v1, 0x0

    .line 977
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v0

    .line 978
    invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->makeResult(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;I)Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p1

    return-object p1
.end method

.method public getBestMatchResult(Ljava/lang/Iterable;)Lcom/ibm/icu/util/LocaleMatcher$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)",
            "Lcom/ibm/icu/util/LocaleMatcher$Result;"
        }
    .end annotation

    .line 989
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 990
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    invoke-direct {p0}, Lcom/ibm/icu/util/LocaleMatcher;->defaultResult()Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p1

    return-object p1

    .line 993
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 994
    invoke-virtual {v0}, Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;->next()Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    .line 995
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestSuppIndex(Lcom/ibm/icu/impl/locale/LSR;Lcom/ibm/icu/util/LocaleMatcher$LsrIterator;)I

    move-result p1

    const/4 v1, 0x0

    .line 996
    invoke-direct {p0, v1, v0, p1}, Lcom/ibm/icu/util/LocaleMatcher;->makeResult(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/LocaleMatcher$ULocaleLsrIterator;I)Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p1

    return-object p1
.end method

.method public isMatch(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Z
    .locals 8

    .line 1118
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    .line 1119
    invoke-static {p1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v1

    const/4 p1, 0x1

    new-array v2, p1, [Lcom/ibm/icu/impl/locale/LSR;

    .line 1120
    invoke-static {p2}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p2

    const/4 v7, 0x0

    aput-object p2, v2, v7

    iget p2, p0, Lcom/ibm/icu/util/LocaleMatcher;->thresholdDistance:I

    .line 1121
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v4

    iget-object v5, p0, Lcom/ibm/icu/util/LocaleMatcher;->favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v6, p0, Lcom/ibm/icu/util/LocaleMatcher;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const/4 v3, 0x1

    .line 1118
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMatch(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 8

    .line 1100
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    .line 1101
    invoke-static {p1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v1

    const/4 p1, 0x1

    new-array v2, p1, [Lcom/ibm/icu/impl/locale/LSR;

    .line 1102
    invoke-static {p2}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p2

    const/4 v7, 0x0

    aput-object p2, v2, v7

    iget p2, p0, Lcom/ibm/icu/util/LocaleMatcher;->thresholdDistance:I

    .line 1103
    invoke-static {p2}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v4

    iget-object v5, p0, Lcom/ibm/icu/util/LocaleMatcher;->favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v6, p0, Lcom/ibm/icu/util/LocaleMatcher;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const/4 v3, 0x1

    .line 1100
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public match(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)D
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1145
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleDistance;->INSTANCE:Lcom/ibm/icu/impl/locale/LocaleDistance;

    .line 1146
    invoke-static {p1}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object v1

    const/4 p1, 0x1

    new-array v2, p1, [Lcom/ibm/icu/impl/locale/LSR;

    .line 1147
    invoke-static {p3}, Lcom/ibm/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LSR;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    iget p1, p0, Lcom/ibm/icu/util/LocaleMatcher;->thresholdDistance:I

    .line 1148
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v4

    iget-object v5, p0, Lcom/ibm/icu/util/LocaleMatcher;->favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v6, p0, Lcom/ibm/icu/util/LocaleMatcher;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const/4 v3, 0x1

    .line 1145
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Lcom/ibm/icu/impl/locale/LSR;[Lcom/ibm/icu/impl/locale/LSR;IILcom/ibm/icu/util/LocaleMatcher$FavorSubtag;Lcom/ibm/icu/util/LocaleMatcher$Direction;)I

    move-result p1

    .line 1149
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleDistance;->getDistanceDouble(I)D

    move-result-wide p1

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    sub-double p1, p3, p1

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{LocaleMatcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    iget v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRsLength:I

    const/16 v2, 0x7d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    const-string v1, " supportedLSRs={"

    .line 1184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRs:[Lcom/ibm/icu/impl/locale/LSR;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 1185
    :goto_0
    iget v5, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRsLength:I

    if-ge v1, v5, :cond_0

    const-string v5, ", "

    .line 1186
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ibm/icu/util/LocaleMatcher;->supportedLSRs:[Lcom/ibm/icu/impl/locale/LSR;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1188
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " default="

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1191
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    if-eqz v1, :cond_2

    const-string v1, " favor="

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->favorSubtag:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    if-eqz v1, :cond_3

    const-string v1, " direction="

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1197
    :cond_3
    iget v1, p0, Lcom/ibm/icu/util/LocaleMatcher;->thresholdDistance:I

    if-ltz v1, :cond_4

    new-array v5, v4, [Ljava/lang/Object;

    .line 1198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, " threshold=%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-array v1, v4, [Ljava/lang/Object;

    .line 1200
    iget v4, p0, Lcom/ibm/icu/util/LocaleMatcher;->demotionPerDesiredLocale:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, " demotion=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
