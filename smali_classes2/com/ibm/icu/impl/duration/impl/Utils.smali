.class public Lcom/ibm/icu/impl/duration/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chineseNumber(JLcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
    .locals 16

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    neg-long v0, v0

    :cond_0
    const-wide/16 v3, 0xa

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    const-wide/16 v3, 0x2

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    .line 60
    iget-char v0, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    iget-object v2, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    long-to-int v1, v0

    aget-char v0, v2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v3, 0x28

    new-array v4, v3, [C

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 75
    array-length v6, v5

    const/4 v7, -0x1

    const/4 v10, -0x1

    const/16 v11, 0x28

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_0
    add-int/2addr v6, v7

    const/16 v15, 0x27

    const/16 v3, 0x30

    const/16 v9, 0x2a

    if-ltz v6, :cond_b

    if-ne v10, v7, :cond_4

    if-eq v12, v7, :cond_3

    add-int/lit8 v11, v11, -0x1

    .line 78
    iget-object v13, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    aget-char v13, v13, v12

    aput-char v13, v4, v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v11, -0x1

    .line 84
    iget-object v7, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    add-int/lit8 v8, v10, 0x1

    aget-char v7, v7, v10

    aput-char v7, v4, v11

    const/4 v7, 0x3

    if-ne v8, v7, :cond_5

    add-int/lit8 v12, v12, 0x1

    const/4 v10, -0x1

    goto :goto_1

    :cond_5
    move v10, v8

    .line 90
    :goto_1
    aget-char v7, v5, v6

    sub-int/2addr v7, v3

    if-nez v7, :cond_a

    if-ge v11, v15, :cond_6

    if-eqz v10, :cond_6

    .line 93
    aput-char v9, v4, v11

    :cond_6
    if-nez v13, :cond_9

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v11, v11, -0x1

    .line 98
    iget-object v3, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v7, 0x0

    aget-char v3, v3, v7

    aput-char v3, v4, v11

    const/4 v3, 0x1

    if-ne v10, v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    move v14, v3

    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 v11, v11, -0x1

    .line 96
    aput-char v9, v4, v11

    goto :goto_4

    :cond_a
    add-int/lit8 v11, v11, -0x1

    .line 104
    iget-object v3, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v3, v3, v7

    aput-char v3, v4, v11

    const/4 v13, 0x0

    :goto_4
    const/16 v3, 0x28

    const/4 v7, -0x1

    goto :goto_0

    :cond_b
    const-wide/32 v5, 0xf4240

    cmp-long v7, v0, v5

    if-lez v7, :cond_15

    const/16 v5, 0x25

    const/4 v5, 0x1

    const/16 v6, 0x25

    .line 115
    :cond_c
    aget-char v7, v4, v6

    if-ne v7, v3, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v6, v6, -0x8

    xor-int/lit8 v5, v5, 0x1

    if-gt v6, v11, :cond_c

    :goto_5
    const/16 v3, 0x21

    .line 124
    :cond_e
    aget-char v6, v4, v3

    iget-object v7, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_f

    if-nez v5, :cond_f

    .line 125
    aput-char v9, v4, v3

    :cond_f
    add-int/lit8 v3, v3, -0x8

    xor-int/lit8 v5, v5, 0x1

    if-gt v3, v11, :cond_e

    const-wide/32 v5, 0x5f5e100

    cmp-long v3, v0, v5

    if-ltz v3, :cond_15

    const/16 v0, 0x20

    :cond_10
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v5, v0, -0x8

    .line 136
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_6
    if-le v1, v3, :cond_12

    .line 137
    aget-char v5, v4, v1

    if-eq v5, v9, :cond_11

    const/4 v1, 0x0

    goto :goto_7

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_14

    add-int/lit8 v1, v0, 0x1

    .line 143
    aget-char v3, v4, v1

    if-eq v3, v9, :cond_13

    aget-char v1, v4, v1

    iget-object v3, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v5, 0x0

    aget-char v3, v3, v5

    if-eq v1, v3, :cond_13

    .line 144
    iget-object v1, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v1, v1, v5

    aput-char v1, v4, v0

    goto :goto_8

    .line 146
    :cond_13
    aput-char v9, v4, v0

    :cond_14
    :goto_8
    add-int/lit8 v0, v0, -0x8

    if-gt v0, v11, :cond_10

    :cond_15
    move v1, v11

    :goto_9
    const/16 v0, 0x28

    if-ge v1, v0, :cond_1b

    .line 156
    aget-char v0, v4, v1

    iget-object v3, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v5, 0x2

    aget-char v3, v3, v5

    if-eq v0, v3, :cond_16

    goto :goto_a

    :cond_16
    if-ge v1, v15, :cond_17

    add-int/lit8 v0, v1, 0x1

    .line 157
    aget-char v0, v4, v0

    iget-object v3, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/4 v5, 0x0

    aget-char v3, v3, v5

    if-ne v0, v3, :cond_18

    goto :goto_a

    :cond_17
    const/4 v5, 0x0

    :cond_18
    if-le v1, v11, :cond_19

    add-int/lit8 v0, v1, -0x1

    .line 158
    aget-char v3, v4, v0

    iget-object v6, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    aget-char v6, v6, v5

    if-eq v3, v6, :cond_1a

    aget-char v3, v4, v0

    iget-object v6, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v6, v6, v5

    if-eq v3, v6, :cond_1a

    aget-char v0, v4, v0

    if-ne v0, v9, :cond_19

    goto :goto_a

    .line 160
    :cond_19
    iget-char v0, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    aput-char v0, v4, v1

    :cond_1a
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 164
    :cond_1b
    aget-char v0, v4, v11

    iget-object v1, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v3, 0x1

    aget-char v1, v1, v3

    if-ne v0, v1, :cond_1d

    iget-boolean v0, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    if-nez v0, :cond_1c

    add-int/lit8 v0, v11, 0x1

    aget-char v0, v4, v0

    iget-object v1, v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_1d

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    :cond_1d
    move v1, v11

    move v2, v1

    const/16 v0, 0x28

    :goto_b
    if-ge v1, v0, :cond_1f

    .line 171
    aget-char v3, v4, v1

    if-eq v3, v9, :cond_1e

    add-int/lit8 v3, v2, 0x1

    .line 172
    aget-char v5, v4, v1

    aput-char v5, v4, v2

    move v2, v3

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 175
    :cond_1f
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v2, v11

    invoke-direct {v0, v4, v11, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static final localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    const-string v0, "_"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, ""

    if-eq v1, v3, :cond_0

    add-int/lit8 v5, v1, 0x1

    .line 22
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 25
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 27
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 30
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
