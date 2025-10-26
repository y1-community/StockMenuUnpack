.class public final Lcom/ibm/icu/impl/UCharacterName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
    }
.end annotation


# static fields
.field static final EXTENDED_CATEGORY_:I = 0x21

.field private static final FILE_NAME_:Ljava/lang/String; = "unames.icu"

.field private static final GROUP_MASK_:I = 0x1f

.field private static final GROUP_SHIFT_:I = 0x5

.field public static final INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

.field private static final LEAD_SURROGATE_:I = 0x1f

.field public static final LINES_PER_GROUP_:I = 0x20

.field private static final NON_CHARACTER_:I = 0x1e

.field private static final OFFSET_HIGH_OFFSET_:I = 0x1

.field private static final OFFSET_LOW_OFFSET_:I = 0x2

.field private static final SINGLE_NIBBLE_MAX_:I = 0xb

.field private static final TRAIL_SURROGATE_:I = 0x20

.field private static final TYPE_NAMES_:[Ljava/lang/String;

.field private static final UNKNOWN_TYPE_NAME_:Ljava/lang/String; = "unknown"


# instance fields
.field private m_ISOCommentSet_:[I

.field private m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

.field public m_groupcount_:I

.field private m_groupinfo_:[C

.field private m_grouplengths_:[C

.field private m_groupoffsets_:[C

.field m_groupsize_:I

.field private m_groupstring_:[B

.field private m_maxISOCommentLength_:I

.field private m_maxNameLength_:I

.field private m_nameSet_:[I

.field private m_tokenstring_:[B

.field private m_tokentable_:[C

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCharacterName;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCharacterName;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unassigned"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uppercase letter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lowercase letter"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "titlecase letter"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "modifier letter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "other letter"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "non spacing mark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enclosing mark"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "combining spacing mark"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "decimal digit number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "letter number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "other number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "space separator"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "line separator"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "paragraph separator"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "control"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "format"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "private use area"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "surrogate"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dash punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "start punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "end punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "connector punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "other punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "math symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "currency symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "modifier symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "other symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "initial punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "final punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "noncharacter"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "lead surrogate"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "trail surrogate"

    aput-object v2, v0, v1

    .line 1105
    sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    return-void

    .line 52
    :catch_0
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "Could not construct UCharacterName. Missing unames.icu"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    .line 954
    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    const/16 v0, 0x21

    new-array v1, v0, [C

    .line 1036
    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    new-array v0, v0, [C

    .line 1037
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1080
    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    new-array v0, v0, [I

    .line 1085
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    .line 1089
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1093
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    const-string v0, "unames.icu"

    .line 1171
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1172
    new-instance v1, Lcom/ibm/icu/impl/UCharacterNameReader;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/UCharacterNameReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1173
    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/UCharacterNameReader;->read(Lcom/ibm/icu/impl/UCharacterName;)V

    return-void
.end method

.method static synthetic access$200([ILjava/lang/String;)I
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300([ILjava/lang/StringBuffer;)I
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    move-result p0

    return p0
.end method

.method private static add([ILjava/lang/String;)I
    .locals 3

    .line 1425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1428
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static add([ILjava/lang/StringBuffer;)I
    .locals 3

    .line 1441
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1444
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static add([IC)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x5

    .line 1402
    aget v1, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method private addAlgorithmName(I)I
    .locals 3

    .line 1459
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1460
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-virtual {v1, v2, p1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->add([II)I

    move-result v1

    if-le v1, p1, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private addExtendedName(I)I
    .locals 3

    .line 1476
    sget-object v0, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1482
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    sget-object v2, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    if-le v1, p1, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private addGroupName(I)V
    .locals 13

    const/16 v0, 0x22

    new-array v1, v0, [C

    new-array v0, v0, [C

    .line 1564
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v2, v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1568
    :goto_0
    iget v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge v4, v6, :cond_7

    .line 1569
    invoke-virtual {p0, v4, v1, v0}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x20

    if-ge v7, v8, :cond_6

    .line 1575
    aget-char v8, v1, v7

    add-int/2addr v8, v6

    .line 1576
    aget-char v9, v0, v7

    if-nez v9, :cond_0

    goto :goto_2

    .line 1582
    :cond_0
    iget-object v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v8, v9, v2, v10}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v10

    .line 1584
    aget v11, v10, v3

    if-le v11, p1, :cond_1

    .line 1586
    aget p1, v10, v3

    :cond_1
    const/4 v11, 0x1

    .line 1588
    aget v12, v10, v11

    add-int/2addr v8, v12

    .line 1589
    aget v12, v10, v11

    if-lt v12, v9, :cond_2

    goto :goto_2

    .line 1593
    :cond_2
    aget v10, v10, v11

    sub-int/2addr v9, v10

    .line 1595
    iget-object v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v8, v9, v2, v10}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v10

    .line 1597
    aget v12, v10, v3

    if-le v12, p1, :cond_3

    .line 1599
    aget p1, v10, v3

    .line 1601
    :cond_3
    aget v12, v10, v11

    add-int/2addr v8, v12

    .line 1602
    aget v12, v10, v11

    if-lt v12, v9, :cond_4

    goto :goto_2

    .line 1606
    :cond_4
    aget v10, v10, v11

    sub-int/2addr v9, v10

    .line 1608
    iget-object v10, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v8, v9, v2, v10}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v8

    .line 1610
    aget v8, v8, v11

    if-le v8, v5, :cond_5

    move v5, v9

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1617
    :cond_7
    iput v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    .line 1618
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I

    return-void
.end method

.method private addGroupName(II[B[I)[I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_5

    .line 1506
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v4, p1, v1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_0

    goto :goto_3

    .line 1512
    :cond_0
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v6, v5

    if-lt v4, v6, :cond_1

    .line 1513
    invoke-static {p4, v4}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v6, v4, 0xff

    .line 1517
    aget-char v6, v5, v6

    const v7, 0xfffe

    if-ne v6, v7, :cond_2

    shl-int/lit8 v4, v4, 0x8

    add-int v6, p1, v1

    .line 1520
    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-char v4, v3

    .line 1522
    aget-char v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const v3, 0xffff

    if-ne v6, v3, :cond_3

    .line 1526
    invoke-static {p4, v4}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V

    goto :goto_1

    .line 1532
    :cond_3
    aget-byte v3, p3, v4

    if-nez v3, :cond_4

    .line 1534
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v5

    .line 1535
    :try_start_0
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1536
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v3, v7, v6}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    .line 1539
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-static {p4, v3}, Lcom/ibm/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    move-result v3

    int-to-byte v3, v3

    .line 1540
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    aput-byte v3, p3, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1540
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_2
    add-int/2addr v2, v3

    goto :goto_0

    .line 1547
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    aput v2, p1, v0

    const/4 p2, 0x1

    .line 1548
    aput v1, p1, p2

    return-object p1
.end method

.method private static contains([IC)Z
    .locals 1

    ushr-int/lit8 v0, p1, 0x5

    .line 1414
    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private convert([ILcom/ibm/icu/text/UnicodeSet;)V
    .locals 2

    .line 1655
    invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->clear()Lcom/ibm/icu/text/UnicodeSet;

    .line 1656
    invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xff

    :goto_0
    if-lez v0, :cond_2

    .line 1662
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/UCharacterName;->contains([IC)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1663
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAlgName(II)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1191
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter p2

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1194
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1196
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    .line 1198
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1201
    :cond_2
    monitor-exit p2

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static getCodepointMSB(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private static getExtendedChar(Ljava/lang/String;I)I
    .locals 6

    const/4 v0, 0x0

    .line 1346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne p1, v1, :cond_3

    .line 1348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 1349
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    const/16 v3, 0x2d

    .line 1350
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    add-int/2addr v3, v1

    sub-int v4, p1, v3

    if-lt v4, v1, :cond_3

    const/16 v5, 0x8

    if-ge v5, v4, :cond_0

    goto :goto_1

    .line 1362
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x10

    .line 1361
    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_3

    const v4, 0x10ffff

    if-ge v4, p1, :cond_1

    goto :goto_1

    .line 1373
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I

    move-result v4

    sub-int/2addr v3, v1

    .line 1374
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1375
    sget-object v1, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1377
    sget-object v3, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    if-ne v4, v0, :cond_3

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 p0, -0x2

    return p0
.end method

.method private getGroupChar(I[CLjava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 1247
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v5, p1

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x20

    const/4 v8, -0x1

    if-gt v6, v7, :cond_b

    .line 1253
    aget-char v7, p2, v6

    const/16 v9, 0x3b

    if-eqz v2, :cond_2

    const/4 v10, 0x2

    if-eq v2, v10, :cond_2

    const/4 v11, 0x4

    if-ne v2, v11, :cond_0

    goto :goto_1

    :cond_0
    move v10, v2

    .line 1265
    :cond_1
    :goto_1
    iget-object v11, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    invoke-static {v11, v5, v7, v9}, Lcom/ibm/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v11

    add-int/2addr v11, v5

    sub-int v5, v11, v5

    sub-int/2addr v7, v5

    add-int/2addr v10, v8

    move v5, v11

    if-gtz v10, :cond_1

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v7, :cond_8

    if-eq v11, v8, :cond_8

    if-ge v11, v3, :cond_8

    .line 1275
    iget-object v12, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v13, v5, v10

    aget-byte v13, v12, v13

    add-int/lit8 v10, v10, 0x1

    .line 1278
    iget-object v14, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v15, v14

    if-lt v13, v15, :cond_4

    add-int/lit8 v12, v11, 0x1

    .line 1279
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit16 v13, v13, 0xff

    if-eq v11, v13, :cond_3

    :goto_3
    const/4 v11, -0x1

    goto :goto_2

    :cond_3
    move v11, v12

    goto :goto_2

    :cond_4
    and-int/lit16 v15, v13, 0xff

    .line 1284
    aget-char v4, v14, v15

    const v8, 0xfffe

    if-ne v4, v8, :cond_5

    shl-int/lit8 v4, v13, 0x8

    add-int v8, v5, v10

    .line 1287
    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    aget-char v4, v14, v4

    add-int/lit8 v10, v10, 0x1

    :cond_5
    const v8, 0xffff

    if-ne v4, v8, :cond_7

    add-int/lit8 v12, v11, 0x1

    .line 1292
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v15, :cond_6

    const/4 v8, -0x1

    goto :goto_3

    :cond_6
    move v11, v12

    goto :goto_4

    .line 1298
    :cond_7
    iget-object v8, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v1, v8, v11, v4}, Lcom/ibm/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v11

    :goto_4
    const/4 v8, -0x1

    goto :goto_2

    :cond_8
    if-ne v3, v11, :cond_a

    if-eq v10, v7, :cond_9

    .line 1304
    iget-object v4, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int/2addr v10, v5

    aget-byte v4, v4, v10

    if-ne v4, v9, :cond_a

    :cond_9
    return v6

    :cond_a
    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v4, -0x1

    return v4
.end method

.method private declared-synchronized getGroupChar(Ljava/lang/String;I)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1214
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v0, v1, v3}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v1

    .line 1221
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-direct {p0, v1, v3, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1224
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int v0, v0, p2

    aget-char p1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v1

    monitor-exit p0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1228
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static getGroupLimit(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static getGroupMin(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public static getGroupMinFromCodepoint(I)I
    .locals 0

    and-int/lit8 p0, p0, -0x20

    return p0
.end method

.method public static getGroupOffset(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static getType(I)I
    .locals 2

    .line 1321
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x1e

    return p0

    .line 1325
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const v0, 0xdbff

    if-gt p0, v0, :cond_1

    const/16 v0, 0x1f

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    :cond_2
    :goto_0
    return v0
.end method

.method private initNameSetsLengths()Z
    .locals 4

    .line 1627
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x12

    :goto_0
    if-ltz v0, :cond_1

    .line 1635
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    const-string v3, "0123456789ABCDEF<>-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1639
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UCharacterName;->addAlgorithmName(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I

    .line 1641
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UCharacterName;->addExtendedName(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I

    .line 1643
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UCharacterName;->addGroupName(I)V

    return v1
.end method


# virtual methods
.method public getAlgorithmEnd(I)I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->access$100(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I

    move-result p1

    return p1
.end method

.method public getAlgorithmLength()I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    return v0
.end method

.method public getAlgorithmName(II)Ljava/lang/String;
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 495
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2, v1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    .line 496
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 497
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAlgorithmStart(I)I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->access$000(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I

    move-result p1

    return p1
.end method

.method public getCharFromName(ILjava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_8

    if-eqz p2, :cond_8

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 120
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v0, :cond_1

    return v1

    .line 125
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_5

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    if-eqz v3, :cond_3

    .line 134
    array-length v3, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_5

    .line 137
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    return v4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 145
    invoke-direct {p0, p2, v2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x3

    .line 148
    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 153
    :cond_6
    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    :cond_7
    :goto_2
    return p1

    :cond_8
    :goto_3
    return v0
.end method

.method public getCharNameCharacters(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/UCharacterName;->convert([ILcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getExtendedName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtendedOr10Name(I)Ljava/lang/String;
    .locals 4

    .line 362
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I

    move-result v0

    .line 365
    sget-object v1, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    .line 369
    :cond_0
    aget-object v0, v1, v0

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 373
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    :goto_1
    if-lez v0, :cond_1

    .line 379
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getGroup(I)I
    .locals 4

    .line 333
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    .line 334
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 341
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getGroupLengths(I[C[C)I
    .locals 9

    .line 182
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int p1, p1, v0

    .line 183
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v1, v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-char p1, v0, p1

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/UCharacterUtility;->toInt(CC)I

    move-result p1

    const/4 v0, 0x0

    .line 187
    aput-char v0, p2, v0

    const v1, 0xffff

    const v2, 0xffff

    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_4

    .line 192
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    aget-byte v4, v4, p1

    const/4 v5, 0x4

    const/4 v6, 0x4

    :goto_1
    if-ltz v6, :cond_3

    shr-int v7, v4, v6

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    if-ne v2, v1, :cond_0

    const/16 v8, 0xb

    if-le v7, v8, :cond_0

    add-int/lit8 v7, v7, -0xc

    shl-int/lit8 v2, v7, 0x4

    int-to-char v2, v2

    goto :goto_3

    :cond_0
    if-eq v2, v1, :cond_1

    or-int/2addr v2, v7

    add-int/lit8 v2, v2, 0xc

    int-to-char v2, v2

    .line 203
    aput-char v2, p3, v0

    goto :goto_2

    :cond_1
    int-to-char v2, v7

    .line 206
    aput-char v2, p3, v0

    :goto_2
    if-ge v0, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 210
    aget-char v7, p2, v0

    aget-char v8, p3, v0

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p2, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const v2, 0xffff

    :goto_3
    add-int/lit8 v6, v6, -0x4

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return p1
.end method

.method public getGroupMSB(I)I
    .locals 2

    .line 397
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int p1, p1, v1

    aget-char p1, v0, p1

    return p1
.end method

.method public declared-synchronized getGroupName(II)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 509
    :try_start_0
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v0

    .line 510
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroup(I)I

    move-result v1

    .line 513
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int v3, v3, v1

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_0

    .line 514
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v1, v0, v2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v0

    and-int/lit8 p1, p1, 0x1f

    .line 517
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    aget-char v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    aget-char p1, v1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 521
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getGroupName(III)Ljava/lang/String;
    .locals 11

    const v0, 0xffff

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x3b

    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_4

    .line 242
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-char v4, v4, v3

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    move v4, p3

    .line 250
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    invoke-static {v5, p1, p2, v3}, Lcom/ibm/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v5

    add-int/2addr v5, p1

    sub-int p1, v5, p1

    sub-int/2addr p2, p1

    add-int/lit8 v4, v4, -0x1

    move p1, v5

    if-gtz v4, :cond_3

    .line 263
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v4

    .line 264
    :try_start_0
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_3
    if-ge v1, p2, :cond_a

    .line 268
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v6, p1, v1

    aget-byte v6, v5, v6

    add-int/lit8 v1, v1, 0x1

    .line 271
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v8, v7

    if-lt v6, v8, :cond_6

    if-ne v6, v3, :cond_5

    goto :goto_4

    .line 275
    :cond_5
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    and-int/lit16 v8, v6, 0xff

    .line 278
    aget-char v9, v7, v8

    const v10, 0xfffe

    if-ne v9, v10, :cond_7

    shl-int/lit8 v9, v6, 0x8

    add-int v10, p1, v1

    .line 281
    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v9

    aget-char v9, v7, v5

    add-int/lit8 v1, v1, 0x1

    :cond_7
    if-ne v9, v0, :cond_9

    if-ne v6, v3, :cond_8

    .line 290
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_a

    if-ne p3, v2, :cond_a

    goto :goto_3

    .line 297
    :cond_8
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    int-to-char v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 300
    :cond_9
    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v5, v6, v9}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    goto :goto_3

    .line 306
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 307
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v4

    return-object p1

    .line 309
    :cond_b
    monitor-exit v4

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public getISOCommentCharacters(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/UCharacterName;->convert([ILcom/ibm/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getMaxCharNameLength()I
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxNameLength_:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxISOCommentLength()I
    .locals 1

    .line 549
    invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getName(II)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_4

    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    const/4 v0, 0x4

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getAlgName(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 95
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupName(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method setAlgorithm([Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 982
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 983
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setGroup([C[B)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1013
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1015
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    .line 1016
    iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setGroupCountSize(II)Z
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    .line 1001
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method setToken([C[B)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 966
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 968
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    .line 969
    iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
