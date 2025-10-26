.class public Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;
.super Lcom/ibm/icu/impl/number/parse/SymbolMatcher;
.source "MinusSignMatcher.java"


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

.field private static final DEFAULT_ALLOW_TRAILING:Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;


# instance fields
.field private final allowTrailing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;-><init>(Z)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    .line 16
    new-instance v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;-><init>(Z)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->DEFAULT_ALLOW_TRAILING:Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 30
    sget-object v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V

    .line 31
    iput-boolean p2, p0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->allowTrailing:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 35
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;-><init>(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)V

    .line 36
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->allowTrailing:Z

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p0

    .line 20
    sget-object v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    iget-object v1, v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->uniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 21
    sget-object v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->DEFAULT_ALLOW_TRAILING:Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    :cond_0
    return-object v0

    .line 23
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected accept(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 1

    .line 46
    iget v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 47
    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    return-void
.end method

.method protected isDisabled(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;->allowTrailing:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result p1

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

    const-string v0, "<MinusSignMatcher>"

    return-object v0
.end method
