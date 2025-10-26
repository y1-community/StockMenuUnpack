.class Lcom/ibm/icu/text/RuleBasedTransliterator$Data;
.super Ljava/lang/Object;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field public ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

.field variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field variables:[Ljava/lang/Object;

.field variablesBase:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/ibm/icu/text/TransliterationRuleSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/TransliterationRuleSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

    return-void
.end method


# virtual methods
.method public lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;
    .locals 2

    .line 165
    iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    check-cast p1, Lcom/ibm/icu/text/UnicodeMatcher;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public lookupReplacer(I)Lcom/ibm/icu/text/UnicodeReplacer;
    .locals 2

    .line 175
    iget-char v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    check-cast p1, Lcom/ibm/icu/text/UnicodeReplacer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
