.class Lcom/ibm/icu/text/TransliterationRuleSet;
.super Ljava/lang/Object;
.source "TransliterationRuleSet.java"


# instance fields
.field private index:[I

.field private maxContextLength:I

.field private ruleVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/TransliterationRule;",
            ">;"
        }
    .end annotation
.end field

.field private rules:[Lcom/ibm/icu/text/TransliterationRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->maxContextLength:I

    return-void
.end method


# virtual methods
.method public addRule(Lcom/ibm/icu/text/TransliterationRule;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliterationRule;->getAnteContextLength()I

    move-result p1

    iget v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->maxContextLength:I

    if-le p1, v0, :cond_0

    .line 81
    iput p1, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->maxContextLength:I

    :cond_0
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->rules:[Lcom/ibm/icu/text/TransliterationRule;

    return-void
.end method

.method addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 5

    .line 246
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 247
    new-instance p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 250
    iget-object v3, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/TransliterationRule;

    .line 251
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v4

    invoke-virtual {v3, v0, p2, p3, v4}, Lcom/ibm/icu/text/TransliterationRule;->addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    .line 252
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public freeze()V
    .locals 10

    .line 109
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x101

    new-array v1, v1, [I

    .line 110
    iput-object v1, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 117
    iget-object v5, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/TransliterationRule;

    .line 118
    invoke-virtual {v5}, Lcom/ibm/icu/text/TransliterationRule;->getIndexValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x100

    if-ge v4, v5, :cond_4

    .line 121
    iget-object v5, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    aput v6, v5, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_3

    .line 123
    aget v6, v2, v5

    if-ltz v6, :cond_1

    .line 124
    aget v6, v2, v5

    if-ne v6, v4, :cond_2

    .line 125
    iget-object v6, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 132
    :cond_1
    iget-object v6, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/text/TransliterationRule;

    .line 133
    invoke-virtual {v6, v4}, Lcom/ibm/icu/text/TransliterationRule;->matchesIndexValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    aput v2, v0, v5

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ibm/icu/text/TransliterationRule;

    iput-object v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->rules:[Lcom/ibm/icu/text/TransliterationRule;

    .line 144
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    if-ge v3, v5, :cond_9

    .line 156
    iget-object v1, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    aget v1, v1, v3

    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 157
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->rules:[Lcom/ibm/icu/text/TransliterationRule;

    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    .line 158
    :goto_5
    iget-object v7, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    aget v7, v7, v4

    if-ge v6, v7, :cond_5

    .line 159
    iget-object v7, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->rules:[Lcom/ibm/icu/text/TransliterationRule;

    aget-object v7, v7, v6

    .line 160
    invoke-virtual {v2, v7}, Lcom/ibm/icu/text/TransliterationRule;->masks(Lcom/ibm/icu/text/TransliterationRule;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v0, :cond_6

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :cond_6
    const-string v8, "\n"

    .line 164
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rule "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " masks "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    move v3, v4

    goto :goto_4

    :cond_9
    if-nez v0, :cond_a

    return-void

    .line 173
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public getMaximumContextLength()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->maxContextLength:I

    return v0
.end method

.method toRules(Z)Ljava/lang/String;
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz v2, :cond_0

    const/16 v3, 0xa

    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/TransliterationRule;

    .line 238
    invoke-virtual {v3, p1}, Lcom/ibm/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)Z
    .locals 5

    .line 193
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 194
    iget-object v1, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    aget v1, v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->index:[I

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    if-ge v1, v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/ibm/icu/text/TransliterationRuleSet;->rules:[Lcom/ibm/icu/text/TransliterationRule;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Lcom/ibm/icu/text/TransliterationRule;->matchAndReplace(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)I

    move-result v2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 218
    :cond_2
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return v3
.end method
