.class final Lcom/ibm/icu/text/BreakIteratorFactory;
.super Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/BreakIteratorFactory$BFService;
    }
.end annotation


# static fields
.field private static final KIND_NAMES:[Ljava/lang/String;

.field static final service:Lcom/ibm/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Lcom/ibm/icu/text/BreakIteratorFactory$BFService;

    invoke-direct {v0}, Lcom/ibm/icu/text/BreakIteratorFactory$BFService;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/BreakIteratorFactory;->service:Lcom/ibm/icu/impl/ICULocaleService;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "grapheme"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "line"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sentence"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    .line 116
    sput-object v0, Lcom/ibm/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BreakIteratorFactory;->createBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method private static createBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
    .locals 5

    .line 124
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v1, "com/ibm/icu/impl/data/icudt69b/brkitr"

    .line 125
    invoke-static {v1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string v2, "lb"

    .line 134
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "strict"

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "loose"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 141
    :try_start_0
    sget-object v2, Lcom/ibm/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ibm/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boundaries/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brkitr/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/ibm/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :try_start_1
    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/text/RuleBasedBreakIterator;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 159
    invoke-static {v2}, Lcom/ibm/icu/impl/Assert;->fail(Ljava/lang/Exception;)V

    .line 162
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 163
    invoke-virtual {v1, v0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string p1, "ss"

    .line 167
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "standard"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 169
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;->wrapIteratorWithFilter(Lcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    :catch_1
    move-exception p0

    .line 147
    new-instance p1, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-direct {p1, p0, v0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createBreakIterator(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
    .locals 2

    .line 71
    sget-object v0, Lcom/ibm/icu/text/BreakIteratorFactory;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p1, p2}, Lcom/ibm/icu/text/BreakIteratorFactory;->createBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ibm/icu/util/ULocale;

    .line 75
    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/BreakIterator;

    const/4 p2, 0x0

    aget-object v0, v1, p2

    aget-object p2, v1, p2

    .line 76
    invoke-virtual {p1, v0, p2}, Lcom/ibm/icu/text/BreakIterator;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 52
    sget-object v0, Lcom/ibm/icu/text/BreakIteratorFactory;->service:Lcom/ibm/icu/impl/ICULocaleService;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 61
    sget-object v0, Lcom/ibm/icu/text/BreakIteratorFactory;->service:Lcom/ibm/icu/impl/ICULocaleService;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 2

    .line 38
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 39
    sget-object v0, Lcom/ibm/icu/text/BreakIteratorFactory;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method public unregister(Ljava/lang/Object;)Z
    .locals 2

    .line 44
    sget-object v0, Lcom/ibm/icu/text/BreakIteratorFactory;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->unregisterFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Z

    move-result p1

    return p1
.end method
