.class public Lcom/ibm/icu/impl/ICULocaleService;
.super Lcom/ibm/icu/impl/ICUService;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;,
        Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;,
        Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;,
        Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
    }
.end annotation


# instance fields
.field private fallbackLocale:Lcom/ibm/icu/util/ULocale;

.field private fallbackLocaleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUService;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Key;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonical(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    move-result-object p1

    return-object p1
.end method

.method public createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    move-result-object p1

    return-object p1
.end method

.method public createKey(Ljava/lang/String;I)Lcom/ibm/icu/impl/ICUService$Key;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 4

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService;->createKey(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object p1

    if-nez p3, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/ICULocaleService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "/"

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    aget-object v3, v0, v1

    add-int/2addr v2, p2

    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    .line 79
    :cond_1
    new-instance p2, Lcom/ibm/icu/util/ULocale;

    aget-object v0, v0, v1

    invoke-direct {p2, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object p2, p3, v1

    :cond_2
    return-object p1
.end method

.method public get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    .line 57
    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 5

    .line 126
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    .line 129
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    invoke-static {v3}, Lcom/ibm/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 131
    aput-object v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 6

    .line 141
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ibm/icu/util/ULocale;

    .line 144
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .line 145
    new-instance v5, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v5, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ICUService$Factory;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;
    .locals 1

    .line 116
    new-instance v0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, -0x1

    .line 99
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 2

    .line 611
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;

    if-eq v0, v1, :cond_1

    .line 613
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;

    if-eq v0, v1, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->clearServiceCache()V

    .line 617
    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;

    .line 619
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 621
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    return-object v0
.end method
