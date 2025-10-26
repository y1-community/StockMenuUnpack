.class public abstract Lorg/mozilla/intl/chardet/nsPSMDetector;
.super Ljava/lang/Object;
.source "nsPSMDetector.java"


# static fields
.field public static final ALL:I = 0x0

.field public static final CHINESE:I = 0x2

.field public static final JAPANESE:I = 0x1

.field public static final KOREAN:I = 0x5

.field public static final MAX_VERIFIERS:I = 0x10

.field public static final NO_OF_LANGUAGES:I = 0x6

.field public static final SIMPLIFIED_CHINESE:I = 0x3

.field public static final TRADITIONAL_CHINESE:I = 0x4


# instance fields
.field mClassItems:I

.field mClassRunSampler:Z

.field mDone:Z

.field mItemIdx:[I

.field mItems:I

.field mRunSampler:Z

.field mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

.field mState:[B

.field mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

.field mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 49
    iput-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    new-array v0, v0, [I

    .line 51
    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 65
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 49
    iput-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    new-array v0, v0, [I

    .line 51
    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    .line 69
    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 70
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    return-void
.end method

.method public constructor <init>(I[Lorg/mozilla/intl/chardet/nsVerifier;[Lorg/mozilla/intl/chardet/nsEUCStatistics;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 49
    iput-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    new-array v0, v0, [I

    .line 51
    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 75
    iput-object p3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 76
    iput-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 78
    iput p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    .line 79
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    return-void
.end method


# virtual methods
.method public DataEnd()V
    .locals 5

    .line 261
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 265
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 267
    iput-boolean v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v4, v4, v3

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 271
    iput-boolean v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 275
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0, v2, v3}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    :cond_3
    return-void
.end method

.method public HandleData([BI)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_1

    .line 253
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BI)V

    .line 256
    :cond_0
    iget-boolean p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    return p1

    .line 189
    :cond_1
    aget-byte v2, p1, v1

    const/4 v3, 0x0

    .line 191
    :cond_2
    :goto_1
    iget v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    const/4 v5, 0x1

    if-lt v3, v4, :cond_8

    if-gt v4, v5, :cond_4

    if-ne v5, v4, :cond_3

    .line 226
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget p2, p2, v0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 228
    :cond_3
    iput-boolean v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    return v5

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 237
    :goto_2
    iget v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v2, v6, :cond_6

    if-ne v5, v3, :cond_5

    .line 245
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget p2, p2, v4

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 246
    iput-boolean v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    return v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_6
    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v3, v3, 0x1

    move v4, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 192
    :cond_8
    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v3

    aget-object v4, v4, v6

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aget-byte v6, v6, v3

    invoke-static {v4, v2, v6}, Lorg/mozilla/intl/chardet/nsVerifier;->getNextState(Lorg/mozilla/intl/chardet/nsVerifier;BB)B

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    .line 201
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget p2, p2, v3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 202
    iput-boolean v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    return v5

    :cond_9
    if-ne v4, v5, :cond_a

    .line 209
    iget v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v3, v4, :cond_2

    .line 211
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v5, v4

    aput v6, v5, v3

    .line 212
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aget-byte v4, v5, v4

    aput-byte v4, v5, v3

    goto/16 :goto_1

    .line 218
    :cond_a
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    add-int/lit8 v6, v3, 0x1

    aput-byte v4, v5, v3

    move v3, v6

    goto/16 :goto_1
.end method

.method public abstract Report(Ljava/lang/String;)V
.end method

.method public Reset()V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    .line 85
    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    iput v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    const/4 v1, 0x0

    .line 87
    :goto_0
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v1, v2, :cond_0

    .line 92
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aput-byte v0, v2, v1

    .line 89
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public Sample([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    return-void
.end method

.method public Sample([BIZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 288
    :goto_0
    iget v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v1, v4, :cond_8

    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 295
    :goto_1
    iput-boolean v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v4, :cond_7

    .line 298
    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v4, p1, p2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Sample([BI)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz p3, :cond_1

    .line 299
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetSomeData()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsEUCSampler;->EnoughData()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_2
    if-ne v2, v3, :cond_7

    .line 300
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsEUCSampler;->CalFreq()V

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 305
    :goto_2
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v0, v2, :cond_3

    if-ltz p1, :cond_7

    .line 318
    iget-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object p3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget p1, p3, p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    .line 319
    iput-boolean v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_3

    .line 306
    :cond_3
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v4, v3, v0

    aget-object v2, v2, v4

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Big5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 307
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    iget-object v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteFreq()[F

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteWeight()F

    move-result v4

    .line 308
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteFreq()[F

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v7, v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteWeight()F

    move-result v6

    .line 307
    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([FF[FF)F

    move-result v2

    add-int/lit8 v3, p3, 0x1

    if-eqz p3, :cond_4

    cmpl-float p3, p2, v2

    if-lez p3, :cond_5

    :cond_4
    move p1, v0

    move p2, v2

    :cond_5
    move p3, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void

    .line 289
    :cond_8
    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v5, v1

    aget-object v4, v4, v6

    if-eqz v4, :cond_9

    add-int/lit8 v2, v2, 0x1

    .line 291
    :cond_9
    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GB18030"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public getProbableCharsets()[Ljava/lang/String;
    .locals 4

    .line 327
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "nomatch"

    aput-object v2, v0, v1

    return-object v0

    .line 333
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 334
    :goto_0
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-lt v1, v2, :cond_1

    return-object v0

    .line 335
    :cond_1
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initVerifiers(I)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 107
    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    .line 108
    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne p1, v5, :cond_1

    new-array p1, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 113
    new-instance v8, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v8}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v8, p1, v0

    new-instance v8, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v8}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v8, p1, v7

    new-instance v8, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v8}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v8, p1, v4

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, p1, v6

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, p1, v5

    .line 114
    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, p1, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v3, p1, v1

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    new-array p1, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 118
    new-instance v1, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v1, p1, v7

    new-instance v1, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v1, p1, v6

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    new-array p1, v1, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 126
    new-instance v1, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v1, p1, v0

    new-instance v1, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v1, p1, v7

    new-instance v1, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v1, p1, v4

    new-instance v1, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v1, p1, v6

    new-instance v1, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v1, p1, v5

    .line 127
    new-instance v1, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v1, p1, v3

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    :cond_2
    const/16 v8, 0x8

    if-ne p1, v6, :cond_3

    new-array p1, v8, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 135
    new-instance v8, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v8}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v8, p1, v0

    new-instance v8, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v8}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v8, p1, v7

    new-instance v8, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v8}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v8, p1, v4

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, p1, v6

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, p1, v5

    .line 136
    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, p1, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v3, p1, v1

    new-instance v1, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v1, p1, v2

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    :cond_3
    if-ne p1, v7, :cond_4

    new-array p1, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 144
    new-instance v2, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v2, p1, v0

    new-instance v2, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v2, p1, v7

    new-instance v2, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v2, p1, v4

    new-instance v2, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v2, p1, v6

    new-instance v2, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v2, p1, v5

    .line 145
    new-instance v2, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v2, p1, v3

    new-instance v2, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v2, p1, v1

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    :cond_4
    const/16 v9, 0x9

    const/16 v10, 0xa

    if-ne p1, v4, :cond_5

    new-array p1, v10, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 152
    new-instance v11, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v11}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v11, p1, v0

    new-instance v11, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v11}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v11, p1, v7

    new-instance v11, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v11}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v11, p1, v4

    new-instance v4, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v4, p1, v6

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, p1, v5

    .line 153
    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, p1, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v3, p1, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v3, p1, v2

    new-instance v2, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v2, p1, v8

    new-instance v2, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v2, p1, v9

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    new-array p1, v10, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 157
    new-instance v2, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v2, p1, v7

    new-instance v2, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v2, p1, v6

    new-instance v2, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v2}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v2, p1, v1

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1

    :cond_5
    if-nez p1, :cond_6

    const/16 p1, 0xf

    new-array v11, p1, [Lorg/mozilla/intl/chardet/nsVerifier;

    .line 165
    new-instance v12, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v12}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v12, v11, v0

    new-instance v12, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v12}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v12, v11, v7

    new-instance v12, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v12}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v12, v11, v4

    new-instance v12, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v12}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v12, v11, v6

    new-instance v6, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v6}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v6, v11, v5

    .line 166
    new-instance v6, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v6}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v6, v11, v3

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v11, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v3, v11, v2

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v11, v8

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v11, v9

    .line 167
    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v11, v10

    const/16 v3, 0xb

    new-instance v6, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v6}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v6, v11, v3

    const/16 v3, 0xc

    new-instance v6, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v6}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v6, v11, v3

    const/16 v3, 0xd

    new-instance v6, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v6}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v6, v11, v3

    const/16 v3, 0xe

    new-instance v6, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v6}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v6, v11, v3

    iput-object v11, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    new-array p1, p1, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 171
    new-instance v3, Lorg/mozilla/intl/chardet/EUCJPStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCJPStatistics;-><init>()V

    aput-object v3, p1, v4

    new-instance v3, Lorg/mozilla/intl/chardet/EUCKRStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCKRStatistics;-><init>()V

    aput-object v3, p1, v5

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, p1, v1

    new-instance v1, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v1, p1, v2

    .line 172
    new-instance v1, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v1}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v1, p1, v8

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    .line 176
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 177
    iget-object p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    array-length p1, p1

    iput p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    return-void
.end method
