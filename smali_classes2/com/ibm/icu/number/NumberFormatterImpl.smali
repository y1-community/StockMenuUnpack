.class Lcom/ibm/icu/number/NumberFormatterImpl;
.super Ljava/lang/Object;
.source "NumberFormatterImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;


# instance fields
.field final microPropsGenerator:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field final micros:Lcom/ibm/icu/impl/number/MicroProps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "XXX"

    .line 87
    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/number/NumberFormatterImpl;->DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/ibm/icu/impl/number/MicroProps;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/MicroProps;-><init>(Z)V

    iput-object v0, p0, Lcom/ibm/icu/number/NumberFormatterImpl;->micros:Lcom/ibm/icu/impl/number/MicroProps;

    .line 55
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/MicroProps;Z)Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/number/NumberFormatterImpl;->microPropsGenerator:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method public static formatStatic(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 1

    .line 65
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberFormatterImpl;->preProcessUnsafe(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p0

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeNumber(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    .line 67
    invoke-static {p0, p2, v0, p1}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeAffixes(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    return-object p0
.end method

.method private static getPrefixSuffixImpl(Lcom/ibm/icu/impl/number/MicroPropsGenerator;BLcom/ibm/icu/impl/FormattedStringBuilder;)I
    .locals 2

    .line 137
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    if-gez p1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->negate()V

    .line 141
    :cond_0
    invoke-interface {p0, v0}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p0

    .line 142
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {p1, p2, v1, v1}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    .line 143
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Modifier;->getPrefixLength()I

    move-result p0

    return p0
.end method

.method public static getPrefixSuffixStatic(Lcom/ibm/icu/impl/number/MacroProps;BLcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/FormattedStringBuilder;)I
    .locals 1

    .line 82
    new-instance p2, Lcom/ibm/icu/impl/number/MicroProps;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/ibm/icu/impl/number/MicroProps;-><init>(Z)V

    .line 83
    invoke-static {p0, p2, v0}, Lcom/ibm/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/MicroProps;Z)Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    move-result-object p0

    .line 84
    invoke-static {p0, p1, p3}, Lcom/ibm/icu/number/NumberFormatterImpl;->getPrefixSuffixImpl(Lcom/ibm/icu/impl/number/MicroPropsGenerator;BLcom/ibm/icu/impl/FormattedStringBuilder;)I

    move-result p0

    return p0
.end method

.method private static macrosToMicroGenerator(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/MicroProps;Z)Lcom/ibm/icu/impl/number/MicroPropsGenerator;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    .line 189
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {v2}, Lcom/ibm/icu/number/NumberFormatterImpl;->unitIsCurrency(Lcom/ibm/icu/util/MeasureUnit;)Z

    move-result v2

    .line 190
    iget-object v3, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {v3}, Lcom/ibm/icu/number/NumberFormatterImpl;->unitIsBaseUnit(Lcom/ibm/icu/util/MeasureUnit;)Z

    move-result v3

    .line 191
    iget-object v4, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {v4}, Lcom/ibm/icu/number/NumberFormatterImpl;->unitIsPercent(Lcom/ibm/icu/util/MeasureUnit;)Z

    move-result v4

    .line 192
    iget-object v5, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {v5}, Lcom/ibm/icu/number/NumberFormatterImpl;->unitIsPermille(Lcom/ibm/icu/util/MeasureUnit;)Z

    move-result v5

    .line 193
    iget-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    instance-of v6, v6, Lcom/ibm/icu/number/CompactNotation;

    .line 194
    iget-object v7, v0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v9, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-eq v7, v9, :cond_1

    iget-object v7, v0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v9, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-eq v7, v9, :cond_1

    iget-object v7, v0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v9, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-eq v7, v9, :cond_1

    iget-object v7, v0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v9, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-ne v7, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 198
    iget-object v9, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    check-cast v9, Lcom/ibm/icu/util/Currency;

    goto :goto_2

    :cond_2
    sget-object v9, Lcom/ibm/icu/number/NumberFormatterImpl;->DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

    .line 199
    :goto_2
    sget-object v12, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 200
    iget-object v13, v0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-eqz v13, :cond_3

    .line 201
    iget-object v12, v0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    :cond_3
    move-object v15, v12

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 209
    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-eq v15, v3, :cond_5

    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-eqz v6, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 215
    iget-object v12, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v12}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    iget-object v12, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 216
    invoke-virtual {v12}, Lcom/ibm/icu/util/MeasureUnit;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v12

    sget-object v13, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    .line 218
    :goto_4
    iget-object v13, v0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 222
    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v14, v14, Lcom/ibm/icu/text/NumberingSystem;

    if-eqz v14, :cond_8

    .line 223
    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast v14, Lcom/ibm/icu/text/NumberingSystem;

    goto :goto_5

    .line 226
    :cond_8
    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v14}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v14

    .line 228
    :goto_5
    invoke-virtual {v14}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/ibm/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    const-string v10, ""

    .line 231
    iput-object v10, v1, Lcom/ibm/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    .line 234
    iget-object v10, v0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v10, v10, Lcom/ibm/icu/text/DecimalFormatSymbols;

    if-eqz v10, :cond_9

    .line 235
    iget-object v10, v0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast v10, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v10, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    goto :goto_6

    .line 237
    :cond_9
    iget-object v10, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v10, v14}, Lcom/ibm/icu/text/DecimalFormatSymbols;->forNumberingSystem(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberingSystem;)Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v10

    iput-object v10, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    if-eqz v2, :cond_a

    .line 239
    iget-object v10, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v10, v9}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 246
    iget-object v14, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v14}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 247
    iget-object v14, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v14}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-nez v14, :cond_12

    if-eqz v3, :cond_d

    :cond_c
    :goto_8
    const/4 v4, 0x0

    goto :goto_a

    :cond_d
    if-nez v4, :cond_11

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    if-eqz v2, :cond_c

    .line 255
    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne v15, v4, :cond_f

    goto :goto_8

    :cond_f
    if-eqz v7, :cond_10

    const/4 v4, 0x7

    goto :goto_a

    :cond_10
    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v4, 0x2

    .line 264
    :goto_a
    iget-object v7, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iget-object v14, v1, Lcom/ibm/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    .line 265
    invoke-static {v7, v14, v4}, Lcom/ibm/icu/text/NumberFormat;->getPatternForStyleAndNumberingSystem(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 267
    :cond_12
    invoke-static {v14}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v4

    .line 275
    iget-object v7, v0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v7, :cond_14

    if-eqz v3, :cond_13

    .line 280
    new-instance v7, Lcom/ibm/icu/impl/number/UsagePrefsHandler;

    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iget-object v10, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-direct {v7, v14, v10, v11, v1}, Lcom/ibm/icu/impl/number/UsagePrefsHandler;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Ljava/lang/String;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    move-object v10, v7

    goto :goto_c

    .line 277
    :cond_13
    new-instance v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v1, "We only support \"usage\" when the input unit is specified, and is a CLDR Unit."

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-eqz v12, :cond_15

    .line 282
    new-instance v7, Lcom/ibm/icu/impl/number/UnitConversionHandler;

    iget-object v10, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-direct {v7, v10, v1}, Lcom/ibm/icu/impl/number/UnitConversionHandler;-><init>(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    goto :goto_b

    :cond_15
    move-object v7, v1

    :goto_b
    const/4 v10, 0x0

    .line 286
    :goto_c
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    if-eqz v11, :cond_16

    .line 287
    new-instance v11, Lcom/ibm/icu/impl/number/MultiplierFormatHandler;

    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    invoke-direct {v11, v14, v7}, Lcom/ibm/icu/impl/number/MultiplierFormatHandler;-><init>(Lcom/ibm/icu/number/Scale;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    move-object v7, v11

    .line 291
    :cond_16
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    if-eqz v11, :cond_17

    .line 292
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    goto :goto_d

    :cond_17
    if-eqz v6, :cond_18

    .line 294
    sget-object v11, Lcom/ibm/icu/number/Precision;->COMPACT_STRATEGY:Lcom/ibm/icu/number/Precision$FracSigRounderImpl;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    goto :goto_d

    :cond_18
    if-eqz v2, :cond_19

    .line 296
    sget-object v11, Lcom/ibm/icu/number/Precision;->MONETARY_STANDARD:Lcom/ibm/icu/number/Precision$CurrencyRounderImpl;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    goto :goto_d

    .line 297
    :cond_19
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v11, :cond_1a

    .line 299
    sget-object v11, Lcom/ibm/icu/number/Precision;->BOGUS_PRECISION:Lcom/ibm/icu/number/Precision$BogusRounder;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    goto :goto_d

    .line 301
    :cond_1a
    sget-object v11, Lcom/ibm/icu/number/Precision;->DEFAULT_MAX_FRAC_6:Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    .line 303
    :goto_d
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    if-eqz v11, :cond_1b

    .line 304
    iget-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 305
    invoke-static {v14}, Lcom/ibm/icu/impl/number/RoundingUtils;->mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;

    move-result-object v14

    .line 304
    invoke-virtual {v11, v14}, Lcom/ibm/icu/number/Precision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object v11

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    .line 307
    :cond_1b
    iget-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    invoke-virtual {v11, v9}, Lcom/ibm/icu/number/Precision;->withLocaleData(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;

    move-result-object v11

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    .line 310
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    instance-of v11, v11, Lcom/ibm/icu/impl/number/Grouper;

    if-eqz v11, :cond_1c

    .line 311
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    check-cast v11, Lcom/ibm/icu/impl/number/Grouper;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->grouping:Lcom/ibm/icu/impl/number/Grouper;

    goto :goto_e

    .line 312
    :cond_1c
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    instance-of v11, v11, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    if-eqz v11, :cond_1d

    .line 313
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    check-cast v11, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v11}, Lcom/ibm/icu/impl/number/Grouper;->forStrategy(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object v11

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->grouping:Lcom/ibm/icu/impl/number/Grouper;

    goto :goto_e

    :cond_1d
    if-eqz v6, :cond_1e

    .line 316
    sget-object v11, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v11}, Lcom/ibm/icu/impl/number/Grouper;->forStrategy(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object v11

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->grouping:Lcom/ibm/icu/impl/number/Grouper;

    goto :goto_e

    .line 318
    :cond_1e
    sget-object v11, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v11}, Lcom/ibm/icu/impl/number/Grouper;->forStrategy(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object v11

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->grouping:Lcom/ibm/icu/impl/number/Grouper;

    .line 320
    :goto_e
    iget-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->grouping:Lcom/ibm/icu/impl/number/Grouper;

    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v11, v14, v4}, Lcom/ibm/icu/impl/number/Grouper;->withLocaleData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object v11

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->grouping:Lcom/ibm/icu/impl/number/Grouper;

    .line 323
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    if-eqz v11, :cond_1f

    .line 324
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->padding:Lcom/ibm/icu/impl/number/Padder;

    goto :goto_f

    .line 326
    :cond_1f
    sget-object v11, Lcom/ibm/icu/impl/number/Padder;->NONE:Lcom/ibm/icu/impl/number/Padder;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->padding:Lcom/ibm/icu/impl/number/Padder;

    .line 330
    :goto_f
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    if-eqz v11, :cond_20

    .line 331
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    goto :goto_10

    .line 333
    :cond_20
    sget-object v11, Lcom/ibm/icu/number/IntegerWidth;->DEFAULT:Lcom/ibm/icu/number/IntegerWidth;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    .line 337
    :goto_10
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-eqz v11, :cond_21

    .line 338
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    goto :goto_11

    .line 340
    :cond_21
    sget-object v11, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 344
    :goto_11
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-eqz v11, :cond_22

    .line 345
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto :goto_12

    .line 347
    :cond_22
    sget-object v11, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 351
    :goto_12
    iput-boolean v2, v1, Lcom/ibm/icu/impl/number/MicroProps;->useCurrency:Z

    .line 354
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    instance-of v11, v11, Lcom/ibm/icu/number/ScientificNotation;

    if-eqz v11, :cond_23

    .line 355
    iget-object v11, v0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    check-cast v11, Lcom/ibm/icu/number/ScientificNotation;

    iget-object v14, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v11, v14, v8, v7}, Lcom/ibm/icu/number/ScientificNotation;->withLocaleData(Lcom/ibm/icu/text/DecimalFormatSymbols;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    move-result-object v7

    goto :goto_13

    .line 358
    :cond_23
    sget-object v11, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->EMPTY:Lcom/ibm/icu/impl/number/ConstantAffixModifier;

    iput-object v11, v1, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    .line 363
    :goto_13
    new-instance v11, Lcom/ibm/icu/impl/number/MutablePatternModifier;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/ibm/icu/impl/number/MutablePatternModifier;-><init>(Z)V

    .line 364
    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    if-eqz v14, :cond_24

    iget-object v4, v0, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    :cond_24
    const/4 v14, 0x0

    invoke-virtual {v11, v4, v14}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setPatternInfo(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/text/NumberFormat$Field;)V

    .line 365
    iget-object v4, v1, Lcom/ibm/icu/impl/number/MicroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v11, v4, v5}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setPatternAttributes(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Z)V

    .line 366
    invoke-virtual {v11}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v4

    if-eqz v4, :cond_26

    if-nez v13, :cond_25

    .line 369
    iget-object v4, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v13

    .line 371
    :cond_25
    iget-object v4, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v11, v4, v9, v15, v13}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/text/PluralRules;)V

    const/4 v14, 0x0

    goto :goto_14

    .line 373
    :cond_26
    iget-object v4, v1, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v14, 0x0

    invoke-virtual {v11, v4, v9, v15, v14}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/text/PluralRules;)V

    :goto_14
    if-eqz v8, :cond_27

    .line 377
    invoke-virtual {v11}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createImmutable()Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v4

    move-object v5, v4

    goto :goto_15

    :cond_27
    move-object v5, v14

    :goto_15
    if-eqz v3, :cond_2f

    .line 383
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    if-eqz v2, :cond_28

    .line 384
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_16

    :cond_28
    move-object/from16 v16, v14

    :goto_16
    if-nez v13, :cond_29

    .line 388
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v13

    :cond_29
    move-object v2, v13

    .line 390
    iget-object v3, v0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    goto :goto_17

    :cond_2a
    iget-object v3, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 392
    invoke-static {v3}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v3

    :goto_17
    move-object/from16 v17, v3

    .line 394
    iget-object v3, v0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 396
    iget-object v13, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 398
    invoke-virtual {v10}, Lcom/ibm/icu/impl/number/UsagePrefsHandler;->getOutputUnits()Ljava/util/List;

    move-result-object v14

    move-object/from16 v18, v7

    .line 396
    invoke-static/range {v13 .. v18}, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->forMeasureUnits(Lcom/ibm/icu/util/ULocale;Ljava/util/List;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameMultiplexer;

    move-result-object v3

    goto :goto_19

    :cond_2b
    if-eqz v12, :cond_2c

    .line 404
    iget-object v13, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iget-object v14, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    move-object/from16 v18, v7

    invoke-static/range {v13 .. v18}, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->forMeasureUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;

    move-result-object v3

    goto :goto_19

    .line 412
    :cond_2c
    iget-object v3, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 413
    iget-object v4, v0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    if-eqz v4, :cond_2e

    .line 414
    iget-object v4, v0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v4}, Lcom/ibm/icu/util/MeasureUnit;->reciprocal()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/MeasureUnit;->product(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v3

    .line 419
    invoke-virtual {v3}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2e

    iget-object v4, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v4}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v4, v0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v4}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    goto :goto_18

    .line 420
    :cond_2d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "perUnit() can only be used if unit and perUnit are both built-ins, or the combination is a built-in"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_18
    move-object v14, v3

    .line 424
    iget-object v13, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v18, v7

    invoke-static/range {v13 .. v18}, Lcom/ibm/icu/impl/number/LongNameHandler;->forMeasureUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameHandler;

    move-result-object v3

    :goto_19
    move-object v13, v2

    move-object v7, v3

    goto :goto_1a

    :cond_2f
    if-eqz v2, :cond_31

    .line 432
    sget-object v2, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne v15, v2, :cond_31

    if-nez v13, :cond_30

    .line 435
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v13

    .line 437
    :cond_30
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v9, v13, v7}, Lcom/ibm/icu/impl/number/LongNameHandler;->forCurrencyLongNames(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameHandler;

    move-result-object v2

    move-object v7, v2

    goto :goto_1a

    .line 440
    :cond_31
    sget-object v2, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->EMPTY:Lcom/ibm/icu/impl/number/ConstantAffixModifier;

    iput-object v2, v1, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    :goto_1a
    if-eqz v6, :cond_34

    if-nez v13, :cond_32

    .line 447
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v2

    move-object v4, v2

    goto :goto_1b

    :cond_32
    move-object v4, v13

    .line 449
    :goto_1b
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    instance-of v2, v2, Lcom/ibm/icu/util/Currency;

    if-eqz v2, :cond_33

    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-eq v2, v3, :cond_33

    sget-object v2, Lcom/ibm/icu/impl/number/CompactData$CompactType;->CURRENCY:Lcom/ibm/icu/impl/number/CompactData$CompactType;

    goto :goto_1c

    :cond_33
    sget-object v2, Lcom/ibm/icu/impl/number/CompactData$CompactType;->DECIMAL:Lcom/ibm/icu/impl/number/CompactData$CompactType;

    :goto_1c
    move-object v3, v2

    .line 452
    iget-object v2, v0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    check-cast v2, Lcom/ibm/icu/number/CompactNotation;

    iget-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iget-object v9, v1, Lcom/ibm/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    move-object v0, v2

    move-object v1, v6

    move-object v2, v9

    move-object v14, v5

    move-object v5, v11

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/number/CompactNotation;->withLocaleData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/impl/number/CompactData$CompactType;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MutablePatternModifier;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    move-result-object v7

    goto :goto_1d

    :cond_34
    move-object v14, v5

    :goto_1d
    if-eqz v8, :cond_35

    .line 463
    invoke-virtual {v14, v7}, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->addToChain(Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v0

    goto :goto_1e

    .line 465
    :cond_35
    invoke-virtual {v11, v7}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->addToChain(Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method private static preProcessUnsafe(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 2

    .line 117
    new-instance v0, Lcom/ibm/icu/impl/number/MicroProps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/MicroProps;-><init>(Z)V

    .line 118
    invoke-static {p0, v0, v1}, Lcom/ibm/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Lcom/ibm/icu/impl/number/MacroProps;Lcom/ibm/icu/impl/number/MicroProps;Z)Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    move-result-object p0

    .line 119
    invoke-interface {p0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p0

    .line 120
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v0, v0, Lcom/ibm/icu/number/IntegerWidth;->maxInt:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v0, v0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v0, v0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    .line 124
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v0, v0, Lcom/ibm/icu/number/IntegerWidth;->maxInt:I

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->applyMaxInteger(I)V

    :goto_0
    return-object p0
.end method

.method private static unitIsBaseUnit(Lcom/ibm/icu/util/MeasureUnit;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static unitIsCurrency(Lcom/ibm/icu/util/MeasureUnit;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "currency"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static unitIsPercent(Lcom/ibm/icu/util/MeasureUnit;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object p0

    const-string v0, "percent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static unitIsPermille(Lcom/ibm/icu/util/MeasureUnit;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object p0

    const-string v0, "permille"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static writeAffixes(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 8

    .line 482
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v0, p1, p2, p3}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MicroProps;->padding:Lcom/ibm/icu/impl/number/Padder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Padder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    iget-object v2, p0, Lcom/ibm/icu/impl/number/MicroProps;->padding:Lcom/ibm/icu/impl/number/Padder;

    iget-object v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    iget-object v4, p0, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    add-int v7, p3, v0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/impl/number/Padder;->padAndApply(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    add-int v2, p3, v0

    invoke-interface {v1, p1, p2, v2}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    add-int/2addr p3, v0

    invoke-interface {p0, p1, p2, p3}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p0

    add-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private static writeFractionDigits(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 6

    .line 578
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getLowerDisplayMagnitude()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    neg-int v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 581
    invoke-interface {p1, v3}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getDigit(I)B

    move-result v3

    .line 582
    iget-object v4, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    add-int v4, v2, p3

    .line 583
    iget-object v5, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v4, v5, v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v3

    goto :goto_1

    :cond_0
    add-int v4, v2, p3

    .line 586
    iget-object v5, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v4, v3, v5}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static writeIntegerDigits(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 6

    .line 547
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getUpperDisplayMagnitude()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 550
    iget-object v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->grouping:Lcom/ibm/icu/impl/number/Grouper;

    invoke-virtual {v3, v1, p1}, Lcom/ibm/icu/impl/number/Grouper;->groupAtPosition(ILcom/ibm/icu/impl/number/DecimalQuantity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    iget-boolean v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->useCurrency:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 552
    invoke-virtual {v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 553
    invoke-virtual {v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 551
    invoke-virtual {p2, p3, v3, v4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 558
    :cond_1
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getDigit(I)B

    move-result v3

    .line 559
    iget-object v4, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 560
    iget-object v4, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 561
    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    add-int/2addr v4, v3

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 560
    invoke-virtual {p2, p3, v4, v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v3

    goto :goto_2

    .line 564
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 565
    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 564
    invoke-virtual {p2, p3, v3, v4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static writeNumber(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 5

    .line 502
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isInfinite()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    add-int/2addr p3, v1

    .line 503
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, p3, p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result p0

    :goto_0
    add-int/2addr p0, v1

    goto/16 :goto_3

    .line 505
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/2addr p3, v1

    .line 506
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, p3, p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x0

    .line 510
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeIntegerDigits(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result v0

    add-int/2addr v0, v1

    .line 513
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getLowerDisplayMagnitude()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MicroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-ne v2, v3, :cond_4

    :cond_2
    add-int v2, v0, p3

    .line 515
    iget-boolean v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->useCurrency:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 516
    invoke-virtual {v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 517
    invoke-virtual {v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 515
    invoke-virtual {p2, v2, v3, v4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    add-int v2, v0, p3

    .line 522
    invoke-static {p0, p1, p2, v2}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeFractionDigits(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    add-int/2addr p1, v0

    if-nez p1, :cond_6

    .line 526
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 527
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 528
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result p0

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 527
    invoke-virtual {p2, p3, p0, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result p0

    goto :goto_2

    .line 531
    :cond_5
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MicroProps;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 532
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 531
    invoke-virtual {p2, p3, p0, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result p0

    :goto_2
    add-int/2addr p0, p1

    goto :goto_3

    :cond_6
    move p0, p1

    :goto_3
    return p0
.end method


# virtual methods
.method public format(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/ibm/icu/number/NumberFormatterImpl;->preProcess(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    invoke-static {v0, p1, p2, v1}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeNumber(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    .line 98
    invoke-static {v0, p2, v1, p1}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeAffixes(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    return-object v0
.end method

.method public getPrefixSuffix(BLcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/FormattedStringBuilder;)I
    .locals 0

    .line 130
    iget-object p2, p0, Lcom/ibm/icu/number/NumberFormatterImpl;->microPropsGenerator:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-static {p2, p1, p3}, Lcom/ibm/icu/number/NumberFormatterImpl;->getPrefixSuffixImpl(Lcom/ibm/icu/impl/number/MicroPropsGenerator;BLcom/ibm/icu/impl/FormattedStringBuilder;)I

    move-result p1

    return p1
.end method

.method public getRawMicroProps()Lcom/ibm/icu/impl/number/MicroProps;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/ibm/icu/number/NumberFormatterImpl;->micros:Lcom/ibm/icu/impl/number/MicroProps;

    return-object v0
.end method

.method public preProcess(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/ibm/icu/number/NumberFormatterImpl;->microPropsGenerator:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 107
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v1, v1, Lcom/ibm/icu/number/IntegerWidth;->maxInt:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 108
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v1, v1, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v1, v1, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    .line 111
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget v1, v1, Lcom/ibm/icu/number/IntegerWidth;->maxInt:I

    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->applyMaxInteger(I)V

    :goto_0
    return-object v0
.end method
