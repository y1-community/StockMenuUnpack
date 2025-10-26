.class public Lcom/ibm/icu/impl/number/PatternStringUtils;
.super Ljava/lang/Object;
.source "PatternStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertLocalized(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 295
    fill-array-data v2, :array_0

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    xor-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    .line 298
    aget-object v5, v2, v4

    const-string v6, "%"

    aput-object v6, v5, v3

    .line 299
    aget-object v5, v2, v4

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p2

    const/4 v5, 0x1

    .line 300
    aget-object v6, v2, v5

    const-string v7, "\u2030"

    aput-object v7, v6, v3

    .line 301
    aget-object v6, v2, v5

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p2

    .line 302
    aget-object v6, v2, v1

    const-string v7, "."

    aput-object v7, v6, v3

    .line 303
    aget-object v6, v2, v1

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p2

    const/4 v6, 0x3

    .line 304
    aget-object v7, v2, v6

    const-string v8, ","

    aput-object v8, v7, v3

    .line 305
    aget-object v7, v2, v6

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p2

    const/4 v7, 0x4

    .line 306
    aget-object v8, v2, v7

    const-string v9, "-"

    aput-object v9, v8, v3

    .line 307
    aget-object v8, v2, v7

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, p2

    const/4 v8, 0x5

    .line 308
    aget-object v9, v2, v8

    const-string v10, "+"

    aput-object v10, v9, v3

    .line 309
    aget-object v9, v2, v8

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/4 v9, 0x6

    .line 310
    aget-object v10, v2, v9

    const-string v11, ";"

    aput-object v11, v10, v3

    .line 311
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/4 v9, 0x7

    .line 312
    aget-object v10, v2, v9

    const-string v11, "@"

    aput-object v11, v10, v3

    .line 313
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/16 v9, 0x8

    .line 314
    aget-object v10, v2, v9

    const-string v11, "E"

    aput-object v11, v10, v3

    .line 315
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/16 v9, 0x9

    .line 316
    aget-object v10, v2, v9

    const-string v11, "*"

    aput-object v11, v10, v3

    .line 317
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/16 v9, 0xa

    .line 318
    aget-object v10, v2, v9

    const-string v11, "#"

    aput-object v11, v10, v3

    .line 319
    aget-object v10, v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, p2

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    add-int/lit8 v11, v10, 0xb

    .line 321
    aget-object v12, v2, v11

    add-int/lit8 v13, v10, 0x30

    int-to-char v13, v13

    invoke-static {v13}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    .line 322
    aget-object v11, v2, v11

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v10

    aput-object v12, v11, p2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 327
    :goto_1
    array-length v9, v2

    const/16 v10, 0x27

    if-ge v3, v9, :cond_2

    .line 328
    aget-object v9, v2, v3

    aget-object v11, v2, v3

    aget-object v11, v11, p2

    const/16 v12, 0x2019

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 341
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 343
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_14

    .line 344
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_8

    if-nez v11, :cond_3

    .line 349
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_7

    :cond_3
    if-ne v11, v5, :cond_4

    .line 353
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_4
    if-ne v11, v1, :cond_5

    const/4 v11, 0x3

    goto/16 :goto_7

    :cond_5
    if-ne v11, v6, :cond_6

    .line 360
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-ne v11, v7, :cond_7

    const/4 v11, 0x5

    goto/16 :goto_7

    .line 369
    :cond_7
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x4

    goto/16 :goto_7

    :cond_8
    if-eqz v11, :cond_a

    if-eq v11, v6, :cond_a

    if-ne v11, v7, :cond_9

    goto :goto_4

    .line 409
    :cond_9
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    goto :goto_7

    .line 377
    :cond_a
    :goto_4
    array-length v13, v2

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_e

    aget-object v15, v2, v14

    .line 379
    aget-object v1, v15, v4

    aget-object v16, v15, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v9, v1, v4, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 381
    aget-object v1, v15, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    add-int/2addr v9, v1

    if-eq v11, v6, :cond_b

    if-ne v11, v7, :cond_c

    .line 383
    :cond_b
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 386
    :cond_c
    aget-object v1, v15, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x2

    const/4 v8, 0x5

    goto :goto_5

    .line 391
    :cond_e
    array-length v1, v2

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v1, :cond_11

    aget-object v13, v2, v8

    .line 392
    aget-object v14, v13, v5

    aget-object v13, v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v0, v9, v14, v4, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_10

    if-nez v11, :cond_f

    .line 394
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x4

    .line 397
    :cond_f
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_11
    if-eq v11, v6, :cond_12

    if-ne v11, v7, :cond_13

    .line 403
    :cond_12
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 406
    :cond_13
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    add-int/2addr v9, v5

    const/4 v1, 0x2

    const/4 v8, 0x5

    goto/16 :goto_2

    :cond_14
    if-eq v11, v6, :cond_16

    if-ne v11, v7, :cond_15

    goto :goto_8

    :cond_15
    move v4, v11

    goto :goto_9

    .line 415
    :cond_16
    :goto_8
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9
    if-nez v4, :cond_17

    .line 421
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 419
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed localized pattern: unterminated quote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    nop

    :array_0
    .array-data 4
        0x15
        0x2
    .end array-data
.end method

.method private static escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I
    .locals 7

    if-eqz p0, :cond_0

    .line 233
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, " "

    .line 235
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 236
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "\'\'"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const-string v1, "\'"

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 240
    :cond_2
    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v1, 0x27

    .line 243
    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 245
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 247
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_4

    add-int v5, p2, v3

    .line 249
    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    add-int v6, p2, v3

    .line 252
    invoke-virtual {p1, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr p2, v3

    .line 256
    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 258
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static ignoreRoundingIncrement(Ljava/math/BigDecimal;I)Z
    .locals 7

    .line 50
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const/4 p0, 0x1

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return p0

    :cond_0
    const/4 v2, 0x0

    if-gez p1, :cond_1

    return v2

    :cond_1
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v3

    const/4 v3, 0x0

    :goto_0
    if-gt v3, p1, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v4

    goto :goto_0

    :cond_2
    if-le v3, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static patternInfoToStringBuilder(Lcom/ibm/icu/impl/number/AffixPatternProvider;ZLcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;Lcom/ibm/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V
    .locals 5

    .line 437
    sget-object v0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 438
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->positiveHasPlusSign()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 442
    :goto_0
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    if-eq p2, v3, :cond_1

    .line 444
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->negativeHasMinusSign()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const/16 v4, 0x200

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz p1, :cond_4

    or-int/lit16 v4, v4, 0x100

    :cond_4
    if-eqz p3, :cond_5

    .line 456
    invoke-virtual {p3}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p3

    or-int/2addr v4, p3

    :cond_5
    if-eqz p1, :cond_8

    if-eqz v3, :cond_6

    goto :goto_3

    .line 463
    :cond_6
    sget-object p1, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne p2, p1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, 0x0

    .line 470
    :goto_4
    invoke-interface {p0, v4}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->length(I)I

    move-result p1

    add-int/2addr p1, v1

    .line 473
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_5
    if-ge v2, p1, :cond_d

    const/16 p2, 0x2d

    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    const/16 p3, 0x2d

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    add-int/lit8 p3, v2, -0x1

    .line 479
    invoke-interface {p0, v4, p3}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->charAt(II)C

    move-result p3

    goto :goto_6

    .line 481
    :cond_a
    invoke-interface {p0, v4, v2}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->charAt(II)C

    move-result p3

    :goto_6
    if-eqz v0, :cond_b

    if-ne p3, p2, :cond_b

    const/16 p3, 0x2b

    :cond_b
    if-eqz p4, :cond_c

    const/16 p2, 0x25

    if-ne p3, p2, :cond_c

    const/16 p3, 0x2030

    .line 489
    :cond_c
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static propertiesToPatternString(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Ljava/lang/String;
    .locals 25

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getGroupingUsed()Z

    move-result v5

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPadPosition()Lcom/ibm/icu/impl/number/Padder$PadPosition;

    move-result-object v7

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v9

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v10

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v13

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v14

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v15

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v16

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/impl/number/PropertiesAffixPatternProvider;->forProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/AffixPatternProvider;

    move-result-object v2

    move-object/from16 v17, v8

    const/16 v8, 0x100

    .line 99
    invoke-interface {v2, v8}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v5, :cond_0

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    add-int v18, v1, v4

    move-object/from16 v19, v7

    const/4 v7, 0x1

    move/from16 v20, v8

    add-int/lit8 v8, v18, 0x1

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v7

    move/from16 v21, v6

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    const/4 v2, -0x1

    move/from16 v23, v3

    move/from16 v24, v4

    const/16 v3, 0x64

    .line 115
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v3, 0x23

    if-eq v14, v4, :cond_3

    .line 117
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v13, :cond_2

    const/16 v4, 0x40

    .line 118
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v14, :cond_5

    .line 121
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_5

    .line 123
    invoke-static {v7, v12}, Lcom/ibm/icu/impl/number/PatternStringUtils;->ignoreRoundingIncrement(Ljava/math/BigDecimal;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 125
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    neg-int v4, v4

    .line 127
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    .line 128
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v13, 0x2d

    if-ne v14, v13, :cond_4

    .line 130
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v6, v7, v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 132
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 135
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v4

    const/16 v13, 0x30

    if-ge v7, v9, :cond_6

    const/4 v7, 0x0

    .line 136
    invoke-virtual {v6, v7, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_4
    neg-int v7, v4

    if-ge v7, v11, :cond_7

    .line 139
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 144
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x64

    if-eq v10, v8, :cond_8

    .line 145
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_8
    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-eq v12, v8, :cond_9

    neg-int v8, v12

    .line 146
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_5

    :cond_9
    move v8, v4

    :goto_5
    if-lt v7, v8, :cond_11

    .line 148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/2addr v9, v4

    sub-int/2addr v9, v7

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ltz v9, :cond_b

    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lt v9, v10, :cond_a

    goto :goto_6

    .line 152
    :cond_a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 150
    :cond_b
    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    if-nez v7, :cond_d

    if-nez v15, :cond_c

    if-gez v8, :cond_d

    :cond_c
    const/16 v9, 0x2e

    .line 156
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    if-nez v5, :cond_e

    goto :goto_8

    :cond_e
    const/16 v9, 0x2c

    if-lez v7, :cond_f

    if-ne v7, v1, :cond_f

    .line 163
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    if-le v7, v1, :cond_10

    if-lez v24, :cond_10

    sub-int v10, v7, v1

    .line 166
    rem-int v10, v10, v24

    if-nez v10, :cond_10

    .line 167
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    :goto_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_11
    const/16 v7, 0x64

    .line 172
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v2, v23

    if-eq v2, v1, :cond_13

    const/16 v1, 0x45

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_12

    const/16 v1, 0x2b

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_13

    .line 178
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 183
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move-object/from16 v2, v22

    const/4 v4, 0x0

    .line 184
    invoke-interface {v2, v4}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v21, :cond_19

    .line 188
    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int v6, v21, v4

    if-lez v6, :cond_14

    move/from16 v4, v20

    .line 189
    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    move/from16 v4, v20

    .line 193
    sget-object v3, Lcom/ibm/icu/impl/number/PatternStringUtils$1;->$SwitchMap$com$ibm$icu$impl$number$Padder$PadPosition:[I

    invoke-virtual/range {v19 .. v19}, Lcom/ibm/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/16 v5, 0x2a

    const/4 v6, 0x1

    if-eq v3, v6, :cond_18

    const/4 v6, 0x2

    if-eq v3, v6, :cond_17

    const/4 v6, 0x3

    if-eq v3, v6, :cond_16

    const/4 v6, 0x4

    if-eq v3, v6, :cond_15

    goto :goto_b

    .line 211
    :cond_15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v6, v17

    invoke-static {v6, v0, v3}, Lcom/ibm/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    goto :goto_b

    :cond_16
    move-object/from16 v6, v17

    .line 207
    invoke-static {v6, v0, v1}, Lcom/ibm/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    .line 208
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_17
    move-object/from16 v6, v17

    .line 201
    invoke-static {v6, v0, v4}, Lcom/ibm/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v3

    .line 202
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    add-int/2addr v3, v7

    add-int v8, v4, v3

    add-int/2addr v1, v3

    goto :goto_c

    :cond_18
    move-object/from16 v6, v17

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 195
    invoke-static {v6, v0, v3}, Lcom/ibm/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v6

    .line 196
    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    add-int v8, v4, v6

    add-int/2addr v1, v6

    goto :goto_c

    :cond_19
    move/from16 v4, v20

    :goto_b
    move v8, v4

    .line 219
    :goto_c
    invoke-interface {v2}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v3, 0x3b

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x300

    .line 221
    invoke-interface {v2, v3}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v0, v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    .line 225
    invoke-interface {v2, v1}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveSignDisplay(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Lcom/ibm/icu/impl/number/Modifier$Signum;)Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;
    .locals 4

    .line 494
    sget-object v0, Lcom/ibm/icu/impl/number/PatternStringUtils$1;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 545
    :pswitch_0
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 534
    :pswitch_1
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$1;->$SwitchMap$com$ibm$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_8

    .line 540
    :cond_0
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 536
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 521
    :pswitch_2
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$1;->$SwitchMap$com$ibm$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_2

    if-ne p0, v0, :cond_8

    .line 528
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 526
    :cond_2
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 523
    :cond_3
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 509
    :pswitch_3
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$1;->$SwitchMap$com$ibm$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    if-ne p0, v0, :cond_8

    .line 515
    :cond_4
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 512
    :cond_5
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 497
    :pswitch_4
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$1;->$SwitchMap$com$ibm$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_6

    if-ne p0, v0, :cond_8

    .line 503
    :cond_6
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 500
    :cond_7
    sget-object p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0

    .line 551
    :cond_8
    :goto_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unreachable"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
