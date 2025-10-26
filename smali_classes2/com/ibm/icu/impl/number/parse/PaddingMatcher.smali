.class public Lcom/ibm/icu/impl/number/parse/PaddingMatcher;
.super Lcom/ibm/icu/impl/number/parse/SymbolMatcher;
.source "PaddingMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher$Flexible;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/impl/number/parse/PaddingMatcher;
    .locals 1

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/parse/PaddingMatcher;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/parse/PaddingMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected accept(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 0

    return-void
.end method

.method protected isDisabled(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<PaddingMatcher>"

    return-object v0
.end method
