.class Lcom/ibm/icu/text/TransliteratorRegistry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;,
        Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;,
        Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;,
        Lcom/ibm/icu/text/TransliteratorRegistry$LocaleEntry;,
        Lcom/ibm/icu/text/TransliteratorRegistry$ResourceEntry;,
        Lcom/ibm/icu/text/TransliteratorRegistry$Spec;
    }
.end annotation


# static fields
.field private static final ANY:Ljava/lang/String; = "Any"

.field private static final DEBUG:Z = false

.field private static final LOCALE_SEP:C = '_'

.field private static final NO_VARIANT:Ljava/lang/String; = ""


# instance fields
.field private availableIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private specDAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    return-void
.end method

.method private find(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3

    .line 736
    invoke-static {p1}, Lcom/ibm/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 737
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 765
    new-instance v0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    .line 766
    new-instance p1, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {p1, p2}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    .line 772
    invoke-direct {p0, v0, p1, p3}, Lcom/ibm/icu/text/TransliteratorRegistry;->findInDynamicStore(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 778
    :cond_0
    invoke-direct {p0, v0, p1, p3}, Lcom/ibm/icu/text/TransliteratorRegistry;->findInStaticStore(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 785
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->reset()V

    :goto_1
    const-string p2, ""

    .line 788
    invoke-direct {p0, v0, p1, p2}, Lcom/ibm/icu/text/TransliteratorRegistry;->findInDynamicStore(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    .line 794
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/ibm/icu/text/TransliteratorRegistry;->findInStaticStore(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    .line 798
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result p2

    if-nez p2, :cond_5

    .line 803
    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 806
    :cond_4
    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    goto :goto_0

    .line 801
    :cond_5
    invoke-virtual {v0}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    goto :goto_1
.end method

.method private findInBundle(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 8

    .line 665
    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->getBundle()Ljava/util/ResourceBundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_2

    if-nez p4, :cond_1

    const-string v4, "TransliterateTo"

    goto :goto_1

    :cond_1
    const-string v4, "TransliterateFrom"

    .line 680
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v4, "Transliterate"

    .line 683
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :goto_2
    invoke-virtual {p2}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 697
    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 698
    aget-object v5, v3, v4

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 704
    :cond_5
    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_7

    if-nez v2, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    move v5, p4

    :goto_5
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 717
    new-instance v7, Lcom/ibm/icu/text/TransliteratorRegistry$LocaleEntry;

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v7, v3, v5}, Lcom/ibm/icu/text/TransliteratorRegistry$LocaleEntry;-><init>(Ljava/lang/String;I)V

    aput-object v7, v6, v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method private findInDynamicStore(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    .line 605
    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/ibm/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 612
    iget-object p2, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance p3, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {p3, p1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method private findInStaticStore(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    .line 635
    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 636
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/TransliteratorRegistry;->findInBundle(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 638
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/ibm/icu/text/TransliteratorRegistry;->findInBundle(Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Lcom/ibm/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 644
    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_2
    return-object v0
.end method

.method private instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/Transliterator;
    .locals 5

    :goto_0
    const/4 v0, 0x0

    .line 837
    aget-object v1, p2, v0

    .line 839
    instance-of v2, v1, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 840
    check-cast v1, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 841
    new-instance p2, Lcom/ibm/icu/text/RuleBasedTransliterator;

    invoke-direct {p2, p1, v1, v3}, Lcom/ibm/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;Lcom/ibm/icu/text/UnicodeFilter;)V

    return-object p2

    .line 842
    :cond_0
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 844
    :try_start_0
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v3

    .line 848
    :cond_1
    instance-of v2, v1, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;

    if-eqz v2, :cond_2

    .line 849
    check-cast v1, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;

    iget-object p1, v1, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v3

    .line 851
    :cond_2
    instance-of v2, v1, Lcom/ibm/icu/text/Transliterator$Factory;

    if-eqz v2, :cond_3

    .line 852
    check-cast v1, Lcom/ibm/icu/text/Transliterator$Factory;

    invoke-interface {v1, p1}, Lcom/ibm/icu/text/Transliterator$Factory;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    return-object p1

    .line 853
    :cond_3
    instance-of v2, v1, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    if-eqz v2, :cond_4

    .line 854
    check-cast v1, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->getInstance()Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    return-object p1

    .line 855
    :cond_4
    instance-of v2, v1, Lcom/ibm/icu/text/AnyTransliterator;

    if-eqz v2, :cond_5

    .line 856
    check-cast v1, Lcom/ibm/icu/text/AnyTransliterator;

    .line 857
    invoke-virtual {v1}, Lcom/ibm/icu/text/AnyTransliterator;->safeClone()Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    return-object p1

    .line 858
    :cond_5
    instance-of v2, v1, Lcom/ibm/icu/text/RuleBasedTransliterator;

    if-eqz v2, :cond_6

    .line 859
    check-cast v1, Lcom/ibm/icu/text/RuleBasedTransliterator;

    .line 860
    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedTransliterator;->safeClone()Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    return-object p1

    .line 861
    :cond_6
    instance-of v2, v1, Lcom/ibm/icu/text/CompoundTransliterator;

    if-eqz v2, :cond_7

    .line 862
    check-cast v1, Lcom/ibm/icu/text/CompoundTransliterator;

    .line 863
    invoke-virtual {v1}, Lcom/ibm/icu/text/CompoundTransliterator;->safeClone()Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    return-object p1

    .line 864
    :cond_7
    instance-of v2, v1, Lcom/ibm/icu/text/Transliterator;

    if-eqz v2, :cond_8

    .line 865
    check-cast v1, Lcom/ibm/icu/text/Transliterator;

    return-object v1

    .line 874
    :cond_8
    new-instance v2, Lcom/ibm/icu/text/TransliteratorParser;

    invoke-direct {v2}, Lcom/ibm/icu/text/TransliteratorParser;-><init>()V

    .line 878
    :try_start_1
    move-object v3, v1

    check-cast v3, Lcom/ibm/icu/text/TransliteratorRegistry$ResourceEntry;

    .line 879
    iget-object v4, v3, Lcom/ibm/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    iget v3, v3, Lcom/ibm/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    invoke-virtual {v2, v4, v3}, Lcom/ibm/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 884
    :catch_1
    check-cast v1, Lcom/ibm/icu/text/TransliteratorRegistry$LocaleEntry;

    .line 885
    iget-object v3, v1, Lcom/ibm/icu/text/TransliteratorRegistry$LocaleEntry;->rule:Ljava/lang/String;

    iget v1, v1, Lcom/ibm/icu/text/TransliteratorRegistry$LocaleEntry;->direction:I

    invoke-virtual {v2, v3, v1}, Lcom/ibm/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    .line 893
    :goto_1
    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 896
    new-instance v1, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;

    const-string v2, "Any-Null"

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v0

    goto/16 :goto_0

    .line 898
    :cond_9
    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_a

    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 901
    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    goto/16 :goto_0

    .line 903
    :cond_a
    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_c

    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 908
    iget-object v1, v2, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v1, :cond_b

    .line 909
    new-instance v1, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    .line 910
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v0

    goto/16 :goto_0

    .line 912
    :cond_b
    new-instance v1, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;

    iget-object v2, v2, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v0

    goto/16 :goto_0

    .line 916
    :cond_c
    new-instance v1, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    iget-object v3, v2, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    iget-object v4, v2, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v2, v2, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ibm/icu/text/UnicodeSet;)V

    aput-object v1, p2, v0

    goto/16 :goto_0
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 14

    .line 494
    invoke-static {p1}, Lcom/ibm/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 496
    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-static {v2, v4, v6}, Lcom/ibm/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 497
    aget-object v9, v0, v1

    aget-object v10, v0, v3

    aget-object v11, v0, v5

    move-object v7, p0

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Any"

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 484
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/ibm/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 485
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .line 510
    new-instance v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 514
    instance-of p1, p5, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 515
    check-cast p5, [Ljava/lang/Object;

    check-cast p5, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, p1, v1

    move-object p5, p1

    .line 520
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_1

    .line 522
    invoke-direct {p0, p2, p3, p4}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 524
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/ibm/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 543
    new-instance v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 544
    new-instance p1, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 545
    new-instance p2, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {p2, p3}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 548
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 554
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 560
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 561
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 563
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 576
    new-instance v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 577
    new-instance p1, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 578
    new-instance p2, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {p2, p3}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 579
    iget-object p3, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_0

    return-void

    .line 583
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    .line 587
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 588
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 589
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 591
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/Transliterator;
    .locals 1

    .line 311
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 313
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/text/TransliteratorRegistry;->instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAvailableIDs()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAvailableSources()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    .line 443
    new-instance p1, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p1

    .line 445
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 456
    new-instance p1, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 457
    iget-object p2, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 459
    new-instance p1, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {p1, v0}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p1

    .line 461
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 463
    new-instance p1, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {p1, v0}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p1

    .line 465
    :cond_1
    new-instance p2, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p2
.end method

.method public put(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;Z)V
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator;Z)V
    .locals 0

    .line 369
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ibm/icu/text/Transliterator;",
            ">;Z)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 347
    new-instance v0, Lcom/ibm/icu/text/TransliteratorRegistry$ResourceEntry;

    invoke-direct {v0, p2, p3}, Lcom/ibm/icu/text/TransliteratorRegistry$ResourceEntry;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p4}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 358
    new-instance v0, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 6

    .line 378
    invoke-static {p1}, Lcom/ibm/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 380
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object v5, p1, v4

    invoke-static {v1, v3, v5}, Lcom/ibm/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    iget-object v3, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance v5, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v5, v1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    aget-object v0, p1, v0

    aget-object v2, p1, v2

    aget-object p1, p1, v4

    invoke-direct {p0, v0, v2, p1}, Lcom/ibm/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    new-instance v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
