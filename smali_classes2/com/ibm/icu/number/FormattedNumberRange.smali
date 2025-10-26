.class public Lcom/ibm/icu/number/FormattedNumberRange;
.super Ljava/lang/Object;
.source "FormattedNumberRange.java"

# interfaces
.implements Lcom/ibm/icu/text/FormattedValue;


# instance fields
.field final identityResult:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field final quantity1:Lcom/ibm/icu/impl/number/DecimalQuantity;

.field final quantity2:Lcom/ibm/icu/impl/number/DecimalQuantity;

.field final string:Lcom/ibm/icu/impl/FormattedStringBuilder;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    .line 38
    iput-object p2, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity1:Lcom/ibm/icu/impl/number/DecimalQuantity;

    .line 39
    iput-object p3, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity2:Lcom/ibm/icu/impl/number/DecimalQuantity;

    .line 40
    iput-object p4, p0, Lcom/ibm/icu/number/FormattedNumberRange;->identityResult:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 64
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public charAt(I)C
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 183
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/number/FormattedNumberRange;

    if-nez v2, :cond_2

    return v1

    .line 187
    :cond_2
    check-cast p1, Lcom/ibm/icu/number/FormattedNumberRange;

    .line 188
    iget-object v2, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    iget-object v3, p1, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->contentEquals(Lcom/ibm/icu/impl/FormattedStringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity1:Lcom/ibm/icu/impl/number/DecimalQuantity;

    .line 189
    invoke-interface {v2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v3, p1, Lcom/ibm/icu/number/FormattedNumberRange;->quantity1:Lcom/ibm/icu/impl/number/DecimalQuantity;

    invoke-interface {v3}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity2:Lcom/ibm/icu/impl/number/DecimalQuantity;

    .line 190
    invoke-interface {v2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    iget-object p1, p1, Lcom/ibm/icu/number/FormattedNumberRange;->quantity2:Lcom/ibm/icu/impl/number/DecimalQuantity;

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFirstBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity1:Lcom/ibm/icu/impl/number/DecimalQuantity;

    invoke-interface {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getFirstFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity1:Lcom/ibm/icu/impl/number/DecimalQuantity;

    return-object v0
.end method

.method public getIdentityResult()Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->identityResult:Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-object v0
.end method

.method public getSecondBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity2:Lcom/ibm/icu/impl/number/DecimalQuantity;

    invoke-interface {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getSecondFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity2:Lcom/ibm/icu/impl/number/DecimalQuantity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toFieldArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity1:Lcom/ibm/icu/impl/number/DecimalQuantity;

    .line 169
    invoke-interface {v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/number/FormattedNumberRange;->quantity2:Lcom/ibm/icu/impl/number/DecimalQuantity;

    invoke-interface {v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public length()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public nextPosition(Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result p1

    return p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->toCharacterIterator(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumberRange;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
