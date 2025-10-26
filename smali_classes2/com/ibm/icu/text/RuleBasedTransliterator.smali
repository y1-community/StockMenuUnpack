.class public Lcom/ibm/icu/text/RuleBasedTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RuleBasedTransliterator$Data;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;Lcom/ibm/icu/text/UnicodeFilter;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    .line 67
    iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedTransliterator;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 68
    iget-object p1, p2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

    invoke-virtual {p1}, Lcom/ibm/icu/text/TransliterationRuleSet;->getMaximumContextLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedTransliterator;->setMaximumContextLength(I)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/TransliterationRuleSet;->addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    monitor-enter v0

    const/4 v1, 0x0

    .line 106
    :try_start_0
    iget v2, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iget v3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    sub-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x4

    if-gez v2, :cond_0

    const v2, 0x7fffffff

    .line 111
    :cond_0
    :goto_0
    iget v3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ge v3, v4, :cond_1

    if-gt v1, v2, :cond_1

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedTransliterator;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-object v3, v3, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

    .line 113
    invoke-virtual {v3, p1, p2, p3}, Lcom/ibm/icu/text/TransliterationRuleSet;->transliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public safeClone()Lcom/ibm/icu/text/Transliterator;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedTransliterator;->getFilter()Lcom/ibm/icu/text/UnicodeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    instance-of v1, v0, Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    move-object v0, v1

    .line 237
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/RuleBasedTransliterator;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedTransliterator;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedTransliterator;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v1, v2, v3, v0}, Lcom/ibm/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;Lcom/ibm/icu/text/UnicodeFilter;)V

    return-object v1
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TransliterationRuleSet;->toRules(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
