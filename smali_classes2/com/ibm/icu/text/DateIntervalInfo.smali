.class public Lcom/ibm/icu/text/DateIntervalInfo;
.super Ljava/lang/Object;
.source "DateIntervalInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;,
        Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/DateIntervalInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

.field private static CALENDAR_KEY:Ljava/lang/String; = "calendar"

.field private static final DIICACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static EARLIEST_FIRST_PREFIX:Ljava/lang/String; = "earliestFirst:"

.field private static FALLBACK_STRING:Ljava/lang/String; = "fallback"

.field private static INTERVAL_FORMATS_KEY:Ljava/lang/String; = "intervalFormats"

.field private static LATEST_FIRST_PREFIX:Ljava/lang/String; = "latestFirst:"

.field private static final MINIMUM_SUPPORTED_CALENDAR_FIELD:I = 0xe

.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fFallbackIntervalPattern:Ljava/lang/String;

.field private fFirstDateInPtnIsLaterDate:Z

.field private fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient fIntervalPatternsReadOnly:Z

.field private volatile transient frozen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "W"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v3, "Y"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "e"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string v3, "u"

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "g"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v3, "A"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    aput-object v2, v0, v1

    .line 286
    sput-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    .line 311
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->DIICACHE:Lcom/ibm/icu/impl/ICUCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    const/4 v1, 0x0

    .line 320
    iput-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 322
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z

    .line 328
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const-string v0, "{0} \u2013 {1}"

    .line 349
    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    const/4 v1, 0x0

    .line 320
    iput-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 322
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z

    .line 328
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 362
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalInfo;->initializeData(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 375
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 161
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 161
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/DateIntervalInfo;)Ljava/util/Map;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/DateIntervalInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p0

    return-object p0
.end method

.method private static cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .line 976
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 977
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 978
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 979
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 980
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 981
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 982
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 983
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    .line 984
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 986
    :cond_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private cloneUnfrozenDII()Ljava/lang/Object;
    .locals 3

    .line 955
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateIntervalInfo;

    .line 956
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 957
    iget-boolean v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v1, v0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 958
    iget-boolean v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 v1, 0x1

    .line 960
    iput-boolean v1, v0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    goto :goto_0

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {v1}, Lcom/ibm/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 963
    iput-boolean v2, v0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 965
    :goto_0
    iput-boolean v2, v0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 969
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    const-string v2, "clone is not supported"

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static genPatternInfo(Ljava/lang/String;Z)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 835
    invoke-static {p0}, Lcom/ibm/icu/text/DateIntervalInfo;->splitPatternInto2Part(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 837
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 839
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 840
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 843
    :goto_0
    new-instance v0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    invoke-direct {v0, v1, p0, p1}, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private initializeData(Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .line 384
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/ibm/icu/text/DateIntervalInfo;->DIICACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/DateIntervalInfo;

    if-nez v2, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalInfo;->setup(Lcom/ibm/icu/util/ULocale;)V

    const/4 p1, 0x1

    .line 390
    iput-boolean p1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 392
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DateIntervalInfo;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DateIntervalInfo;->freeze()Lcom/ibm/icu/text/DateIntervalInfo;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/DateIntervalInfo;->initializeFromReadOnlyPatterns(Lcom/ibm/icu/text/DateIntervalInfo;)V

    :goto_0
    return-void
.end method

.method private initializeFromReadOnlyPatterns(Lcom/ibm/icu/text/DateIntervalInfo;)V
    .locals 1

    .line 405
    iget-object v0, p1, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 406
    iget-boolean v0, p1, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 407
    iget-object p1, p1, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 p1, 0x1

    .line 408
    iput-boolean p1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    return-void
.end method

.method static parseSkeleton(Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 1036
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1037
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 819
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;
    .locals 6

    .line 781
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 787
    :goto_0
    iget-boolean v4, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 789
    sget-object v5, Lcom/ibm/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 791
    sget-object v1, Lcom/ibm/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 792
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    goto :goto_1

    .line 793
    :cond_1
    sget-object v5, Lcom/ibm/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 795
    sget-object v4, Lcom/ibm/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 796
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move v1, v4

    .line 798
    :goto_1
    invoke-static {p3, v1}, Lcom/ibm/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p3

    .line 800
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v2, :cond_3

    .line 802
    iget-object p2, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p3
.end method

.method private setup(Lcom/ibm/icu/util/ULocale;)V
    .locals 6

    const-string v0, "calendar"

    const-string v1, "/"

    .line 578
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const-string v2, "{0} \u2013 {1}"

    .line 581
    iput-object v2, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 585
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 588
    invoke-static {v0, p1, v2}, Lcom/ibm/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 589
    aget-object v2, v0, v2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "gregorian"

    .line 596
    :cond_1
    new-instance v0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;-><init>(Lcom/ibm/icu/text/DateIntervalInfo;)V

    const-string v3, "com/ibm/icu/impl/data/icudt69b"

    .line 598
    invoke-static {v3, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ibm/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ibm/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/DateIntervalInfo;->setFallbackIntervalPattern(Ljava/lang/String;)V

    .line 606
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz v2, :cond_3

    .line 610
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 615
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-virtual {p1, v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 622
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->getAndResetNextCalendarType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 611
    :cond_2
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loop in calendar type fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private static splitPatternInto2Part(Ljava/lang/String;)I
    .locals 11

    const/16 v0, 0x3a

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 654
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x41

    const/4 v8, 0x1

    if-ge v2, v6, :cond_6

    .line 655
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_0

    if-lez v4, :cond_0

    add-int/lit8 v9, v3, -0x41

    .line 659
    aget v10, v0, v9

    if-nez v10, :cond_7

    .line 661
    aput v8, v0, v9

    const/4 v4, 0x0

    :cond_0
    const/16 v9, 0x27

    if-ne v6, v9, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 671
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 672
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    xor-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_5

    const/16 v9, 0x61

    if-lt v6, v9, :cond_3

    const/16 v9, 0x7a

    if-le v6, v9, :cond_4

    :cond_3
    if-lt v6, v7, :cond_5

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    :cond_5
    :goto_1
    add-int/2addr v2, v8

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    :cond_7
    if-lez v4, :cond_8

    if-nez v8, :cond_8

    sub-int/2addr v3, v7

    .line 690
    aget p0, v0, v3

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v4

    :goto_2
    sub-int/2addr v2, v1

    return v2
.end method

.method private static stringNumeric(IIC)Z
    .locals 1

    const/16 v0, 0x4d

    if-ne p2, v0, :cond_2

    const/4 p2, 0x2

    if-gt p0, p2, :cond_0

    if-gt p1, p2, :cond_1

    :cond_0
    if-le p0, p2, :cond_2

    if-gt p1, p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 944
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/DateIntervalInfo;
    .locals 2

    .line 1022
    invoke-direct {p0}, Lcom/ibm/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateIntervalInfo;

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/DateIntervalInfo;

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateIntervalInfo;->cloneAsThawed()Lcom/ibm/icu/text/DateIntervalInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1161
    instance-of v0, p1, Lcom/ibm/icu/text/DateIntervalInfo;

    if-eqz v0, :cond_0

    .line 1162
    check-cast p1, Lcom/ibm/icu/text/DateIntervalInfo;

    .line 1163
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iget-object p1, p1, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public freeze()Lcom/ibm/icu/text/DateIntervalInfo;
    .locals 1

    const/4 v0, 0x1

    .line 1010
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 1011
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/ibm/icu/text/DateIntervalInfo;->freeze()Lcom/ibm/icu/text/DateIntervalInfo;

    move-result-object v0

    return-object v0
.end method

.method getBestSkeleton(Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;
    .locals 16

    move-object/from16 v0, p1

    const/16 v1, 0x3a

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/16 v4, 0x7a

    .line 1095
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x4b

    const/16 v7, 0x6b

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v10, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v10, :cond_1

    const/16 v5, 0x61

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v10, :cond_1

    const/16 v5, 0x62

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v10, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v5, 0x76

    .line 1096
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x48

    .line 1097
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x68

    .line 1098
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const-string v5, "a"

    const-string v6, ""

    .line 1099
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b"

    .line 1100
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 1104
    :goto_1
    invoke-static {v4, v2}, Lcom/ibm/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const v4, 0x7fffffff

    move-object/from16 v6, p0

    .line 1111
    iget-object v7, v6, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_2

    .line 1114
    aput v9, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1116
    :cond_2
    invoke-static {v12, v3}, Lcom/ibm/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_4
    if-ge v13, v1, :cond_7

    .line 1121
    aget v1, v2, v13

    .line 1122
    aget v8, v3, v13

    if-ne v1, v8, :cond_3

    goto :goto_6

    :cond_3
    if-nez v1, :cond_4

    :goto_5
    add-int/lit16 v14, v14, 0x1000

    const/4 v15, -0x1

    goto :goto_6

    :cond_4
    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v13, 0x41

    int-to-char v9, v9

    .line 1132
    invoke-static {v1, v8, v9}, Lcom/ibm/icu/text/DateIntervalInfo;->stringNumeric(IIC)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit16 v14, v14, 0x100

    goto :goto_6

    :cond_6
    sub-int/2addr v1, v8

    .line 1136
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v14, v1

    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0x3a

    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    if-ge v14, v4, :cond_8

    move-object v0, v12

    move v4, v14

    move v11, v15

    :cond_8
    if-nez v14, :cond_9

    const/4 v9, 0x0

    goto :goto_7

    :cond_9
    const/16 v1, 0x3a

    const/4 v9, 0x0

    goto :goto_2

    :cond_a
    move v9, v11

    :goto_7
    if-eqz v5, :cond_b

    if-eq v9, v10, :cond_b

    const/4 v9, 0x2

    .line 1152
    :cond_b
    new-instance v1, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;

    invoke-direct {v1, v0, v9}, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getDefaultOrder()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    return v0
.end method

.method public getFallbackIntervalPattern()Ljava/lang/String;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalPattern(Ljava/lang/String;I)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;
    .locals 1

    const/16 v0, 0xe

    if-gt p2, v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 864
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 865
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 860
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no support for field less than MILLISECOND"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPatterns()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1183
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1184
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1197
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1198
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1199
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 1000
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z

    return v0
.end method

.method public setFallbackIntervalPattern(Ljava/lang/String;)V
    .locals 3

    .line 904
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z

    if-nez v0, :cond_2

    const-string v0, "{0}"

    .line 907
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "{1}"

    .line 908
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 913
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 915
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-void

    .line 910
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no pattern {0} or pattern {1} in fallbackPattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 905
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no modification is allowed after DII is frozen"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIntervalPattern(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 736
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->frozen:Z

    if-nez v0, :cond_5

    const/16 v0, 0xe

    if-gt p2, v0, :cond_4

    .line 742
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {v0}, Lcom/ibm/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 v0, 0x0

    .line 744
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 746
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v1, v0, p2

    invoke-direct {p0, p1, v1, p3}, Lcom/ibm/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p3

    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    const/16 p2, 0x9

    .line 750
    aget-object p2, v0, p2

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;)V

    const/16 p2, 0xa

    .line 753
    aget-object p2, v0, p2

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/4 v2, 0x7

    if-ne p2, v2, :cond_3

    .line 758
    :cond_2
    aget-object p2, v0, v1

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;)V

    :cond_3
    :goto_0
    return-void

    .line 740
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "calendar field is larger than MINIMUM_SUPPORTED_CALENDAR_FIELD"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "no modification is allowed after DII is frozen"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
