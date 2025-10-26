.class public final Lcom/ibm/icu/impl/SimpleFormatterImpl;
.super Ljava/lang/Object;
.source "SimpleFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/SimpleFormatterImpl$IterInternal;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_NUM_LIMIT:I = 0x100

.field private static final COMMON_PATTERNS:[[Ljava/lang/String;

.field private static final LEN1_CHAR:C = '\u0101'

.field private static final LEN2_CHAR:C = '\u0102'

.field private static final LEN3_CHAR:C = '\u0103'

.field private static final MAX_SEGMENT_LENGTH:I = 0xfeff

.field private static final SEGMENT_LENGTH_ARGUMENT_CHAR:C = '\uffff'


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "{0} {1}"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u0002\u0000\u0101 \u0001"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "{0} ({1})"

    aput-object v3, v2, v4

    const-string v3, "\u0002\u0000\u0102 (\u0001\u0101)"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "{0}, {1}"

    aput-object v3, v2, v4

    const-string v3, "\u0002\u0000\u0102, \u0001"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v2, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "{0} \u2013 {1}"

    aput-object v3, v1, v4

    const-string v3, "\u0002\u0000\u0103 \u2013 \u0001"

    aput-object v3, v1, v5

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/ibm/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v2, v4, :cond_1

    if-gt v4, v3, :cond_1

    .line 81
    sget-object v4, Lcom/ibm/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v4, v8

    .line 82
    aget-object v10, v9, v5

    invoke-virtual {v10, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 84
    aget-object v0, v9, v6

    return-object v0

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 94
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_1
    const/4 v11, 0x0

    :goto_2
    const/16 v12, 0x100

    if-ge v8, v4, :cond_13

    add-int/lit8 v13, v8, 0x1

    .line 99
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v14, 0x7b

    const/16 v15, 0x7d

    const/16 v7, 0x27

    if-ne v8, v7, :cond_6

    if-ge v13, v4, :cond_2

    .line 101
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    :cond_2
    if-eqz v11, :cond_3

    move v8, v13

    goto :goto_1

    :cond_3
    if-eq v8, v14, :cond_5

    if-ne v8, v15, :cond_4

    goto :goto_3

    :cond_4
    const/16 v8, 0x27

    goto/16 :goto_8

    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_6
    if-nez v11, :cond_10

    if-ne v8, v14, :cond_10

    if-lez v9, :cond_7

    .line 118
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v9

    sub-int/2addr v7, v6

    add-int/lit16 v9, v9, 0x100

    int-to-char v9, v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v9, 0x0

    :cond_7
    add-int/lit8 v7, v13, 0x1

    const/16 v14, 0x30

    if-ge v7, v4, :cond_8

    .line 123
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    add-int/lit8 v5, v16, -0x30

    if-ltz v5, :cond_8

    const/16 v6, 0x9

    if-gt v5, v6, :cond_8

    .line 124
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v15, :cond_8

    add-int/lit8 v13, v13, 0x2

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v13, -0x1

    if-ge v13, v4, :cond_c

    const/16 v6, 0x31

    .line 132
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v6, v8, :cond_b

    const/16 v6, 0x39

    if-gt v8, v6, :cond_b

    add-int/lit8 v13, v8, -0x30

    move/from16 v18, v13

    move v13, v7

    move/from16 v7, v18

    :goto_4
    if-ge v13, v4, :cond_d

    add-int/lit8 v8, v13, 0x1

    .line 134
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-gt v14, v13, :cond_a

    if-gt v13, v6, :cond_a

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v17, v13, -0x30

    add-int v7, v7, v17

    if-lt v7, v12, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v18, v13

    move v13, v8

    move/from16 v8, v18

    goto :goto_4

    :cond_a
    :goto_5
    move/from16 v18, v13

    move v13, v8

    move/from16 v8, v18

    goto :goto_6

    :cond_b
    move v13, v7

    :cond_c
    const/4 v7, -0x1

    :cond_d
    :goto_6
    if-ltz v7, :cond_f

    if-ne v8, v15, :cond_f

    move v5, v7

    :goto_7
    move v8, v13

    if-le v5, v10, :cond_e

    move v10, v5

    :cond_e
    int-to-char v5, v5

    .line 151
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 142
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument syntax error in pattern \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {v0, v5, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_8
    if-nez v9, :cond_11

    const v5, 0xffff

    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :cond_11
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    const v5, 0xfeff

    if-ne v9, v5, :cond_12

    const/4 v9, 0x0

    :cond_12
    move v8, v13

    :goto_9
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_13
    if-lez v9, :cond_14

    .line 165
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v9

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    add-int/2addr v9, v12

    int-to-char v6, v9

    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_a

    :cond_14
    const/4 v5, 0x1

    :goto_a
    add-int/2addr v10, v5

    const-string v4, "\""

    const-string v5, " arguments in pattern \""

    if-lt v10, v2, :cond_16

    if-gt v10, v3, :cond_15

    int-to-char v0, v10

    const/4 v2, 0x0

    .line 176
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than maximum "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fewer than minimum "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 451
    :cond_0
    array-length v1, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const/4 v3, -0x1

    .line 453
    aput v3, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 456
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    .line 457
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x100

    if-ge v2, v4, :cond_8

    .line 459
    aget-object v4, p1, v2

    if-ne v4, p2, :cond_5

    if-nez p4, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ge v2, v1, :cond_7

    .line 467
    aput v0, p5, v2

    goto :goto_3

    :cond_2
    if-ge v2, v1, :cond_3

    .line 471
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    aput v4, p5, v2

    .line 473
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 462
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value must not be same object as result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-ge v2, v1, :cond_6

    .line 477
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    aput v5, p5, v2

    .line 479
    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    move v2, v3

    goto :goto_2

    :cond_8
    add-int/lit16 v2, v2, -0x100

    add-int/2addr v2, v3

    .line 483
    invoke-virtual {p2, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    return-object p2
.end method

.method public static varargs formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 8

    if-eqz p3, :cond_0

    .line 233
    array-length v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v7, p2

    .line 237
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 235
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 258
    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 259
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_6

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 270
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    .line 271
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 272
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x100

    if-ge v3, v5, :cond_2

    .line 274
    aget-object v5, p3, v3

    if-ne v5, p1, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    add-int/lit16 v3, v3, -0x100

    add-int/2addr v4, v3

    :cond_3
    :goto_2
    move v3, v4

    goto :goto_1

    :cond_4
    move-object v5, v2

    if-gez v1, :cond_5

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v7, p2

    .line 289
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 260
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static varargs formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPrefixSuffix(Ljava/lang/String;Ljava/text/Format$Field;IILcom/ibm/icu/impl/FormattedStringBuilder;)I
    .locals 9

    .line 375
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x2

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p4

    move v2, p2

    move v3, p3

    move-object v4, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;->splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 383
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit16 v0, v0, -0x100

    const/4 v5, 0x2

    add-int/lit8 v6, v0, 0x2

    move-object v2, p4

    move v3, p2

    move-object v4, p0

    move-object v7, p1

    .line 385
    invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 390
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit16 v2, v2, -0x100

    add-int v4, p3, p2

    add-int/lit8 v6, v0, 0x1

    add-int v7, v6, v2

    move-object v3, p4

    move-object v5, p0

    move-object v8, p1

    .line 392
    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p0

    add-int/2addr p2, p0

    :cond_2
    return p2
.end method

.method public static varargs formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-static {p0, v0, p1, p2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 p1, 0x0

    .line 213
    invoke-static {p0, v0, p1, p3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArgumentLimit(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static getLength(Ljava/lang/String;Z)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit16 v0, v0, -0x100

    if-lez v0, :cond_1

    add-int/2addr v0, v2

    if-eqz p1, :cond_0

    .line 325
    invoke-static {p0, v2, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v2

    goto :goto_1

    :cond_0
    sub-int v2, v0, v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 4

    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 343
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    return p0

    .line 345
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x100

    if-gt v0, v3, :cond_2

    return v1

    .line 348
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v3

    return p0
.end method

.method public static getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 301
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 302
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit16 v1, v1, -0x100

    if-lez v1, :cond_0

    add-int/2addr v1, v0

    .line 305
    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
