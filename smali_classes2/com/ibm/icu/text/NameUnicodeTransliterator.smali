.class Lcom/ibm/icu/text/NameUnicodeTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "NameUnicodeTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:C = '\\'

.field static final OPEN_PAT:Ljava/lang/String; = "\\N~{~"

.field static final SPACE:C = ' '

.field static final _ID:Ljava/lang/String; = "Name-Any"


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/UnicodeFilter;)V
    .locals 1

    const-string v0, "Name-Any"

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 2

    .line 31
    new-instance v0, Lcom/ibm/icu/text/NameUnicodeTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/NameUnicodeTransliterator$1;-><init>()V

    const-string v1, "Name-Any"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 5

    .line 178
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/NameUnicodeTransliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const-string v0, "\\N{"

    .line 179
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    const/16 v3, 0x30

    const/16 v4, 0x39

    .line 183
    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x41

    const/16 v4, 0x46

    .line 184
    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x61

    const/16 v4, 0x7a

    .line 185
    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x3c

    .line 186
    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x28

    .line 187
    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x2d

    .line 188
    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x20

    .line 189
    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 193
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 194
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    const/4 p1, 0x0

    const p2, 0x10ffff

    .line 196
    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 53
    sget-object v2, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/UCharacterName;->getMaxCharNameLength()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 55
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 58
    new-instance v5, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v5}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 59
    sget-object v6, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/impl/UCharacterName;->getCharNameCharacters(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 61
    iget v6, v1, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 62
    iget v7, v1, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_1
    if-ge v6, v7, :cond_9

    .line 72
    invoke-interface {v0, v6}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v12

    if-eqz v10, :cond_6

    if-eq v10, v3, :cond_1

    goto/16 :goto_4

    .line 96
    :cond_1
    invoke-static {v12}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    const/16 v14, 0x20

    if-eqz v13, :cond_2

    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    if-eq v13, v14, :cond_8

    .line 100
    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-le v13, v2, :cond_8

    goto :goto_2

    :cond_2
    const/16 v13, 0x7d

    if-ne v12, v13, :cond_4

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_3

    add-int/lit8 v12, v10, -0x1

    .line 116
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    if-ne v12, v14, :cond_3

    add-int/lit8 v10, v10, -0x1

    .line 117
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 120
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ibm/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 127
    invoke-static {v10}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-interface {v0, v11, v6, v10}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    sub-int v11, v6, v11

    .line 133
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v11, v10

    sub-int/2addr v6, v11

    sub-int/2addr v7, v11

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v5, v12}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 146
    invoke-static {v4, v12}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lt v13, v2, :cond_8

    :goto_2
    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, -0x1

    :goto_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    const/16 v13, 0x5c

    if-ne v12, v13, :cond_8

    const-string v11, "\\N~{~"

    .line 78
    invoke-static {v11, v0, v6, v7}, Lcom/ibm/icu/impl/Utility;->parsePattern(Ljava/lang/String;Lcom/ibm/icu/text/Replaceable;II)I

    move-result v11

    if-ltz v11, :cond_7

    if-ge v11, v7, :cond_7

    .line 81
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v10, 0x1

    move v15, v11

    move v11, v6

    move v6, v15

    goto/16 :goto_1

    :cond_7
    move v11, v6

    .line 163
    :cond_8
    :goto_4
    invoke-static {v12}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v12

    add-int/2addr v6, v12

    goto/16 :goto_1

    .line 166
    :cond_9
    iget v0, v1, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    iget v2, v1, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int v2, v7, v2

    add-int/2addr v0, v2

    iput v0, v1, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 167
    iput v7, v1, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-eqz p3, :cond_a

    if-ltz v11, :cond_a

    move v6, v11

    .line 170
    :cond_a
    iput v6, v1, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return-void
.end method
