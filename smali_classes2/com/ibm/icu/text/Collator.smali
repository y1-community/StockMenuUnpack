.class public abstract Lcom/ibm/icu/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Collator$KeywordsSink;,
        Lcom/ibm/icu/text/Collator$ASCII;,
        Lcom/ibm/icu/text/Collator$ServiceShim;,
        Lcom/ibm/icu/text/Collator$CollatorFactory;,
        Lcom/ibm/icu/text/Collator$ReorderCodes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/Collator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "com/ibm/icu/impl/data/icudt69b/coll"

.field public static final CANONICAL_DECOMPOSITION:I = 0x11

.field private static final DEBUG:Z

.field public static final FULL_DECOMPOSITION:I = 0xf

.field public static final IDENTICAL:I = 0xf

.field private static final KEYWORDS:[Ljava/lang/String;

.field public static final NO_DECOMPOSITION:I = 0x10

.field public static final PRIMARY:I = 0x0

.field public static final QUATERNARY:I = 0x3

.field private static final RESOURCE:Ljava/lang/String; = "collations"

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2

.field private static shim:Lcom/ibm/icu/text/Collator$ServiceShim;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "collation"

    aput-object v2, v0, v1

    .line 946
    sput-object v0, Lcom/ibm/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const-string v0, "collator"

    .line 1482
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/Collator;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/ibm/icu/text/Collator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen Collator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 918
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    .line 919
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b/coll"

    invoke-static {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 922
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/Collator$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 934
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    .line 935
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b/coll"

    invoke-static {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 938
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/Collator$ServiceShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .line 1140
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1116
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1128
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1103
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 1104
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 1103
    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/Collator$ServiceShim;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEquivalentReorderCodes(I)[I
    .locals 1

    .line 1435
    invoke-static {}, Lcom/ibm/icu/impl/coll/CollationRoot;->getData()Lcom/ibm/icu/impl/coll/CollationData;

    move-result-object v0

    .line 1436
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/coll/CollationData;->getEquivalentScripts(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 1091
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Collator;->getFunctionalEquivalent(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .locals 7

    .line 1074
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v0, "com/ibm/icu/impl/data/icudt69b/coll"

    const-string v2, "collations"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[ZZ)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/ibm/icu/text/Collator;
    .locals 1

    .line 475
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 3

    if-nez p0, :cond_0

    .line 826
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 828
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Collator$ServiceShim;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    .line 829
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 830
    instance-of v1, v0, Lcom/ibm/icu/text/RuleBasedCollator;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/RuleBasedCollator;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/Collator;->setAttributesFromKeywords(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/text/RuleBasedCollator;)V

    :cond_2
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 858
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method private static final varargs getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 663
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 664
    aget-object v1, p2, v0

    invoke-static {p1, v1}, Lcom/ibm/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal locale keyword=value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public static final getKeywordValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 982
    sget-object v0, Lcom/ibm/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com/ibm/icu/impl/data/icudt69b/coll"

    const-string v0, "collations"

    .line 985
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 0

    const-string p0, "com/ibm/icu/impl/data/icudt69b/coll"

    .line 1011
    invoke-static {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1013
    new-instance p1, Lcom/ibm/icu/text/Collator$KeywordsSink;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ibm/icu/text/Collator$KeywordsSink;-><init>(Lcom/ibm/icu/text/Collator$1;)V

    const-string p2, "collations"

    .line 1014
    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 1015
    iget-object p0, p1, Lcom/ibm/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    iget-object p1, p1, Lcom/ibm/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static final getKeywords()[Ljava/lang/String;
    .locals 1

    .line 971
    sget-object v0, Lcom/ibm/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    return-object v0
.end method

.method private static final getReorderCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "space"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "punct"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "symbol"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "digit"

    aput-object v2, v0, v1

    .line 673
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, 0x1000

    return p0
.end method

.method private static getShim()Lcom/ibm/icu/text/Collator$ServiceShim;
    .locals 2

    .line 606
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.ibm.icu.text.CollatorServiceShim"

    .line 608
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/Collator$ServiceShim;

    sput-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 619
    sget-boolean v1, Lcom/ibm/icu/text/Collator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    :cond_0
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 614
    throw v0

    .line 626
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    return-object v0
.end method

.method private static final getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "yes"

    .line 653
    invoke-static {p1, v0}, Lcom/ibm/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "no"

    .line 656
    invoke-static {p1, v0}, Lcom/ibm/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal locale keyword=value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final registerFactory(Lcom/ibm/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 1

    .line 892
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Collator$ServiceShim;->registerFactory(Lcom/ibm/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final registerInstance(Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    .line 876
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/Collator$ServiceShim;->registerInstance(Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static setAttributesFromKeywords(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 10

    const-string v0, "colHiraganaQuaternary"

    .line 690
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "variableTop"

    .line 694
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "colStrength"

    .line 699
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "primary"

    aput-object v8, v7, v6

    const-string v8, "secondary"

    aput-object v8, v7, v5

    const-string v8, "tertiary"

    aput-object v8, v7, v4

    const-string v8, "quaternary"

    aput-object v8, v7, v3

    const-string v8, "identical"

    aput-object v8, v7, v2

    .line 702
    invoke-static {v0, v1, v7}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 704
    :goto_0
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/Collator;->setStrength(I)V

    :cond_1
    const-string v0, "colBackwards"

    .line 706
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 709
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFrenchCollation(Z)V

    goto :goto_1

    .line 711
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v0, "colCaseLevel"

    .line 715
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    .line 718
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setCaseLevel(Z)V

    goto :goto_2

    .line 720
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const-string v0, "colCaseFirst"

    .line 724
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_8

    new-array v3, v3, [Ljava/lang/String;

    const-string v7, "no"

    aput-object v7, v3, v6

    const-string v7, "lower"

    aput-object v7, v3, v5

    const-string v7, "upper"

    aput-object v7, v3, v4

    .line 727
    invoke-static {v0, v1, v3}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 729
    invoke-virtual {p2, v6}, Lcom/ibm/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    .line 730
    invoke-virtual {p2, v6}, Lcom/ibm/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto :goto_3

    :cond_6
    if-ne v0, v5, :cond_7

    .line 732
    invoke-virtual {p2, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    goto :goto_3

    .line 734
    :cond_7
    invoke-virtual {p2, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto :goto_3

    .line 737
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kf/colCaseFirst only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    const-string v0, "colAlternate"

    .line 741
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "non-ignorable"

    aput-object v4, v3, v6

    const-string v4, "shifted"

    aput-object v4, v3, v5

    .line 745
    invoke-static {v0, v1, v3}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    .line 744
    :goto_4
    invoke-virtual {p2, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V

    goto :goto_5

    .line 747
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword ka/colAlternate only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    const-string v0, "colNormalization"

    .line 751
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 753
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x11

    goto :goto_6

    :cond_d
    const/16 v0, 0x10

    :goto_6
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/Collator;->setDecomposition(I)V

    :cond_e
    const-string v0, "colNumeric"

    .line 756
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_f

    .line 759
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    goto :goto_7

    .line 761
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kn/colNumeric only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    const-string p2, "colReorder"

    .line 765
    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0xc6

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-eq v4, v1, :cond_15

    move v7, v5

    .line 776
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_11

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_11

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 777
    :cond_11
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 779
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v2, :cond_12

    const/16 v8, 0x100a

    .line 781
    invoke-static {v8, v5}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v5

    goto :goto_a

    .line 783
    :cond_12
    invoke-static {p2, v5}, Lcom/ibm/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_a
    add-int/lit8 v8, v4, 0x1

    .line 785
    aput v5, v3, v4

    .line 786
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v7, v4, :cond_14

    if-eqz v8, :cond_13

    .line 792
    new-array p2, v8, [I

    .line 793
    invoke-static {v3, v6, p2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Collator;->setReorderCodes([I)V

    goto :goto_b

    .line 790
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no script codes for colReorder locale keyword"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    add-int/lit8 v5, v7, 0x1

    move v4, v8

    goto :goto_8

    .line 772
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "too many script codes for colReorder locale keyword: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_b
    const-string p2, "kv"

    .line 796
    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 798
    invoke-static {p2, p0}, Lcom/ibm/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Collator;->setMaxVariable(I)Lcom/ibm/icu/text/Collator;

    :cond_17
    return-void

    .line 696
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword vt/variableTop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 692
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kh/colHiraganaQuaternary"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw p0

    :goto_d
    goto :goto_c
.end method

.method public static final unregister(Ljava/lang/Object;)Z
    .locals 1

    .line 902
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 905
    :cond_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Collator$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 485
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/Collator;
    .locals 2

    .line 1471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/ibm/icu/text/Collator;->cloneAsThawed()Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1250
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1262
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1201
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public freeze()Lcom/ibm/icu/text/Collator;
    .locals 2

    .line 1462
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/ibm/icu/text/Collator;->freeze()Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Lcom/ibm/icu/text/CollationKey;
.end method

.method public getDecomposition()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 1514
    sget-object p1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    return-object p1
.end method

.method public getMaxVariable()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method

.method public abstract getRawCollationKey(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)Lcom/ibm/icu/text/RawCollationKey;
.end method

.method public getReorderCodes()[I
    .locals 2

    .line 1417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 1214
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    return-object v0
.end method

.method public abstract getUCAVersion()Lcom/ibm/icu/util/VersionInfo;
.end method

.method public abstract getVariableTop()I
.end method

.method public abstract getVersion()Lcom/ibm/icu/util/VersionInfo;
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDecomposition(I)V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method

.method setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    return-void
.end method

.method public setMaxVariable(I)Lcom/ibm/icu/text/Collator;
    .locals 1

    .line 1322
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setReorderCodes([I)V
    .locals 1

    .line 457
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrength(I)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method

.method public setStrength2(I)Lcom/ibm/icu/text/Collator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Collator;->setStrength(I)V

    return-object p0
.end method

.method public abstract setVariableTop(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVariableTop(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
