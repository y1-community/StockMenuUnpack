.class Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/CollatorServiceShim;->registerFactory(Lcom/ibm/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CFactory"
.end annotation


# instance fields
.field delegate:Lcom/ibm/icu/text/Collator$CollatorFactory;

.field final synthetic this$0:Lcom/ibm/icu/text/CollatorServiceShim;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/CollatorServiceShim;Lcom/ibm/icu/text/Collator$CollatorFactory;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;->this$0:Lcom/ibm/icu/text/CollatorServiceShim;

    .line 70
    invoke-virtual {p2}, Lcom/ibm/icu/text/Collator$CollatorFactory;->visible()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 71
    iput-object p2, p0, Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;->delegate:Lcom/ibm/icu/text/Collator$CollatorFactory;

    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 82
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;->delegate:Lcom/ibm/icu/text/Collator$CollatorFactory;

    invoke-virtual {p1, v0, p2}, Lcom/ibm/icu/text/Collator$CollatorFactory;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;->delegate:Lcom/ibm/icu/text/Collator$CollatorFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 76
    iget-object p2, p0, Lcom/ibm/icu/text/CollatorServiceShim$1CFactory;->delegate:Lcom/ibm/icu/text/Collator$CollatorFactory;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/Collator$CollatorFactory;->createCollator(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p1

    return-object p1
.end method
