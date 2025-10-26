.class Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;
.super Lcom/ibm/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_big5"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 251
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->commonChars:[I

    return-void

    :array_0
    .array-data 4
        0xa140
        0xa141
        0xa142
        0xa143
        0xa147
        0xa149
        0xa175
        0xa176
        0xa440
        0xa446
        0xa447
        0xa448
        0xa451
        0xa454
        0xa457
        0xa464
        0xa46a
        0xa46c
        0xa477
        0xa4a3
        0xa4a4
        0xa4a7
        0xa4c1
        0xa4ce
        0xa4d1
        0xa4df
        0xa4e8
        0xa4fd
        0xa540
        0xa548
        0xa558
        0xa569
        0xa5cd
        0xa5e7
        0xa657
        0xa661
        0xa662
        0xa668
        0xa670
        0xa6a8
        0xa6b3
        0xa6b9
        0xa6d3
        0xa6db
        0xa6e6
        0xa6f2
        0xa740    # 5.9998E-41f
        0xa751
        0xa759
        0xa7da
        0xa8a3
        0xa8a5
        0xa8ad
        0xa8d1
        0xa8d3
        0xa8e4
        0xa8fc
        0xa9c0
        0xa9d2
        0xa9f3
        0xaa6b
        0xaaba
        0xaabe
        0xaacc
        0xaafc
        0xac47
        0xac4f
        0xacb0
        0xacd2
        0xad59
        0xaec9
        0xafe0
        0xb0ea
        0xb16f
        0xb2b3
        0xb2c4
        0xb36f
        0xb44c
        0xb44e
        0xb54c
        0xb5a5
        0xb5bd
        0xb5d0
        0xb5d8
        0xb671
        0xb7ed
        0xb867
        0xb944
        0xbad8
        0xbb44
        0xbba1
        0xbdd1
        0xc2c4
        0xc3b9
        0xc440
        0xc45f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    const-string v0, "zh"

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Big5"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 2

    .line 296
    sget-object v0, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->commonChars:[I

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->match(Lcom/ibm/icu/text/CharsetDetector;[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 297
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method nextChar(Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;Lcom/ibm/icu/text/CharsetDetector;)Z
    .locals 5

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 270
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v1

    iput v1, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x7f

    const/4 v3, 0x1

    if-le v1, v2, :cond_4

    const/16 v4, 0xff

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result p2

    if-gez p2, :cond_2

    return v0

    .line 284
    :cond_2
    iget v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, p2

    iput v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    const/16 v0, 0x40

    if-lt p2, v0, :cond_3

    if-eq p2, v2, :cond_3

    if-ne p2, v4, :cond_4

    .line 289
    :cond_3
    iput-boolean v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    :cond_4
    :goto_0
    return v3
.end method
