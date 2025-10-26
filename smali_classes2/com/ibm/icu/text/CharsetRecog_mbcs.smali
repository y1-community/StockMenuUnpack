.class abstract Lcom/ibm/icu/text/CharsetRecog_mbcs;
.super Lcom/ibm/icu/text/CharsetRecognizer;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;,
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;,
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;,
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;,
        Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;[I)I
    .locals 11

    .line 56
    new-instance v0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;

    invoke-direct {v0}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;-><init>()V

    .line 59
    invoke-virtual {v0}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->reset()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/text/CharsetRecog_mbcs;->nextChar(Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;Lcom/ibm/icu/text/CharsetDetector;)Z

    move-result v6

    const/16 v7, 0x64

    const/16 v8, 0xa

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 61
    iget-boolean v6, v0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget v6, v0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide/16 v8, 0xff

    cmp-long v10, v6, v8

    if-gtz v10, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-eqz p2, :cond_3

    long-to-int v7, v6

    .line 72
    invoke-static {p2, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ltz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_0
    const/4 v6, 0x2

    if-lt v4, v6, :cond_0

    mul-int/lit8 v6, v4, 0x5

    if-lt v6, v2, :cond_0

    goto :goto_1

    :cond_4
    if-gt v2, v8, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_5

    if-ge v3, v8, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xa

    goto :goto_1

    :cond_6
    mul-int/lit8 v4, v4, 0x14

    if-ge v2, v4, :cond_7

    goto :goto_1

    :cond_7
    if-nez p2, :cond_8

    add-int/lit8 v2, v2, 0x1e

    sub-int v1, v2, v4

    if-le v1, v7, :cond_9

    const/16 v1, 0x64

    goto :goto_1

    :cond_8
    int-to-float p1, v2

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 122
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide v0, 0x4056800000000000L    # 90.0

    div-double/2addr v0, p1

    add-int/lit8 v5, v5, 0x1

    int-to-double p1, v5

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 125
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_9
    :goto_1
    return v1
.end method

.method abstract nextChar(Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;Lcom/ibm/icu/text/CharsetDetector;)Z
.end method
