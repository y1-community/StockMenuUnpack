.class public abstract Lcom/ibm/icu/text/Transliterator;
.super Ljava/lang/Object;
.source "Transliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Transliterator$Factory;,
        Lcom/ibm/icu/text/Transliterator$Position;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final FORWARD:I = 0x0

.field static final ID_DELIM:C = ';'

.field static final ID_SEP:C = '-'

.field private static final RB_DISPLAY_NAME_PATTERN:Ljava/lang/String; = "TransliteratorNamePattern"

.field private static final RB_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%%"

.field private static final RB_RULE_BASED_IDS:Ljava/lang/String; = "RuleBasedTransliteratorIDs"

.field private static final RB_SCRIPT_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%"

.field public static final REVERSE:I = 0x1

.field private static final ROOT:Ljava/lang/String; = "root"

.field static final VARIANT_SEP:C = '/'

.field private static displayNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static registry:Lcom/ibm/icu/text/TransliteratorRegistry;


# instance fields
.field private ID:Ljava/lang/String;

.field private filter:Lcom/ibm/icu/text/UnicodeSet;

.field private maximumContextLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 2133
    new-instance v0, Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-direct {v0}, Lcom/ibm/icu/text/TransliteratorRegistry;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    .line 2136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    const-string v0, "com/ibm/icu/impl/data/icudt69b/translit"

    const-string v1, "root"

    .line 2172
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "RuleBasedTransliteratorIDs"

    .line 2173
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 2176
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 2178
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 2179
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-t-"

    .line 2180
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    goto/16 :goto_3

    .line 2183
    :cond_0
    invoke-virtual {v4, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 2184
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    .line 2185
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "internal"

    const/4 v9, 0x1

    if-nez v7, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "alias"

    .line 2205
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2207
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2208
    sget-object v6, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {v6, v5, v4, v9}, Lcom/ibm/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2211
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const-string v7, "resource"

    .line 2188
    invoke-virtual {v4, v7}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "direction"

    .line 2190
    invoke-virtual {v4, v10}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2191
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x46

    if-eq v10, v11, :cond_5

    const/16 v11, 0x52

    if-ne v10, v11, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    .line 2199
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v4, 0x0

    .line 2201
    :goto_2
    sget-object v10, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    .line 2204
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v9

    .line 2201
    invoke-virtual {v10, v5, v7, v4, v6}, Lcom/ibm/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v0, "Null"

    .line 2215
    invoke-static {v0, v0, v2}, Lcom/ibm/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2218
    const-class v0, Lcom/ibm/icu/text/NullTransliterator;

    const/4 v1, 0x0

    const-string v2, "Any-Null"

    invoke-static {v2, v0, v1}, Lcom/ibm/icu/text/Transliterator;->registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2220
    invoke-static {}, Lcom/ibm/icu/text/RemoveTransliterator;->register()V

    .line 2221
    invoke-static {}, Lcom/ibm/icu/text/EscapeTransliterator;->register()V

    .line 2222
    invoke-static {}, Lcom/ibm/icu/text/UnescapeTransliterator;->register()V

    .line 2223
    invoke-static {}, Lcom/ibm/icu/text/LowercaseTransliterator;->register()V

    .line 2224
    invoke-static {}, Lcom/ibm/icu/text/UppercaseTransliterator;->register()V

    .line 2225
    invoke-static {}, Lcom/ibm/icu/text/TitlecaseTransliterator;->register()V

    .line 2226
    invoke-static {}, Lcom/ibm/icu/text/CaseFoldTransliterator;->register()V

    .line 2227
    invoke-static {}, Lcom/ibm/icu/text/UnicodeNameTransliterator;->register()V

    .line 2228
    invoke-static {}, Lcom/ibm/icu/text/NameUnicodeTransliterator;->register()V

    .line 2229
    invoke-static {}, Lcom/ibm/icu/text/NormalizationTransliterator;->register()V

    .line 2230
    invoke-static {}, Lcom/ibm/icu/text/BreakTransliterator;->register()V

    .line 2231
    invoke-static {}, Lcom/ibm/icu/text/AnyTransliterator;->register()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V
    .locals 1

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 683
    iput v0, p0, Lcom/ibm/icu/text/Transliterator;->maximumContextLength:I

    .line 752
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    iput-object p1, p0, Lcom/ibm/icu/text/Transliterator;->ID:Ljava/lang/String;

    .line 755
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/Transliterator;->setFilter(Lcom/ibm/icu/text/UnicodeFilter;)V

    return-void
.end method

.method public static final createFromRules(Ljava/lang/String;Ljava/lang/String;I)Lcom/ibm/icu/text/Transliterator;
    .locals 8

    .line 1668
    new-instance v0, Lcom/ibm/icu/text/TransliteratorParser;

    invoke-direct {v0}, Lcom/ibm/icu/text/TransliteratorParser;-><init>()V

    .line 1669
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    .line 1672
    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 1673
    new-instance p0, Lcom/ibm/icu/text/NullTransliterator;

    invoke-direct {p0}, Lcom/ibm/icu/text/NullTransliterator;-><init>()V

    goto/16 :goto_3

    .line 1675
    :cond_0
    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 1676
    new-instance p1, Lcom/ibm/icu/text/RuleBasedTransliterator;

    iget-object v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p1, p0, p2, v0}, Lcom/ibm/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;Lcom/ibm/icu/text/UnicodeFilter;)V

    :cond_1
    :goto_0
    move-object p0, p1

    goto/16 :goto_3

    .line 1678
    :cond_2
    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 1683
    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz p1, :cond_3

    .line 1684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p2}, Lcom/ibm/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    .line 1685
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1684
    invoke-static {p1}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    goto :goto_1

    .line 1687
    :cond_3
    iget-object p1, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_1

    .line 1691
    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    goto :goto_0

    .line 1695
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    iget-object v2, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x1

    :goto_2
    if-ge p2, v2, :cond_7

    .line 1700
    iget-object v4, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_5

    .line 1701
    iget-object v4, v0, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1702
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 1703
    invoke-static {v4}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object v5

    .line 1704
    instance-of v5, v5, Lcom/ibm/icu/text/NullTransliterator;

    if-nez v5, :cond_5

    .line 1705
    invoke-static {v4}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    :cond_5
    iget-object v4, v0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_6

    .line 1709
    iget-object v4, v0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 1710
    new-instance v5, Lcom/ibm/icu/text/RuleBasedTransliterator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%Pass"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6}, Lcom/ibm/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;Lcom/ibm/icu/text/UnicodeFilter;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v7

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1714
    :cond_7
    new-instance p2, Lcom/ibm/icu/text/CompoundTransliterator;

    sub-int/2addr v3, v1

    invoke-direct {p2, p1, v3}, Lcom/ibm/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    .line 1715
    invoke-virtual {p2, p0}, Lcom/ibm/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 1716
    iget-object p0, v0, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz p0, :cond_8

    .line 1717
    iget-object p0, v0, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p2, p0}, Lcom/ibm/icu/text/Transliterator;->setFilter(Lcom/ibm/icu/text/UnicodeFilter;)V

    :cond_8
    move-object p0, p2

    :goto_3
    return-object p0
.end method

.method private filteredTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1054
    iget-object v3, v0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    if-nez v3, :cond_0

    if-nez p4, :cond_0

    .line 1055
    invoke-virtual/range {p0 .. p3}, Lcom/ibm/icu/text/Transliterator;->handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V

    return-void

    .line 1083
    :cond_0
    iget v3, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 1102
    :cond_1
    iget-object v4, v0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v4, :cond_3

    .line 1108
    :goto_0
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    if-ge v4, v3, :cond_2

    iget-object v4, v0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 1109
    invoke-interface {v1, v5}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1110
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    goto :goto_0

    .line 1114
    :cond_2
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iput v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 1115
    :goto_1
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ge v4, v3, :cond_3

    iget-object v4, v0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 1116
    invoke-interface {v1, v5}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1117
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    goto :goto_1

    .line 1124
    :cond_3
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ne v4, v5, :cond_4

    goto/16 :goto_7

    .line 1132
    :cond_4
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ge v4, v3, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move/from16 v4, p3

    :goto_2
    if-eqz p4, :cond_8

    if-eqz v4, :cond_8

    .line 1173
    iget v6, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 1174
    iget v7, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int v8, v7, v6

    .line 1178
    invoke-interface/range {p1 .. p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v9

    .line 1179
    invoke-interface {v1, v6, v7, v9}, Lcom/ibm/icu/text/Replaceable;->copy(III)V

    .line 1191
    iget v10, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    move v12, v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 1206
    :goto_3
    invoke-interface {v1, v10}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v14

    invoke-static {v14}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v14

    add-int/2addr v10, v14

    const-string v15, ""

    if-le v10, v7, :cond_6

    add-int/2addr v9, v13

    add-int/2addr v3, v13

    add-int/2addr v8, v9

    .line 1289
    invoke-interface {v1, v9, v8, v15}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 1292
    iput v6, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    goto :goto_6

    :cond_6
    add-int/2addr v11, v14

    .line 1213
    iput v10, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    const/4 v14, 0x1

    .line 1225
    invoke-virtual {v0, v1, v2, v14}, Lcom/ibm/icu/text/Transliterator;->handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V

    .line 1232
    iget v14, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v14, v10

    .line 1237
    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    move/from16 v16, v8

    iget v8, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-eq v5, v8, :cond_7

    add-int v5, v12, v14

    .line 1240
    iget v8, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v8, v6

    sub-int/2addr v5, v8

    .line 1243
    iget v8, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-interface {v1, v6, v8, v15}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    add-int v8, v5, v11

    .line 1246
    invoke-interface {v1, v5, v8, v6}, Lcom/ibm/icu/text/Replaceable;->copy(III)V

    .line 1249
    iput v6, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 1250
    iput v10, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 1251
    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    sub-int/2addr v5, v14

    iput v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_4

    .line 1263
    :cond_7
    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    add-int/2addr v11, v14

    add-int/2addr v12, v11

    add-int/2addr v7, v14

    add-int/2addr v13, v14

    move v6, v5

    move v10, v6

    const/4 v11, 0x0

    :goto_4
    move/from16 v8, v16

    goto :goto_3

    .line 1303
    :cond_8
    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 1304
    invoke-virtual {v0, v1, v2, v4}, Lcom/ibm/icu/text/Transliterator;->handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V

    .line 1305
    iget v6, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v6, v5

    if-nez v4, :cond_a

    .line 1319
    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v7, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ne v5, v7, :cond_9

    goto :goto_5

    .line 1320
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Incomplete non-incremental transliteration by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_5
    add-int/2addr v3, v6

    .line 1333
    :goto_6
    iget-object v5, v0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v5, :cond_b

    if-eqz v4, :cond_1

    .line 1343
    :cond_b
    :goto_7
    iput v3, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public static final getAvailableIDs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2096
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TransliteratorRegistry;->getAvailableIDs()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableSources()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2107
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Lcom/ibm/icu/text/TransliteratorRegistry;->getAvailableSources()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
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

    .line 2118
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/TransliteratorRegistry;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
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

    .line 2128
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/TransliteratorRegistry;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method static getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;
    .locals 2

    .line 1637
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1638
    sget-object v1, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {v1, p0, v0}, Lcom/ibm/icu/text/TransliteratorRegistry;->get(Ljava/lang/String;Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/Transliterator;

    move-result-object p0

    .line 1639
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Lcom/ibm/icu/text/Transliterator;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1645
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static final getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1425
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 7

    const-string v0, "com/ibm/icu/impl/data/icudt69b/translit"

    .line 1479
    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1482
    invoke-static {p0}, Lcom/ibm/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1487
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    .line 1488
    aget-object v4, p0, v3

    const/16 v5, 0x2f

    if-eqz v4, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, p0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    :cond_1
    sget-object v4, Lcom/ibm/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v6, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v6, v0}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    return-object v4

    .line 1501
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%Translit%%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1507
    :catch_0
    :try_start_1
    new-instance v0, Ljava/text/MessageFormat;

    const-string v4, "TransliteratorNamePattern"

    .line 1508
    invoke-virtual {p1, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1510
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    aget-object v1, p0, v1

    aput-object v1, v4, v2

    aget-object v1, p0, v2

    aput-object v1, v4, v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-gt v2, v3, :cond_3

    .line 1515
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%Translit%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1521
    :cond_3
    :try_start_3
    aget-object p1, p0, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1522
    invoke-virtual {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1523
    :cond_4
    invoke-virtual {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return-object p0

    .line 1529
    :catch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1448
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;
    .locals 1

    const/4 v0, 0x0

    .line 1576
    invoke-static {p0, v0}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Lcom/ibm/icu/text/Transliterator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/ibm/icu/text/Transliterator;
    .locals 4

    .line 1596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/ibm/icu/text/UnicodeSet;

    .line 1599
    invoke-static {p0, p1, v0, v1, v3}, Lcom/ibm/icu/text/TransliteratorIDParser;->parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1603
    invoke-static {v1}, Lcom/ibm/icu/text/TransliteratorIDParser;->instantiateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1607
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-gt p1, v2, :cond_1

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 1616
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/Transliterator;

    goto :goto_1

    .line 1613
    :cond_1
    :goto_0
    new-instance p1, Lcom/ibm/icu/text/CompoundTransliterator;

    invoke-direct {p1, p0}, Lcom/ibm/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    move-object p0, p1

    .line 1619
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    aget-object p1, v3, v1

    if-eqz p1, :cond_2

    aget-object p1, v3, v1

    .line 1621
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator;->setFilter(Lcom/ibm/icu/text/UnicodeFilter;)V

    :cond_2
    return-object p0

    .line 1600
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static registerAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2029
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/ibm/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static registerAny()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2241
    invoke-static {}, Lcom/ibm/icu/text/AnyTransliterator;->register()V

    return-void
.end method

.method public static registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ibm/icu/text/Transliterator;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1966
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/ibm/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/Class;Z)V

    if-eqz p2, :cond_0

    .line 1968
    sget-object p1, Lcom/ibm/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v0, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V
    .locals 2

    .line 1985
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/ibm/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;Z)V

    return-void
.end method

.method public static registerInstance(Lcom/ibm/icu/text/Transliterator;)V
    .locals 3

    .line 1999
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/ibm/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator;Z)V

    return-void
.end method

.method static registerInstance(Lcom/ibm/icu/text/Transliterator;Z)V
    .locals 2

    .line 2012
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/ibm/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator;Z)V

    return-void
.end method

.method static registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2067
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/TransliteratorIDParser;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 2

    .line 2079
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v1, Lcom/ibm/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Lcom/ibm/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    sget-object v0, Lcom/ibm/icu/text/Transliterator;->registry:Lcom/ibm/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/TransliteratorRegistry;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1892
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 1893
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0}, Lcom/ibm/icu/text/Transliterator;->handleGetSourceSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 1895
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 1897
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1898
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1900
    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final baseToRules(Z)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x3b

    const-string v1, "::"

    if-eqz p1, :cond_2

    .line 1750
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1751
    invoke-virtual {p0}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1752
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1753
    invoke-static {v2, v4}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    .line 1754
    invoke-static {p1, v5}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1755
    invoke-static {p1, v5}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 1757
    :cond_0
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 1759
    :cond_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1760
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1761
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1763
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public filteredTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1365
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/Transliterator;->filteredTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method

.method public final finishTransliteration(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;)V
    .locals 2

    .line 935
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/Transliterator$Position;->validate(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 936
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/Transliterator;->filteredTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method

.method public getElements()[Lcom/ibm/icu/text/Transliterator;
    .locals 5

    .line 1782
    instance-of v0, p0, Lcom/ibm/icu/text/CompoundTransliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1783
    move-object v0, p0

    check-cast v0, Lcom/ibm/icu/text/CompoundTransliterator;

    .line 1784
    invoke-virtual {v0}, Lcom/ibm/icu/text/CompoundTransliterator;->getCount()I

    move-result v2

    new-array v3, v2, [Lcom/ibm/icu/text/Transliterator;

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1786
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CompoundTransliterator;->getTransliterator(I)Lcom/ibm/icu/text/Transliterator;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/ibm/icu/text/Transliterator;

    aput-object p0, v3, v1

    :cond_1
    return-object v3
.end method

.method public final getFilter()Lcom/ibm/icu/text/UnicodeFilter;
    .locals 1

    .line 1538
    iget-object v0, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1915
    iget-object v0, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    if-nez v0, :cond_0

    return-object p1

    .line 1918
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 1923
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1925
    :catch_0
    iget-object p1, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V

    move-object p1, v1

    .line 1927
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    return-object p1
.end method

.method public final getID()Ljava/lang/String;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/ibm/icu/text/Transliterator;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public final getInverse()Lcom/ibm/icu/text/Transliterator;
    .locals 2

    .line 1949
    iget-object v0, p0, Lcom/ibm/icu/text/Transliterator;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Lcom/ibm/icu/text/Transliterator;

    move-result-object v0

    return-object v0
.end method

.method public final getMaximumContextLength()I
    .locals 1

    .line 1381
    iget v0, p0, Lcom/ibm/icu/text/Transliterator;->maximumContextLength:I

    return v0
.end method

.method public final getSourceSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 1808
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 1809
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->ALL_CODE_POINTS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Transliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Lcom/ibm/icu/text/Transliterator;->addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public getTargetSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 1852
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 1853
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->ALL_CODE_POINTS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Transliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lcom/ibm/icu/text/Transliterator;->addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method protected handleGetSourceSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1827
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    return-object v0
.end method

.method protected abstract handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
.end method

.method public setFilter(Lcom/ibm/icu/text/UnicodeFilter;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1552
    iput-object p1, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 1556
    :cond_0
    :try_start_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    move-object v1, p1

    check-cast v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1558
    :catch_0
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    .line 1559
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeFilter;->addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 1560
    iget-object p1, p0, Lcom/ibm/icu/text/Transliterator;->filter:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    :goto_0
    return-void
.end method

.method protected final setID(Ljava/lang/String;)V
    .locals 0

    .line 1414
    iput-object p1, p0, Lcom/ibm/icu/text/Transliterator;->ID:Ljava/lang/String;

    return-void
.end method

.method protected setMaximumContextLength(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1393
    iput p1, p0, Lcom/ibm/icu/text/Transliterator;->maximumContextLength:I

    return-void

    .line 1391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 0

    .line 1732
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 477
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2270
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final transliterate(Lcom/ibm/icu/text/Replaceable;II)I
    .locals 1

    if-ltz p2, :cond_1

    if-lt p3, p2, :cond_1

    .line 776
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    if-ge v0, p3, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/Transliterator$Position;

    invoke-direct {v0, p2, p3, p2}, Lcom/ibm/icu/text/Transliterator$Position;-><init>(III)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 781
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ibm/icu/text/Transliterator;->filteredTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;ZZ)V

    .line 782
    iget p1, v0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 802
    new-instance v0, Lcom/ibm/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Transliterator;->transliterate(Lcom/ibm/icu/text/Replaceable;)V

    .line 804
    invoke-virtual {v0}, Lcom/ibm/icu/text/ReplaceableString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final transliterate(Lcom/ibm/icu/text/Replaceable;)V
    .locals 2

    .line 791
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Transliterator;->transliterate(Lcom/ibm/icu/text/Replaceable;II)I

    return-void
.end method

.method public final transliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;)V
    .locals 1

    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/Transliterator;->transliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Ljava/lang/String;)V

    return-void
.end method

.method public final transliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;I)V
    .locals 0

    .line 903
    invoke-static {p3}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/Transliterator;->transliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Ljava/lang/String;)V

    return-void
.end method

.method public final transliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Ljava/lang/String;)V
    .locals 2

    .line 857
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/Transliterator$Position;->validate(I)V

    if-eqz p3, :cond_0

    .line 861
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-interface {p1, v0, v1, p3}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 862
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 863
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr v0, p3

    iput v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 866
    :cond_0
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    const/4 v0, 0x1

    if-lez p3, :cond_1

    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr p3, v0

    .line 867
    invoke-interface {p1, p3}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result p3

    invoke-static {p3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 875
    :cond_1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ibm/icu/text/Transliterator;->filteredTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method
