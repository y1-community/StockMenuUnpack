.class Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;
.super Lcom/ibm/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_LE"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-16LE"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 8

    .line 101
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 104
    array-length v1, v0

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v1, -0x1

    const/16 v6, 0x64

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 106
    aget-byte v5, v0, v5

    aget-byte v7, v0, v4

    invoke-static {v5, v7}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->codeUnit16FromBytes(BB)I

    move-result v5

    if-nez v4, :cond_0

    const v7, 0xfeff

    if-ne v5, v7, :cond_0

    const/16 v3, 0x64

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {v5, v3}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->adjustConfidence(II)I

    move-result v3

    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3

    if-ge v3, v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-lez v2, :cond_4

    .line 120
    new-instance v0, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v0, p1, p0, v2}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
