.class final Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NumberFormatServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFFactory"
.end annotation


# instance fields
.field private delegate:Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;->visible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 49
    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;

    return-void
.end method


# virtual methods
.method public create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 4

    .line 53
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;->handlesKey(Lcom/ibm/icu/impl/ICUService$Key;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    .line 58
    iget-object v2, p0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->canonicalLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p2, p1, v1, p0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;->getSupportedLocaleNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
