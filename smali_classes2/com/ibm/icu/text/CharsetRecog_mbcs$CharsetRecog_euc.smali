.class abstract Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;
.super Lcom/ibm/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_euc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;,
        Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method nextChar(Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;Lcom/ibm/icu/text/CharsetDetector;)Z
    .locals 5

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 337
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 340
    iput-boolean v1, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    goto :goto_0

    :cond_0
    const/16 v2, 0x8d

    if-gt v0, v2, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v2

    .line 349
    iget v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v2

    iput v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    const/16 v3, 0xa1

    if-lt v0, v3, :cond_2

    const/16 v4, 0xfe

    if-gt v0, v4, :cond_2

    if-ge v2, v3, :cond_4

    .line 354
    iput-boolean v1, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_2
    const/16 v4, 0x8e

    if-ne v0, v4, :cond_3

    if-ge v2, v3, :cond_4

    .line 366
    iput-boolean v1, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_3
    const/16 v2, 0x8f

    if-ne v0, v2, :cond_4

    .line 374
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result p2

    .line 375
    iget v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, p2

    iput v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    if-ge p2, v3, :cond_4

    .line 377
    iput-boolean v1, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 382
    :cond_4
    :goto_0
    iget-boolean p1, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    xor-int/2addr p1, v1

    return p1
.end method
