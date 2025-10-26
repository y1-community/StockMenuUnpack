.class public final Lcom/ibm/icu/util/BytesTrieBuilder;
.super Lcom/ibm/icu/util/StringTrieBuilder;
.source "BytesTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/BytesTrieBuilder$BytesAsCharSequence;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private bytesLength:I

.field private final intBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 217
    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    return-void
.end method

.method private buildBytes(Lcom/ibm/icu/util/StringTrieBuilder$Option;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 112
    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/BytesTrieBuilder;->buildImpl(Lcom/ibm/icu/util/StringTrieBuilder$Option;)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 166
    array-length v0, v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_0

    .line 170
    new-array p1, v0, [B

    .line 171
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v1

    iget v3, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v3

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iput-object p1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    :cond_1
    return-void
.end method

.method public static final internalEncodeDelta(I[B)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xbf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    .line 296
    aput-byte p0, p1, v1

    return v2

    :cond_0
    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_1

    shr-int/lit8 v0, p0, 0x8

    add-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 301
    aput-byte v0, p1, v1

    goto :goto_2

    :cond_1
    const v0, 0xdffff

    if-gt p0, v0, :cond_2

    shr-int/lit8 v0, p0, 0x10

    add-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    .line 304
    aput-byte v0, p1, v1

    goto :goto_1

    :cond_2
    const v0, 0xffffff

    if-gt p0, v0, :cond_3

    const/4 v0, -0x2

    .line 307
    aput-byte v0, p1, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 309
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 310
    aput-byte v0, p1, v2

    const/4 v2, 0x2

    :goto_0
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 313
    aput-byte v1, p1, v2

    move v2, v0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 315
    aput-byte v1, p1, v2

    move v2, v0

    :goto_2
    add-int/lit8 v0, v2, 0x1

    int-to-byte p0, p0

    .line 317
    aput-byte p0, p1, v2

    return v0
.end method

.method private write([BI)I
    .locals 3

    .line 209
    iget v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/2addr v0, p2

    .line 210
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 211
    iput v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 212
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget p1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    return p1
.end method


# virtual methods
.method public add([BII)Lcom/ibm/icu/util/BytesTrieBuilder;
    .locals 1

    .line 61
    new-instance v0, Lcom/ibm/icu/util/BytesTrieBuilder$BytesAsCharSequence;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/util/BytesTrieBuilder$BytesAsCharSequence;-><init>([BI)V

    invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/BytesTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    return-object p0
.end method

.method public build(Lcom/ibm/icu/util/StringTrieBuilder$Option;)Lcom/ibm/icu/util/BytesTrie;
    .locals 3

    .line 81
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BytesTrieBuilder;->buildBytes(Lcom/ibm/icu/util/StringTrieBuilder$Option;)V

    .line 82
    new-instance p1, Lcom/ibm/icu/util/BytesTrie;

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, v2

    invoke-direct {p1, v0, v1}, Lcom/ibm/icu/util/BytesTrie;-><init>([BI)V

    return-object p1
.end method

.method public buildByteBuffer(Lcom/ibm/icu/util/StringTrieBuilder$Option;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 105
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BytesTrieBuilder;->buildBytes(Lcom/ibm/icu/util/StringTrieBuilder$Option;)V

    .line 106
    iget-object p1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v0, p1

    iget v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public clear()Lcom/ibm/icu/util/BytesTrieBuilder;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrieBuilder;->clearImpl()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    return-object p0
.end method

.method protected getMaxBranchLinearSubNodeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    return v0
.end method

.method protected getMaxLinearMatchLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method protected getMinLinearMatch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method protected matchNodesCanHaveValues()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected write(I)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    iget v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/lit8 v0, v0, 0x1

    .line 185
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 186
    iput v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 187
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    return v0
.end method

.method protected write(II)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/2addr v0, p2

    .line 199
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    .line 200
    iput v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    .line 201
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_0
    if-lez p2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytes:[B

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->strings:Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 p2, p2, -0x1

    move v1, v2

    move p1, v4

    goto :goto_0

    .line 206
    :cond_0
    iget p1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    return p1
.end method

.method protected writeDeltaTo(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    iget v0, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v0, p1

    const/16 p1, 0xbf

    if-gt v0, p1, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/BytesTrieBuilder;->write(I)I

    move-result p1

    return p1

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    invoke-static {v0, p1}, Lcom/ibm/icu/util/BytesTrieBuilder;->internalEncodeDelta(I[B)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/BytesTrieBuilder;->write([BI)I

    move-result p1

    return p1
.end method

.method protected writeValueAndFinal(IZ)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/16 v1, 0x40

    if-gt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x10

    shl-int/2addr p1, v0

    or-int/2addr p1, p2

    .line 228
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/BytesTrieBuilder;->write(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz p1, :cond_4

    const v3, 0xffffff

    if-le p1, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x1aff

    if-gt p1, v3, :cond_2

    .line 242
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, 0x51

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const v3, 0x11ffff

    if-gt p1, v3, :cond_3

    .line 245
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v3, p1, 0x10

    add-int/lit8 v3, v3, 0x6c

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v1, 0x1

    goto :goto_0

    .line 247
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v4, 0x7e

    aput-byte v4, v3, v2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 248
    aput-byte v4, v3, v0

    .line 251
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 253
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v3, v4, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v4

    goto :goto_3

    .line 232
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v4, 0x7f

    aput-byte v4, v3, v2

    shr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    .line 233
    aput-byte v4, v3, v0

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 234
    aput-byte v4, v3, v1

    const/4 v1, 0x3

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 235
    aput-byte v4, v3, v1

    const/4 v1, 0x4

    int-to-byte p1, p1

    .line 236
    aput-byte p1, v3, v1

    const/4 v3, 0x5

    .line 255
    :goto_3
    iget-object p1, p0, Lcom/ibm/icu/util/BytesTrieBuilder;->intBytes:[B

    aget-byte v1, p1, v2

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 256
    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/util/BytesTrieBuilder;->write([BI)I

    move-result p1

    return p1
.end method

.method protected writeValueAndType(ZII)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    invoke-virtual {p0, p3}, Lcom/ibm/icu/util/BytesTrieBuilder;->write(I)I

    move-result p3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 268
    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/util/BytesTrieBuilder;->writeValueAndFinal(IZ)I

    move-result p3

    :cond_0
    return p3
.end method
