.class public Lcom/ibm/icu/impl/number/parse/RequireNumberValidator;
.super Lcom/ibm/icu/impl/number/parse/ValidationMatcher;
.source "RequireNumberValidator.java"


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

    .line 14
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<RequireNumber>"

    return-object v0
.end method
