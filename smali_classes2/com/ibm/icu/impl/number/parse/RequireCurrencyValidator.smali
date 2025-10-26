.class public Lcom/ibm/icu/impl/number/parse/RequireCurrencyValidator;
.super Lcom/ibm/icu/impl/number/parse/ValidationMatcher;
.source "RequireCurrencyValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/parse/ValidationMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 1

    .line 13
    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 14
    iget v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<RequireCurrency>"

    return-object v0
.end method
