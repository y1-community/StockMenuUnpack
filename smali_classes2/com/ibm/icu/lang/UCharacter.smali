.class public final Lcom/ibm/icu/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Lcom/ibm/icu/lang/UCharacterEnums$ECharacterCategory;
.implements Lcom/ibm/icu/lang/UCharacterEnums$ECharacterDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/lang/UCharacter$DummyValueIterator;,
        Lcom/ibm/icu/lang/UCharacter$UCharacterTypeIterator;,
        Lcom/ibm/icu/lang/UCharacter$VerticalOrientation;,
        Lcom/ibm/icu/lang/UCharacter$IndicSyllabicCategory;,
        Lcom/ibm/icu/lang/UCharacter$IndicPositionalCategory;,
        Lcom/ibm/icu/lang/UCharacter$BidiPairedBracketType;,
        Lcom/ibm/icu/lang/UCharacter$HangulSyllableType;,
        Lcom/ibm/icu/lang/UCharacter$NumericType;,
        Lcom/ibm/icu/lang/UCharacter$LineBreak;,
        Lcom/ibm/icu/lang/UCharacter$SentenceBreak;,
        Lcom/ibm/icu/lang/UCharacter$WordBreak;,
        Lcom/ibm/icu/lang/UCharacter$GraphemeClusterBreak;,
        Lcom/ibm/icu/lang/UCharacter$JoiningGroup;,
        Lcom/ibm/icu/lang/UCharacter$JoiningType;,
        Lcom/ibm/icu/lang/UCharacter$DecompositionType;,
        Lcom/ibm/icu/lang/UCharacter$EastAsianWidth;,
        Lcom/ibm/icu/lang/UCharacter$UnicodeBlock;
    }
.end annotation


# static fields
.field private static final APPLICATION_PROGRAM_COMMAND_:I = 0x9f

.field private static final CJK_IDEOGRAPH_COMPLEX_EIGHT_:I = 0x634c

.field private static final CJK_IDEOGRAPH_COMPLEX_FIVE_:I = 0x4f0d

.field private static final CJK_IDEOGRAPH_COMPLEX_FOUR_:I = 0x8086

.field private static final CJK_IDEOGRAPH_COMPLEX_HUNDRED_:I = 0x4f70

.field private static final CJK_IDEOGRAPH_COMPLEX_NINE_:I = 0x7396

.field private static final CJK_IDEOGRAPH_COMPLEX_ONE_:I = 0x58f9

.field private static final CJK_IDEOGRAPH_COMPLEX_SEVEN_:I = 0x67d2

.field private static final CJK_IDEOGRAPH_COMPLEX_SIX_:I = 0x9678

.field private static final CJK_IDEOGRAPH_COMPLEX_TEN_:I = 0x62fe

.field private static final CJK_IDEOGRAPH_COMPLEX_THOUSAND_:I = 0x4edf

.field private static final CJK_IDEOGRAPH_COMPLEX_THREE_:I = 0x53c3

.field private static final CJK_IDEOGRAPH_COMPLEX_TWO_:I = 0x8cb3

.field private static final CJK_IDEOGRAPH_COMPLEX_ZERO_:I = 0x96f6

.field private static final CJK_IDEOGRAPH_EIGHTH_:I = 0x516b

.field private static final CJK_IDEOGRAPH_FIFTH_:I = 0x4e94

.field private static final CJK_IDEOGRAPH_FIRST_:I = 0x4e00

.field private static final CJK_IDEOGRAPH_FOURTH_:I = 0x56db

.field private static final CJK_IDEOGRAPH_HUNDRED_:I = 0x767e

.field private static final CJK_IDEOGRAPH_HUNDRED_MILLION_:I = 0x5104

.field private static final CJK_IDEOGRAPH_NINETH_:I = 0x4e5d

.field private static final CJK_IDEOGRAPH_SECOND_:I = 0x4e8c

.field private static final CJK_IDEOGRAPH_SEVENTH_:I = 0x4e03

.field private static final CJK_IDEOGRAPH_SIXTH_:I = 0x516d

.field private static final CJK_IDEOGRAPH_TEN_:I = 0x5341

.field private static final CJK_IDEOGRAPH_TEN_THOUSAND_:I = 0x824c

.field private static final CJK_IDEOGRAPH_THIRD_:I = 0x4e09

.field private static final CJK_IDEOGRAPH_THOUSAND_:I = 0x5343

.field private static final DELETE_:I = 0x7f

.field private static final FIGURE_SPACE_:I = 0x2007

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field private static final IDEOGRAPHIC_NUMBER_ZERO_:I = 0x3007

.field private static final LAST_CHAR_MASK_:I = 0xffff

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:I = 0x0

.field private static final NARROW_NO_BREAK_SPACE_:I = 0x202f

.field private static final NO_BREAK_SPACE_:I = 0xa0

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field public static final REPLACEMENT_CHAR:I = 0xfffd

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field public static final TITLECASE_NO_BREAK_ADJUSTMENT:I = 0x200

.field public static final TITLECASE_NO_LOWERCASE:I = 0x100

.field private static final UNIT_SEPARATOR_:I = 0x1f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charCount(I)I
    .locals 0

    .line 6155
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    return p0
.end method

.method public static final codePointAt(Ljava/lang/CharSequence;I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 6183
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 6184
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6185
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6186
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 6187
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6188
    invoke-static {p1, p0}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final codePointAt([CI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 6206
    aget-char p1, p0, p1

    .line 6207
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6208
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 6209
    aget-char p0, p0, v0

    .line 6210
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6211
    invoke-static {p1, p0}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final codePointAt([CII)I
    .locals 2

    if-ge p1, p2, :cond_1

    .line 6230
    array-length v0, p0

    if-gt p2, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 6233
    aget-char p1, p0, p1

    .line 6234
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ge v0, p2, :cond_0

    .line 6236
    aget-char p0, p0, v0

    .line 6237
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6238
    invoke-static {p1, p0}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return p1

    .line 6231
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 6256
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6257
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 6259
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 6260
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6261
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static final codePointBefore([CI)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 6279
    aget-char v0, p0, p1

    .line 6280
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 6282
    aget-char p0, p0, p1

    .line 6283
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6284
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static final codePointBefore([CII)I
    .locals 2

    if-le p1, p2, :cond_1

    if-ltz p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 6306
    aget-char v0, p0, p1

    .line 6307
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    if-le p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 6309
    aget-char p0, p0, p1

    .line 6310
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6311
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0

    .line 6304
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 3

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    .line 6380
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    sub-int v0, p2, p1

    :cond_0
    :goto_0
    if-le p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 6388
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :cond_1
    const v2, 0xdc00

    if-lt v1, v2, :cond_0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 6390
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd800

    if-lt v1, v2, :cond_1

    const v2, 0xdbff

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v0

    .line 6381
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or limit ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") invalid or out of range 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6383
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static codePointCount([CII)I
    .locals 3

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    .line 6410
    array-length v0, p0

    if-gt p2, v0, :cond_3

    sub-int v0, p2, p1

    :cond_0
    :goto_0
    if-le p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 6418
    aget-char v1, p0, p2

    :cond_1
    const v2, 0xdc00

    if-lt v1, v2, :cond_0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 6420
    aget-char v1, p0, p2

    const v2, 0xd800

    if-lt v1, v2, :cond_1

    const v2, 0xdbff

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v0

    .line 6411
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or limit ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") invalid or out of range 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static digit(I)I
    .locals 1

    .line 4076
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->digit(I)I

    move-result p0

    return p0
.end method

.method public static digit(II)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-gt v1, p1, :cond_1

    const/16 v1, 0x24

    if-gt p1, v1, :cond_1

    .line 4050
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 4053
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result v1

    :cond_0
    if-ge v1, p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static foldCase(II)I
    .locals 1

    .line 5554
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->fold(II)I

    move-result p0

    return p0
.end method

.method public static foldCase(IZ)I
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 5484
    invoke-static {p0, p1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(II)I

    move-result p0

    return p0
.end method

.method public static final foldCase(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 5573
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static foldCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 5505
    invoke-static {p0, p1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static forDigit(II)C
    .locals 0

    .line 6021
    invoke-static {p0, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    return p0
.end method

.method public static getAge(I)Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    .line 5794
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getAge(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    return-object p0

    .line 5792
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Codepoint out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBidiPairedBracket(I)I
    .locals 1

    .line 4750
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getPairedBracket(I)I

    move-result p0

    return p0
.end method

.method private static getCaseLocale(Lcom/ibm/icu/util/ULocale;)I
    .locals 0

    if-nez p0, :cond_0

    .line 5290
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 5292
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result p0

    return p0
.end method

.method private static getCaseLocale(Ljava/util/Locale;)I
    .locals 0

    if-nez p0, :cond_0

    .line 5283
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 5285
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static getCharFromExtendedName(Ljava/lang/String;)I
    .locals 2

    .line 4984
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCharFromName(Ljava/lang/String;)I
    .locals 2

    .line 4945
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCharFromName1_0(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public static getCharFromNameAlias(Ljava/lang/String;)I
    .locals 2

    .line 4998
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/ibm/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCodePoint(C)I
    .locals 1

    .line 5224
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isLegal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    .line 5227
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal codepoint"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCodePoint(CC)I
    .locals 1

    .line 5207
    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5208
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    .line 5210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal surrogate characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCombiningClass(I)I
    .locals 1

    .line 4761
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result p0

    return p0
.end method

.method private static getDefaultCaseLocale()I
    .locals 1

    .line 5278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getDirection(I)I
    .locals 1

    .line 4697
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getClass(I)I

    move-result p0

    return p0
.end method

.method public static getDirectionality(I)B
    .locals 0

    .line 6366
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getDirection(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static getExtendedName(I)Ljava/lang/String;
    .locals 2

    .line 4899
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtendedNameIterator()Lcom/ibm/icu/util/ValueIterator;
    .locals 3

    .line 5773
    new-instance v0, Lcom/ibm/icu/lang/UCharacterNameIterator;

    sget-object v1, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/lang/UCharacterNameIterator;-><init>(Lcom/ibm/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getHanNumericValue(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/16 p0, 0x2710

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/16 p0, 0xa

    return p0

    :sswitch_3
    const/4 p0, 0x6

    return p0

    :sswitch_4
    const/16 p0, 0x8

    return p0

    :sswitch_5
    const p0, 0x5f5e100

    return p0

    :sswitch_6
    const/16 p0, 0x64

    return p0

    :sswitch_7
    const/16 p0, 0x3e8

    return p0

    :sswitch_8
    const/4 p0, 0x5

    return p0

    :sswitch_9
    const/4 p0, 0x2

    return p0

    :sswitch_a
    const/16 p0, 0x9

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_c
    const/4 p0, 0x7

    return p0

    :sswitch_d
    const/4 p0, 0x1

    return p0

    :sswitch_e
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3007 -> :sswitch_e
        0x4e00 -> :sswitch_d
        0x4e03 -> :sswitch_c
        0x4e09 -> :sswitch_b
        0x4e5d -> :sswitch_a
        0x4e8c -> :sswitch_9
        0x4e94 -> :sswitch_8
        0x4edf -> :sswitch_7
        0x4f0d -> :sswitch_8
        0x4f70 -> :sswitch_6
        0x5104 -> :sswitch_5
        0x516b -> :sswitch_4
        0x516d -> :sswitch_3
        0x5341 -> :sswitch_2
        0x5343 -> :sswitch_7
        0x53c3 -> :sswitch_b
        0x56db -> :sswitch_1
        0x58f9 -> :sswitch_d
        0x62fe -> :sswitch_2
        0x634c -> :sswitch_4
        0x67d2 -> :sswitch_c
        0x7396 -> :sswitch_a
        0x767e -> :sswitch_6
        0x8086 -> :sswitch_1
        0x824c -> :sswitch_0
        0x8cb3 -> :sswitch_9
        0x9678 -> :sswitch_3
        0x96f6 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getISOComment(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntPropertyMaxValue(I)I
    .locals 1

    .line 6013
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getIntPropertyMaxValue(I)I

    move-result p0

    return p0
.end method

.method public static getIntPropertyMinValue(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getIntPropertyValue(II)I
    .locals 1

    .line 5920
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getIntPropertyValue(II)I

    move-result p0

    return p0
.end method

.method public static getMirror(I)I
    .locals 1

    .line 4730
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->getMirror(I)I

    move-result p0

    return p0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2

    .line 4843
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4854
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 4855
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4858
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4859
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4860
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    if-eqz v1, :cond_1

    .line 4861
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4862
    :cond_1
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4859
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 4864
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName1_0(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getName1_0Iterator()Lcom/ibm/icu/util/ValueIterator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5741
    new-instance v0, Lcom/ibm/icu/lang/UCharacter$DummyValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/lang/UCharacter$DummyValueIterator;-><init>(Lcom/ibm/icu/lang/UCharacter$1;)V

    return-object v0
.end method

.method public static getNameAlias(I)Ljava/lang/String;
    .locals 2

    .line 4915
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameIterator()Lcom/ibm/icu/util/ValueIterator;
    .locals 3

    .line 5728
    new-instance v0, Lcom/ibm/icu/lang/UCharacterNameIterator;

    sget-object v1, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/lang/UCharacterNameIterator;-><init>(Lcom/ibm/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getNumericValue(I)I
    .locals 1

    .line 4095
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericValue(I)I

    move-result p0

    return p0
.end method

.method public static getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 3

    .line 5062
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5064
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPropertyName(II)Ljava/lang/String;
    .locals 1

    .line 5036
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 2

    .line 5174
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 5176
    :cond_0
    new-instance p0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5191
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public static getPropertyValueName(III)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1002

    if-eq p0, v0, :cond_0

    const/16 v1, 0x1010

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1011

    if-ne p0, v1, :cond_1

    .line 5124
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyMinValue(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 5126
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v0

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 5132
    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 5139
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/UPropertyAliases;->INSTANCE:Lcom/ibm/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ibm/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringPropertyValue(III)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1019

    if-ge p0, v0, :cond_2

    .line 5936
    :cond_1
    invoke-static {p1, p0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p2, 0x3000

    if-ne p0, p2, :cond_3

    .line 5940
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 5958
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal Property Enum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5956
    :pswitch_0
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5955
    :pswitch_1
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getName1_0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5954
    :pswitch_2
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5953
    :pswitch_3
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toUpperCase(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5952
    :pswitch_4
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5951
    :pswitch_5
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5950
    :pswitch_6
    invoke-static {p1, p2}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5949
    :pswitch_7
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5948
    :pswitch_8
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5945
    :pswitch_9
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getISOComment(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5947
    :pswitch_a
    invoke-static {p1, p2}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5946
    :pswitch_b
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getMirror(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5944
    :pswitch_c
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getAge(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getType(I)I
    .locals 1

    .line 4152
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getType(I)I

    move-result p0

    return p0
.end method

.method public static getTypeIterator()Lcom/ibm/icu/util/RangeValueIterator;
    .locals 1

    .line 5667
    new-instance v0, Lcom/ibm/icu/lang/UCharacter$UCharacterTypeIterator;

    invoke-direct {v0}, Lcom/ibm/icu/lang/UCharacter$UCharacterTypeIterator;-><init>()V

    return-object v0
.end method

.method public static getUnicodeNumericValue(I)D
    .locals 2

    .line 4117
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getUnicodeNumericValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    .line 4827
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;

    return-object v0
.end method

.method public static hasBinaryProperty(II)Z
    .locals 1

    .line 5825
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isBMP(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBaseForm(I)Z
    .locals 2

    .line 4670
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDefined(I)Z
    .locals 0

    .line 4168
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDigit(I)Z
    .locals 1

    .line 4185
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHighSurrogate(C)Z
    .locals 0

    .line 6119
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    return p0
.end method

.method public static isISOControl(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_1

    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x9f

    if-gt p0, v2, :cond_3

    .line 4487
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0x1c

    if-lt p0, v2, :cond_2

    const/16 v2, 0x1f

    if-le p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    .line 4491
    :cond_3
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/16 v2, 0x10

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 0

    int-to-char p0, p0

    .line 4288
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p0

    return p0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 0

    int-to-char p0, p0

    .line 4276
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result p0

    return p0
.end method

.method public static isJavaLetter(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4251
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isJavaIdentifierStart(I)Z

    move-result p0

    return p0
.end method

.method public static isJavaLetterOrDigit(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4264
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isJavaIdentifierPart(I)Z

    move-result p0

    return p0
.end method

.method public static isLegal(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    :cond_0
    const v1, 0xd800

    const/4 v2, 0x1

    if-ge p0, v1, :cond_1

    return v2

    :cond_1
    const v1, 0xdfff

    if-gt p0, v1, :cond_2

    return v0

    .line 4787
    :cond_2
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const v1, 0x10ffff

    if-gt p0, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static isLegal(Ljava/lang/String;)Z
    .locals 5

    .line 4808
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4812
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 4813
    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->isLegal(I)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 4810
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isLetter(I)Z
    .locals 1

    .line 4214
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit8 p0, p0, 0x3e

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 1

    .line 4232
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x23e

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowSurrogate(C)Z
    .locals 0

    .line 6130
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    return p0
.end method

.method public static isLowerCase(I)Z
    .locals 1

    .line 4307
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMirrored(I)Z
    .locals 1

    .line 4711
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UBiDiProps;->isMirrored(I)Z

    move-result p0

    return p0
.end method

.method public static isPrintable(I)Z
    .locals 1

    .line 4650
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpace(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpaceChar(I)Z
    .locals 1

    .line 4364
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x7000

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupplementary(I)Z
    .locals 1

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSupplementaryCodePoint(I)Z
    .locals 0

    .line 6108
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result p0

    return p0
.end method

.method public static final isSurrogatePair(CC)Z
    .locals 0

    .line 6142
    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    return p0
.end method

.method public static isTitleCase(I)Z
    .locals 1

    .line 4386
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUAlphabetic(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 5837
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isULowercase(I)Z
    .locals 1

    const/16 v0, 0x16

    .line 5849
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isUUppercase(I)Z
    .locals 1

    const/16 v0, 0x1e

    .line 5861
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isUWhiteSpace(I)Z
    .locals 1

    const/16 v0, 0x1f

    .line 5874
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .locals 3

    .line 4420
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v2, 0x40077e

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 4431
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->isIdentifierIgnorable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .locals 1

    .line 4458
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x43e

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUpperCase(I)Z
    .locals 1

    .line 4514
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isValidCodePoint(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWhitespace(I)Z
    .locals 2

    .line 4343
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2007

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202f

    if-ne p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x9

    if-lt p0, v0, :cond_1

    const/16 v0, 0xd

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 7

    if-ltz p1, :cond_8

    .line 6440
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_8

    const v0, 0xdbff

    const v1, 0xd800

    const v2, 0xdfff

    const v3, 0xdc00

    if-gez p2, :cond_3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-gtz p2, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 6447
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    :cond_1
    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 6449
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-lt v4, v1, :cond_2

    if-le v4, v0, :cond_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 6458
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_7

    add-int/lit8 v5, p1, 0x1

    .line 6460
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    :goto_1
    if-lt p1, v1, :cond_6

    if-gt p1, v0, :cond_6

    if-ge v5, v4, :cond_6

    add-int/lit8 p1, v5, 0x1

    .line 6462
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_4

    if-le v5, v2, :cond_5

    :cond_4
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_5

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_5
    move v6, v5

    move v5, p1

    move p1, v6

    goto :goto_1

    :cond_6
    move p1, v5

    goto :goto_0

    :cond_7
    return p1

    .line 6441
    :cond_8
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") out of range 0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6442
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 7

    add-int/2addr p2, p1

    const-string v0, "index ( "

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_a

    .line 6490
    array-length v1, p0

    if-gt p2, v1, :cond_a

    if-lt p3, p1, :cond_a

    if-gt p3, p2, :cond_a

    const v1, 0xdbff

    const v2, 0xdfff

    const v3, 0xd800

    const-string v4, ")"

    const v5, 0xdc00

    if-gez p4, :cond_4

    :cond_0
    add-int/lit8 p4, p4, 0x1

    if-gtz p4, :cond_9

    add-int/lit8 p3, p3, -0x1

    .line 6499
    aget-char p2, p0, p3

    if-lt p3, p1, :cond_3

    :cond_1
    if-lt p2, v5, :cond_0

    if-gt p2, v2, :cond_0

    if-le p3, p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 6506
    aget-char p2, p0, p3

    if-lt p2, v3, :cond_2

    if-le p2, v1, :cond_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    if-lez p4, :cond_1

    add-int/lit8 p3, p3, 0x1

    return p3

    .line 6501
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") < start ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_9

    add-int/lit8 p1, p3, 0x1

    .line 6516
    aget-char p3, p0, p3

    if-gt p1, p2, :cond_8

    :goto_1
    if-lt p3, v3, :cond_7

    if-gt p3, v1, :cond_7

    if-ge p1, p2, :cond_7

    add-int/lit8 p3, p1, 0x1

    .line 6523
    aget-char p1, p0, p1

    if-lt p1, v5, :cond_5

    if-le p1, v2, :cond_6

    :cond_5
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_6

    add-int/lit8 p3, p3, -0x1

    return p3

    :cond_6
    move v6, p3

    move p3, p1

    move p1, v6

    goto :goto_1

    :cond_7
    move p3, p1

    goto :goto_0

    .line 6518
    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > limit ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return p3

    .line 6491
    :cond_a
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") out of range "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in array 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p4

    :goto_3
    goto :goto_2
.end method

.method public static final toChars(I[CI)I
    .locals 0

    .line 6331
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toChars(I[CI)I

    move-result p0

    return p0
.end method

.method public static final toChars(I)[C
    .locals 0

    .line 6344
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    return-object p0
.end method

.method public static final toCodePoint(CC)I
    .locals 0

    .line 6169
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0
.end method

.method public static toLowerCase(I)I
    .locals 1

    .line 4537
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->tolower(I)I

    move-result p0

    return p0
.end method

.method public static toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5342
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5251
    invoke-static {}, Lcom/ibm/icu/lang/UCharacter;->getDefaultCaseLocale()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5330
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_2

    const v0, 0x10ffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    int-to-char p0, p0

    .line 4559
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4562
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toTitleCase(I)I
    .locals 1

    .line 4586
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->totitle(I)I

    move-result p0

    return p0
.end method

.method public static toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 5391
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    if-nez p0, :cond_0

    .line 5419
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 5421
    :cond_0
    invoke-static {p0, p3, p2}, Lcom/ibm/icu/impl/CaseMapImpl;->getTitleBreakIterator(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    .line 5422
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 5423
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result p0

    invoke-static {p0, p3, p2, p1}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 2

    .line 5274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Ljava/util/Locale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 5367
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Ljava/util/Locale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    if-nez p0, :cond_0

    .line 5452
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 5454
    :cond_0
    invoke-static {p0, p3, p2}, Lcom/ibm/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    .line 5455
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 5456
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    invoke-static {p0, p3, p2, p1}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(I)I
    .locals 1

    .line 4609
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/UCaseProps;->toupper(I)I

    move-result p0

    return p0
.end method

.method public static toUpperCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5317
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Lcom/ibm/icu/util/ULocale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5239
    invoke-static {}, Lcom/ibm/icu/lang/UCharacter;->getDefaultCaseLocale()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5305
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
