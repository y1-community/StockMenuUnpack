.class public Lcom/ibm/icu/impl/number/parse/NanMatcher;
.super Lcom/ibm/icu/impl/number/parse/SymbolMatcher;
.source "NanMatcher.java"


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/impl/number/parse/NanMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/parse/NanMatcher;

    const-string v1, "NaN"

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/NanMatcher;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/NanMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/NanMatcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;I)Lcom/ibm/icu/impl/number/parse/NanMatcher;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    .line 19
    sget-object p1, Lcom/ibm/icu/impl/number/parse/NanMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/NanMatcher;

    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/NanMatcher;->string:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 22
    :cond_0
    new-instance p1, Lcom/ibm/icu/impl/number/parse/NanMatcher;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/number/parse/NanMatcher;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method protected accept(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 1

    .line 37
    iget v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 38
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    return-void
.end method

.method protected isDisabled(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 0

    .line 32
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<NanMatcher>"

    return-object v0
.end method
