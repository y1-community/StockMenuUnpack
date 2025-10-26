.class Lcom/ibm/icu/text/CjkBreakEngine;
.super Lcom/ibm/icu/text/DictionaryBreakEngine;
.source "CjkBreakEngine.java"


# static fields
.field private static final fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

.field private static final kMaxKatakanaGroupLength:I = 0x14

.field private static final kMaxKatakanaLength:I = 0x8

.field private static final kint32max:I = 0x7fffffff

.field private static final maxSnlp:I = 0xff


# instance fields
.field private fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 22
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v1, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 23
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v2, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 24
    new-instance v3, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    sput-object v3, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string v4, "[\\uac00-\\ud7a3]"

    .line 26
    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    const-string v4, "[:Han:]"

    .line 27
    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    const-string v4, "[[:Katakana:]\\uff9e\\uff9f]"

    .line 28
    invoke-virtual {v2, v4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    const-string v4, "[:Hiragana:]"

    .line 29
    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;

    .line 32
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 33
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 34
    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 35
    invoke-virtual {v3}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    const-string v0, "Hira"

    .line 41
    invoke-static {v0}, Lcom/ibm/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Lcom/ibm/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    if-eqz p1, :cond_0

    .line 43
    sget-object p1, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CjkBreakEngine;->setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 46
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHanWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 47
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fKatakanaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 48
    sget-object v0, Lcom/ibm/icu/text/CjkBreakEngine;->fHiraganaWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff70

    .line 49
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x30fc

    .line 50
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 51
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CjkBreakEngine;->setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    :goto_0
    return-void
.end method

.method private static getKatakanaCost(I)I
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 74
    fill-array-data v0, :array_0

    const/16 v1, 0x8

    if-le p0, v1, :cond_0

    const/16 p0, 0x2000

    goto :goto_0

    .line 75
    :cond_0
    aget p0, v0, p0

    :goto_0
    return p0

    nop

    :array_0
    .array-data 4
        0x2000
        0x3d8
        0x198
        0xf0
        0xcc
        0xfc
        0x12c
        0x174
        0x1e0
    .end array-data
.end method

.method private static isKatakana(I)Z
    .locals 1

    const/16 v0, 0x30a1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-ne p0, v0, :cond_1

    :cond_0
    const v0, 0xff66

    if-lt p0, v0, :cond_2

    const v0, 0xff9f

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 21

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    return v3

    .line 90
    :cond_0
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    sub-int v4, v1, v0

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 93
    new-array v4, v4, [I

    .line 94
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 96
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    if-ge v7, v1, :cond_1

    .line 97
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    sget-object v7, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {v6, v7}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v7

    sget-object v8, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    if-eq v7, v8, :cond_3

    sget-object v7, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 102
    invoke-static {v6, v7, v3}, Lcom/ibm/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_4

    .line 106
    new-instance v7, Ljava/text/StringCharacterIterator;

    invoke-direct {v7, v6}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 108
    aput v3, v4, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 109
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_5

    .line 110
    invoke-virtual {v6, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 111
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    .line 113
    aput v8, v4, v9

    goto :goto_3

    .line 116
    :cond_4
    sget-object v4, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-static {v6, v4}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v4

    .line 117
    new-instance v7, Ljava/text/StringCharacterIterator;

    invoke-direct {v7, v4}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    new-array v4, v4, [I

    .line 119
    new-instance v8, Lcom/ibm/icu/text/Normalizer;

    sget-object v9, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-direct {v8, v6, v9, v3}, Lcom/ibm/icu/text/Normalizer;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)V

    .line 121
    aput v3, v4, v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 122
    :goto_4
    invoke-virtual {v8}, Lcom/ibm/icu/text/Normalizer;->endIndex()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 123
    invoke-virtual {v8}, Lcom/ibm/icu/text/Normalizer;->next()I

    add-int/lit8 v9, v9, 0x1

    .line 125
    invoke-virtual {v8}, Lcom/ibm/icu/text/Normalizer;->getIndex()I

    move-result v6

    .line 126
    aput v6, v4, v9

    goto :goto_4

    :cond_5
    move-object v13, v7

    move v14, v9

    add-int/lit8 v15, v14, 0x1

    .line 132
    new-array v12, v15, [I

    .line 133
    aput v3, v12, v3

    const/4 v6, 0x1

    :goto_5
    const v11, 0x7fffffff

    if-gt v6, v14, :cond_6

    .line 135
    aput v11, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 138
    :cond_6
    new-array v10, v15, [I

    const/4 v6, 0x0

    :goto_6
    if-gt v6, v14, :cond_7

    const/4 v7, -0x1

    .line 140
    aput v7, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 144
    :cond_7
    new-array v9, v14, [I

    .line 145
    new-array v8, v14, [I

    .line 152
    invoke-interface {v13, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_7
    if-ge v7, v14, :cond_10

    .line 155
    invoke-interface {v13}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    .line 156
    aget v3, v12, v7

    if-ne v3, v11, :cond_8

    move v1, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object v3, v12

    const v2, 0x7fffffff

    goto/16 :goto_b

    :cond_8
    add-int/lit8 v3, v7, 0x14

    if-ge v3, v14, :cond_9

    const/16 v3, 0x14

    goto :goto_8

    :cond_9
    sub-int v3, v14, v7

    :goto_8
    const/4 v11, 0x1

    new-array v5, v11, [I

    move-object/from16 v11, p0

    move/from16 v17, v6

    .line 162
    iget-object v6, v11, Lcom/ibm/icu/text/CjkBreakEngine;->fDictionary:Lcom/ibm/icu/text/DictionaryMatcher;

    move/from16 v1, v17

    move/from16 v17, v7

    move-object v7, v13

    move-object/from16 v18, v8

    move v8, v3

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 v20, v10

    move-object v10, v5

    const v2, 0x7fffffff

    move v11, v3

    move-object v3, v12

    move-object/from16 v12, v19

    invoke-virtual/range {v6 .. v12}, Lcom/ibm/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    const/4 v6, 0x0

    aget v5, v5, v6

    .line 170
    invoke-interface {v13, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-eqz v5, :cond_a

    .line 171
    aget v7, v18, v6

    const/4 v6, 0x1

    if-eq v7, v6, :cond_b

    :cond_a
    invoke-static {v13}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v6

    if-eq v6, v2, :cond_b

    sget-object v6, Lcom/ibm/icu/text/CjkBreakEngine;->fHangulWordSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v13}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-nez v6, :cond_b

    const/16 v6, 0xff

    .line 172
    aput v6, v19, v5

    const/4 v6, 0x1

    .line 173
    aput v6, v18, v5

    add-int/lit8 v5, v5, 0x1

    :cond_b
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_d

    .line 178
    aget v7, v3, v17

    aget v8, v19, v6

    add-int/2addr v7, v8

    .line 179
    aget v8, v18, v6

    add-int v8, v8, v17

    aget v8, v3, v8

    if-ge v7, v8, :cond_c

    .line 180
    aget v8, v18, v6

    add-int v8, v8, v17

    aput v7, v3, v8

    .line 181
    aget v7, v18, v6

    add-int v7, v7, v17

    aput v17, v20, v7

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 190
    :cond_d
    invoke-static {v13}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v5

    invoke-static {v5}, Lcom/ibm/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v5

    if-nez v16, :cond_f

    if-eqz v5, :cond_f

    add-int/lit8 v7, v17, 0x1

    .line 193
    invoke-static {v13}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    :goto_a
    if-ge v7, v14, :cond_e

    sub-int v6, v7, v17

    const/16 v8, 0x14

    if-ge v6, v8, :cond_e

    .line 194
    invoke-static {v13}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v6

    invoke-static {v6}, Lcom/ibm/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 195
    invoke-static {v13}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    sub-int v6, v7, v17

    const/16 v8, 0x14

    if-ge v6, v8, :cond_f

    .line 200
    aget v8, v3, v17

    invoke-static {v6}, Lcom/ibm/icu/text/CjkBreakEngine;->getKatakanaCost(I)I

    move-result v6

    add-int/2addr v8, v6

    .line 201
    aget v6, v3, v7

    if-ge v8, v6, :cond_f

    .line 202
    aput v8, v3, v7

    .line 203
    aput v17, v20, v7

    :cond_f
    move/from16 v16, v5

    :goto_b
    add-int/lit8 v7, v17, 0x1

    .line 154
    invoke-interface {v13, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-static {v13}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object v12, v3

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v11, 0x7fffffff

    goto/16 :goto_7

    :cond_10
    move-object/from16 v20, v10

    move-object v3, v12

    const v2, 0x7fffffff

    .line 210
    new-array v1, v15, [I

    .line 212
    aget v3, v3, v14

    if-ne v3, v2, :cond_11

    const/4 v2, 0x0

    .line 213
    aput v14, v1, v2

    const/4 v11, 0x1

    goto :goto_e

    :cond_11
    const/4 v11, 0x0

    :goto_c
    if-lez v14, :cond_12

    .line 217
    aput v14, v1, v11

    add-int/lit8 v11, v11, 0x1

    .line 216
    aget v14, v20, v14

    goto :goto_c

    :cond_12
    add-int/lit8 v2, v11, -0x1

    .line 220
    aget v2, v1, v2

    aget v2, v20, v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    :goto_d
    invoke-static {v2}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 223
    :goto_e
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    if-ge v2, v0, :cond_14

    goto :goto_f

    :cond_14
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_10

    :cond_15
    :goto_f
    add-int/lit8 v2, v11, 0x1

    const/4 v3, 0x0

    .line 224
    aput v3, v1, v11

    move v11, v2

    const/4 v2, 0x1

    :goto_10
    sub-int/2addr v11, v2

    :goto_11
    if-ltz v11, :cond_17

    .line 229
    aget v2, v1, v11

    aget v2, v4, v2

    add-int/2addr v2, v0

    move-object/from16 v5, p4

    .line 230
    invoke-virtual {v5, v2}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->contains(I)Z

    move-result v6

    if-nez v6, :cond_16

    if-eq v2, v0, :cond_16

    .line 231
    aget v2, v1, v11

    aget v2, v4, v2

    add-int/2addr v2, v0

    invoke-virtual {v5, v2}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    add-int/lit8 v3, v3, 0x1

    :cond_16
    add-int/lit8 v11, v11, -0x1

    goto :goto_11

    :cond_17
    move-object/from16 v5, p4

    .line 236
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    move/from16 v1, p3

    if-ne v0, v1, :cond_18

    .line 237
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    add-int/lit8 v3, v3, -0x1

    .line 240
    :cond_18
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 241
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_19
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 57
    instance-of v0, p1, Lcom/ibm/icu/text/CjkBreakEngine;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/ibm/icu/text/CjkBreakEngine;

    .line 59
    iget-object v0, p0, Lcom/ibm/icu/text/CjkBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object p1, p1, Lcom/ibm/icu/text/CjkBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
