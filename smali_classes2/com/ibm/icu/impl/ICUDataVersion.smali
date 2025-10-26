.class public final Lcom/ibm/icu/impl/ICUDataVersion;
.super Ljava/lang/Object;
.source "ICUDataVersion.java"


# static fields
.field private static final U_ICU_DATA_KEY:Ljava/lang/String; = "DataVersion"

.field private static final U_ICU_VERSION_BUNDLE:Ljava/lang/String; = "icuver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataVersion()Lcom/ibm/icu/util/VersionInfo;
    .locals 3

    :try_start_0
    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "icuver"

    .line 30
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "DataVersion"

    .line 34
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
