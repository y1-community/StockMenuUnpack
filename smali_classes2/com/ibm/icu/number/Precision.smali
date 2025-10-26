.class public abstract Lcom/ibm/icu/number/Precision;
.super Ljava/lang/Object;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;,
        Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;,
        Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;,
        Lcom/ibm/icu/number/Precision$IncrementRounderImpl;,
        Lcom/ibm/icu/number/Precision$FracSigRounderImpl;,
        Lcom/ibm/icu/number/Precision$SignificantRounderImpl;,
        Lcom/ibm/icu/number/Precision$FractionRounderImpl;,
        Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;,
        Lcom/ibm/icu/number/Precision$BogusRounder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BOGUS_PRECISION:Lcom/ibm/icu/number/Precision$BogusRounder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final COMPACT_STRATEGY:Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

.field static final DEFAULT_MAX_FRAC_6:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

.field static final FIXED_FRAC_0:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

.field static final FIXED_FRAC_2:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

.field static final FIXED_SIG_2:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

.field static final FIXED_SIG_3:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

.field static final MONETARY_CASH:Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

.field static final MONETARY_STANDARD:Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

.field static final NICKEL:Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

.field static final NONE:Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;

.field static final RANGE_SIG_2_3:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;


# instance fields
.field mathContext:Ljava/math/MathContext;

.field trailingZeroDisplay:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 390
    new-instance v0, Lcom/ibm/icu/number/Precision$BogusRounder;

    invoke-direct {v0}, Lcom/ibm/icu/number/Precision$BogusRounder;-><init>()V

    sput-object v0, Lcom/ibm/icu/number/Precision;->BOGUS_PRECISION:Lcom/ibm/icu/number/Precision$BogusRounder;

    .line 392
    new-instance v0, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;

    invoke-direct {v0}, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;-><init>()V

    sput-object v0, Lcom/ibm/icu/number/Precision;->NONE:Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;

    .line 394
    new-instance v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->FIXED_FRAC_0:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    .line 395
    new-instance v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v2}, Lcom/ibm/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->FIXED_FRAC_2:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    .line 396
    new-instance v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->DEFAULT_MAX_FRAC_6:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    .line 398
    new-instance v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    invoke-direct {v0, v2, v2}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->FIXED_SIG_2:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    .line 399
    new-instance v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->FIXED_SIG_3:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    .line 400
    new-instance v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->RANGE_SIG_2_3:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    .line 402
    new-instance v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    sget-object v8, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;-><init>(IIIILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->COMPACT_STRATEGY:Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    .line 404
    new-instance v0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

    new-instance v1, Ljava/math/BigDecimal;

    const-string v3, "0.05"

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v2}, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->NICKEL:Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

    .line 406
    new-instance v0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    sget-object v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;-><init>(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->MONETARY_STANDARD:Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    .line 407
    new-instance v0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    sget-object v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;-><init>(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V

    sput-object v0, Lcom/ibm/icu/number/Precision;->MONETARY_CASH:Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_UNLIMITED:Ljava/math/MathContext;

    iput-object v0, p0, Lcom/ibm/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/ibm/icu/number/Precision;->getRoundingMagnitudeFraction(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(I)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/ibm/icu/number/Precision;->getDisplayMagnitudeFraction(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/ibm/icu/number/Precision;->getRoundingMagnitudeSignificant(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/ibm/icu/number/Precision;->getDisplayMagnitudeSignificant(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I

    move-result p0

    return p0
.end method

.method static constructCurrency(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/number/CurrencyPrecision;
    .locals 1

    .line 475
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    if-ne p0, v0, :cond_0

    .line 476
    sget-object p0, Lcom/ibm/icu/number/Precision;->MONETARY_STANDARD:Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    return-object p0

    .line 477
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    if-ne p0, v0, :cond_1

    .line 478
    sget-object p0, Lcom/ibm/icu/number/Precision;->MONETARY_CASH:Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    return-object p0

    .line 480
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 415
    sget-object p0, Lcom/ibm/icu/number/Precision;->FIXED_FRAC_0:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_1

    .line 417
    sget-object p0, Lcom/ibm/icu/number/Precision;->FIXED_FRAC_2:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 419
    sget-object p0, Lcom/ibm/icu/number/Precision;->DEFAULT_MAX_FRAC_6:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    return-object p0

    .line 421
    :cond_2
    new-instance v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    return-object v0
.end method

.method static constructFractionSignificant(Lcom/ibm/icu/number/FractionPrecision;IILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)Lcom/ibm/icu/number/Precision;
    .locals 7

    .line 441
    check-cast p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    .line 443
    iget v0, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->minFrac:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    if-ne p3, v0, :cond_0

    .line 445
    sget-object p1, Lcom/ibm/icu/number/Precision;->COMPACT_STRATEGY:Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    goto :goto_0

    .line 447
    :cond_0
    new-instance v6, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    iget v1, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->minFrac:I

    iget v2, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    move-object v0, v6

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;-><init>(IIIILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)V

    move-object p1, v6

    .line 449
    :goto_0
    iget-object p0, p0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-virtual {p1, p0}, Lcom/ibm/icu/number/Precision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0
.end method

.method static constructFromCurrency(Lcom/ibm/icu/number/CurrencyPrecision;Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;
    .locals 5

    .line 486
    check-cast p0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    .line 487
    iget-object v0, p0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->usage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->getRoundingIncrement(Lcom/ibm/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 490
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 491
    invoke-static {p1}, Lcom/ibm/icu/number/Precision;->constructIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Precision;

    move-result-object p1

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->usage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I

    move-result p1

    .line 494
    invoke-static {p1, p1}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p1

    .line 496
    :goto_0
    iget-object p0, p0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-virtual {p1, p0}, Lcom/ibm/icu/number/Precision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0
.end method

.method static constructIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Precision;
    .locals 5

    .line 454
    sget-object v0, Lcom/ibm/icu/number/Precision;->NICKEL:Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

    iget-object v1, v0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 460
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 462
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 463
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    .line 464
    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 466
    new-instance v0, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;

    invoke-direct {v0, p0, v1, v3}, Lcom/ibm/icu/number/Precision$IncrementOneRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    return-object v0

    .line 467
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 468
    new-instance v0, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;

    invoke-direct {v0, p0, v1, v3}, Lcom/ibm/icu/number/Precision$IncrementFiveRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    return-object v0

    .line 471
    :cond_2
    new-instance v0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;

    invoke-direct {v0, p0}, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method static constructInfinite()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 410
    sget-object v0, Lcom/ibm/icu/number/Precision;->NONE:Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;

    return-object v0
.end method

.method static constructSignificant(II)Lcom/ibm/icu/number/Precision;
    .locals 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 428
    sget-object p0, Lcom/ibm/icu/number/Precision;->FIXED_SIG_2:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 430
    sget-object p0, Lcom/ibm/icu/number/Precision;->FIXED_SIG_3:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 432
    sget-object p0, Lcom/ibm/icu/number/Precision;->RANGE_SIG_2_3:Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    return-object p0

    .line 434
    :cond_2
    new-instance v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    return-object v0
.end method

.method public static currency(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/number/CurrencyPrecision;
    .locals 1

    if-eqz p0, :cond_0

    .line 336
    invoke-static {p0}, Lcom/ibm/icu/number/Precision;->constructCurrency(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/number/CurrencyPrecision;

    move-result-object p0

    return-object p0

    .line 338
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CurrencyUsage must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fixedFraction(I)Lcom/ibm/icu/number/FractionPrecision;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    .line 101
    invoke-static {p0, p0}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p0

    return-object p0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fixedSignificantDigits(I)Lcom/ibm/icu/number/Precision;
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    .line 204
    invoke-static {p0, p0}, Lcom/ibm/icu/number/Precision;->constructSignificant(II)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getDisplayMagnitudeFraction(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    neg-int p0, p0

    return p0
.end method

.method private static getDisplayMagnitudeSignificant(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I
    .locals 1

    .line 875
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result p0

    :goto_0
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getRoundingMagnitudeFraction(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    neg-int p0, p0

    return p0
.end method

.method private static getRoundingMagnitudeSignificant(Lcom/ibm/icu/impl/number/DecimalQuantity;I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 853
    :cond_0
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result p0

    :goto_0
    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static increment(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Precision;
    .locals 1

    if-eqz p0, :cond_0

    .line 307
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    invoke-static {p0}, Lcom/ibm/icu/number/Precision;->constructIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rounding increment must be positive and non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static integer()Lcom/ibm/icu/number/FractionPrecision;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {v0, v0}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object v0

    return-object v0
.end method

.method public static maxFraction(I)Lcom/ibm/icu/number/FractionPrecision;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    .line 150
    invoke-static {v0, p0}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static maxSignificantDigits(I)Lcom/ibm/icu/number/Precision;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x3e7

    if-gt p0, v1, :cond_0

    .line 249
    invoke-static {v0, p0}, Lcom/ibm/icu/number/Precision;->constructSignificant(II)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0

    .line 251
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minFraction(I)Lcom/ibm/icu/number/FractionPrecision;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    const/4 v0, -0x1

    .line 127
    invoke-static {p0, v0}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p0

    return-object p0

    .line 129
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minMaxFraction(II)Lcom/ibm/icu/number/FractionPrecision;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 178
    invoke-static {p0, p1}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minMaxSignificantDigits(II)Lcom/ibm/icu/number/Precision;
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_0

    if-gt p0, p1, :cond_0

    .line 274
    invoke-static {p0, p1}, Lcom/ibm/icu/number/Precision;->constructSignificant(II)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minSignificantDigits(I)Lcom/ibm/icu/number/Precision;
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    const/4 v0, -0x1

    .line 229
    invoke-static {p0, v0}, Lcom/ibm/icu/number/Precision;->constructSignificant(II)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unlimited()Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 55
    invoke-static {}, Lcom/ibm/icu/number/Precision;->constructInfinite()Lcom/ibm/icu/number/Precision;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method chooseMultiplierAndApply(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MultiplierProducer;)I
    .locals 4

    .line 538
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v0

    .line 539
    invoke-interface {p2, v0}, Lcom/ibm/icu/impl/number/MultiplierProducer;->getMultiplier(I)I

    move-result v1

    .line 540
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 541
    invoke-virtual {p0, p1}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    .line 544
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 550
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v2

    add-int v3, v0, v1

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 557
    invoke-interface {p2, v0}, Lcom/ibm/icu/impl/number/MultiplierProducer;->getMultiplier(I)I

    move-result p2

    if-ne v1, p2, :cond_2

    return v1

    :cond_2
    sub-int v0, p2, v1

    .line 564
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 565
    invoke-virtual {p0, p1}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    return p2
.end method

.method abstract createCopy()Lcom/ibm/icu/number/Precision;
.end method

.method setResolvedMinFraction(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V
    .locals 5

    .line 865
    iget-object v0, p0, Lcom/ibm/icu/number/Precision;->trailingZeroDisplay:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ibm/icu/text/PluralRules$Operand;->t:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 868
    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 869
    :cond_0
    invoke-interface {p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->setMinFraction(I)V

    :cond_1
    return-void
.end method

.method public trailingZeroDisplay(Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;)Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision;->createCopy()Lcom/ibm/icu/number/Precision;

    move-result-object v0

    .line 351
    iput-object p1, v0, Lcom/ibm/icu/number/Precision;->trailingZeroDisplay:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    return-object v0
.end method

.method withLocaleData(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 508
    instance-of v0, p0, Lcom/ibm/icu/number/CurrencyPrecision;

    if-eqz v0, :cond_0

    .line 509
    move-object v0, p0

    check-cast v0, Lcom/ibm/icu/number/CurrencyPrecision;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/CurrencyPrecision;->withCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/ibm/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    invoke-virtual {v0, p1}, Ljava/math/MathContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/number/Precision;->createCopy()Lcom/ibm/icu/number/Precision;

    move-result-object v0

    .line 367
    iput-object p1, v0, Lcom/ibm/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method
