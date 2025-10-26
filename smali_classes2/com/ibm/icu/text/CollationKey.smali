.class public final Lcom/ibm/icu/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollationKey$BoundMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/text/CollationKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MERGE_SEPERATOR_:I = 0x2


# instance fields
.field private m_hashCode_:I

.field private m_key_:[B

.field private m_length_:I

.field private m_source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/RawCollationKey;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/ibm/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    .line 181
    iget p1, p2, Lcom/ibm/icu/text/RawCollationKey;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    .line 182
    invoke-virtual {p2}, Lcom/ibm/icu/text/RawCollationKey;->releaseBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, -0x1

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BI)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/ibm/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    .line 164
    iput p3, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    return-void
.end method

.method private getLength()I
    .locals 3

    .line 615
    iget v0, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    if-ltz v0, :cond_0

    return v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 620
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_2
    :goto_1
    iput v0, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/CollationKey;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 263
    iget-object v3, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    if-ge v2, v3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v2, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Lcom/ibm/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationKey;->compareTo(Lcom/ibm/icu/text/CollationKey;)I

    move-result p1

    return p1
.end method

.method public equals(Lcom/ibm/icu/text/CollationKey;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 324
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v3, v2

    iget-object v5, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_2

    return v1

    .line 327
    :cond_2
    aget-byte v3, v3, v2

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 293
    instance-of v0, p1, Lcom/ibm/icu/text/CollationKey;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 297
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationKey;->equals(Lcom/ibm/icu/text/CollationKey;)Z

    move-result p1

    return p1
.end method

.method public getBound(II)Lcom/ibm/icu/text/CollationKey;
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez p2, :cond_2

    .line 428
    :goto_0
    iget-object v5, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    array-length v6, v5

    if-ge v3, v6, :cond_2

    aget-byte v6, v5, v3

    if-eqz v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    .line 429
    aget-byte v3, v5, v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_0

    .line 433
    array-length v3, v5

    if-eq v6, v3, :cond_0

    aget-byte v3, v5, v6

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v3, v6, -0x1

    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-gtz p2, :cond_6

    add-int p2, v3, p1

    add-int/2addr p2, v2

    .line 453
    new-array p2, p2, [B

    .line 454
    iget-object v4, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    invoke-static {v4, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_5

    const/4 v4, 0x2

    if-eq p1, v2, :cond_4

    if-ne p1, v4, :cond_3

    add-int/lit8 p1, v3, 0x1

    .line 465
    aput-byte v0, p2, v3

    add-int/lit8 v3, p1, 0x1

    .line 466
    aput-byte v0, p2, p1

    goto :goto_2

    .line 469
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal boundType argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 p1, v3, 0x1

    .line 461
    aput-byte v4, p2, v3

    move v3, p1

    .line 472
    :cond_5
    :goto_2
    aput-byte v1, p2, v3

    .line 473
    new-instance p1, Lcom/ibm/icu/text/CollationKey;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v3}, Lcom/ibm/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object p1

    .line 443
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source collation key has only "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " strength level. Call getBound() again  with noOfLevels < "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getSourceString()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/ibm/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 348
    iget v0, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    if-nez v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 350
    iput v1, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    goto :goto_1

    .line 353
    :cond_0
    array-length v0, v0

    shr-int/2addr v0, v1

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 356
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v2, v0

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v3

    if-eqz v4, :cond_1

    .line 357
    aget-byte v4, v2, v0

    shl-int/lit8 v4, v4, 0x8

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 360
    :cond_1
    aget-byte v3, v2, v0

    if-eqz v3, :cond_2

    .line 361
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x8

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    .line 366
    :cond_3
    :goto_1
    iget v0, p0, Lcom/ibm/icu/text/CollationKey;->m_hashCode_:I

    return v0
.end method

.method public merge(Lcom/ibm/icu/text/CollationKey;)Lcom/ibm/icu/text/CollationKey;
    .locals 10

    if-eqz p1, :cond_7

    .line 521
    invoke-direct {p1}, Lcom/ibm/icu/text/CollationKey;->getLength()I

    move-result v0

    if-eqz v0, :cond_7

    .line 528
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationKey;->getLength()I

    move-result v0

    invoke-direct {p1}, Lcom/ibm/icu/text/CollationKey;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 537
    :goto_0
    iget-object v6, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v7, v6, v3

    if-ltz v7, :cond_6

    aget-byte v7, v6, v3

    if-lt v7, v1, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 542
    aput-byte v1, v0, v4

    .line 545
    :goto_1
    iget-object v4, p1, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v7, v4, v5

    if-ltz v7, :cond_5

    aget-byte v7, v4, v5

    if-lt v7, v1, :cond_1

    goto :goto_3

    .line 552
    :cond_1
    iget-object v7, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    aget-byte v8, v7, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    aget-byte v8, v4, v5

    if-ne v8, v9, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v6, 0x1

    .line 557
    aput-byte v9, v0, v6

    goto :goto_0

    .line 568
    :cond_2
    iget v1, p0, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_3

    .line 569
    invoke-static {v7, v3, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v1

    goto :goto_2

    .line 572
    :cond_3
    iget p1, p1, Lcom/ibm/icu/text/CollationKey;->m_length_:I

    sub-int/2addr p1, v5

    if-lez p1, :cond_4

    .line 573
    invoke-static {v4, v5, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, p1

    .line 576
    :cond_4
    :goto_2
    aput-byte v2, v0, v6

    .line 579
    new-instance p1, Lcom/ibm/icu/text/CollationKey;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v6}, Lcom/ibm/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object p1

    :cond_5
    :goto_3
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v5, 0x1

    .line 547
    aget-byte v4, v4, v5

    aput-byte v4, v0, v6

    move v6, v7

    move v5, v8

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v3, 0x1

    .line 538
    aget-byte v3, v6, v3

    aput-byte v3, v0, v4

    move v4, v7

    move v3, v8

    goto :goto_0

    .line 522
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CollationKey argument can not be null or of 0 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public toByteArray()[B
    .locals 4

    .line 232
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationKey;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 233
    new-array v1, v0, [B

    .line 234
    iget-object v2, p0, Lcom/ibm/icu/text/CollationKey;->m_key_:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
