.class public Lorg/mozilla/intl/chardet/nsEUCSampler;
.super Ljava/lang/Object;
.source "nsEUCSampler.java"


# instance fields
.field public mFirstByteCnt:[I

.field public mFirstByteFreq:[F

.field public mSecondByteCnt:[I

.field public mSecondByteFreq:[F

.field mState:I

.field mThreshold:I

.field mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    const/16 v1, 0xc8

    .line 29
    iput v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mThreshold:I

    .line 30
    iput v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    const/16 v0, 0x5e

    new-array v1, v0, [I

    .line 31
    iput-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    new-array v1, v0, [I

    .line 32
    iput-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    new-array v1, v0, [F

    .line 33
    iput-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteFreq:[F

    new-array v0, v0, [F

    .line 34
    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteFreq:[F

    .line 37
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    return-void
.end method


# virtual methods
.method CalFreq()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x5e

    if-lt v0, v1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteFreq:[F

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    aput v2, v1, v0

    .line 109
    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteFreq:[F

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method EnoughData()Z
    .locals 2

    .line 51
    iget v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    iget v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mThreshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method GetScore([FF[FF)F
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteFreq:[F

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result p1

    mul-float p2, p2, p1

    .line 117
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteFreq:[F

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result p1

    mul-float p4, p4, p1

    add-float/2addr p2, p4

    return p2
.end method

.method GetScore([F[F)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x5e

    if-lt v1, v2, :cond_0

    float-to-double p1, v0

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x42bc0000    # 94.0f

    div-float/2addr p1, p2

    return p1

    .line 125
    :cond_0
    aget v2, p1, v1

    aget v3, p2, v1

    sub-float/2addr v2, v3

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method GetSomeData()Z
    .locals 2

    .line 53
    iget v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Reset()V
    .locals 3

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    .line 42
    iput v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x5e

    if-lt v1, v2, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aput v0, v2, v1

    .line 47
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method Sample([BI)Z
    .locals 9

    .line 57
    iget v0, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, p2, :cond_a

    .line 66
    iget v4, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    if-ne v2, v4, :cond_1

    goto :goto_4

    :cond_1
    const/4 v5, 0x2

    const/16 v6, 0xa1

    const/16 v7, 0xff

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_9

    if-eq v4, v5, :cond_2

    .line 99
    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_3

    .line 84
    :cond_2
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    .line 86
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-eq v7, v4, :cond_4

    .line 87
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-le v6, v4, :cond_3

    goto :goto_1

    .line 90
    :cond_3
    iget v4, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    .line 91
    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget-byte v5, p1, v3

    and-int/2addr v5, v7

    sub-int/2addr v5, v6

    aget v6, v4, v5

    add-int/2addr v6, v2

    aput v6, v4, v5

    .line 92
    iput v1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_3

    .line 88
    :cond_4
    :goto_1
    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_3

    .line 95
    :cond_5
    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_3

    .line 70
    :cond_6
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_9

    .line 72
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-eq v7, v4, :cond_8

    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-le v6, v4, :cond_7

    goto :goto_2

    .line 75
    :cond_7
    iget v4, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mTotal:I

    .line 76
    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget-byte v8, p1, v3

    and-int/2addr v7, v8

    sub-int/2addr v7, v6

    aget v6, v4, v7

    add-int/2addr v6, v2

    aput v6, v4, v7

    .line 77
    iput v5, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    goto :goto_3

    .line 73
    :cond_8
    :goto_2
    iput v2, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_a
    :goto_4
    iget p1, p0, Lorg/mozilla/intl/chardet/nsEUCSampler;->mState:I

    if-eq v2, p1, :cond_b

    return v2

    :cond_b
    return v1
.end method
