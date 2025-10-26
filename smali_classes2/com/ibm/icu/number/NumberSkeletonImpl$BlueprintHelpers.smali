.class final Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlueprintHelpers"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1008
    const-class v0, Lcom/ibm/icu/number/NumberSkeletonImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseFractionStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseDigitsStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseCurrencyOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseMeasureUnitOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseMeasurePerUnitOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIdentifierUnitOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseUnitUsageOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIncrementOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIntegerWidthOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseNumberingSystemOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseScientificStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseScaleOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseExponentWidthOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseExponentSignOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseFracSigOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseTrailingZeroOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseIntegerStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    return-void
.end method

.method static synthetic access$3800(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateExponentWidthOption(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/ibm/icu/util/Currency;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateCurrencyOption(Lcom/ibm/icu/util/Currency;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4100(IILjava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateFractionStem(IILjava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4200(IILjava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateDigitsStem(IILjava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4300(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateIncrementOption(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4600(IILjava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateIntegerWidthOption(IILjava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/ibm/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateNumberingSystemOption(Lcom/ibm/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/ibm/icu/number/Scale;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1008
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->generateScaleOption(Lcom/ibm/icu/number/Scale;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static generateCurrencyOption(Lcom/ibm/icu/util/Currency;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1068
    invoke-virtual {p0}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static generateDigitsStem(IILjava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x40

    .line 1221
    invoke-static {p2, v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->access$3700(Ljava/lang/StringBuilder;II)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x2a

    .line 1223
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    sub-int/2addr p1, p0

    .line 1225
    invoke-static {p2, v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl;->access$3700(Ljava/lang/StringBuilder;II)V

    :goto_0
    return-void
.end method

.method private static generateExponentWidthOption(ILjava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x2a

    .line 1033
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x65

    .line 1034
    invoke-static {p1, v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->access$3700(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method private static generateFractionStem(IILjava/lang/StringBuilder;)V
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "precision-integer"

    .line 1168
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/16 v0, 0x2e

    .line 1171
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    .line 1172
    invoke-static {p2, v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->access$3700(Ljava/lang/StringBuilder;II)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 p0, 0x2a

    .line 1174
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x23

    sub-int/2addr p1, p0

    .line 1176
    invoke-static {p2, v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl;->access$3700(Ljava/lang/StringBuilder;II)V

    :goto_0
    return-void
.end method

.method private static generateIncrementOption(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1391
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static generateIntegerWidthOption(IILjava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x2a

    .line 1436
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    sub-int/2addr p1, p0

    .line 1438
    invoke-static {p2, v0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl;->access$3700(Ljava/lang/StringBuilder;II)V

    :goto_0
    const/16 p1, 0x30

    .line 1440
    invoke-static {p2, p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->access$3700(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method private static generateNumberingSystemOption(Lcom/ibm/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1453
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static generateScaleOption(Lcom/ibm/icu/number/Scale;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/ibm/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 1472
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 1474
    :cond_0
    iget p0, p0, Lcom/ibm/icu/number/Scale;->magnitude:I

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p0

    .line 1475
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static parseCurrencyOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 2

    .line 1056
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    :try_start_0
    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    return-void

    :catch_0
    move-exception p1

    .line 1062
    new-instance v0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v1, "Invalid currency"

    invoke-direct {v0, v1, p0, p1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseDigitsStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1185
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1186
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 1193
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, -0x1

    goto :goto_2

    :cond_1
    move v2, v1

    .line 1198
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1199
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 1209
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-lt v0, v4, :cond_5

    if-ne v2, v3, :cond_4

    .line 1214
    invoke-static {v1}, Lcom/ibm/icu/number/Precision;->minSignificantDigits(I)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    goto :goto_3

    .line 1216
    :cond_4
    invoke-static {v1, v2}, Lcom/ibm/icu/number/Precision;->minMaxSignificantDigits(II)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    :goto_3
    return-void

    .line 1210
    :cond_5
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid significant digits stem"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static parseExponentSignOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 3

    .line 1041
    new-instance v0, Lcom/ibm/icu/util/CharsTrie;

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl;->SERIALIZED_STEM_TRIE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 1042
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/ibm/icu/util/CharsTrie;->next(Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p0

    .line 1043
    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-eq p0, v1, :cond_0

    return v2

    .line 1047
    :cond_0
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl;->STEM_ENUM_VALUES:[Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v0}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$1000(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    .line 1051
    :cond_1
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    check-cast v0, Lcom/ibm/icu/number/ScientificNotation;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/number/ScientificNotation;->withExponentSignDisplay(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;)Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    const/4 p0, 0x1

    return p0
.end method

.method private static parseExponentWidthOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1012
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1017
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1018
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result p0

    if-ge v2, p0, :cond_2

    return v0

    .line 1028
    :cond_2
    iget-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    check-cast p0, Lcom/ibm/icu/number/ScientificNotation;

    invoke-virtual {p0, v3}, Lcom/ibm/icu/number/ScientificNotation;->withMinExponentDigits(I)Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    return v1
.end method

.method private static parseFracSigOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1297
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1303
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1304
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1310
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v0, v2, :cond_3

    .line 1311
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v2, -0x1

    goto :goto_2

    :cond_2
    move v2, v1

    .line 1319
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1320
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1332
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_9

    if-eq v2, v3, :cond_8

    .line 1337
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x72

    if-ne v3, v4, :cond_5

    .line 1338
    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1340
    :cond_5
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_6

    .line 1341
    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->STRICT:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    goto :goto_3

    .line 1345
    :cond_6
    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    .line 1347
    :goto_4
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-lt v0, v4, :cond_7

    goto :goto_5

    .line 1348
    :cond_7
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid digits option for fraction rounder"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p1

    .line 1334
    :cond_8
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid digits option: Wildcard character not allowed with the priority annotation"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p1

    :cond_9
    if-ne v2, v3, :cond_a

    .line 1355
    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    move v2, v1

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    if-ne v1, v5, :cond_b

    .line 1358
    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;->STRICT:Lcom/ibm/icu/number/NumberFormatter$RoundingPriority;

    .line 1364
    :goto_5
    iget-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    check-cast p0, Lcom/ibm/icu/number/FractionPrecision;

    .line 1365
    invoke-virtual {p0, v1, v2, v3}, Lcom/ibm/icu/number/FractionPrecision;->withSignificantDigits(IILcom/ibm/icu/number/NumberFormatter$RoundingPriority;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    return v5

    .line 1360
    :cond_b
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid digits option: Priority annotation required"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private static parseFractionStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1127
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1128
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 1135
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    goto :goto_2

    :cond_1
    move v2, v0

    .line 1140
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1141
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 1151
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-lt v1, v4, :cond_6

    if-ne v2, v3, :cond_5

    if-nez v0, :cond_4

    .line 1157
    invoke-static {}, Lcom/ibm/icu/number/Precision;->unlimited()Lcom/ibm/icu/number/Precision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    goto :goto_3

    .line 1159
    :cond_4
    invoke-static {v0}, Lcom/ibm/icu/number/Precision;->minFraction(I)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    goto :goto_3

    .line 1162
    :cond_5
    invoke-static {v0, v2}, Lcom/ibm/icu/number/Precision;->minMaxFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    :goto_3
    return-void

    .line 1152
    :cond_6
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid fraction stem"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static parseIdentifierUnitOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 1

    .line 1110
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/MeasureUnit;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1112
    :catch_0
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid unit stem"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p1
.end method

.method private static parseIncrementOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 2

    .line 1380
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1383
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    invoke-static {v1}, Lcom/ibm/icu/number/Precision;->increment(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    return-void

    :catch_0
    move-exception p1

    .line 1385
    new-instance v0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v1, "Invalid rounding increment"

    invoke-direct {v0, v1, p0, p1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseIntegerStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 3

    const/4 v0, 0x1

    .line 1282
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1283
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1288
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1291
    invoke-static {v0}, Lcom/ibm/icu/number/IntegerWidth;->zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    return-void

    .line 1289
    :cond_2
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid integer stem"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static parseIntegerWidthOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 6

    const/4 v0, 0x0

    .line 1398
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl;->isWildcardChar(C)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1404
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-eq v3, v2, :cond_1

    .line 1405
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1412
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1413
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eq v3, v2, :cond_3

    add-int/2addr v3, v0

    .line 1423
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-lt v1, v4, :cond_5

    if-ne v3, v2, :cond_4

    .line 1428
    invoke-static {v0}, Lcom/ibm/icu/number/IntegerWidth;->zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    goto :goto_2

    .line 1430
    :cond_4
    invoke-static {v0}, Lcom/ibm/icu/number/IntegerWidth;->zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/ibm/icu/number/IntegerWidth;->truncateAt(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    :goto_2
    return-void

    .line 1424
    :cond_5
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid integer width stem"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static parseMeasurePerUnitOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 1

    .line 1098
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 1099
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->parseMeasureUnitOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 1100
    iget-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 1101
    iput-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    return-void
.end method

.method private static parseMeasureUnitOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1076
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1082
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 1083
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-static {v0}, Lcom/ibm/icu/util/MeasureUnit;->getAvailable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1085
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/MeasureUnit;

    .line 1086
    invoke-virtual {v2}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1087
    iput-object v2, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    return-void

    .line 1091
    :cond_2
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Unknown measure unit"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p1

    .line 1080
    :cond_3
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid measure unit option"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static parseNumberingSystemOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 2

    .line 1444
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1445
    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1449
    iput-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    return-void

    .line 1447
    :cond_0
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Unknown numbering system"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p1
.end method

.method private static parseScaleOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 2

    .line 1458
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/StringSegment;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1461
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    invoke-static {v1}, Lcom/ibm/icu/number/Scale;->byBigDecimal(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Scale;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    return-void

    :catch_0
    move-exception p1

    .line 1463
    new-instance v0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v1, "Invalid scale"

    invoke-direct {v0, v1, p0, p1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseScientificStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 7

    .line 1234
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 1238
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v0

    const/16 v2, 0x45

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    .line 1241
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-eq v2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1245
    :goto_0
    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 1246
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1248
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v4

    if-eq v4, v0, :cond_5

    .line 1251
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_1

    .line 1252
    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    goto :goto_1

    .line 1253
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_5

    .line 1254
    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    :goto_1
    add-int/2addr v0, v1

    .line 1260
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 1265
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1266
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v1

    const/16 v5, 0x30

    if-ne v1, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 1271
    invoke-static {}, Lcom/ibm/icu/number/Notation;->engineering()Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/ibm/icu/number/Notation;->scientific()Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    .line 1272
    :goto_3
    invoke-virtual {p0, v4}, Lcom/ibm/icu/number/ScientificNotation;->withExponentSignDisplay(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;)Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    .line 1273
    invoke-virtual {p0, v3}, Lcom/ibm/icu/number/ScientificNotation;->withMinExponentDigits(I)Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    return-void

    .line 1276
    :cond_5
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Invalid scientific stem"

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static parseTrailingZeroOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z
    .locals 1

    const-string v0, "w"

    .line 1371
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1372
    iget-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;->HIDE_IF_WHOLE:Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/number/Precision;->trailingZeroDisplay(Lcom/ibm/icu/number/NumberFormatter$TrailingZeroDisplay;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static parseUnitUsageOption(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 0

    .line 1117
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StringSegment;->asString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    return-void
.end method
