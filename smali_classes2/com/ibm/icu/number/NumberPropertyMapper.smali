.class final Lcom/ibm/icu/number/NumberPropertyMapper;
.super Ljava/lang/Object;
.source "NumberPropertyMapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/number/NumberPropertyMapper;->oldToNew(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/ibm/icu/number/NumberFormatter;->with()Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->macros(Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    return-object p0
.end method

.method public static create(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 0

    .line 50
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/number/NumberPropertyMapper;->oldToNew(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object p0

    .line 51
    invoke-static {}, Lcom/ibm/icu/number/NumberFormatter;->with()Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->macros(Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    .line 62
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberPropertyMapper;->create(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static oldToNew(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/MacroProps;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 83
    new-instance v2, Lcom/ibm/icu/impl/number/MacroProps;

    invoke-direct {v2}, Lcom/ibm/icu/impl/number/MacroProps;-><init>()V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    .line 90
    iput-object v0, v2, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPluralRules()Lcom/ibm/icu/text/PluralRules;

    move-result-object v4

    if-nez v4, :cond_0

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getPluralRules()Lcom/ibm/icu/text/PluralRules;

    move-result-object v4

    .line 100
    :cond_0
    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 106
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/AffixPatternProvider;

    move-result-object v4

    .line 107
    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v5

    const/4 v7, 0x1

    if-nez v5, :cond_2

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v5

    if-nez v5, :cond_2

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;

    move-result-object v5

    if-nez v5, :cond_2

    .line 116
    invoke-interface {v4}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 117
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v5

    invoke-static {v5, v3, v0}, Lcom/ibm/icu/impl/number/CustomSymbolCurrency;->resolve(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    .line 121
    sget-object v3, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    :cond_4
    if-eqz v4, :cond_5

    .line 124
    iput-object v0, v2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 131
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v8

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v9

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v10

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v11

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v12

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v13

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v14

    .line 138
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/number/RoundingUtils;->getMathContextOrUnlimited(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;

    move-result-object v15

    const/4 v6, -0x1

    if-ne v11, v6, :cond_7

    if-eq v10, v6, :cond_6

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/16 v16, 0x1

    :goto_4
    if-ne v12, v6, :cond_9

    if-eq v13, v6, :cond_8

    goto :goto_5

    :cond_8
    const/16 v17, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v17, 0x1

    :goto_6
    if-eqz v4, :cond_c

    if-ne v11, v6, :cond_a

    if-ne v10, v6, :cond_a

    .line 146
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I

    move-result v11

    .line 147
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I

    move-result v10

    goto :goto_7

    :cond_a
    if-ne v11, v6, :cond_b

    .line 149
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_7

    :cond_b
    if-ne v10, v6, :cond_c

    .line 151
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_c
    :goto_7
    const/16 v6, 0x3e7

    if-nez v9, :cond_13

    if-eqz v10, :cond_13

    if-ltz v11, :cond_d

    if-nez v11, :cond_e

    if-nez v8, :cond_e

    :cond_d
    const/4 v11, 0x1

    :cond_e
    if-gez v10, :cond_f

    const/4 v10, -0x1

    goto :goto_8

    :cond_f
    if-ge v10, v11, :cond_10

    move v10, v11

    :cond_10
    :goto_8
    if-gez v8, :cond_11

    :goto_9
    const/4 v8, -0x1

    goto :goto_a

    :cond_11
    if-le v8, v6, :cond_12

    goto :goto_9

    :cond_12
    :goto_a
    const/4 v9, 0x0

    goto :goto_f

    :cond_13
    if-gez v11, :cond_14

    const/4 v11, 0x0

    :cond_14
    if-gez v10, :cond_15

    const/4 v10, -0x1

    goto :goto_b

    :cond_15
    if-ge v10, v11, :cond_16

    move v10, v11

    :cond_16
    :goto_b
    if-gtz v9, :cond_17

    :goto_c
    const/4 v9, 0x1

    goto :goto_d

    :cond_17
    if-le v9, v6, :cond_18

    goto :goto_c

    :cond_18
    :goto_d
    if-gez v8, :cond_19

    :goto_e
    const/4 v8, -0x1

    goto :goto_f

    :cond_19
    if-ge v8, v9, :cond_1a

    move v8, v9

    goto :goto_f

    :cond_1a
    if-le v8, v6, :cond_1b

    goto :goto_e

    :cond_1b
    :goto_f
    if-eqz v5, :cond_1c

    .line 173
    invoke-static {v3}, Lcom/ibm/icu/number/Precision;->constructCurrency(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/number/CurrencyPrecision;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ibm/icu/number/CurrencyPrecision;->withCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;

    move-result-object v3

    goto :goto_13

    :cond_1c
    if-eqz v14, :cond_1e

    .line 175
    invoke-static {v14, v10}, Lcom/ibm/icu/impl/number/PatternStringUtils;->ignoreRoundingIncrement(Ljava/math/BigDecimal;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 176
    invoke-static {v11, v10}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object v3

    goto :goto_13

    .line 178
    :cond_1d
    invoke-static {v14}, Lcom/ibm/icu/number/Precision;->constructIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/number/Precision;

    move-result-object v3

    goto :goto_13

    :cond_1e
    if-eqz v17, :cond_24

    const/16 v3, 0x3e7

    if-ge v12, v7, :cond_1f

    const/4 v12, 0x1

    goto :goto_10

    :cond_1f
    if-le v12, v3, :cond_20

    const/16 v12, 0x3e7

    :cond_20
    :goto_10
    if-gez v13, :cond_21

    :goto_11
    const/16 v13, 0x3e7

    goto :goto_12

    :cond_21
    if-ge v13, v12, :cond_22

    move v13, v12

    goto :goto_12

    :cond_22
    if-le v13, v3, :cond_23

    goto :goto_11

    .line 187
    :cond_23
    :goto_12
    invoke-static {v12, v13}, Lcom/ibm/icu/number/Precision;->constructSignificant(II)Lcom/ibm/icu/number/Precision;

    move-result-object v3

    goto :goto_13

    :cond_24
    if-eqz v16, :cond_25

    .line 189
    invoke-static {v11, v10}, Lcom/ibm/icu/number/Precision;->constructFraction(II)Lcom/ibm/icu/number/FractionPrecision;

    move-result-object v3

    goto :goto_13

    :cond_25
    if-eqz v4, :cond_26

    .line 191
    invoke-static {v3}, Lcom/ibm/icu/number/Precision;->constructCurrency(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/number/CurrencyPrecision;

    move-result-object v3

    goto :goto_13

    :cond_26
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_27

    .line 194
    invoke-virtual {v3, v15}, Lcom/ibm/icu/number/Precision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object v3

    .line 195
    iput-object v3, v2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    .line 202
    :cond_27
    invoke-static {v9}, Lcom/ibm/icu/number/IntegerWidth;->zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/ibm/icu/number/IntegerWidth;->truncateAt(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    .line 208
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Grouper;->forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/Grouper;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v4

    if-lez v4, :cond_28

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Padder;->forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/Padder;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    .line 222
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto :goto_14

    :cond_29
    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    :goto_14
    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    goto :goto_15

    :cond_2a
    sget-object v4, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    :goto_15
    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    const/16 v4, 0x8

    if-le v8, v4, :cond_2b

    .line 243
    invoke-static {v9}, Lcom/ibm/icu/number/IntegerWidth;->zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/ibm/icu/number/IntegerWidth;->truncateAt(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    move v8, v9

    goto :goto_16

    :cond_2b
    if-le v8, v9, :cond_2c

    if-le v9, v7, :cond_2c

    .line 247
    invoke-static {v7}, Lcom/ibm/icu/number/IntegerWidth;->zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/ibm/icu/number/IntegerWidth;->truncateAt(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    const/4 v9, 0x1

    :cond_2c
    :goto_16
    if-gez v8, :cond_2d

    const/4 v5, -0x1

    goto :goto_17

    :cond_2d
    move v5, v8

    .line 250
    :goto_17
    new-instance v4, Lcom/ibm/icu/number/ScientificNotation;

    if-ne v5, v9, :cond_2e

    const/4 v14, 0x1

    goto :goto_18

    :cond_2e
    const/4 v14, 0x0

    .line 256
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v6

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v16

    if-eqz v16, :cond_2f

    sget-object v16, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    goto :goto_19

    :cond_2f
    sget-object v16, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    :goto_19
    move-object/from16 v7, v16

    invoke-direct {v4, v5, v14, v6, v7}, Lcom/ibm/icu/number/ScientificNotation;-><init>(IZILcom/ibm/icu/number/NumberFormatter$SignDisplay;)V

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    .line 261
    iget-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    instance-of v4, v4, Lcom/ibm/icu/number/FractionPrecision;

    if-eqz v4, :cond_33

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v4

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v5

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v6

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v7

    if-nez v5, :cond_30

    if-nez v7, :cond_30

    .line 270
    invoke-static {}, Lcom/ibm/icu/number/Precision;->constructInfinite()Lcom/ibm/icu/number/Precision;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/ibm/icu/number/Precision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    goto :goto_1b

    :cond_30
    if-nez v5, :cond_31

    if-nez v6, :cond_31

    const/4 v14, 0x1

    add-int/2addr v7, v14

    .line 273
    invoke-static {v14, v7}, Lcom/ibm/icu/number/Precision;->constructSignificant(II)Lcom/ibm/icu/number/Precision;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/ibm/icu/number/Precision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    goto :goto_1b

    :cond_31
    const/4 v14, 0x1

    add-int/2addr v7, v5

    if-le v4, v5, :cond_32

    if-le v5, v14, :cond_32

    goto :goto_1a

    :cond_32
    move v14, v5

    :goto_1a
    add-int/2addr v14, v6

    .line 283
    invoke-static {v14, v7}, Lcom/ibm/icu/number/Precision;->constructSignificant(II)Lcom/ibm/icu/number/Precision;

    move-result-object v4

    .line 284
    invoke-virtual {v4, v15}, Lcom/ibm/icu/number/Precision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    .line 293
    :cond_33
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCompactStyle()Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCompactCustomData()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 295
    new-instance v4, Lcom/ibm/icu/number/CompactNotation;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCompactCustomData()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ibm/icu/number/CompactNotation;-><init>(Ljava/util/Map;)V

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    :goto_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 296
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCompactStyle()Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne v4, v5, :cond_35

    .line 297
    invoke-static {}, Lcom/ibm/icu/number/Notation;->compactLong()Lcom/ibm/icu/number/CompactNotation;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    goto :goto_1c

    .line 299
    :cond_35
    invoke-static {}, Lcom/ibm/icu/number/Notation;->compactShort()Lcom/ibm/icu/number/CompactNotation;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    goto :goto_1c

    .line 302
    :goto_1d
    iput-object v4, v2, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    goto :goto_1e

    :cond_36
    const/4 v4, 0x0

    .line 309
    :goto_1e
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/number/RoundingUtils;->scaleFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/number/Scale;

    move-result-object v5

    iput-object v5, v2, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    if-eqz v1, :cond_3c

    .line 317
    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 318
    invoke-virtual {v1, v15}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 319
    invoke-virtual {v15}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 320
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 v5, -0x1

    if-ne v8, v5, :cond_37

    const v8, 0x7fffffff

    .line 321
    :cond_37
    invoke-virtual {v1, v8}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 324
    instance-of v5, v3, Lcom/ibm/icu/number/CurrencyPrecision;

    if-eqz v5, :cond_38

    .line 325
    check-cast v3, Lcom/ibm/icu/number/CurrencyPrecision;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/number/CurrencyPrecision;->withCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/number/Precision;

    move-result-object v3

    .line 334
    :cond_38
    instance-of v0, v3, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    if-eqz v0, :cond_3a

    .line 335
    check-cast v3, Lcom/ibm/icu/number/Precision$FractionRounderImpl;

    iget v11, v3, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->minFrac:I

    .line 336
    iget v10, v3, Lcom/ibm/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    :cond_39
    :goto_1f
    move-object v6, v4

    goto :goto_20

    .line 337
    :cond_3a
    instance-of v0, v3, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;

    if-eqz v0, :cond_3b

    .line 338
    check-cast v3, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;

    iget-object v6, v3, Lcom/ibm/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    .line 339
    invoke-virtual {v6}, Ljava/math/BigDecimal;->scale()I

    move-result v11

    .line 340
    invoke-virtual {v6}, Ljava/math/BigDecimal;->scale()I

    move-result v10

    goto :goto_20

    .line 341
    :cond_3b
    instance-of v0, v3, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    if-eqz v0, :cond_39

    .line 342
    check-cast v3, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    iget v12, v3, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->minSig:I

    .line 343
    iget v13, v3, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    goto :goto_1f

    .line 346
    :goto_20
    invoke-virtual {v1, v11}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 347
    invoke-virtual {v1, v10}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 348
    invoke-virtual {v1, v12}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 349
    invoke-virtual {v1, v13}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 350
    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    :cond_3c
    return-object v2
.end method
