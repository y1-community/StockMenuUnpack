.class final Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlgorithmName"
.end annotation


# static fields
.field static final TYPE_0_:I = 0x0

.field static final TYPE_1_:I = 0x1


# instance fields
.field private m_factor_:[C

.field private m_factorstring_:[B

.field private m_prefix_:Ljava/lang/String;

.field private m_rangeend_:I

.field private m_rangestart_:I

.field private m_type_:B

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;

.field private m_variant_:B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 866
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I
    .locals 0

    .line 585
    iget p0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    return p0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)I
    .locals 0

    .line 585
    iget p0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    return p0
.end method

.method private compareFactorString([IILjava/lang/String;I)Z
    .locals 6

    .line 918
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt p2, v0, :cond_3

    .line 928
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v3, v3, p2

    .line 929
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v5, p1, p2

    invoke-static {v4, v2, v5}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v2

    .line 931
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {p3, v4, p4, v2}, Lcom/ibm/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result p4

    if-gez p4, :cond_1

    return v1

    :cond_1
    if-eq p2, v0, :cond_2

    .line 938
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v5, p1, p2

    sub-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 942
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p4, p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method private getFactorString([II)Ljava/lang/String;
    .locals 6

    .line 879
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v0, v0

    if-eqz p1, :cond_3

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 884
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter p2

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v2, v0, :cond_2

    .line 890
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v3, v3, v2

    .line 891
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v5, p1, v2

    invoke-static {v4, v1, v5}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v1

    .line 893
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {v4, v5, v1}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v1

    if-eq v2, v0, :cond_1

    .line 897
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v5, p1, v2

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v1, v3}, Lcom/ibm/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 903
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method add([II)I
    .locals 9

    .line 802
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/UCharacterName;->access$200([ILjava/lang/String;)I

    move-result v0

    .line 803
    iget-byte v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 817
    :cond_0
    iget-byte v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_4

    .line 821
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lez v2, :cond_2

    .line 822
    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v6

    .line 823
    :try_start_0
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 824
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    .line 825
    invoke-static {v7, v8, v5}, Lcom/ibm/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v5

    .line 828
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-static {p1, v7}, Lcom/ibm/icu/impl/UCharacterName;->access$300([ILjava/lang/StringBuffer;)I

    .line 829
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 832
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    .line 833
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 835
    :cond_1
    monitor-exit v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    add-int/2addr v0, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 807
    :cond_3
    iget-byte p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/2addr v0, p1

    :cond_4
    :goto_2
    if-le v0, p2, :cond_5

    return v0

    :cond_5
    return p2
.end method

.method appendName(ILjava/lang/StringBuffer;)V
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    iget-byte v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 698
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int/2addr p1, v0

    .line 699
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    .line 705
    monitor-enter v0

    .line 706
    :try_start_0
    iget-byte v2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    sub-int/2addr v2, v1

    :goto_0
    if-lez v2, :cond_1

    .line 708
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 709
    rem-int v3, p1, v1

    aput v3, v0, v2

    .line 710
    div-int/2addr p1, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 716
    aput p1, v0, v1

    .line 719
    iget-byte p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->getFactorString([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    int-to-long v0, p1

    .line 694
    iget-byte p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-static {v0, v1, p1}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    return-void
.end method

.method contains(I)Z
    .locals 1

    .line 677
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getChar(Ljava/lang/String;)I
    .locals 10

    .line 731
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 732
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v1, v0, :cond_5

    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    const/4 v3, 0x0

    .line 733
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 737
    :cond_0
    iget-byte v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    goto :goto_2

    .line 757
    :cond_1
    iget v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    :goto_0
    iget v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt v1, v5, :cond_5

    .line 759
    iget v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v5, v1, v5

    .line 760
    iget-object v6, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    .line 766
    monitor-enter v6

    .line 767
    :try_start_0
    iget-byte v7, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    sub-int/2addr v7, v4

    :goto_1
    if-lez v7, :cond_2

    .line 769
    iget-object v8, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    .line 770
    rem-int v9, v5, v8

    aput v9, v6, v7

    .line 771
    div-int/2addr v5, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 777
    :cond_2
    aput v5, v6, v3

    .line 780
    iget-byte v5, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v6, v5, p1, v0}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->compareFactorString([IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 782
    monitor-exit v6

    return v1

    .line 784
    :cond_3
    monitor-exit v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 742
    :cond_4
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 745
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v0, p1, :cond_5

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-gt p1, v0, :cond_5

    return p1

    :catch_0
    :cond_5
    :goto_2
    return v2
.end method

.method setFactor([C)Z
    .locals 2

    .line 637
    array-length v0, p1

    iget-byte v1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    if-ne v0, v1, :cond_0

    .line 638
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setFactorString([B)Z
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    const/4 p1, 0x1

    return p1
.end method

.method setInfo(IIBB)Z
    .locals 1

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    const v0, 0x10ffff

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-ne p3, v0, :cond_1

    .line 621
    :cond_0
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    .line 622
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    .line 623
    iput-byte p3, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    .line 624
    iput-byte p4, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method setPrefix(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 652
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
