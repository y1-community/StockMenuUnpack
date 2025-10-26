.class public Lcom/ibm/icu/impl/number/parse/DecimalMatcher;
.super Ljava/lang/Object;
.source "DecimalMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final decimalSeparator:Ljava/lang/String;

.field private final decimalUniSet:Lcom/ibm/icu/text/UnicodeSet;

.field private final digitStrings:[Ljava/lang/String;

.field private final grouping1:I

.field private final grouping2:I

.field private final groupingDisabled:Z

.field private final groupingSeparator:Ljava/lang/String;

.field private final groupingUniSet:Lcom/ibm/icu/text/UnicodeSet;

.field private final integerOnly:Z

.field private final leadSet:Lcom/ibm/icu/text/UnicodeSet;

.field private final requireGroupingMatch:Z

.field private final separatorSet:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;I)V
    .locals 8

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    :goto_0
    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 64
    sget-object v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 68
    :goto_2
    invoke-static {v3}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingUniSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 69
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    :goto_3
    if-eqz v0, :cond_4

    sget-object v7, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    goto :goto_4

    :cond_4
    sget-object v7, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    :goto_4
    invoke-static {v5, v6, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->chooseFrom(Ljava/lang/String;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 73
    invoke-static {v5}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v6

    iput-object v6, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_5

    .line 74
    :cond_5
    iget-object v6, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 75
    new-instance v6, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v6}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iget-object v7, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v6

    iput-object v6, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_5

    .line 77
    :cond_6
    sget-object v6, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v6, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Lcom/ibm/icu/text/UnicodeSet;

    :goto_5
    const/4 v6, 0x0

    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    .line 82
    iput-object v4, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->separatorSet:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_7

    .line 83
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    goto :goto_6

    :cond_7
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    :goto_6
    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->leadSet:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_7

    .line 86
    :cond_8
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v3, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->separatorSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 87
    iput-object v6, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->leadSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 90
    :goto_7
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    .line 91
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    .line 94
    :cond_9
    iput-object v6, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    goto :goto_9

    .line 92
    :cond_a
    :goto_8
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    :goto_9
    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_a

    :cond_b
    const/4 p1, 0x0

    .line 97
    :goto_a
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    and-int/lit8 p1, p3, 0x20

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_b

    :cond_c
    const/4 p1, 0x0

    .line 98
    :goto_b
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingDisabled:Z

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_d

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    .line 99
    :goto_c
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->integerOnly:Z

    .line 100
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Grouper;->getPrimary()S

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->grouping1:I

    .line 101
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/Grouper;->getSecondary()S

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->grouping2:I

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;I)Lcom/ibm/icu/impl/number/parse/DecimalMatcher;
    .locals 1

    .line 52
    new-instance v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;-><init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;I)V

    return-object v0
.end method

.method private validateGroup(IIZ)Z
    .locals 3

    .line 419
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_3

    if-eqz p3, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    .line 429
    iget p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->grouping2:I

    if-gt p2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    if-ne p1, v2, :cond_7

    if-eqz p3, :cond_5

    .line 434
    iget p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->grouping1:I

    if-ne p2, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 436
    :cond_5
    iget p1, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->grouping2:I

    if-ne p2, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    return v2

    :cond_8
    if-ne p1, v2, :cond_a

    if-eq p2, v2, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    :cond_a
    return v2
.end method


# virtual methods
.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;I)Z

    move-result p1

    return p1
.end method

.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;I)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    return v5

    .line 129
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    .line 166
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v18

    if-lez v18, :cond_24

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->getCodePoint()I

    move-result v5

    .line 174
    invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 175
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 176
    invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result v7

    int-to-byte v7, v7

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    const/4 v7, -0x1

    :goto_1
    if-ne v7, v2, :cond_7

    .line 180
    iget-object v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    if-eqz v2, :cond_7

    move/from16 v20, v7

    const/4 v2, 0x0

    const/16 v16, 0x0

    .line 181
    :goto_2
    iget-object v7, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    array-length v3, v7

    if-ge v2, v3, :cond_6

    .line 182
    aget-object v3, v7, v2

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_5

    .line 186
    :cond_2
    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v7

    .line 187
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v7, v3, :cond_3

    .line 188
    invoke-virtual {v1, v7}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    int-to-byte v7, v2

    goto :goto_6

    :cond_3
    if-nez v16, :cond_5

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v3

    if-ne v7, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    move/from16 v16, v3

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p3

    goto :goto_2

    :cond_6
    move/from16 v7, v20

    goto :goto_6

    :cond_7
    move/from16 v20, v7

    move/from16 v7, v20

    const/16 v16, 0x0

    :goto_6
    if-ltz v7, :cond_a

    if-nez v8, :cond_8

    .line 199
    new-instance v8, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v8}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 201
    invoke-virtual {v8, v7, v2, v3}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    add-int/lit8 v11, v11, 0x1

    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    :cond_9
    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v5, 0x0

    goto :goto_0

    :cond_a
    if-nez v10, :cond_e

    .line 215
    iget-object v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 216
    iget-object v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v16, :cond_c

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v3

    if-ne v2, v3, :cond_b

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v3, 0x1

    .line 218
    :goto_8
    iget-object v7, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v2, v7, :cond_d

    .line 220
    iget-object v10, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    move/from16 v16, v3

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    move/from16 v16, v3

    :cond_e
    const/4 v2, 0x0

    :goto_9
    if-eqz v12, :cond_11

    .line 226
    invoke-virtual {v1, v12}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v16, :cond_10

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v7

    if-ne v3, v7, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v20, v2

    const/4 v7, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    move/from16 v20, v2

    const/4 v7, 0x1

    .line 228
    :goto_b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v16, v7

    if-ne v3, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_c

    :cond_11
    move/from16 v20, v2

    :cond_12
    const/4 v2, 0x0

    .line 235
    :goto_c
    iget-boolean v3, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingDisabled:Z

    if-nez v3, :cond_16

    if-nez v12, :cond_16

    if-nez v10, :cond_16

    iget-object v3, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 239
    iget-object v3, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v16, :cond_14

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v7

    if-ne v3, v7, :cond_13

    goto :goto_d

    :cond_13
    move/from16 v21, v2

    const/4 v7, 0x0

    goto :goto_e

    :cond_14
    :goto_d
    move/from16 v21, v2

    const/4 v7, 0x1

    .line 241
    :goto_e
    iget-object v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_15

    .line 243
    iget-object v12, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    move/from16 v16, v7

    const/16 v21, 0x1

    goto :goto_f

    :cond_15
    move/from16 v16, v7

    goto :goto_f

    :cond_16
    move/from16 v21, v2

    :goto_f
    if-nez v21, :cond_17

    if-nez v10, :cond_17

    .line 251
    iget-object v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 253
    invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    const/4 v3, 0x1

    goto :goto_10

    :cond_17
    move/from16 v3, v20

    .line 259
    :goto_10
    iget-boolean v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingDisabled:Z

    if-nez v2, :cond_18

    if-nez v12, :cond_18

    if-nez v10, :cond_18

    .line 260
    iget-object v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->groupingUniSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 262
    invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    const/16 v21, 0x1

    :cond_18
    if-nez v3, :cond_19

    if-nez v21, :cond_19

    goto/16 :goto_16

    :cond_19
    if-eqz v3, :cond_1a

    .line 272
    iget-boolean v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->integerOnly:Z

    if-eqz v2, :cond_1a

    goto/16 :goto_16

    :cond_1a
    const/4 v2, 0x2

    if-ne v13, v2, :cond_1b

    if-eqz v21, :cond_1b

    goto/16 :goto_16

    :cond_1b
    const/4 v2, 0x0

    .line 280
    invoke-direct {v0, v14, v15, v2}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v5

    const/4 v2, 0x1

    .line 281
    invoke-direct {v0, v13, v11, v2}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v7

    if-eqz v5, :cond_22

    if-eqz v3, :cond_1c

    if-nez v7, :cond_1c

    goto :goto_15

    .line 292
    :cond_1c
    iget-boolean v5, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    if-eqz v5, :cond_1d

    if-nez v11, :cond_1d

    if-ne v13, v2, :cond_1d

    goto :goto_16

    :cond_1d
    if-eqz v3, :cond_1e

    const/4 v14, -0x1

    goto :goto_11

    :cond_1e
    move v14, v13

    :goto_11
    if-eqz v11, :cond_1f

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v2

    goto :goto_12

    :cond_1f
    move v2, v6

    :goto_12
    if-eqz v21, :cond_20

    const/4 v13, 0x1

    goto :goto_13

    :cond_20
    const/4 v13, 0x2

    :goto_13
    if-eqz v21, :cond_21

    .line 315
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    goto :goto_14

    .line 317
    :cond_21
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    :goto_14
    move/from16 v3, p3

    move/from16 v17, v6

    move v15, v11

    const/4 v5, 0x0

    const/4 v11, 0x0

    move v6, v2

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_22
    :goto_15
    if-eqz v21, :cond_23

    if-nez v11, :cond_23

    goto :goto_16

    .line 287
    :cond_23
    iget-boolean v2, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    const/4 v8, 0x0

    goto :goto_17

    :cond_24
    :goto_16
    const/4 v2, 0x2

    :goto_17
    if-eq v13, v2, :cond_25

    if-nez v11, :cond_25

    .line 326
    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    move v13, v14

    move v11, v15

    move/from16 v6, v17

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_18

    :cond_25
    move/from16 v3, v16

    move/from16 v2, v17

    const/4 v5, 0x0

    .line 336
    :goto_18
    invoke-direct {v0, v14, v15, v5}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v7

    const/4 v12, 0x1

    .line 337
    invoke-direct {v0, v13, v11, v12}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v16

    .line 338
    iget-boolean v12, v0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    if-nez v12, :cond_2a

    if-nez v7, :cond_26

    .line 344
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    add-int/2addr v15, v5

    add-int v19, v15, v11

    move/from16 v2, v19

    goto :goto_19

    :cond_26
    if-nez v16, :cond_28

    if-nez v14, :cond_27

    if-eqz v15, :cond_28

    .line 349
    :cond_27
    invoke-virtual {v1, v6}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    add-int v2, v5, v11

    const/4 v3, 0x1

    goto :goto_19

    :cond_28
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_29

    neg-int v2, v2

    .line 353
    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V

    .line 354
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->truncate()V

    :cond_29
    move v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/16 v16, 0x1

    goto :goto_1a

    :cond_2a
    move v2, v3

    move v3, v7

    const/4 v5, 0x2

    :goto_1a
    if-eq v13, v5, :cond_2c

    if-eqz v3, :cond_2b

    if-nez v16, :cond_2c

    :cond_2b
    const/4 v8, 0x0

    :cond_2c
    if-nez v8, :cond_2f

    if-nez v2, :cond_2e

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_1b

    :cond_2d
    const/4 v5, 0x0

    goto :goto_1c

    :cond_2e
    :goto_1b
    const/4 v5, 0x1

    .line 368
    :goto_1c
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    return v5

    :cond_2f
    neg-int v3, v9

    .line 375
    invoke-virtual {v8, v3}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V

    move/from16 v3, p3

    if-eqz v3, :cond_33

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v5

    if-eq v5, v4, :cond_33

    .line 380
    invoke-virtual {v8}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->fitsInLong()Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    .line 381
    invoke-virtual {v8, v4}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->toLong(Z)J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v5, v7

    if-gtz v9, :cond_30

    long-to-int v6, v5

    move-object/from16 v5, p2

    .line 386
    :try_start_0
    iget-object v7, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    mul-int v6, v6, v3

    invoke-virtual {v7, v6}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    goto :goto_1e

    :cond_30
    move-object/from16 v5, p2

    goto :goto_1d

    :cond_31
    move-object/from16 v5, p2

    const/4 v4, 0x0

    :catch_0
    :goto_1d
    const/4 v6, 0x1

    :goto_1e
    if-eqz v6, :cond_34

    const/4 v6, -0x1

    if-ne v3, v6, :cond_32

    .line 399
    iget-object v3, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->clear()Lcom/ibm/icu/impl/number/DecimalQuantity_AbstractBCD;

    goto :goto_1f

    :cond_32
    const/4 v3, 0x0

    .line 402
    iput-object v3, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 403
    iget v3, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    goto :goto_1f

    :cond_33
    move-object/from16 v5, p2

    const/4 v4, 0x0

    .line 407
    iput-object v8, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    :cond_34
    :goto_1f
    if-eqz v10, :cond_35

    .line 412
    iget v3, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v5, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 414
    :cond_35
    invoke-virtual {v5, v1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v1

    if-eqz v1, :cond_37

    if-eqz v2, :cond_36

    goto :goto_20

    :cond_36
    const/4 v5, 0x0

    goto :goto_21

    :cond_37
    :goto_20
    const/4 v5, 0x1

    :goto_21
    return v5
.end method

.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 0

    return-void
.end method

.method public smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
    .locals 5

    .line 456
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->leadSet:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p1

    return p1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->separatorSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getCodePoint()I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 465
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 466
    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<DecimalMatcher>"

    return-object v0
.end method
