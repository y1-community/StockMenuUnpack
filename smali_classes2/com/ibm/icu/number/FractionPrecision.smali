.class public abstract Lcom/ibm/icu/number/FractionPrecision;
.super Lcom/ibm/icu/number/Precision;
.source "FractionPrecision.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ibm/icu/number/Precision;-><init>()V

    return-void
.end method


# virtual methods
.method public withMaxDigits(I)Lcom/ibm/icu/number/Precision;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x3e7

    if-gt p1, v1, :cond_0

    .line 109
    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->STRICT:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/number/FractionPrecision;->constructFractionSignificant(Lcom/ibm/icu/number/FractionPrecision;IILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)Lcom/ibm/icu/number/Precision;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withMinDigits(I)Lcom/ibm/icu/number/Precision;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x3e7

    if-gt p1, v1, :cond_0

    .line 76
    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/number/FractionPrecision;->constructFractionSignificant(Lcom/ibm/icu/number/FractionPrecision;IILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)Lcom/ibm/icu/number/Precision;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSignificantDigits(IILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)Lcom/ibm/icu/number/Precision;
    .locals 1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-lt p2, p1, :cond_0

    const/16 v0, 0x3e7

    if-gt p2, v0, :cond_0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/number/FractionPrecision;->constructFractionSignificant(Lcom/ibm/icu/number/FractionPrecision;IILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)Lcom/ibm/icu/number/Precision;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
