.class final Lcom/ibm/icu/util/CurrencyServiceShim;
.super Lcom/ibm/icu/util/Currency$ServiceShim;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/CurrencyServiceShim$CFService;
    }
.end annotation


# static fields
.field static final service:Lcom/ibm/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/ibm/icu/util/CurrencyServiceShim$CFService;

    invoke-direct {v0}, Lcom/ibm/icu/util/CurrencyServiceShim$CFService;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ibm/icu/util/Currency$ServiceShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
    .locals 2

    .line 44
    sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Currency;

    return-object p1
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 28
    sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 35
    sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method registerInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    .line 52
    sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1

    .line 56
    sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    check-cast p1, Lcom/ibm/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->unregisterFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Z

    move-result p1

    return p1
.end method
