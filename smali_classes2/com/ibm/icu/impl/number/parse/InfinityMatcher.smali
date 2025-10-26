.class public Lcom/ibm/icu/impl/number/parse/InfinityMatcher;
.super Lcom/ibm/icu/impl/number/parse/SymbolMatcher;
.source "InfinityMatcher.java"


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/impl/number/parse/InfinityMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/InfinityMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->INFINITY_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;-><init>(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/InfinityMatcher;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/parse/InfinityMatcher;
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object p0

    .line 19
    sget-object v0, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/InfinityMatcher;

    iget-object v1, v0, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/parse/InfinityMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected accept(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 1

    .line 41
    iget v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 42
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    return-void
.end method

.method protected isDisabled(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 0

    .line 36
    iget p1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<InfinityMatcher>"

    return-object v0
.end method
