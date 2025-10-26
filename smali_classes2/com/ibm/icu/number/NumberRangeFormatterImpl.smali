.class Lcom/ibm/icu/number/NumberRangeFormatterImpl;
.super Ljava/lang/Object;
.source "NumberRangeFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fApproximatelyModifier:Lcom/ibm/icu/impl/number/SimpleModifier;

.field final fCollapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

.field final fIdentityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field final fPluralRanges:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

.field fRangePattern:Ljava/lang/String;

.field final fSameFormatters:Z

.field final formatterImpl1:Lcom/ibm/icu/number/NumberFormatterImpl;

.field final formatterImpl2:Lcom/ibm/icu/number/NumberFormatterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/range/RangeMacroProps;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/ibm/icu/number/NumberFormatterImpl;

    iget-object v1, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter1:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v1}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 137
    invoke-static {v1}, Lcom/ibm/icu/number/NumberFormatter;->withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lcom/ibm/icu/number/NumberFormatterImpl;-><init>(Lcom/ibm/icu/impl/number/MacroProps;)V

    iput-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatterImpl1:Lcom/ibm/icu/number/NumberFormatterImpl;

    .line 138
    new-instance v1, Lcom/ibm/icu/number/NumberFormatterImpl;

    iget-object v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->formatter2:Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v2}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    .line 139
    invoke-static {v2}, Lcom/ibm/icu/number/NumberFormatter;->withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2}, Lcom/ibm/icu/number/NumberFormatterImpl;-><init>(Lcom/ibm/icu/impl/number/MacroProps;)V

    iput-object v1, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatterImpl2:Lcom/ibm/icu/number/NumberFormatterImpl;

    .line 140
    iget v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->sameFormatters:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    .line 141
    iget-object v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->collapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->collapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->AUTO:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    :goto_3
    iput-object v2, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fCollapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 142
    iget-object v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->identityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->identityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    :goto_4
    iput-object v2, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fIdentityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 145
    invoke-virtual {v0}, Lcom/ibm/icu/number/NumberFormatterImpl;->getRawMicroProps()Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberFormatterImpl;->getRawMicroProps()Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v1

    iget-object v1, v1, Lcom/ibm/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    iget-object v1, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, v0, p0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->getNumberRangeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/number/NumberRangeFormatterImpl;)V

    .line 152
    iget-object p1, p1, Lcom/ibm/icu/impl/number/range/RangeMacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fPluralRanges:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    return-void

    .line 147
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Both formatters must have same numbering system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private formatApproximately(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 233
    invoke-static {p4, p1, p3, p2}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeNumber(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    .line 235
    iget-object p5, p4, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {p5, p3, p2, p1}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p5

    add-int/2addr p1, p5

    .line 236
    iget-object p5, p4, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {p5, p3, p2, p1}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p5

    add-int/2addr p1, p5

    .line 237
    iget-object p5, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fApproximatelyModifier:Lcom/ibm/icu/impl/number/SimpleModifier;

    invoke-virtual {p5, p3, p2, p1}, Lcom/ibm/icu/impl/number/SimpleModifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p5

    add-int/2addr p1, p5

    .line 238
    iget-object p4, p4, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {p4, p3, p2, p1}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatRange(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V

    :goto_0
    return-void
.end method

.method private formatRange(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V
    .locals 10

    .line 251
    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$1;->$SwitchMap$com$ibm$icu$number$NumberRangeFormatter$RangeCollapse:[I

    iget-object v1, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fCollapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_3

    .line 257
    :cond_1
    iget-object v0, p4, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    iget-object v3, p5, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v0, v3}, Lcom/ibm/icu/impl/number/Modifier;->semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 267
    :cond_2
    iget-object v3, p4, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    iget-object v4, p5, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v3, v4}, Lcom/ibm/icu/impl/number/Modifier;->semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 278
    :cond_3
    iget-object v4, p4, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    .line 279
    iget-object v5, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fCollapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v6, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->UNIT:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    if-ne v5, v6, :cond_4

    .line 283
    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {v4, v5}, Lcom/ibm/icu/impl/number/Modifier;->containsField(Ljava/text/Format$Field;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {v4, v5}, Lcom/ibm/icu/impl/number/Modifier;->containsField(Ljava/text/Format$Field;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 286
    :cond_4
    iget-object v5, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fCollapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v6, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->AUTO:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    if-ne v5, v6, :cond_5

    .line 288
    invoke-interface {v4}, Lcom/ibm/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v4

    if-gt v4, v1, :cond_5

    :goto_2
    const/4 v3, 0x0

    :cond_5
    if-eqz v3, :cond_0

    .line 293
    iget-object v4, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fCollapse:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v5, Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;->ALL:Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;

    if-eq v4, v5, :cond_6

    goto :goto_1

    .line 299
    :cond_6
    iget-object v4, p4, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    iget-object v5, p5, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v4, v5}, Lcom/ibm/icu/impl/number/Modifier;->semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z

    move-result v4

    .line 314
    :goto_3
    new-instance v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;

    invoke-direct {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;-><init>()V

    .line 316
    iget-object v6, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fRangePattern:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, p3, v2, v5, v7}, Lcom/ibm/icu/impl/number/SimpleModifier;->formatTwoArgPattern(Ljava/lang/String;Lcom/ibm/icu/impl/FormattedStringBuilder;ILcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;Ljava/text/Format$Field;)V

    if-nez v4, :cond_7

    .line 325
    iget-object v6, p4, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v6}, Lcom/ibm/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-nez v3, :cond_8

    .line 326
    iget-object v8, p4, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v8}, Lcom/ibm/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    if-nez v0, :cond_9

    .line 327
    iget-object v9, p4, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v9}, Lcom/ibm/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v9

    if-lez v9, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    if-nez v6, :cond_a

    if-nez v8, :cond_a

    if-eqz v9, :cond_c

    .line 330
    :cond_a
    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v6

    invoke-virtual {p3, v6}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    const/16 v8, 0x20

    if-nez v6, :cond_b

    .line 331
    iget v6, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v9

    invoke-virtual {p3, v9, v8, v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v9

    add-int/2addr v6, v9

    iput v6, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    .line 333
    :cond_b
    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p3, v6}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 334
    iget v6, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v9

    invoke-virtual {p3, v9, v8, v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    .line 339
    :cond_c
    iget v6, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v7

    invoke-static {p4, p1, p3, v7}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeNumber(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    add-int/2addr v6, p1

    iput v6, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 340
    iget p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v6

    invoke-static {p5, p2, p3, v6}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeNumber(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    if-eqz v4, :cond_d

    .line 345
    iget-object p1, p4, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    iget-object p2, p5, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->resolveModifierPlurals(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p1

    .line 346
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v4

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v6

    invoke-interface {p1, p3, v4, v6}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result v4

    add-int/2addr p2, v4

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 347
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v4

    add-int/2addr p2, v4

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 348
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefixLength()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    goto :goto_7

    .line 350
    :cond_d
    iget p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    iget-object p2, p4, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v4

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v6

    invoke-interface {p2, p3, v4, v6}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 351
    iget p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    iget-object p2, p5, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v4

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v6

    invoke-interface {p2, p3, v4, v6}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    :goto_7
    if-eqz v3, :cond_e

    .line 355
    iget-object p1, p4, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    iget-object p2, p5, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->resolveModifierPlurals(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p1

    .line 356
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v3

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v4

    invoke-interface {p1, p3, v3, v4}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result v3

    add-int/2addr p2, v3

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 357
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v3

    add-int/2addr p2, v3

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 358
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefixLength()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    goto :goto_8

    .line 360
    :cond_e
    iget p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    iget-object p2, p4, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v3

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v4

    invoke-interface {p2, p3, v3, v4}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 361
    iget p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    iget-object p2, p5, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v3

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v4

    invoke-interface {p2, p3, v3, v4}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    :goto_8
    if-eqz v0, :cond_f

    .line 365
    iget-object p1, p4, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    iget-object p2, p5, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->resolveModifierPlurals(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p1

    .line 366
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result p4

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result p5

    invoke-interface {p1, p3, p4, p5}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p4

    add-int/2addr p2, p4

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 367
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefixLength()I

    move-result p4

    add-int/2addr p2, p4

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 368
    iget p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefixLength()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    goto :goto_9

    .line 370
    :cond_f
    iget p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    iget-object p2, p4, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result p4

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v0

    invoke-interface {p2, p3, p4, v0}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 371
    iget p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    iget-object p2, p5, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result p4

    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result p5

    invoke-interface {p2, p3, p4, p5}, Lcom/ibm/icu/impl/number/Modifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v5, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    .line 375
    :goto_9
    sget-object p1, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;

    .line 378
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 379
    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result p4

    .line 380
    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result p5

    .line 375
    invoke-static {p3, p1, p2, p4, p5}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->applySpanRange(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/UFormat$SpanField;Ljava/lang/Object;II)V

    .line 381
    sget-object p1, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 385
    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result p4

    .line 386
    invoke-virtual {v5}, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index3()I

    move-result p5

    .line 381
    invoke-static {p3, p1, p2, p4, p5}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->applySpanRange(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/UFormat$SpanField;Ljava/lang/Object;II)V

    return-void
.end method

.method private formatSingleValue(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 222
    invoke-static {p4, p1, p3, p2}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeNumber(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    .line 223
    invoke-static {p4, p3, p2, p1}, Lcom/ibm/icu/number/NumberFormatterImpl;->writeAffixes(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    goto :goto_0

    .line 225
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatRange(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V

    :goto_0
    return-void
.end method

.method private static getNumberRangeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/number/NumberRangeFormatterImpl;)V
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    new-instance v1, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;

    invoke-direct {v1, v0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;-><init>(Ljava/lang/StringBuilder;)V

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    .line 111
    invoke-static {v2, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "NumberElements/"

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/miscPatterns"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 123
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->isComplete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "NumberElements/latn/miscPatterns"

    .line 124
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 127
    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->fillInDefaults()V

    .line 129
    iget-object p0, v1, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    iput-object p0, p2, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fRangePattern:Ljava/lang/String;

    .line 130
    new-instance p0, Lcom/ibm/icu/impl/number/SimpleModifier;

    iget-object p1, v1, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->approximatelyPattern:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;Z)V

    iput-object p0, p2, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fApproximatelyModifier:Lcom/ibm/icu/impl/number/SimpleModifier;

    return-void
.end method


# virtual methods
.method public format(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Z)Lcom/ibm/icu/number/FormattedNumberRange;
    .locals 7

    .line 156
    new-instance v6, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v6}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 157
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatterImpl1:Lcom/ibm/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/NumberFormatterImpl;->preProcess(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v4

    .line 159
    iget-boolean v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatterImpl1:Lcom/ibm/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/number/NumberFormatterImpl;->preProcess(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatterImpl2:Lcom/ibm/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/number/NumberFormatterImpl;->preProcess(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 170
    iget-object v0, v4, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    iget-object v1, v5, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/number/Modifier;->semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    iget-object v1, v5, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    .line 171
    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/number/Modifier;->semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    iget-object v1, v5, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    .line 172
    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/number/Modifier;->semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p3, :cond_2

    .line 180
    sget-object p3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_BEFORE_ROUNDING:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 182
    sget-object p3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_AFTER_ROUNDING:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    goto :goto_1

    .line 184
    :cond_3
    sget-object p3, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->NOT_EQUAL:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fIdentityFallback:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->identity2d(Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :cond_4
    :pswitch_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatRange(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V

    goto :goto_2

    :cond_5
    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatApproximately(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V

    goto :goto_2

    :cond_6
    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    .line 208
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatSingleValue(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V

    .line 216
    :goto_2
    new-instance v0, Lcom/ibm/icu/number/FormattedNumberRange;

    invoke-direct {v0, v6, p1, p2, p3}, Lcom/ibm/icu/number/FormattedNumberRange;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;)V

    return-object v0

    :cond_7
    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->formatRange(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/MicroProps;)V

    .line 174
    new-instance p3, Lcom/ibm/icu/number/FormattedNumberRange;

    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->NOT_EQUAL:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    invoke-direct {p3, v6, p1, p2, v0}, Lcom/ibm/icu/number/FormattedNumberRange;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;)V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method identity2d(Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;)I
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;->ordinal()I

    move-result p2

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    return p1
.end method

.method resolveModifierPlurals(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)Lcom/ibm/icu/impl/number/Modifier;
    .locals 2

    .line 390
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 396
    :cond_0
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/Modifier;->getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->fPluralRanges:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    iget-object v1, v0, Lcom/ibm/icu/impl/number/Modifier$Parameters;->plural:Lcom/ibm/icu/impl/StandardPlural;

    iget-object p2, p2, Lcom/ibm/icu/impl/number/Modifier$Parameters;->plural:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {p1, v1, p2}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->resolve(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    .line 408
    iget-object p2, v0, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/Modifier$Parameters;->signum:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-interface {p2, v0, p1}, Lcom/ibm/icu/impl/number/ModifierStore;->getModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p1

    return-object p1
.end method
