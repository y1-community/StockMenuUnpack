.class public Lcom/ibm/icu/impl/ICUResourceBundle;
.super Lcom/ibm/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;,
        Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;,
        Lcom/ibm/icu/impl/ICUResourceBundle$AvailableLocalesSink;,
        Lcom/ibm/icu/impl/ICUResourceBundle$Loader;,
        Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALIAS:I = 0x3

.field public static final ARRAY16:I = 0x9

.field private static BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUResourceBundle;",
            "Lcom/ibm/icu/impl/ICUResourceBundle$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final DEFAULT_TAG:Ljava/lang/String; = "default"

.field private static final FULL_LOCALE_NAMES_LIST:Ljava/lang/String; = "fullLocaleNames.lst"

.field private static GET_AVAILABLE_CACHE:Lcom/ibm/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final HYPHEN:C = '-'

.field private static final ICUDATA:Ljava/lang/String; = "ICUDATA"

.field public static final ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final ICU_RESOURCE_INDEX:Ljava/lang/String; = "res_index"

.field protected static final INSTALLED_LOCALES:Ljava/lang/String; = "InstalledLocales"

.field private static final LOCALE:Ljava/lang/String; = "LOCALE"

.field public static final NO_INHERITANCE_MARKER:Ljava/lang/String; = "\u2205\u2205\u2205"

.field public static final RES_BOGUS:I = -0x1

.field private static final RES_PATH_SEP_CHAR:C = '/'

.field private static final RES_PATH_SEP_STR:Ljava/lang/String; = "/"

.field public static final STRING_V2:I = 0x6

.field public static final TABLE16:I = 0x5

.field public static final TABLE32:I = 0x4


# instance fields
.field private container:Lcom/ibm/icu/impl/ICUResourceBundle;

.field protected key:Ljava/lang/String;

.field wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/ibm/icu/impl/ICUData;

    invoke-static {v0}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 89
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    const-string v0, "localedata"

    .line 607
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    .line 867
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$3;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$3;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    .line 1440
    invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;-><init>()V

    .line 1441
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 0

    .line 1444
    invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;-><init>()V

    .line 1445
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    .line 1446
    iget-object p2, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1447
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1448
    iget-object p1, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ibm/icu/impl/ICUResourceBundle;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getNoFallback()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 680
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    .line 681
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static final addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "res_index"

    const/4 v1, 0x1

    .line 661
    :try_start_0
    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "InstalledLocales"

    .line 662
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object p0

    .line 671
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundleIterator;->reset()V

    .line 672
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    nop

    .line 664
    sget-boolean p1, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 665
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t find "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".res"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_1
    return-void
.end method

.method private static addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 719
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "fullLocaleNames.lst"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 721
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 725
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 731
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 732
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private static countPathKeys(Ljava/lang/String;)I
    .locals 4

    .line 1068
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1072
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1073
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .line 1366
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1371
    :cond_0
    invoke-static {v0, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundle(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private static createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    .line 740
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "com.ibm.icu.impl.ICUResourceBundle.skipRuntimeLocaleResourceScan"

    const-string v3, "false"

    .line 742
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 745
    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    .line 746
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 750
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2

    const/16 v2, 0x1f

    .line 751
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-string v3, ".res"

    .line 756
    invoke-static {v2, v3, v1}, Lcom/ibm/icu/impl/ICUBinary;->addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_3
    const-string v2, "res_index"

    .line 759
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 761
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 762
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 763
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 764
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    :cond_5
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_4

    .line 766
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 771
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 772
    sget-boolean v2, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v2, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to enumerate data files in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 773
    :cond_7
    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 775
    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 777
    invoke-static {p0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    :cond_9
    const-string p0, "root"

    .line 780
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 781
    sget-object p0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 786
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 787
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 788
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static final createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/util/ULocale$AvailableType;",
            "[",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    const-string v0, "res_index"

    const/4 v1, 0x1

    .line 647
    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 649
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/ibm/icu/util/ULocale$AvailableType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 650
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailableLocalesSink;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailableLocalesSink;-><init>(Ljava/util/EnumMap;)V

    const-string v1, ""

    .line 651
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    return-object p1
.end method

.method private static final findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 3

    .line 886
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 889
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 892
    invoke-direct {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    .line 893
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v1

    add-int v2, v0, v1

    .line 895
    new-array v2, v2, [Ljava/lang/String;

    .line 896
    invoke-static {p0, v1, v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 897
    invoke-static {v2, v0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private static final findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 4

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 909
    aget-object p1, p0, p1

    const/4 v1, 0x0

    .line 910
    invoke-virtual {p2, p1, v1, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-nez p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 922
    invoke-virtual {p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 930
    :cond_1
    invoke-direct {p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 932
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 933
    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    .line 936
    :cond_2
    invoke-direct {p2, p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    const/4 p2, 0x0

    move-object p2, p1

    const/4 p1, 0x0

    goto :goto_0

    .line 915
    :cond_3
    array-length p2, p0

    if-ne v0, p2, :cond_4

    return-object p1

    :cond_4
    move-object p2, p1

    move p1, v0

    goto :goto_0
.end method

.method private static final findStringWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    .line 948
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 951
    :cond_0
    instance-of v1, v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    if-nez p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object/from16 v1, p2

    .line 958
    :goto_0
    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 959
    iget-object v3, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v3, v3, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 964
    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v4

    .line 966
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v5

    add-int v6, v4, v5

    .line 968
    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v7, p0

    .line 969
    invoke-static {v7, v5, v6, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    const/4 v10, -0x1

    move-object v11, v3

    move v12, v4

    move-object v13, v6

    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-ne v3, v10, :cond_4

    .line 975
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    .line 977
    :cond_3
    move-object v3, v0

    check-cast v3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    iget-object v3, v3, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    goto :goto_3

    .line 982
    :cond_4
    invoke-static {v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v5

    .line 983
    invoke-static {v5}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 984
    invoke-virtual {v11, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v3

    goto :goto_3

    .line 985
    :cond_5
    invoke-static {v5}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 986
    invoke-virtual {v11, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v3

    :goto_3
    add-int/lit8 v14, v4, 0x1

    .line 992
    aget-object v6, v13, v4

    .line 993
    invoke-virtual {v3, v11, v6}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_6

    move v3, v15

    goto/16 :goto_5

    .line 999
    :cond_6
    invoke-static {v15}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 1000
    invoke-direct {v0, v13, v12}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v13

    move v5, v14

    move v7, v15

    move-object v9, v1

    .line 1001
    invoke-static/range {v3 .. v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAliasedResource(Lcom/ibm/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v3

    goto :goto_4

    :cond_7
    move-object v3, v2

    .line 1005
    :goto_4
    array-length v4, v13

    if-ne v14, v4, :cond_a

    if-eqz v3, :cond_8

    .line 1008
    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_8
    invoke-virtual {v11, v15}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 1012
    :cond_9
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v3, :cond_c

    .line 1019
    iget-object v0, v3, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 1025
    invoke-direct {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v4

    if-eq v14, v4, :cond_b

    .line 1027
    array-length v5, v13

    sub-int/2addr v5, v14

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/String;

    .line 1028
    array-length v6, v13

    sub-int/2addr v6, v14

    invoke-static {v13, v14, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v0

    move-object v0, v3

    move v12, v4

    move-object v13, v5

    goto/16 :goto_1

    :cond_b
    move-object v11, v0

    move-object v0, v3

    move v12, v4

    move v4, v14

    goto/16 :goto_1

    :cond_c
    move v4, v14

    move v3, v15

    goto/16 :goto_2

    :cond_d
    const/4 v3, -0x1

    .line 1035
    :cond_e
    :goto_5
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v4

    if-nez v4, :cond_f

    return-object v2

    .line 1040
    :cond_f
    invoke-direct {v0, v13, v12}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1042
    iget-object v0, v4, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v11, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    const/4 v12, 0x0

    move-object v0, v4

    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method protected static getAliasedResource(Lcom/ibm/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/ICUResourceBundle;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/UResourceBundle;",
            ")",
            "Lcom/ibm/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    .line 1482
    iget-object v3, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1483
    iget-object v4, v3, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    .line 1487
    iget-object v5, v3, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v5

    if-nez p5, :cond_0

    .line 1489
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v6, p5

    .line 1491
    :goto_0
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    const-string v7, ""

    .line 1495
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x2f

    .line 1496
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_3

    .line 1497
    invoke-virtual {v5, v7, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/lit8 v13, v8, 0x1

    .line 1498
    invoke-virtual {v5, v7, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1499
    invoke-virtual {v5, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-gez v7, :cond_1

    .line 1501
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v13, v10

    goto :goto_1

    .line 1503
    :cond_1
    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v7, v12

    .line 1504
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v13

    move-object v13, v7

    move-object/from16 v7, v16

    :goto_1
    const-string v14, "ICUDATA"

    .line 1507
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1509
    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v8, "com/ibm/icu/impl/data/icudt69b"

    goto :goto_3

    .line 1510
    :cond_2
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-le v14, v9, :cond_5

    const/16 v14, 0x2d

    .line 1511
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-le v14, v9, :cond_5

    .line 1513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com/ibm/icu/impl/data/icudt69b/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v14, v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1514
    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    goto :goto_3

    .line 1519
    :cond_3
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v9, :cond_4

    .line 1521
    invoke-virtual {v5, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v12

    .line 1522
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    move-object v7, v8

    goto :goto_2

    :cond_4
    move-object v7, v5

    move-object v13, v10

    .line 1526
    :goto_2
    iget-object v8, v3, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    :cond_5
    :goto_3
    const-string v9, "LOCALE"

    .line 1530
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1531
    iget-object v0, v3, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1532
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1535
    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1536
    :goto_4
    iget-object v4, v2, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v4, :cond_6

    move-object v2, v4

    goto :goto_4

    .line 1539
    :cond_6
    invoke-static {v0, v2, v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v10

    goto :goto_7

    .line 1541
    :cond_7
    invoke-static {v8, v7, v4, v11}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v4

    if-eqz v13, :cond_9

    .line 1545
    invoke-static {v13}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 1547
    new-array v5, v0, [Ljava/lang/String;

    .line 1548
    invoke-static {v13, v0, v5, v11}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    goto :goto_5

    :cond_8
    move-object/from16 v5, p1

    goto :goto_5

    :cond_9
    if-eqz p1, :cond_a

    move-object/from16 v5, p1

    move/from16 v0, p2

    goto :goto_5

    .line 1553
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    .line 1555
    new-array v8, v7, [Ljava/lang/String;

    .line 1556
    invoke-direct {v0, v8, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1557
    aput-object v1, v8, v5

    move v0, v7

    move-object v5, v8

    :goto_5
    if-lez v0, :cond_b

    move-object v10, v4

    :goto_6
    if-eqz v10, :cond_b

    if-ge v11, v0, :cond_b

    .line 1562
    aget-object v4, v5, v11

    invoke-virtual {v10, v4, v6, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-eqz v10, :cond_c

    return-object v10

    .line 1567
    :cond_c
    new-instance v0, Ljava/util/MissingResourceException;

    iget-object v2, v3, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    iget-object v3, v3, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Circular references in the resource bundles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method private getAllItemsWithFallback(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;Lcom/ibm/icu/impl/UResource$Sink;)V
    .locals 4

    .line 436
    move-object v0, p0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;

    .line 437
    iget-object v1, v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iput-object v1, p2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 438
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 439
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->setString(Ljava/lang/String;)Lcom/ibm/icu/impl/UResource$Key;

    .line 440
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, p1, p2, v0}, Lcom/ibm/icu/impl/UResource$Sink;->put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V

    .line 441
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 446
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 452
    :cond_2
    new-array v3, v2, [Ljava/lang/String;

    .line 453
    invoke-direct {p0, v3, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 454
    invoke-static {v3, v1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 457
    invoke-direct {v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;Lcom/ibm/icu/impl/UResource$Sink;)V

    :cond_3
    return-void
.end method

.method private static getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
    .locals 1

    .line 881
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    return-object p0
.end method

.method public static getAvailableLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    invoke-static {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleNameSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableLocales()[Ljava/util/Locale;
    .locals 3

    .line 545
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    invoke-static {v2, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableLocales(Lcom/ibm/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;
    .locals 2

    .line 553
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    invoke-static {v1, v0, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;
    .locals 1

    .line 561
    sget-object v0, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;
    .locals 0

    .line 537
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList(Lcom/ibm/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 3

    .line 512
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    invoke-static {v2, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableULocales(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 520
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    invoke-static {v1, v0, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 528
    sget-object v0, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 504
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method private static getBundle(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 2

    .line 1423
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result v0

    .line 1424
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1425
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundleReader;)V

    .line 1426
    new-instance p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;I)V

    const-string p2, "%%ALIAS"

    .line 1430
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1432
    invoke-static {p1, p2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    :cond_0
    return-object p0

    .line 1428
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid format error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    if-nez p1, :cond_0

    .line 1185
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 1187
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, p1, v0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "com/ibm/icu/impl/data/icudt69b"

    .line 1196
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1198
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    if-ne p3, v0, :cond_1

    .line 1199
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1202
    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    return-object p2

    .line 1205
    :cond_2
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find the bundle "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".res"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-direct {p2, p0, p1, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 0

    if-eqz p3, :cond_0

    .line 1178
    sget-object p3, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    invoke-static {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getFullLocaleNameSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[ZZ)Lcom/ibm/icu/util/ULocale;
    .locals 9

    .line 114
    invoke-virtual {p4, p3}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p4}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p4

    .line 117
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v1, p4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const-string v2, "default"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    const/4 v5, 0x1

    .line 133
    :goto_1
    invoke-static {p0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz p5, :cond_3

    .line 135
    aput-boolean v4, p5, v4

    .line 136
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p1

    sget-object v7, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    .line 137
    invoke-virtual {p1, v7}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v7, 0x0

    .line 138
    :goto_2
    array-length v8, p1

    if-ge v7, v8, :cond_3

    .line 139
    aget-object v8, p1, v7

    invoke-virtual {v1, v8}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    aput-boolean v3, p5, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 p1, 0x0

    move-object p5, p1

    move-object v7, p5

    const/4 v1, 0x0

    .line 148
    :cond_4
    :try_start_0
    invoke-virtual {v6, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    check-cast v8, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 149
    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-ne v5, v3, :cond_5

    move-object v0, v7

    const/4 v5, 0x0

    .line 154
    :cond_5
    invoke-virtual {v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p5
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :goto_4
    if-nez p5, :cond_6

    .line 159
    invoke-virtual {v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-eqz v6, :cond_7

    if-eqz p5, :cond_4

    .line 165
    :cond_7
    new-instance p5, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p5, p4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {p0, p5}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p5

    check-cast p5, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object v5, p1

    const/4 v3, 0x0

    .line 170
    :cond_8
    :try_start_1
    invoke-virtual {p5, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 171
    invoke-virtual {v6, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    .line 172
    invoke-virtual {v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    if-eqz v5, :cond_9

    if-le v3, v1, :cond_9

    .line 177
    invoke-virtual {v6, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-virtual {p5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v3

    goto :goto_5

    :catch_1
    nop

    :cond_9
    :goto_5
    if-nez v5, :cond_a

    .line 185
    invoke-virtual {p5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p5

    add-int/lit8 v3, v3, 0x1

    :cond_a
    if-eqz p5, :cond_b

    if-eqz v5, :cond_8

    :cond_b
    if-nez v5, :cond_11

    if-eqz v7, :cond_11

    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_11

    .line 195
    new-instance p5, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p5, p4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {p0, p5}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p4

    check-cast p4, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object p5, v7

    .line 201
    :cond_c
    :try_start_2
    invoke-virtual {p4, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 202
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 205
    invoke-virtual {p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    .line 209
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object v5, p1

    :cond_d
    if-eqz v5, :cond_e

    if-le v4, v1, :cond_e

    .line 216
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 217
    invoke-virtual {p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v4

    goto :goto_6

    :catch_2
    nop

    :cond_e
    :goto_6
    if-nez v5, :cond_f

    .line 224
    invoke-virtual {p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p4

    add-int/lit8 v4, v4, 0x1

    :cond_f
    if-eqz p4, :cond_10

    if-eqz v5, :cond_c

    :cond_10
    move v3, v4

    move-object v0, v7

    move-object v7, p5

    :cond_11
    const-string p1, "="

    if-eqz v5, :cond_13

    if-eqz p6, :cond_12

    .line 237
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    if-gt v3, v1, :cond_12

    return-object v5

    .line 241
    :cond_12
    new-instance p0, Lcom/ibm/icu/util/ULocale;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "@"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 231
    :cond_13
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Could not find locale containing requested or default keyword."

    invoke-direct {p2, p3, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p2

    :goto_8
    goto :goto_7
.end method

.method public static final getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 253
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 254
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    .line 255
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 258
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 260
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 262
    invoke-virtual {v4, p1}, Lcom/ibm/icu/util/UResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object v5, v4

    check-cast v5, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 263
    invoke-virtual {v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v4

    .line 264
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "default"

    .line 266
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "private-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 268
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    .line 277
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static final getLocaleList([Lcom/ibm/icu/util/ULocale;)[Ljava/util/Locale;
    .locals 5

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 574
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 575
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    .line 576
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 577
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    return-object p0
.end method

.method private getNoFallback()Z
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getNoFallback()Z

    move-result v0

    return v0
.end method

.method private getResDepth()I
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method private static getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1093
    aput-object p0, p2, p3

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2f

    .line 1098
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    .line 1100
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    add-int/2addr v2, v0

    .line 1103
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    return-void

    :cond_2
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 p1, p1, -0x1

    move p3, v3

    goto :goto_0
.end method

.method private getResPathKeys([Ljava/lang/String;I)V
    .locals 2

    move-object v0, p0

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 1061
    iget-object v1, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    aput-object v1, p1, p2

    .line 1062
    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 10

    .line 1221
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1222
    invoke-virtual {p4}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 1223
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const/16 v3, 0x23

    if-eq p4, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1226
    sget-object v8, Lcom/ibm/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    new-instance v9, Lcom/ibm/icu/impl/ICUResourceBundle$4;

    move-object v0, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/ICUResourceBundle$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method private static localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1212
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x5f

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public at(I)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, p1, v0, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object p1
.end method

.method public at(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 2

    .line 322
    instance-of v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p1, v1, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1117
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_1

    .line 1118
    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1119
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findTopLevel(I)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 0

    .line 330
    invoke-super {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->findTopLevel(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object p1
.end method

.method public findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 0

    .line 335
    invoke-super {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object p1
.end method

.method public bridge synthetic findTopLevel(I)Lcom/ibm/icu/util/UResourceBundle;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findTopLevel(I)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method public findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/UResourceBundle;",
            ")",
            "Lcom/ibm/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 1299
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_2

    .line 1301
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1304
    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p2

    move-object v0, p2

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 1307
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1308
    new-instance p3, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find resource for bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", key "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 402
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    add-int v2, v1, v0

    .line 409
    new-array v2, v2, [Ljava/lang/String;

    .line 410
    invoke-static {p1, v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 411
    invoke-static {v2, v1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    :goto_0
    new-instance p1, Lcom/ibm/icu/impl/UResource$Key;

    invoke-direct {p1}, Lcom/ibm/icu/impl/UResource$Key;-><init>()V

    .line 420
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    .line 421
    invoke-direct {v0, p1, v1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;Lcom/ibm/icu/impl/UResource$Sink;)V

    return-void

    .line 413
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find resource for bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public getAllItemsWithFallbackNoFail(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    .locals 0

    .line 392
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected getBaseName()Ljava/lang/String;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "\u2205\u2205\u2205"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encountered NO_INHERITANCE_MARKER"

    invoke-direct {v0, v2, p1, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final getTopLevelKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getValueWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/UResource$Value;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 375
    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    :goto_0
    new-instance p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    .line 384
    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;

    .line 385
    iget-object v1, v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iput-object v1, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 386
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    return-object p1

    .line 377
    :cond_1
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 300
    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u2205\u2205\u2205"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encountered NO_INHERITANCE_MARKER"

    invoke-direct {v0, v2, p1, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0

    .line 303
    :cond_2
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1603
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public isRoot()Z
    .locals 2

    .line 1393
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isTopLevelResource()Z
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    return-void
.end method

.method public final setTopLevelKeySet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1592
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object p1, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-void
.end method
