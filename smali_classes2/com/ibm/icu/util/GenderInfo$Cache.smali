.class Lcom/ibm/icu/util/GenderInfo$Cache;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final cache:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/util/GenderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/GenderInfo$Cache;->cache:Lcom/ibm/icu/impl/ICUCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/GenderInfo$1;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/ibm/icu/util/GenderInfo$Cache;-><init>()V

    return-void
.end method

.method private static load(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GenderInfo;
    .locals 4

    .line 245
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "genderList"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 251
    :try_start_0
    new-instance v1, Lcom/ibm/icu/util/GenderInfo;

    .line 252
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;->fromName(Ljava/lang/String;)Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ibm/icu/util/GenderInfo;-><init>(Lcom/ibm/icu/util/GenderInfo$ListGenderStyle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public get(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GenderInfo;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/util/GenderInfo$Cache;->cache:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/GenderInfo;

    if-nez v0, :cond_2

    .line 230
    invoke-static {p1}, Lcom/ibm/icu/util/GenderInfo$Cache;->load(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GenderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/ibm/icu/util/GenderInfo;->access$000()Lcom/ibm/icu/util/GenderInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GenderInfo$Cache;->get(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GenderInfo;

    move-result-object v0

    .line 239
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/GenderInfo$Cache;->cache:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v1, p1, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method
