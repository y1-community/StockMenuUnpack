.class public Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;
.super Lcom/ibm/icu/impl/number/parse/SymbolMatcher;
.source "IgnorablesMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher$Flexible;


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

.field private static final JAVA_COMPATIBILITY:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

.field private static final STRICT:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 16
    invoke-static {v1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    .line 18
    new-instance v0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 19
    invoke-static {v1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->STRICT:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    .line 21
    new-instance v0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->EMPTY:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 22
    invoke-static {v1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->JAVA_COMPATIBILITY:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    const-string v0, ""

    .line 35
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method public static getInstance(I)Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 26
    sget-object p0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->JAVA_COMPATIBILITY:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    return-object p0

    :cond_0
    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    .line 28
    sget-object p0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->STRICT:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->DEFAULT:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    return-object p0
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

    const-string v0, "<IgnorablesMatcher>"

    return-object v0
.end method
