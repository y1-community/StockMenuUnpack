.class abstract Lcom/ibm/icu/text/CharsetRecog_2022;
.super Lcom/ibm/icu/text/CharsetRecognizer;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;,
        Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;,
        Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method match([BI[[B)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    .line 43
    aget-byte v5, p1, v1

    const/16 v6, 0x1b

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x0

    .line 45
    :goto_1
    array-length v6, p3

    if-ge v5, v6, :cond_3

    .line 46
    aget-object v6, p3, v5

    sub-int v8, p2, v1

    .line 48
    array-length v9, v6

    if-ge v8, v9, :cond_0

    goto :goto_3

    :cond_0
    const/4 v8, 0x1

    .line 52
    :goto_2
    array-length v9, v6

    if-ge v8, v9, :cond_2

    .line 53
    aget-byte v9, v6, v8

    add-int v10, v1, v8

    aget-byte v10, p1, v10

    if-eq v9, v10, :cond_1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 59
    array-length v5, v6

    sub-int/2addr v5, v7

    add-int/2addr v1, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 66
    :cond_4
    aget-byte v5, p1, v1

    const/16 v6, 0xe

    if-eq v5, v6, :cond_5

    aget-byte v5, p1, v1

    const/16 v6, 0xf

    if-ne v5, v6, :cond_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :cond_6
    :goto_4
    add-int/2addr v1, v7

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    return v0

    :cond_8
    mul-int/lit8 p1, v2, 0x64

    mul-int/lit8 p2, v3, 0x64

    sub-int/2addr p1, p2

    add-int/2addr v3, v2

    .line 82
    div-int/2addr p1, v3

    add-int/2addr v2, v4

    const/4 p2, 0x5

    if-ge v2, p2, :cond_9

    sub-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p1, p2

    :cond_9
    if-gez p1, :cond_a

    goto :goto_5

    :cond_a
    move v0, p1

    :goto_5
    return v0
.end method
