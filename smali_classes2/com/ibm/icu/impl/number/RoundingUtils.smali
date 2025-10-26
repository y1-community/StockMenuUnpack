.class public Lcom/ibm/icu/impl/number/RoundingUtils;
.super Ljava/lang/Object;
.source "RoundingUtils.java"


# static fields
.field public static final DEFAULT_MATH_CONTEXT_34_DIGITS:Ljava/math/MathContext;

.field public static final DEFAULT_MATH_CONTEXT_UNLIMITED:Ljava/math/MathContext;

.field public static final DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

.field private static final MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

.field private static final MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

.field public static final MAX_INT_FRAC_SIG:I = 0x3e7

.field public static final SECTION_LOWER:I = 0x1

.field public static final SECTION_MIDPOINT:I = 0x2

.field public static final SECTION_UPPER:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    sput-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 143
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    .line 146
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :goto_0
    sget-object v2, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 150
    sget-object v3, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    new-instance v4, Ljava/math/MathContext;

    invoke-static {v1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    aput-object v4, v3, v1

    .line 151
    new-instance v3, Ljava/math/MathContext;

    const/16 v4, 0x22

    invoke-direct {v3, v4}, Ljava/math/MathContext;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    sget-object v1, Lcom/ibm/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 157
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    sput-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_UNLIMITED:Ljava/math/MathContext;

    .line 161
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    aget-object v0, v2, v0

    sput-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_34_DIGITS:Ljava/math/MathContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMathContextOr34Digits(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object p0

    if-nez p0, :cond_0

    .line 197
    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 198
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result p0

    aget-object v0, v0, p0

    :cond_1
    return-object v0
.end method

.method public static getMathContextOrUnlimited(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object p0

    if-nez p0, :cond_0

    .line 177
    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 178
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result p0

    aget-object v0, v0, p0

    :cond_1
    return-object v0
.end method

.method public static getPluralSafe(Lcom/ibm/icu/number/Precision;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 0

    if-nez p0, :cond_0

    .line 232
    invoke-interface {p2, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    return-object p0

    .line 235
    :cond_0
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->createCopy()Lcom/ibm/icu/impl/number/DecimalQuantity;

    move-result-object p2

    .line 236
    invoke-virtual {p0, p2}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    .line 237
    invoke-interface {p2, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundingDirection(ZZIILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_5

    return v2

    :cond_0
    return p0

    :cond_1
    return v3

    :pswitch_1
    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_5

    return v2

    :cond_2
    return v3

    :pswitch_2
    if-eq p2, v3, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_5

    :cond_3
    return v2

    :cond_4
    return v3

    :pswitch_3
    xor-int/lit8 p0, p1, 0x1

    return p0

    :pswitch_4
    return p1

    :pswitch_5
    return v3

    :pswitch_6
    return v2

    .line 115
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Rounding is required on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;
    .locals 1

    .line 212
    sget-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static roundsAtMidpoint(I)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static scaleFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/number/Scale;
    .locals 2

    .line 216
    invoke-static {p0}, Lcom/ibm/icu/impl/number/RoundingUtils;->getMathContextOr34Digits(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/number/Scale;->powerOfTen(I)Lcom/ibm/icu/number/Scale;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/number/Scale;->withMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/number/Scale;

    move-result-object p0

    return-object p0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/number/Scale;->byBigDecimal(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Scale;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/number/Scale;->withMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/number/Scale;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
