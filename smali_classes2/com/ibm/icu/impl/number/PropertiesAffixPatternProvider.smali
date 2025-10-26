.class public Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;
.super Ljava/lang/Object;
.source "PropertiesAffixPatternProvider.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/AffixPatternProvider;


# instance fields
.field private final isCurrencyPattern:Z

.field private final negPrefix:Ljava/lang/String;

.field private final negSuffix:Ljava/lang/String;

.field private final posPrefix:Ljava/lang/String;

.field private final posSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V
    .locals 8

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object p1

    const-string v7, ""

    if-eqz v0, :cond_0

    .line 45
    iput-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 47
    iput-object v4, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    iput-object v7, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_2

    .line 54
    iput-object v1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 56
    iput-object v5, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    goto :goto_1

    .line 59
    :cond_3
    iput-object v7, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_4

    .line 63
    iput-object v2, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 65
    iput-object v6, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v0, "-"

    if-nez v4, :cond_6

    goto :goto_2

    .line 69
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    :goto_3
    if-eqz v3, :cond_7

    .line 73
    iput-object v3, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_8

    .line 75
    iput-object p1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    goto :goto_5

    :cond_8
    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v5

    .line 78
    :goto_4
    iput-object v7, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    .line 84
    :goto_5
    invoke-static {v4}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 85
    invoke-static {v5}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 86
    invoke-static {v6}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 87
    invoke-static {p1}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 p1, 0x1

    :goto_7
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->isCurrencyPattern:Z

    return-void
.end method

.method public static forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/AffixPatternProvider;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;-><init>(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ibm/icu/impl/number/CurrencyPluralInfoAffixProvider;-><init>(Lcom/ibm/icu/text/CurrencyPluralInfo;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V

    return-object v0
.end method


# virtual methods
.method public charAt(II)C
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public containsSymbolType(I)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 145
    invoke-static {v0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 107
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    .line 109
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    return-object p1

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    return-object p1
.end method

.method public hasBody()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasCurrencySign()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->isCurrencyPattern:Z

    return v0
.end method

.method public hasNegativeSubpattern()Z
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public length(I)I
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public negativeHasMinusSign()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    .line 134
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public positiveHasPlusSign()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    .line 118
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->posSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->negSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
