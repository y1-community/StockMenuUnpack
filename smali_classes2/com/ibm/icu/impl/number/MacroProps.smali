.class public Lcom/ibm/icu/impl/number/MacroProps;
.super Ljava/lang/Object;
.source "MacroProps.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

.field public decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field public grouping:Ljava/lang/Object;

.field public integerWidth:Lcom/ibm/icu/number/IntegerWidth;

.field public loc:Lcom/ibm/icu/util/ULocale;

.field public notation:Lcom/ibm/icu/number/Notation;

.field public padder:Lcom/ibm/icu/impl/number/Padder;

.field public perUnit:Lcom/ibm/icu/util/MeasureUnit;

.field public precision:Lcom/ibm/icu/number/Precision;

.field public roundingMode:Ljava/math/RoundingMode;

.field public rules:Lcom/ibm/icu/text/PluralRules;

.field public scale:Lcom/ibm/icu/number/Scale;

.field public sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public symbols:Ljava/lang/Object;

.field public threshold:Ljava/lang/Long;

.field public unit:Lcom/ibm/icu/util/MeasureUnit;

.field public unitDisplayCase:Ljava/lang/String;

.field public unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 140
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 113
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/impl/number/MacroProps;

    if-nez v2, :cond_2

    return v0

    .line 115
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/number/MacroProps;

    .line 116
    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 117
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 118
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    .line 119
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 120
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 121
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    .line 122
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    .line 123
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 124
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 125
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    .line 126
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 127
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 128
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    .line 129
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    .line 130
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 132
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iget-object p1, p1, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 133
    invoke-static {v2, p1}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public fallback(Lcom/ibm/icu/impl/number/MacroProps;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    if-nez v0, :cond_4

    .line 56
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 58
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    if-nez v0, :cond_6

    .line 60
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    if-nez v0, :cond_7

    .line 62
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 64
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 65
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-nez v0, :cond_9

    .line 66
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 67
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 68
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    .line 69
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-nez v0, :cond_b

    .line 70
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 71
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-nez v0, :cond_c

    .line 72
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 73
    :cond_c
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    if-nez v0, :cond_d

    .line 74
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    .line 75
    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    if-nez v0, :cond_e

    .line 76
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 78
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    .line 79
    :cond_f
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    if-nez v0, :cond_10

    .line 80
    iget-object v0, p1, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 81
    :cond_10
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_11

    .line 82
    iget-object p1, p1, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    iput-object p1, p0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    :cond_11
    return-void
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
