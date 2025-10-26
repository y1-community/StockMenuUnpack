.class public Lcom/ibm/icu/impl/PluralRulesLoader;
.super Lcom/ibm/icu/text/PluralRules$Factory;
.source "PluralRulesLoader.java"


# static fields
.field public static final loader:Lcom/ibm/icu/impl/PluralRulesLoader;


# instance fields
.field private localeIdToCardinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeIdToOrdinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pluralRulesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules;",
            ">;"
        }
    .end annotation
.end field

.field private rulesIdToEquivalentULocale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Lcom/ibm/icu/impl/PluralRulesLoader;

    invoke-direct {v0}, Lcom/ibm/icu/impl/PluralRulesLoader;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralRules$Factory;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    return-void
.end method

.method private checkBuildRulesIdMaps()V
    .locals 9

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_5

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v2, "locales"

    .line 115
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 122
    :goto_1
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 123
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 129
    new-instance v8, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v8, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "locales_ordinals"

    .line 134
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 135
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 136
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 137
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 149
    :cond_3
    monitor-enter p0

    .line 150
    :try_start_2
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 151
    iput-object v3, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    .line 152
    iput-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    .line 153
    iput-object v4, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    .line 155
    :cond_4
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 107
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/PluralRules$PluralType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 87
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    :goto_0
    return-object p1
.end method

.method private getRulesIdToEquivalentULocaleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 95
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getOrCreateRulesForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p1

    if-nez p1, :cond_0

    .line 247
    sget-object p1, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    :cond_0
    return-object p1
.end method

.method public getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 3

    .line 50
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ibm/icu/util/ULocale;

    .line 55
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getFunctionalEquivalent(Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .locals 3

    if-eqz p2, :cond_0

    .line 62
    array-length v0, p2

    if-lez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 65
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v0, p2, v2

    .line 68
    :cond_0
    sget-object p2, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdToEquivalentULocaleMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/ULocale;

    if-nez p1, :cond_2

    .line 76
    sget-object p1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    :cond_2
    return-object p1

    .line 70
    :cond_3
    :goto_0
    sget-object p1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    return-object p1
.end method

.method public getOrCreateRulesForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 6

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 184
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 187
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->getSetForLocale(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules;

    .line 197
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_5

    .line 200
    :try_start_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "rules"

    .line 201
    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 202
    invoke-virtual {v2, p2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p2

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 205
    :goto_0
    invoke-virtual {p2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 206
    invoke-virtual {p2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    if-lez v3, :cond_2

    const-string v5, "; "

    .line 208
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_2
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 211
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {p1}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->forSet(Ljava/lang/String;)Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    move-result-object p1

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ibm/icu/text/PluralRules;->newInternal(Ljava/lang/String;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    :catch_0
    iget-object p1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    monitor-enter p1

    .line 220
    :try_start_2
    iget-object p2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 221
    iget-object p2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/PluralRules;

    move-object v0, p2

    goto :goto_1

    .line 223
    :cond_4
    iget-object p2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_5
    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    .line 197
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "plurals"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/lang/String;
    .locals 3

    .line 165
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object p2

    .line 166
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "_"

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public hasOverride(Lcom/ibm/icu/util/ULocale;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
