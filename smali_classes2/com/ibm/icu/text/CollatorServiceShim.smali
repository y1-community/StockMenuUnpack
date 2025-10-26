.class final Lcom/ibm/icu/text/CollatorServiceShim;
.super Lcom/ibm/icu/text/Collator$ServiceShim;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollatorServiceShim$CService;
    }
.end annotation


# static fields
.field private static service:Lcom/ibm/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Lcom/ibm/icu/text/CollatorServiceShim$CService;

    invoke-direct {v0}, Lcom/ibm/icu/text/CollatorServiceShim$CService;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator$ServiceShim;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/ibm/icu/text/CollatorServiceShim;->makeInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method private static final makeInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 2

    .line 182
    new-instance v0, Lcom/ibm/icu/util/Output;

    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 184
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/coll/CollationLoader;->loadTailoring(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/impl/coll/CollationTailoring;

    move-result-object p0

    .line 185
    new-instance v1, Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v0, v0, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;-><init>(Lcom/ibm/icu/impl/coll/CollationTailoring;Lcom/ibm/icu/util/ULocale;)V

    return-object v1
.end method


# virtual methods
.method getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 104
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b/coll"

    invoke-static {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 116
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b/coll"

    invoke-static {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p1

    .line 128
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/ibm/icu/util/ULocale;

    .line 39
    sget-object v2, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v2, p1, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/Collator;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/Collator;

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/util/MissingResourceException;

    const-string v1, "Could not locate Collator data"

    invoke-direct {p1, v1, v0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method registerFactory(Lcom/ibm/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 2

    .line 92
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    new-instance v1, Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;

    invoke-direct {v1, p0, p1}, Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;-><init>(Lcom/ibm/icu/text/CollatorServiceShim;Lcom/ibm/icu/text/Collator$CollatorFactory;)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICULocaleService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method registerInstance(Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p1, p2, p2}, Lcom/ibm/icu/text/Collator;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 61
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1

    .line 97
    sget-object v0, Lcom/ibm/icu/text/CollatorServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    check-cast p1, Lcom/ibm/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->unregisterFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Z

    move-result p1

    return p1
.end method
