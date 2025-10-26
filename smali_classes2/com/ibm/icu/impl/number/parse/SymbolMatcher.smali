.class public abstract Lcom/ibm/icu/impl/number/parse/SymbolMatcher;
.super Ljava/lang/Object;
.source "SymbolMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field protected final string:Ljava/lang/String;

.field protected final uniSet:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method protected constructor <init>(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method protected abstract accept(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
.end method

.method public getSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method protected abstract isDisabled(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
.end method

.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 3

    .line 38
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->isDisabled(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 46
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 47
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->accept(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->accept(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    return v1

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result p1

    if-ne v0, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 0

    return-void
.end method

.method public smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

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
