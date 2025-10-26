.class public Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;
.super Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;
.source "CurrencySpacingEnabledModifier.java"


# static fields
.field static final IN_CURRENCY:S = 0x0s

.field static final IN_NUMBER:S = 0x1s

.field static final PREFIX:B = 0x0t

.field static final SUFFIX:B = 0x1t

.field private static final UNISET_DIGIT:Lcom/ibm/icu/text/UnicodeSet;

.field private static final UNISET_NOTSZ:Lcom/ibm/icu/text/UnicodeSet;


# instance fields
.field private final afterPrefixInsert:Ljava/lang/String;

.field private final afterPrefixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

.field private final beforeSuffixInsert:Ljava/lang/String;

.field private final beforeSuffixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[:digit:]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_DIGIT:Lcom/ibm/icu/text/UnicodeSet;

    .line 17
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[[:^S:]&[:^Z:]]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_NOTSZ:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;ZZLcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;ZZ)V

    .line 41
    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne p3, v2, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->getLastCodePoint()I

    move-result p1

    .line 43
    invoke-static {p5, p4, p4}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Lcom/ibm/icu/text/DecimalFormatSymbols;SB)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p3

    .line 44
    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p5, v0, p4}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Lcom/ibm/icu/text/DecimalFormatSymbols;SB)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 46
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 47
    invoke-static {p5, p4}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Lcom/ibm/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_0
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 50
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 54
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    .line 56
    :goto_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p2, p4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne p1, p3, :cond_3

    .line 57
    invoke-virtual {p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->getFirstCodePoint()I

    move-result p1

    .line 58
    invoke-static {p5, p4, v0}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Lcom/ibm/icu/text/DecimalFormatSymbols;SB)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p2

    .line 59
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    invoke-static {p5, v0, v0}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Lcom/ibm/icu/text/DecimalFormatSymbols;SB)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 61
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 62
    invoke-static {p5, v0}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Lcom/ibm/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_2
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 65
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_3
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 69
    iput-object v1, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static applyCurrencySpacing(Lcom/ibm/icu/impl/FormattedStringBuilder;IIIILcom/ibm/icu/text/DecimalFormatSymbols;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    sub-int v3, p3, p1

    sub-int/2addr v3, p2

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    add-int/2addr p1, p2

    .line 109
    invoke-static {p0, p1, v1, p5}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacingAffix(Lcom/ibm/icu/impl/FormattedStringBuilder;IBLcom/ibm/icu/text/DecimalFormatSymbols;)I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    if-eqz p4, :cond_4

    if-eqz v3, :cond_4

    add-int/2addr p3, v1

    .line 112
    invoke-static {p0, p3, v0, p5}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacingAffix(Lcom/ibm/icu/impl/FormattedStringBuilder;IBLcom/ibm/icu/text/DecimalFormatSymbols;)I

    move-result p0

    add-int/2addr v1, p0

    :cond_4
    return v1
.end method

.method private static applyCurrencySpacingAffix(Lcom/ibm/icu/impl/FormattedStringBuilder;IBLcom/ibm/icu/text/DecimalFormatSymbols;)I
    .locals 3

    if-nez p2, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 126
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->fieldAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 128
    :goto_0
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    if-nez p2, :cond_2

    .line 131
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->codePointBefore(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->codePointAt(I)I

    move-result v0

    .line 132
    :goto_1
    invoke-static {p3, v2, p2}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Lcom/ibm/icu/text/DecimalFormatSymbols;SB)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    .line 136
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->codePointAt(I)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->codePointBefore(I)I

    move-result v0

    :goto_2
    const/4 v1, 0x1

    .line 137
    invoke-static {p3, v1, p2}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getUnicodeSet(Lcom/ibm/icu/text/DecimalFormatSymbols;SB)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 141
    :cond_5
    invoke-static {p3, p2}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->getInsertString(Lcom/ibm/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static getInsertString(Lcom/ibm/icu/text/DecimalFormatSymbols;B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 p1, 0x2

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUnicodeSet(Lcom/ibm/icu/text/DecimalFormatSymbols;SB)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 154
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[:digit:]"

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    sget-object p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_DIGIT:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0

    :cond_2
    const-string p1, "[[:^S:]&[:^Z:]]"

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 161
    sget-object p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->UNISET_NOTSZ:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0

    .line 163
    :cond_3
    new-instance p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p1, p0}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 5

    sub-int v0, p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 78
    iget-object v3, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {p1, p2, v3, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    if-lez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixUnicodeSet:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->codePointBefore(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int v0, p3, v2

    .line 88
    iget-object v3, p0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    add-int/2addr p3, v2

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    move-result p1

    add-int/2addr v2, p1

    return v2
.end method
