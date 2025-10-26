.class Lcom/ibm/icu/text/UnescapeTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "UnescapeTransliterator.java"


# static fields
.field private static final END:C = '\uffff'


# instance fields
.field private spec:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    .line 141
    iput-object p2, p0, Lcom/ibm/icu/text/UnescapeTransliterator;->spec:[C

    return-void
.end method

.method static register()V
    .locals 2

    .line 53
    new-instance v0, Lcom/ibm/icu/text/UnescapeTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnescapeTransliterator$1;-><init>()V

    const-string v1, "Hex-Any/Unicode"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 64
    new-instance v0, Lcom/ibm/icu/text/UnescapeTransliterator$2;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnescapeTransliterator$2;-><init>()V

    const-string v1, "Hex-Any/Java"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 75
    new-instance v0, Lcom/ibm/icu/text/UnescapeTransliterator$3;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnescapeTransliterator$3;-><init>()V

    const-string v1, "Hex-Any/C"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 87
    new-instance v0, Lcom/ibm/icu/text/UnescapeTransliterator$4;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnescapeTransliterator$4;-><init>()V

    const-string v1, "Hex-Any/XML"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 98
    new-instance v0, Lcom/ibm/icu/text/UnescapeTransliterator$5;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnescapeTransliterator$5;-><init>()V

    const-string v1, "Hex-Any/XML10"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 109
    new-instance v0, Lcom/ibm/icu/text/UnescapeTransliterator$6;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnescapeTransliterator$6;-><init>()V

    const-string v1, "Hex-Any/Perl"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 120
    new-instance v0, Lcom/ibm/icu/text/UnescapeTransliterator$7;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnescapeTransliterator$7;-><init>()V

    const-string v1, "Hex-Any"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 7

    .line 271
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnescapeTransliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 272
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 274
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v5, v4, v3

    const v6, 0xffff

    if-eq v5, v6, :cond_2

    .line 276
    aget-char v5, v4, v3

    add-int/2addr v5, v3

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v4, v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v6, v3, 0x2

    .line 277
    aget-char v4, v4, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    .line 279
    invoke-static {v1, v6, v4, v2}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x5

    :goto_2
    if-ge v3, v5, :cond_1

    .line 283
    iget-object v4, p0, Lcom/ibm/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 289
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 291
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 292
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    const p1, 0x10ffff

    .line 293
    invoke-virtual {p3, v2, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_3
    return-void
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 150
    iget v3, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 151
    iget v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    :cond_0
    :goto_0
    if-ge v3, v4, :cond_10

    const/4 v6, 0x0

    .line 159
    :goto_1
    iget-object v7, v0, Lcom/ibm/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v8, v7, v6

    const v9, 0xffff

    if-eq v8, v9, :cond_f

    add-int/lit8 v8, v6, 0x1

    .line 162
    aget-char v6, v7, v6

    add-int/lit8 v9, v8, 0x1

    .line 163
    aget-char v8, v7, v8

    add-int/lit8 v10, v9, 0x1

    .line 164
    aget-char v9, v7, v9

    add-int/lit8 v11, v10, 0x1

    .line 165
    aget-char v10, v7, v10

    add-int/lit8 v12, v11, 0x1

    .line 166
    aget-char v7, v7, v11

    move v13, v3

    const/4 v11, 0x0

    :goto_2
    const/4 v14, 0x1

    if-ge v11, v6, :cond_4

    if-lt v13, v4, :cond_1

    if-lez v11, :cond_1

    if-eqz p3, :cond_2

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v15, v13, 0x1

    .line 187
    invoke-interface {v1, v13}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v13

    .line 188
    iget-object v5, v0, Lcom/ibm/icu/text/UnescapeTransliterator;->spec:[C

    add-int v16, v12, v11

    aget-char v5, v5, v16

    if-eq v13, v5, :cond_3

    move v13, v15

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move v13, v15

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_e

    const/4 v5, 0x0

    const/4 v11, 0x0

    :cond_5
    if-lt v13, v4, :cond_6

    if-le v13, v3, :cond_8

    if-eqz p3, :cond_8

    goto/16 :goto_9

    .line 205
    :cond_6
    invoke-interface {v1, v13}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v15

    .line 206
    invoke-static {v15, v9}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v16

    if-gez v16, :cond_7

    goto :goto_4

    .line 210
    :cond_7
    invoke-static {v15}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    add-int/2addr v13, v15

    mul-int v5, v5, v9

    add-int v5, v5, v16

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v7, :cond_5

    :cond_8
    :goto_4
    if-lt v11, v10, :cond_9

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_e

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_d

    if-lt v13, v4, :cond_a

    if-le v13, v3, :cond_b

    if-eqz p3, :cond_b

    goto :goto_9

    :cond_a
    add-int/lit8 v9, v13, 0x1

    .line 229
    invoke-interface {v1, v13}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v10

    .line 230
    iget-object v11, v0, Lcom/ibm/icu/text/UnescapeTransliterator;->spec:[C

    add-int v13, v12, v6

    add-int/2addr v13, v7

    aget-char v11, v11, v13

    if-eq v10, v11, :cond_c

    move v13, v9

    :cond_b
    const/4 v14, 0x0

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v7, 0x1

    move v13, v9

    goto :goto_6

    :cond_d
    :goto_7
    if-eqz v14, :cond_e

    .line 238
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-interface {v1, v3, v13, v5}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    sub-int/2addr v13, v3

    .line 240
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v13, v5

    sub-int/2addr v4, v13

    goto :goto_8

    :cond_e
    add-int/2addr v6, v8

    add-int/2addr v6, v12

    goto/16 :goto_1

    :cond_f
    :goto_8
    if-ge v3, v4, :cond_0

    .line 254
    invoke-interface {v1, v3}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v5

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto/16 :goto_0

    .line 258
    :cond_10
    :goto_9
    iget v1, v2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    iget v5, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int v5, v4, v5

    add-int/2addr v1, v5

    iput v1, v2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 259
    iput v4, v2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 260
    iput v3, v2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return-void
.end method
