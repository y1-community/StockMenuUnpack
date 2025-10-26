.class Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;
.super Lcom/ibm/icu/text/ScientificNumberFormatter$Style;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperscriptStyle"
.end annotation


# static fields
.field private static final SUPERSCRIPT_DIGITS:[C

.field private static final SUPERSCRIPT_MINUS_SIGN:C = '\u207b'

.field private static final SUPERSCRIPT_PLUS_SIGN:C = '\u207a'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 202
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x2070s
        0xb9s
        0xb2s
        0xb3s
        0x2074s
        0x2075s
        0x2076s
        0x2077s
        0x2078s
        0x2079s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter$Style;-><init>(Lcom/ibm/icu/text/ScientificNumberFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/ScientificNumberFormatter$1;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>()V

    return-void
.end method

.method private static char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I
    .locals 3

    .line 287
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v0

    .line 288
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v1

    .line 289
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 294
    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .locals 2

    .line 273
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    .line 274
    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 275
    :goto_0
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result p1

    if-ge p1, p2, :cond_1

    .line 276
    invoke-static {p0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result p1

    .line 277
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 281
    sget-object v1, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    aget-char p1, v1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 283
    :cond_1
    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    return-void
.end method


# virtual methods
.method format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    const/4 v1, 0x0

    .line 217
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v2

    const v3, 0xffff

    if-eq v2, v3, :cond_5

    .line 219
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 220
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 224
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 221
    invoke-static {p1, v1, v2, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 226
    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v1

    .line 227
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    :cond_0
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 231
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 232
    invoke-static {p1}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result v4

    .line 233
    sget-object v5, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v5}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    invoke-static {p1, v1, v2, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    const/16 v1, 0x207b

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    :cond_1
    sget-object v5, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v5}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    invoke-static {p1, v1, v2, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    const/16 v1, 0x207a

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    :goto_1
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_2

    .line 248
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 252
    :cond_3
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 254
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 255
    invoke-static {p1, v1, v2, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 260
    invoke-static {p1, v2, v3, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 262
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_2
    move v1, v3

    goto/16 :goto_0

    .line 264
    :cond_4
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto/16 :goto_0

    .line 267
    :cond_5
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result p2

    invoke-static {p1, v1, p2, v0}, Lcom/ibm/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
