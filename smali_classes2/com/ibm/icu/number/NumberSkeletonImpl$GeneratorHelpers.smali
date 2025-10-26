.class final Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorHelpers"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1485
    const-class v0, Lcom/ibm/icu/number/NumberSkeletonImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->notation(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->unit(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->usage(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->precision(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->roundingMode(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->grouping(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->integerWidth(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->symbols(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->unitWidth(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->sign(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->decimal(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1485
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->scale(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method private static decimal(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1667
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1670
    :cond_0
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->access$4900(Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static grouping(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    if-eqz v0, :cond_1

    .line 1611
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1614
    :cond_0
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    check-cast p0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->access$4500(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x1

    return p0

    .line 1617
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with custom Grouper"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static integerWidth(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    sget-object v1, Lcom/ibm/icu/number/IntegerWidth;->DEFAULT:Lcom/ibm/icu/number/IntegerWidth;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "integer-width/"

    .line 1626
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v0, v0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget p0, p0, Lcom/ibm/icu/number/IntegerWidth;->maxInt:I

    invoke-static {v0, p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4600(IILjava/lang/StringBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static notation(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1488
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    instance-of v0, v0, Lcom/ibm/icu/number/CompactNotation;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1489
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    invoke-static {}, Lcom/ibm/icu/number/Notation;->compactLong()Lcom/ibm/icu/number/CompactNotation;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const-string p0, "compact-long"

    .line 1490
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    .line 1492
    :cond_0
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    invoke-static {}, Lcom/ibm/icu/number/Notation;->compactShort()Lcom/ibm/icu/number/CompactNotation;

    move-result-object v0

    if-ne p0, v0, :cond_1

    const-string p0, "compact-short"

    .line 1493
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    .line 1498
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with custom compact data"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    instance-of v0, v0, Lcom/ibm/icu/number/ScientificNotation;

    if-eqz v0, :cond_6

    .line 1502
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    check-cast p0, Lcom/ibm/icu/number/ScientificNotation;

    .line 1503
    iget v0, p0, Lcom/ibm/icu/number/ScientificNotation;->engineeringInterval:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v0, "engineering"

    .line 1504
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v0, "scientific"

    .line 1506
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :goto_0
    iget v0, p0, Lcom/ibm/icu/number/ScientificNotation;->minExponentDigits:I

    const/16 v2, 0x2f

    if-le v0, v1, :cond_4

    .line 1509
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1510
    iget v0, p0, Lcom/ibm/icu/number/ScientificNotation;->minExponentDigits:I

    invoke-static {v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$3800(ILjava/lang/StringBuilder;)V

    .line 1512
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/number/ScientificNotation;->exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-eq v0, v3, :cond_5

    .line 1513
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1514
    iget-object p0, p0, Lcom/ibm/icu/number/ScientificNotation;->exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->access$3900(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V

    :cond_5
    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static precision(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 3

    .line 1561
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    instance-of v0, v0, Lcom/ibm/icu/number/Precision$InfiniteRounderImpl;

    if-eqz v0, :cond_0

    const-string v0, "precision-unlimited"

    .line 1562
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    instance-of v0, v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    check-cast v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    .line 1565
    iget v1, v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->minFrac:I

    iget v0, v0, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    invoke-static {v1, v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4100(IILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 1566
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    instance-of v0, v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    if-eqz v0, :cond_2

    .line 1567
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    check-cast v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    .line 1568
    iget v1, v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->minSig:I

    iget v0, v0, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    invoke-static {v1, v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4200(IILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 1569
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    instance-of v0, v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    if-eqz v0, :cond_4

    .line 1570
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    check-cast v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    .line 1571
    iget v1, v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    iget v2, v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    invoke-static {v1, v2, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4100(IILjava/lang/StringBuilder;)V

    const/16 v1, 0x2f

    .line 1572
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1573
    iget v1, v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->minSig:I

    iget v2, v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    invoke-static {v1, v2, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4200(IILjava/lang/StringBuilder;)V

    .line 1574
    iget-object v0, v0, Lcom/ibm/icu/number/Precision$FracSigRounderImpl;->priority:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x72

    .line 1575
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x73

    .line 1577
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1579
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    instance-of v0, v0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;

    if-eqz v0, :cond_5

    .line 1580
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    check-cast v0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;

    const-string v1, "precision-increment/"

    .line 1581
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    iget-object v0, v0, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-static {v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4300(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1585
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    check-cast v0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    .line 1586
    iget-object v0, v0, Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;->usage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    sget-object v1, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    if-ne v0, v1, :cond_6

    const-string v0, "precision-currency-standard"

    .line 1587
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string v0, "precision-currency-cash"

    .line 1589
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    :goto_0
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    iget-object p0, p0, Lcom/ibm/icu/number/Precision;->trailingZeroDisplay:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->HIDE_IF_WHOLE:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    if-ne p0, v0, :cond_7

    const-string p0, "/w"

    .line 1594
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method private static roundingMode(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    sget-object v1, Lcom/ibm/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1605
    :cond_0
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->access$4400(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static scale(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    invoke-virtual {v0}, Lcom/ibm/icu/number/Scale;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "scale/"

    .line 1678
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$5000(Lcom/ibm/icu/number/Scale;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static sign(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1659
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1662
    :cond_0
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->access$3900(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static symbols(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1634
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ibm/icu/text/NumberingSystem;

    if-eqz v0, :cond_1

    .line 1635
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast p0, Lcom/ibm/icu/text/NumberingSystem;

    .line 1636
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "latn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "latin"

    .line 1637
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "numbering-system/"

    .line 1639
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4700(Lcom/ibm/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 1645
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with custom DecimalFormatSymbols"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unit(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1525
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 1526
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    if-eqz v1, :cond_1

    .line 1527
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    instance-of v1, v1, Lcom/ibm/icu/util/Currency;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    instance-of v1, v1, Lcom/ibm/icu/util/Currency;

    if-nez v1, :cond_0

    .line 1531
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->reciprocal()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/MeasureUnit;->product(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    goto :goto_0

    .line 1528
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with currency unit and per-unit"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1533
    :cond_1
    :goto_0
    instance-of p0, v0, Lcom/ibm/icu/util/Currency;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    const-string p0, "currency/"

    .line 1534
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    check-cast v0, Lcom/ibm/icu/util/Currency;

    invoke-static {v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$4000(Lcom/ibm/icu/util/Currency;Ljava/lang/StringBuilder;)V

    return v1

    .line 1537
    :cond_2
    sget-object p0, Lcom/ibm/icu/util/MeasureUnit;->PERCENT:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "percent"

    .line 1538
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    .line 1540
    :cond_3
    sget-object p0, Lcom/ibm/icu/util/MeasureUnit;->PERMILLE:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "permille"

    .line 1541
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1

    :cond_4
    const-string p0, "unit/"

    .line 1544
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    invoke-virtual {v0}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method private static unitWidth(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1651
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1654
    :cond_0
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->access$4800(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static usage(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "usage/"

    .line 1552
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
