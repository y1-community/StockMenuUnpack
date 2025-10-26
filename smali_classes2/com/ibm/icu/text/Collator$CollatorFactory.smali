.class public abstract Lcom/ibm/icu/text/Collator$CollatorFactory;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CollatorFactory"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCollator(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 524
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Collator$CollatorFactory;->createCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;

    move-result-object p1

    return-object p1
.end method

.method public createCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 539
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Collator$CollatorFactory;->createCollator(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/ibm/icu/text/Collator$CollatorFactory;->visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/ibm/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    move-result-object v0

    .line 565
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p1, p2}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 551
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator$CollatorFactory;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSupportedLocaleIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public visible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
