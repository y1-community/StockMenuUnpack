.class public Lcom/ibm/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source "CurrencyPluralInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final defaultCurrencyPluralPattern:Ljava/lang/String;

.field private static final defaultCurrencyPluralPatternChar:[C

.field private static final serialVersionUID:J = 0x1L

.field private static final tripleCurrencySign:[C

.field private static final tripleCurrencyStr:Ljava/lang/String;


# instance fields
.field private pluralCountToCurrencyUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 320
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    .line 322
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sput-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 325
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    .line 327
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sput-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0xa4s
        0xa4s
        0xa4s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x2es
        0x23s
        0x23s
        0x20s
        0xa4s
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 340
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 343
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 49
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 340
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 343
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 67
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 340
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 343
    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 58
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public static getInstance()Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 77
    new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>()V

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 99
    new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 88
    new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 278
    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 279
    invoke-static {p1}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 280
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V
    .locals 11

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    const/4 v0, 0x0

    .line 286
    invoke-static {p1, v0}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 291
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 294
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v6, 0x1

    invoke-interface {v0, p1, v6}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "{0}"

    .line 301
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 302
    sget-object v9, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    const-string v10, "{1}"

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    if-eq v3, v4, :cond_1

    .line 305
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 198
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 200
    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    iput-object v1, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 206
    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    iget-object v3, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    iget-object v4, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 223
    instance-of v0, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 225
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    iget-object v2, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iget-object p1, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 226
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "other"

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    .line 133
    sget-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getPluralRules()Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 239
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 240
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public pluralPatternIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method select(D)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public select(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCurrencyPluralPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 187
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public setPluralRules(Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-static {p1}, Lcom/ibm/icu/text/PluralRules;->createRules(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-void
.end method
