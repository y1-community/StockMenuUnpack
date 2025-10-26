.class public Lcom/ibm/icu/util/Currency;
.super Lcom/ibm/icu/util/MeasureUnit;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;,
        Lcom/ibm/icu/util/Currency$CurrencyStringInfo;,
        Lcom/ibm/icu/util/Currency$ServiceShim;,
        Lcom/ibm/icu/util/Currency$CurrencyUsage;
    }
.end annotation


# static fields
.field private static ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static ALL_TENDER_CODES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final FORMAL_SYMBOL_NAME:I = 0x4

.field public static final LONG_NAME:I = 0x1

.field public static final NARROW_SYMBOL_NAME:I = 0x3

.field public static final PLURAL_LONG_NAME:I = 0x2

.field private static final POW10:[I

.field public static final SYMBOL_NAME:I = 0x0

.field private static final UND:Lcom/ibm/icu/util/ULocale;

.field public static final VARIANT_SYMBOL_NAME:I = 0x5

.field private static final regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Currency;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x510bc147b5e8c814L

.field private static shim:Lcom/ibm/icu/util/Currency$ServiceShim;


# instance fields
.field private final isoCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "currency"

    .line 63
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/util/Currency;->DEBUG:Z

    .line 66
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 260
    new-instance v0, Lcom/ibm/icu/util/Currency$1;

    invoke-direct {v0}, Lcom/ibm/icu/util/Currency$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Currency;->regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;

    .line 472
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v1, "und"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Currency;->UND:Lcom/ibm/icu/util/ULocale;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 473
    sput-object v0, Lcom/ibm/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 987
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/util/Currency;->POW10:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "currency"

    .line 979
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iput-object p1, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->loadCurrency(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method static createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
    .locals 2

    const/4 v0, 0x0

    .line 274
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 275
    sget-object v0, Lcom/ibm/icu/util/Currency;->regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Currency;

    return-object p0
.end method

.method public static fromJavaCurrency(Ljava/util/Currency;)Lcom/ibm/icu/util/Currency;
    .locals 0

    .line 332
    invoke-virtual {p0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getAllCurrenciesAsSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ibm/icu/util/Currency;

    monitor-enter v0

    .line 1011
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    :goto_0
    if-nez v1, :cond_1

    .line 1013
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v1

    .line 1014
    new-instance v2, Ljava/util/HashSet;

    .line 1015
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1014
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1016
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ibm/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getAllTenderCurrencies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ibm/icu/util/Currency;

    monitor-enter v0

    .line 998
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    if-nez v1, :cond_1

    .line 1003
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    .line 1004
    invoke-static {v1}, Lcom/ibm/icu/util/Currency;->getTenderCurrencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1005
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ibm/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/Currency;",
            ">;"
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    invoke-static {v2}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getAvailableCurrencyCodes(Lcom/ibm/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDate(Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    .line 217
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getTenderCurrencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    .line 220
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getAvailableCurrencyCodes(Ljava/util/Locale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 0

    .line 237
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/util/Currency;->getAvailableCurrencyCodes(Lcom/ibm/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 387
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/Currency$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 401
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    .line 402
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/Currency$ServiceShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            ")",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;"
        }
    .end annotation

    .line 765
    sget-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 767
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 769
    new-instance v1, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 771
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 772
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-static {p0, v2}, Lcom/ibm/icu/util/Currency;->setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/List;)V

    .line 775
    sget-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
    .locals 1

    const-string v0, "currency"

    .line 192
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_1

    .line 198
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 201
    :cond_1
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Currency$ServiceShim;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 1

    if-eqz p0, :cond_1

    .line 302
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "currency"

    invoke-static {v0, p0}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Currency;

    return-object p0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input currency code is not 3-letter alphabetic code."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The input currency code is null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/util/Currency;
    .locals 0

    .line 183
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 1

    const-string v0, "currency"

    .line 442
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 443
    sget-object p0, Lcom/ibm/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 448
    invoke-static {}, Lcom/ibm/icu/util/Currency;->getAllTenderCurrencies()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 453
    :cond_1
    sget-object p0, Lcom/ibm/icu/util/Currency;->UND:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 454
    sget-object p0, Lcom/ibm/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x1

    .line 456
    invoke-static {p1, p0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 458
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->now()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    .line 462
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getTenderCurrencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    .line 465
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 466
    sget-object p0, Lcom/ibm/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 469
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getParsingTrie(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/TextTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "I)",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 758
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TextTrieMap;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 760
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TextTrieMap;

    return-object p0
.end method

.method private static getShim()Lcom/ibm/icu/util/Currency$ServiceShim;
    .locals 2

    .line 160
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.ibm.icu.util.CurrencyServiceShim"

    .line 162
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency$ServiceShim;

    sput-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    sget-boolean v1, Lcom/ibm/icu/util/Currency;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    return-object v0
.end method

.method private static getTenderCurrencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1071
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 1072
    invoke-virtual {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static isAlpha3Code(Ljava/lang/String;)Z
    .locals 5

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 315
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-le v3, v4, :cond_1

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isAvailable(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2

    .line 1042
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1046
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1047
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "To is before from"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1050
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1051
    invoke-static {}, Lcom/ibm/icu/util/Currency;->getAllCurrenciesAsSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    const/4 p0, 0x1

    return p0

    .line 1059
    :cond_4
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 1061
    invoke-static {p1, p2}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDateRange(Ljava/util/Date;Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    .line 1060
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p1

    .line 1062
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static loadCurrency(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 280
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 281
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    .line 282
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 283
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 284
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    .line 730
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/TextTrieMap;

    .line 731
    new-instance v2, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;-><init>(Lcom/ibm/icu/util/Currency$1;)V

    .line 732
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v1, p1, v4, v2}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    .line 733
    invoke-virtual {v2}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-virtual {v2}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v2

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    .line 737
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TextTrieMap;

    .line 738
    new-instance p2, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;

    invoke-direct {p2, v3}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;-><init>(Lcom/ibm/icu/util/Currency$1;)V

    .line 739
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    .line 740
    invoke-virtual {p2}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result p0

    if-le p0, v2, :cond_0

    .line 741
    invoke-virtual {p2}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {p2}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v2

    .line 745
    :cond_0
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    add-int/2addr p0, v2

    .line 746
    invoke-virtual {p3, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public static registerInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    .line 360
    invoke-static {}, Lcom/ibm/icu/util/Currency;->getShim()Lcom/ibm/icu/util/Currency$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/util/Currency$ServiceShim;->registerInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 783
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    .line 784
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/TextTrieMap;

    .line 786
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object p0

    .line 787
    invoke-virtual {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;->symbolMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 788
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 789
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 792
    invoke-static {v3}, Lcom/ibm/icu/impl/StaticUnicodeSets;->chooseCurrency(Ljava/lang/String;)Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    move-result-object v4

    .line 793
    new-instance v5, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v5, v2, v3}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 795
    invoke-static {v4}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    .line 797
    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 798
    invoke-virtual {v0, v3, v5}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_1

    .line 801
    :cond_1
    invoke-virtual {v0, v3, v5}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_0

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;->nameMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 805
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 806
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    new-instance v2, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v2, v0, v1}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 374
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 377
    :cond_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Currency$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 372
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "registryKey must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1076
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 1

    .line 896
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I

    move-result v0

    return v0
.end method

.method public getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I
    .locals 2

    .line 915
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p1

    .line 917
    iget p1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    return p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .line 680
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ibm/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 699
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 653
    invoke-virtual {p0, p1, p2, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 658
    aput-boolean p2, p4, p2

    .line 661
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object p1

    .line 662
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 588
    aput-boolean v0, p3, v0

    .line 591
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object p1

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    .line 600
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getVariantSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 604
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad name style: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 598
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getFormalSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 596
    :cond_3
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getNarrowSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 602
    :cond_4
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 594
    :cond_5
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 0

    .line 625
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/util/Locale;I[Z)Ljava/lang/String;
    .locals 0

    .line 560
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNumericCode()I
    .locals 3

    :try_start_0
    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "currencyNumericCodes"

    .line 493
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "codeMap"

    .line 497
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRoundingIncrement()D
    .locals 2

    .line 928
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Currency;->getRoundingIncrement(Lcom/ibm/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRoundingIncrement(Lcom/ibm/icu/util/Currency$CurrencyUsage;)D
    .locals 5

    .line 939
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p1

    .line 942
    iget v0, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 950
    :cond_0
    iget p1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    if-ltz p1, :cond_2

    .line 953
    sget-object v3, Lcom/ibm/icu/util/Currency;->POW10:[I

    array-length v4, v3

    if-lt p1, v4, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v0, v0

    .line 959
    aget p1, v3, p1

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 514
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 536
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 525
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJavaCurrency()Ljava/util/Currency;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method
