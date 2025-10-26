.class public Lcom/ibm/icu/number/Scale;
.super Ljava/lang/Object;
.source "Scale.java"


# static fields
.field private static final BIG_DECIMAL_100:Ljava/math/BigDecimal;

.field private static final BIG_DECIMAL_1000:Ljava/math/BigDecimal;

.field private static final DEFAULT:Lcom/ibm/icu/number/Scale;

.field private static final HUNDRED:Lcom/ibm/icu/number/Scale;

.field private static final THOUSAND:Lcom/ibm/icu/number/Scale;


# instance fields
.field final arbitrary:Ljava/math/BigDecimal;

.field final magnitude:I

.field final mc:Ljava/math/MathContext;

.field final reciprocal:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/ibm/icu/number/Scale;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    sput-object v0, Lcom/ibm/icu/number/Scale;->DEFAULT:Lcom/ibm/icu/number/Scale;

    .line 24
    new-instance v0, Lcom/ibm/icu/number/Scale;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    sput-object v0, Lcom/ibm/icu/number/Scale;->HUNDRED:Lcom/ibm/icu/number/Scale;

    .line 25
    new-instance v0, Lcom/ibm/icu/number/Scale;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    sput-object v0, Lcom/ibm/icu/number/Scale;->THOUSAND:Lcom/ibm/icu/number/Scale;

    const-wide/16 v0, 0x64

    .line 27
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/number/Scale;->BIG_DECIMAL_100:Ljava/math/BigDecimal;

    const-wide/16 v0, 0x3e8

    .line 28
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/number/Scale;->BIG_DECIMAL_1000:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>(ILjava/math/BigDecimal;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_34_DIGITS:Ljava/math/MathContext;

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;Ljava/math/MathContext;)V

    return-void
.end method

.method private constructor <init>(ILjava/math/BigDecimal;Ljava/math/MathContext;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 43
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 44
    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object p2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p2

    .line 47
    :goto_0
    invoke-virtual {p2}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    sub-int/2addr p1, p2

    move-object p2, v0

    .line 54
    :cond_1
    iput p1, p0, Lcom/ibm/icu/number/Scale;->magnitude:I

    .line 55
    iput-object p2, p0, Lcom/ibm/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    .line 56
    iput-object p3, p0, Lcom/ibm/icu/number/Scale;->mc:Ljava/math/MathContext;

    if-eqz p2, :cond_2

    .line 59
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/number/Scale;->reciprocal:Ljava/math/BigDecimal;

    goto :goto_1

    .line 62
    :cond_2
    iput-object v0, p0, Lcom/ibm/icu/number/Scale;->reciprocal:Ljava/math/BigDecimal;

    :goto_1
    return-void
.end method

.method public static byBigDecimal(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Scale;
    .locals 2

    .line 110
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget-object p0, Lcom/ibm/icu/number/Scale;->DEFAULT:Lcom/ibm/icu/number/Scale;

    return-object p0

    .line 112
    :cond_0
    sget-object v0, Lcom/ibm/icu/number/Scale;->BIG_DECIMAL_100:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    sget-object p0, Lcom/ibm/icu/number/Scale;->HUNDRED:Lcom/ibm/icu/number/Scale;

    return-object p0

    .line 114
    :cond_1
    sget-object v0, Lcom/ibm/icu/number/Scale;->BIG_DECIMAL_1000:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_2

    .line 115
    sget-object p0, Lcom/ibm/icu/number/Scale;->THOUSAND:Lcom/ibm/icu/number/Scale;

    return-object p0

    .line 117
    :cond_2
    new-instance v0, Lcom/ibm/icu/number/Scale;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method

.method public static byDouble(D)Lcom/ibm/icu/number/Scale;
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    .line 132
    sget-object p0, Lcom/ibm/icu/number/Scale;->DEFAULT:Lcom/ibm/icu/number/Scale;

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    .line 134
    sget-object p0, Lcom/ibm/icu/number/Scale;->HUNDRED:Lcom/ibm/icu/number/Scale;

    return-object p0

    :cond_1
    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_2

    .line 136
    sget-object p0, Lcom/ibm/icu/number/Scale;->THOUSAND:Lcom/ibm/icu/number/Scale;

    return-object p0

    .line 138
    :cond_2
    new-instance v0, Lcom/ibm/icu/number/Scale;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method

.method public static byDoubleAndPowerOfTen(DI)Lcom/ibm/icu/number/Scale;
    .locals 1

    .line 150
    new-instance v0, Lcom/ibm/icu/number/Scale;

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method

.method public static none()Lcom/ibm/icu/number/Scale;
    .locals 1

    .line 74
    sget-object v0, Lcom/ibm/icu/number/Scale;->DEFAULT:Lcom/ibm/icu/number/Scale;

    return-object v0
.end method

.method public static powerOfTen(I)Lcom/ibm/icu/number/Scale;
    .locals 2

    if-nez p0, :cond_0

    .line 90
    sget-object p0, Lcom/ibm/icu/number/Scale;->DEFAULT:Lcom/ibm/icu/number/Scale;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 92
    sget-object p0, Lcom/ibm/icu/number/Scale;->HUNDRED:Lcom/ibm/icu/number/Scale;

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 94
    sget-object p0, Lcom/ibm/icu/number/Scale;->THOUSAND:Lcom/ibm/icu/number/Scale;

    return-object p0

    .line 96
    :cond_2
    new-instance v0, Lcom/ibm/icu/number/Scale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public applyReciprocalTo(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget v0, p0, Lcom/ibm/icu/number/Scale;->magnitude:I

    neg-int v0, v0

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 192
    iget-object v0, p0, Lcom/ibm/icu/number/Scale;->reciprocal:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->multiplyBy(Ljava/math/BigDecimal;)V

    .line 194
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/number/Scale;->mc:Ljava/math/MathContext;

    invoke-virtual {v1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/number/Scale;->mc:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    :cond_0
    return-void
.end method

.method public applyTo(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget v0, p0, Lcom/ibm/icu/number/Scale;->magnitude:I

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 180
    iget-object v0, p0, Lcom/ibm/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->multiplyBy(Ljava/math/BigDecimal;)V

    :cond_0
    return-void
.end method

.method isValid()Z
    .locals 1

    .line 157
    iget v0, p0, Lcom/ibm/icu/number/Scale;->magnitude:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public withMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/number/Scale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/ibm/icu/number/Scale;->mc:Ljava/math/MathContext;

    invoke-virtual {v0, p1}, Ljava/math/MathContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 170
    :cond_0
    new-instance v0, Lcom/ibm/icu/number/Scale;

    iget v1, p0, Lcom/ibm/icu/number/Scale;->magnitude:I

    iget-object v2, p0, Lcom/ibm/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2, p1}, Lcom/ibm/icu/number/Scale;-><init>(ILjava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method
