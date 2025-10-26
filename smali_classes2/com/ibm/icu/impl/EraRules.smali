.class public Lcom/ibm/icu/impl/EraRules;
.super Ljava/lang/Object;
.source "EraRules.java"


# static fields
.field private static final DAY_MASK:I = 0xff

.field private static final MAX_ENCODED_START_YEAR:I = 0x7fff

.field public static final MIN_ENCODED_START:I

.field private static final MIN_ENCODED_START_YEAR:I = -0x8000

.field private static final MONTH_MASK:I = 0xff00

.field private static final YEAR_MASK:I = -0x10000


# instance fields
.field private currentEra:I

.field private numEras:I

.field private startDates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, -0x8000

    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1, v1}, Lcom/ibm/icu/impl/EraRules;->encodeDate(III)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/EraRules;->MIN_ENCODED_START:I

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ibm/icu/impl/EraRules;->startDates:[I

    .line 34
    iput p2, p0, Lcom/ibm/icu/impl/EraRules;->numEras:I

    .line 35
    invoke-direct {p0}, Lcom/ibm/icu/impl/EraRules;->initCurrentEra()V

    return-void
.end method

.method private static compareEncodedDateWithYMD(IIII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, -0x8000

    if-ge p1, v3, :cond_3

    .line 294
    sget v3, Lcom/ibm/icu/impl/EraRules;->MIN_ENCODED_START:I

    if-ne p0, v3, :cond_2

    const/high16 p0, -0x80000000

    if-gt p1, p0, :cond_1

    if-gt p2, v2, :cond_1

    if-le p3, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    const/16 v3, 0x7fff

    if-le p1, v3, :cond_4

    return v1

    .line 305
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/ibm/icu/impl/EraRules;->encodeDate(III)I

    move-result p1

    if-ge p0, p1, :cond_5

    return v1

    :cond_5
    if-ne p0, p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method private static decodeDate(I[I)[I
    .locals 8

    .line 262
    sget v0, Lcom/ibm/icu/impl/EraRules;->MIN_ENCODED_START:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x80000000

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 p0, p0, 0xff

    move v7, v0

    move v0, p0

    move p0, v7

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p1, :cond_1

    .line 272
    array-length v6, p1

    if-lt v6, v5, :cond_1

    .line 273
    aput p0, p1, v4

    .line 274
    aput v2, p1, v1

    .line 275
    aput v0, p1, v3

    return-object p1

    :cond_1
    new-array p1, v5, [I

    aput p0, p1, v4

    aput v2, p1, v1

    aput v0, p1, v3

    return-object p1
.end method

.method private static encodeDate(III)I
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static getInstance(Lcom/ibm/icu/impl/CalType;Z)Lcom/ibm/icu/impl/EraRules;
    .locals 17

    const-string v0, " in era rule data for "

    .line 39
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    const-string v3, "supplementalData"

    invoke-static {v2, v3, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "calendarData"

    .line 41
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "eras"

    .line 43
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v2

    .line 47
    new-array v3, v2, [I

    .line 49
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v1

    const v5, 0x7fffffff

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 51
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    .line 52
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 55
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    if-ltz v8, :cond_c

    if-ge v8, v2, :cond_c

    .line 63
    aget v10, v3, v8

    invoke-static {v10}, Lcom/ibm/icu/impl/EraRules;->isSet(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 70
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 72
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v13

    .line 73
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "start"

    .line 74
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 75
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v13

    .line 76
    array-length v14, v13

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    aget v14, v13, v10

    aget v15, v13, v9

    const/16 v16, 0x2

    aget v4, v13, v16

    invoke-static {v14, v15, v4}, Lcom/ibm/icu/impl/EraRules;->isValidRuleStartDate(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    aget v4, v13, v10

    aget v14, v13, v9

    aget v13, v13, v16

    invoke-static {v4, v14, v13}, Lcom/ibm/icu/impl/EraRules;->encodeDate(III)I

    move-result v4

    aput v4, v3, v8

    goto :goto_1

    .line 77
    :cond_2
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid era rule date data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v4, "named"

    .line 82
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    invoke-virtual {v13}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v13, "false"

    .line 84
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    const-string v4, "end"

    .line 87
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    .line 91
    :cond_5
    aget v4, v3, v8

    invoke-static {v4}, Lcom/ibm/icu/impl/EraRules;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_a

    if-nez v8, :cond_9

    .line 105
    sget v4, Lcom/ibm/icu/impl/EraRules;->MIN_ENCODED_START:I

    aput v4, v3, v8

    :goto_2
    if-eqz v12, :cond_8

    if-ge v8, v5, :cond_7

    goto/16 :goto_0

    .line 114
    :cond_7
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-tentative era("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") must be placed before the first tentative era"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-ge v8, v5, :cond_0

    move v5, v8

    goto/16 :goto_0

    .line 101
    :cond_9
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Era data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has only end rule."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_a
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing era start/end rule date for key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_b
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dupulicated era rule for rule key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_c
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Era rule key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be in range [0, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v9

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :catch_0
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invald era rule key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const v0, 0x7fffffff

    if-ge v5, v0, :cond_e

    if-nez p1, :cond_e

    .line 125
    new-instance v0, Lcom/ibm/icu/impl/EraRules;

    invoke-direct {v0, v3, v5}, Lcom/ibm/icu/impl/EraRules;-><init>([II)V

    return-object v0

    .line 128
    :cond_e
    new-instance v0, Lcom/ibm/icu/impl/EraRules;

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/impl/EraRules;-><init>([II)V

    return-object v0
.end method

.method private initCurrentEra()V
    .locals 5

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x0

    .line 219
    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 220
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/2addr v3, v2

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-static {v1, v3, v0}, Lcom/ibm/icu/impl/EraRules;->encodeDate(III)I

    move-result v0

    .line 221
    iget v1, p0, Lcom/ibm/icu/impl/EraRules;->numEras:I

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_1

    .line 223
    iget-object v2, p0, Lcom/ibm/icu/impl/EraRules;->startDates:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 230
    :cond_1
    :goto_1
    iput v1, p0, Lcom/ibm/icu/impl/EraRules;->currentEra:I

    return-void
.end method

.method private static isSet(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidRuleStartDate(III)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, -0x8000

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    const/16 p0, 0xc

    if-gt p1, p0, :cond_0

    if-lt p2, v0, :cond_0

    const/16 p0, 0x1f

    if-gt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentEraIndex()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/ibm/icu/impl/EraRules;->currentEra:I

    return v0
.end method

.method public getEraIndex(III)I
    .locals 4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0xc

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_3

    const/16 v0, 0x1f

    if-gt p3, v0, :cond_3

    .line 180
    iget v0, p0, Lcom/ibm/icu/impl/EraRules;->numEras:I

    .line 185
    iget-object v1, p0, Lcom/ibm/icu/impl/EraRules;->startDates:[I

    invoke-virtual {p0}, Lcom/ibm/icu/impl/EraRules;->getCurrentEraIndex()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1, p1, p2, p3}, Lcom/ibm/icu/impl/EraRules;->compareEncodedDateWithYMD(IIII)I

    move-result v1

    if-gtz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/ibm/icu/impl/EraRules;->getCurrentEraIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    add-int v2, v1, v0

    .line 193
    div-int/lit8 v2, v2, 0x2

    .line 194
    iget-object v3, p0, Lcom/ibm/icu/impl/EraRules;->startDates:[I

    aget v3, v3, v2

    invoke-static {v3, p1, p2, p3}, Lcom/ibm/icu/impl/EraRules;->compareEncodedDateWithYMD(IIII)I

    move-result v3

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return v1

    .line 178
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal date - year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "month:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "day:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getNumberOfEras()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/ibm/icu/impl/EraRules;->numEras:I

    return v0
.end method

.method public getStartDate(I[I)[I
    .locals 1

    if-ltz p1, :cond_0

    .line 149
    iget v0, p0, Lcom/ibm/icu/impl/EraRules;->numEras:I

    if-ge p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/ibm/icu/impl/EraRules;->startDates:[I

    aget p1, v0, p1

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/EraRules;->decodeDate(I[I)[I

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eraIdx is out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStartYear(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 162
    iget v0, p0, Lcom/ibm/icu/impl/EraRules;->numEras:I

    if-ge p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ibm/icu/impl/EraRules;->startDates:[I

    aget p1, v0, p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/EraRules;->decodeDate(I[I)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 166
    aget p1, p1, v0

    return p1

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "eraIdx is out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
