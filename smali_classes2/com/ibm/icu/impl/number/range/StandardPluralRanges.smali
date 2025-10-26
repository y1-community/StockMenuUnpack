.class public Lcom/ibm/icu/impl/number/range/StandardPluralRanges;
.super Ljava/lang/Object;
.source "StandardPluralRanges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;,
        Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

.field private static volatile languageToSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flatTriples:[Lcom/ibm/icu/impl/StandardPlural;

.field numTriples:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->DEFAULT:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/number/range/StandardPluralRanges;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->setCapacity(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/number/range/StandardPluralRanges;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->addPluralRange(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    return-void
.end method

.method private addPluralRange(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Lcom/ibm/icu/impl/StandardPlural;

    iget v1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    mul-int/lit8 v2, v1, 0x3

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x3

    add-int/lit8 p1, p1, 0x1

    .line 146
    aput-object p2, v0, p1

    mul-int/lit8 p1, v1, 0x3

    add-int/lit8 p1, p1, 0x2

    .line 147
    aput-object p3, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 148
    iput v1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    return-void
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/number/range/StandardPluralRanges;
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->getSetForLocale(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->forSet(Ljava/lang/String;)Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    move-result-object p0

    return-object p0
.end method

.method public static forSet(Ljava/lang/String;)Lcom/ibm/icu/impl/number/range/StandardPluralRanges;
    .locals 1

    .line 126
    new-instance v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;-><init>()V

    if-nez p0, :cond_0

    .line 129
    sget-object p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->DEFAULT:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    return-object p0

    .line 131
    :cond_0
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->getPluralRangesData(Ljava/lang/String;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)V

    return-object v0
.end method

.method private static getLanguageToSet()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    new-instance v1, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;-><init>(Ljava/util/Map;)V

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    const-string v3, "pluralRanges"

    .line 63
    invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v3, "locales"

    .line 64
    invoke-virtual {v2, v3, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 68
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 69
    sput-object v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    .line 71
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    return-object v0
.end method

.method private static getPluralRangesData(Ljava/lang/String;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)V
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "pluralRanges"

    .line 108
    invoke-static {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "rules/"

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;-><init>(Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)V

    .line 114
    invoke-virtual {v1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    return-void
.end method

.method public static getSetForLocale(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 137
    invoke-static {}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->getLanguageToSet()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private setCapacity(I)V
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    .line 153
    new-array p1, p1, [Lcom/ibm/icu/impl/StandardPlural;

    iput-object p1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Lcom/ibm/icu/impl/StandardPlural;

    return-void
.end method


# virtual methods
.method public resolve(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 4

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Lcom/ibm/icu/impl/StandardPlural;

    mul-int/lit8 v2, v0, 0x3

    aget-object v3, v1, v2

    if-ne p1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    if-ne p2, v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 159
    aget-object p1, v1, v2

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    sget-object p1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    return-object p1
.end method
