.class public Lcom/ibm/icu/text/TimeUnitFormat;
.super Lcom/ibm/icu/text/MeasureFormat;
.source "TimeUnitFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ABBREVIATED_NAME:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_PATTERN_FOR_DAY:Ljava/lang/String; = "{0} d"

.field private static final DEFAULT_PATTERN_FOR_HOUR:Ljava/lang/String; = "{0} h"

.field private static final DEFAULT_PATTERN_FOR_MINUTE:Ljava/lang/String; = "{0} min"

.field private static final DEFAULT_PATTERN_FOR_MONTH:Ljava/lang/String; = "{0} m"

.field private static final DEFAULT_PATTERN_FOR_SECOND:Ljava/lang/String; = "{0} s"

.field private static final DEFAULT_PATTERN_FOR_WEEK:Ljava/lang/String; = "{0} w"

.field private static final DEFAULT_PATTERN_FOR_YEAR:Ljava/lang/String; = "{0} y"

.field public static final FULL_NAME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TOTAL_STYLES:I = 0x2

.field private static final serialVersionUID:J = -0x3374a809c751fb09L


# instance fields
.field private format:Lcom/ibm/icu/text/NumberFormat;

.field private transient isReady:Z

.field private locale:Lcom/ibm/icu/util/ULocale;

.field private transient pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private style:I

.field private transient timeUnitToCountToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    .line 145
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)V

    .line 146
    invoke-super {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    if-ltz p2, :cond_1

    const/4 p1, 0x2

    if-ge p2, p1, :cond_1

    .line 150
    iput p2, p0, Lcom/ibm/icu/text/TimeUnitFormat;->style:I

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    return-void

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "style should be either FULL_NAME or ABBREVIATED_NAME style"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/text/NumberFormat;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    if-eqz p3, :cond_0

    .line 157
    invoke-virtual {p3}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/TimeUnitFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/TimeUnitFormat;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Ljava/util/Locale;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 578
    new-instance v0, Lcom/ibm/icu/text/TimeUnitFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iget v2, p0, Lcom/ibm/icu/text/TimeUnitFormat;->style:I

    iget-object v3, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/text/NumberFormat;)V

    return-object v0
.end method

.method private searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/ibm/icu/util/TimeUnit;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 492
    iget-object v0, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 493
    invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/util/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v13, 0x2

    if-eqz v0, :cond_1

    :try_start_0
    const-string v2, "com/ibm/icu/impl/data/icudt69b/unit"

    .line 497
    invoke-static {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 499
    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 500
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 501
    invoke-virtual {v2, v11}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    new-instance v3, Lcom/ibm/icu/text/MessageFormat;

    iget-object v4, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v3, v2, v4}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 503
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-nez v2, :cond_0

    new-array v2, v13, [Ljava/lang/Object;

    .line 506
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_0
    aput-object v3, v2, p2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 512
    :catch_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "unitsShort"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "units"

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 517
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 518
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 519
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "other"

    .line 525
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 528
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->SECOND:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_3

    .line 529
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} s"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 530
    :cond_3
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->MINUTE:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_4

    .line 531
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} min"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 532
    :cond_4
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->HOUR:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_5

    .line 533
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} h"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 534
    :cond_5
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->WEEK:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_6

    .line 535
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} w"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 536
    :cond_6
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->DAY:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_7

    .line 537
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} d"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 538
    :cond_7
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->MONTH:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_8

    .line 539
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} m"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 540
    :cond_8
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->YEAR:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_9

    .line 541
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} y"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 543
    :cond_9
    :goto_1
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_a

    new-array v1, v13, [Ljava/lang/Object;

    .line 546
    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_a
    aput-object v0, v1, p2

    goto :goto_2

    :cond_b
    const-string v5, "other"

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    .line 551
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void
.end method

.method private setup()V
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    .line 337
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/TimeUnitFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getNumberInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    .line 347
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v2, 0x0

    const-string v3, "units/duration"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/ibm/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 349
    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const-string v2, "unitsShort/duration"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/ibm/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 350
    iput-boolean v3, p0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    return-void
.end method

.method private setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    :try_start_0
    const-string v0, "com/ibm/icu/impl/data/icudt69b/unit"

    .line 436
    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 439
    new-instance v1, Lcom/ibm/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;

    iget-object v2, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v3, p4

    invoke-direct {v1, v8, v9, v3, v2}, Lcom/ibm/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;-><init>(Ljava/util/Map;ILjava/util/Set;Lcom/ibm/icu/util/ULocale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v10, p1

    .line 441
    :try_start_1
    invoke-virtual {v0, v10, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v10, p1

    .line 462
    :catch_1
    :goto_0
    invoke-static {}, Lcom/ibm/icu/util/TimeUnit;->values()[Lcom/ibm/icu/util/TimeUnit;

    move-result-object v11

    .line 463
    iget-object v0, v7, Lcom/ibm/icu/text/TimeUnitFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v12

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 464
    :goto_1
    array-length v0, v11

    if-ge v13, v0, :cond_4

    .line 467
    aget-object v14, v11, v13

    .line 468
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 471
    invoke-interface {v8, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v15, v0

    .line 473
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 474
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    if-nez v0, :cond_1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v14

    move-object v4, v5

    move-object v6, v15

    .line 476
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 573
    invoke-super {p0}, Lcom/ibm/icu/text/MeasureFormat;->toTimeUnitProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    invoke-super {p0}, Lcom/ibm/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeUnitFormat;

    .line 565
    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    iput-object v1, v0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method getNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->toNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeUnitAmount;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeUnitAmount;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 247
    iget-boolean v2, v0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    if-nez v2, :cond_0

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeUnitFormat;->setup()V

    .line 252
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 259
    iget-object v3, v0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ibm/icu/util/TimeUnit;

    .line 260
    iget-object v14, v0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 261
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v13, :cond_5

    .line 264
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    aget-object v17, v17, v6

    move-object/from16 v13, v17

    check-cast v13, Lcom/ibm/icu/text/MessageFormat;

    .line 265
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 266
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v5, p1

    .line 268
    invoke-virtual {v13, v5, v1}, Lcom/ibm/icu/text/MessageFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v3

    .line 269
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ne v3, v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_4

    .line 274
    :cond_1
    check-cast v13, [Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    array-length v3, v13

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 278
    aget-object v13, v13, v3

    .line 279
    instance-of v3, v13, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 280
    check-cast v13, Ljava/lang/Number;

    goto :goto_3

    .line 286
    :cond_2
    :try_start_0
    iget-object v3, v0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v13
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 292
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v3, v8, :cond_4

    .line 296
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    move v8, v3

    move-object v10, v12

    move-object v7, v13

    move-object/from16 v9, v16

    :catch_0
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v18

    const/4 v13, 0x2

    goto :goto_2

    :cond_5
    move-object/from16 v5, p1

    goto :goto_1

    :cond_6
    move-object/from16 v5, p1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_b

    if-eqz v8, :cond_b

    const-string v3, "zero"

    .line 309
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    .line 310
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_8
    const-string v3, "one"

    .line 311
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    .line 312
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_9
    const-string v3, "two"

    .line 313
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x2

    .line 314
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_a
    const/4 v3, 0x3

    .line 318
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    :goto_5
    if-nez v8, :cond_c

    .line 322
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v1, 0x0

    return-object v1

    .line 326
    :cond_c
    invoke-virtual {v1, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 327
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 328
    new-instance v1, Lcom/ibm/icu/util/TimeUnitAmount;

    invoke-direct {v1, v7, v10}, Lcom/ibm/icu/util/TimeUnitAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/TimeUnit;)V

    return-object v1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeUnitAmount;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeUnitFormat;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/TimeUnitFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 179
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeUnitFormat;->clearCache()V

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/ibm/icu/text/TimeUnitFormat;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/TimeUnitFormat;->setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeUnitFormat;

    move-result-object p1

    return-object p1
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/TimeUnitFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getNumberInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    goto :goto_0

    .line 213
    :cond_2
    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeUnitFormat;->clearCache()V

    return-object p0
.end method
