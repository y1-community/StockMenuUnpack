.class final Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvailEntry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile fullNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Ljava/lang/ClassLoader;

.field private volatile locales:[Ljava/util/Locale;

.field private volatile nameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private volatile ulocales:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/util/ULocale$AvailableType;",
            "[",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 795
    const-class v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    .line 805
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 853
    monitor-enter p0

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$300(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    .line 857
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 859
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    return-object v0
.end method

.method getLocaleList(Lcom/ibm/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 822
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    .line 823
    monitor-enter p0

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleList([Lcom/ibm/icu/util/ULocale;)[Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    .line 827
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 829
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    return-object p1
.end method

.method getLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 833
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$200(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    .line 837
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 839
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    return-object v0
.end method

.method getULocaleList(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    if-nez v0, :cond_1

    .line 812
    monitor-enter p0

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$100(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    .line 816
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 818
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ibm/icu/util/ULocale;

    return-object p1
.end method
