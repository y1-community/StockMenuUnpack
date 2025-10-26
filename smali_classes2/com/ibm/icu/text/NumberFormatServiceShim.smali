.class Lcom/ibm/icu/text/NumberFormatServiceShim;
.super Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;,
        Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;
    }
.end annotation


# static fields
.field private static service:Lcom/ibm/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/ibm/icu/util/ULocale;

    .line 86
    sget-object v2, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v2, p1, p2, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/NumberFormat;

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v2}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/NumberFormat;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    :cond_1
    const/4 p1, 0x0

    aget-object p1, v1, p1

    .line 105
    invoke-virtual {v2, p1, p1}, Lcom/ibm/icu/text/NumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    return-object v2

    .line 89
    :cond_2
    new-instance p1, Ljava/util/MissingResourceException;

    const-string p2, "Unable to construct NumberFormat"

    const-string v0, ""

    invoke-direct {p1, p2, v0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 30
    sget-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 37
    sget-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method registerFactory(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 2

    .line 71
    sget-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    new-instance v1, Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;

    invoke-direct {v1, p1}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;-><init>(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICULocaleService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    move-result-object p1

    return-object p1
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1

    .line 75
    sget-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    check-cast p1, Lcom/ibm/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->unregisterFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Z

    move-result p1

    return p1
.end method
