.class public Lcom/ibm/icu/text/PluralSamples;
.super Ljava/lang/Object;
.source "PluralSamples.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LIMIT_FRACTION_SAMPLES:I = 0x3

.field private static final TENS:[I


# instance fields
.field private final _fractionSamples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private final _keyFractionSamplesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;>;"
        }
    .end annotation
.end field

.field public final _keyLimitedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final _keySamplesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private pluralRules:Lcom/ibm/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 186
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/PluralSamples;->TENS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
    .end array-data
.end method

.method public constructor <init>(Lcom/ibm/icu/text/PluralRules;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/ibm/icu/text/PluralSamples;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 56
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v3}, Lcom/ibm/icu/text/PluralRules;->isLimited(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_0
    iput-object v1, p0, Lcom/ibm/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x80

    const/4 v4, 0x0

    move v9, v2

    :goto_1
    if-lez v9, :cond_1

    if-ge v4, v3, :cond_1

    const/4 v7, 0x3

    int-to-double v5, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v5, v10

    move-object v5, p0

    move-object v6, p1

    move-object v8, v1

    invoke-direct/range {v5 .. v11}, Lcom/ibm/icu/text/PluralSamples;->addSimpleSamples(Lcom/ibm/icu/text/PluralRules;ILjava/util/Map;ID)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    const-wide v10, 0x412e848000000000L    # 1000000.0

    move-object v5, p0

    move-object v6, p1

    move-object v8, v1

    .line 79
    invoke-direct/range {v5 .. v11}, Lcom/ibm/icu/text/PluralSamples;->addSimpleSamples(Lcom/ibm/icu/text/PluralRules;ILjava/util/Map;ID)I

    move-result v2

    .line 83
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 84
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 86
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    .line 88
    invoke-virtual {p1, v7}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-direct {p0, v5, v8, v7}, Lcom/ibm/icu/text/PluralSamples;->addRelation(Ljava/util/Map;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    goto :goto_2

    .line 92
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_3
    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_4

    int-to-double v9, v6

    .line 94
    invoke-direct {p0, v9, v10, v4, v5}, Lcom/ibm/icu/text/PluralSamples;->addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/16 v6, 0xa

    :goto_4
    if-ge v6, v7, :cond_6

    int-to-double v9, v6

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    .line 99
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    invoke-direct {p0, v9, v10, v4, v5}, Lcom/ibm/icu/text/PluralSamples;->addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 102
    :cond_6
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find sample for each keyword: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n\t"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_7
    :goto_5
    new-instance v5, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v5, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    const-wide/16 v6, 0x1

    invoke-direct {v5, v6, v7}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v5, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    const-wide/16 v6, 0x2

    invoke-direct {v5, v6, v7}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(J)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v5, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-direct {v5, v6, v7, v8}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    const-wide v6, 0x3fffd70a3d70a3d7L    # 1.99

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/PluralSamples;->fractions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    .line 111
    invoke-virtual {p1, v6}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-nez v8, :cond_8

    .line 114
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 115
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_8
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    if-lez v2, :cond_c

    .line 121
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_b
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 132
    :cond_c
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 135
    :cond_d
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 138
    :cond_e
    iput-object v1, p0, Lcom/ibm/icu/text/PluralSamples;->_keySamplesMap:Ljava/util/Map;

    .line 139
    iput-object v3, p0, Lcom/ibm/icu/text/PluralSamples;->_keyFractionSamplesMap:Ljava/util/Map;

    .line 140
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/PluralSamples;->_fractionSamples:Ljava/util/Set;

    return-void
.end method

.method private addIfNotPresent(DLjava/util/Set;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;>;)Z"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    .line 173
    iget-object p1, p0, Lcom/ibm/icu/text/PluralSamples;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "other"

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 175
    :cond_0
    invoke-direct {p0, p4, p1, v0}, Lcom/ibm/icu/text/PluralSamples;->addRelation(Ljava/util/Map;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    .line 176
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private addRelation(Ljava/util/Map;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSimpleSamples(Lcom/ibm/icu/text/PluralRules;ILjava/util/Map;ID)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/PluralRules;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;ID)I"
        }
    .end annotation

    .line 145
    invoke-virtual {p1, p5, p6}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/ibm/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p2, :cond_1

    return p4

    .line 155
    :cond_1
    :goto_0
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_2

    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p2, :cond_2

    add-int/lit8 p4, p4, -0x1

    :cond_2
    return p4
.end method

.method private fractions(Ljava/util/Set;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 194
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 195
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    .line 196
    iget-wide v4, v4, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 201
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 202
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 203
    iget-object v6, v0, Lcom/ibm/icu/text/PluralSamples;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    .line 207
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v7, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v7, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v11, 0x2

    invoke-direct {v7, v8, v9, v11}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-direct {v0, v3, v6}, Lcom/ibm/icu/text/PluralSamples;->getDifferentCategory(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/ibm/icu/text/PluralSamples;->TENS:[I

    aget v8, v8, v11

    if-lt v7, v8, :cond_2

    .line 212
    new-instance v7, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2
    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    if-gt v8, v7, :cond_4

    .line 218
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v11, Lcom/ibm/icu/text/PluralSamples;->TENS:[I

    aget v12, v11, v8

    if-lt v9, v12, :cond_3

    goto :goto_4

    .line 221
    :cond_3
    new-instance v9, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-double v14, v14

    aget v11, v11, v8

    int-to-double v10, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    invoke-direct {v9, v12, v13, v7}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_6
    return-object v1
.end method

.method private getDifferentCategory(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 231
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 232
    iget-object v2, p0, Lcom/ibm/icu/text/PluralSamples;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x25

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/ibm/icu/text/PluralSamples;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralSamples;->getKeySamplesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 327
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/PluralSamples;->_keyLimitedMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method getFractionSamples()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/ibm/icu/text/PluralSamples;->_fractionSamples:Ljava/util/Set;

    return-object v0
.end method

.method getKeyFractionSamplesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
            ">;>;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/ibm/icu/text/PluralSamples;->_keyFractionSamplesMap:Ljava/util/Map;

    return-object v0
.end method

.method getKeySamplesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/ibm/icu/text/PluralSamples;->_keySamplesMap:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;ILjava/util/Set;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/text/PluralRules$KeywordStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/ibm/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 247
    iput-object v0, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/PluralSamples;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->INVALID:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/PluralSamples;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_2

    .line 255
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 257
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez p3, :cond_3

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    .line 265
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_6

    if-ne v0, v2, :cond_5

    if-eqz p4, :cond_4

    .line 268
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 270
    :cond_4
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNIQUE:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 272
    :cond_5
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->BOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 277
    :cond_6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 278
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    .line 279
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    int-to-double v5, p2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_7
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 282
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    :cond_8
    if-eqz p4, :cond_9

    .line 285
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 286
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_9
    if-ne v0, v2, :cond_a

    .line 289
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNIQUE:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    goto :goto_1

    :cond_a
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->BOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    :goto_1
    return-object p1
.end method
