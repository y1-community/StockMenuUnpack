.class public Lcom/ibm/icu/number/FormattedNumber;
.super Ljava/lang/Object;
.source "FormattedNumber.java"

# interfaces
.implements Lcom/ibm/icu/text/FormattedValue;


# instance fields
.field final fq:Lcom/ibm/icu/impl/number/DecimalQuantity;

.field final gender:Ljava/lang/String;

.field final outputUnit:Lcom/ibm/icu/util/MeasureUnit;

.field final string:Lcom/ibm/icu/impl/FormattedStringBuilder;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/util/MeasureUnit;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    .line 36
    iput-object p2, p0, Lcom/ibm/icu/number/FormattedNumber;->fq:Lcom/ibm/icu/impl/number/DecimalQuantity;

    .line 37
    iput-object p3, p0, Lcom/ibm/icu/number/FormattedNumber;->outputUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 38
    iput-object p4, p0, Lcom/ibm/icu/number/FormattedNumber;->gender:Ljava/lang/String;

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

    .line 88
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->fq:Lcom/ibm/icu/impl/number/DecimalQuantity;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->gender:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getOutputUnit()Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->outputUnit:Lcom/ibm/icu/util/MeasureUnit;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public nextPosition(Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/ConstrainedFieldPosition;Ljava/text/Format$Field;)Z

    move-result p1

    return p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->fq:Lcom/ibm/icu/impl/number/DecimalQuantity;

    invoke-interface {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->toCharacterIterator(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/Format$Field;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ibm/icu/number/FormattedNumber;->string:Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
