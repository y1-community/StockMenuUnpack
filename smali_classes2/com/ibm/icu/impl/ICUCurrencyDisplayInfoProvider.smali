.class public Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"

# interfaces
.implements Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
    }
.end annotation


# instance fields
.field private volatile currencyDisplayInfoCache:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    return-void
.end method


# virtual methods
.method public getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 2

    if-nez p1, :cond_0

    .line 37
    sget-object p1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    if-eqz v0, :cond_1

    .line 39
    iget-object v1, v0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eq v1, p2, :cond_3

    :cond_1
    const-string v0, "com/ibm/icu/impl/data/icudt69b/curr"

    if-eqz p2, :cond_2

    .line 42
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    :try_start_0
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    invoke-direct {v1, p1, v0, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Z)V

    .line 53
    iput-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    move-object v0, v1

    :cond_3
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
