.class Lnet/sf/jazzlib/PendingBuffer;
.super Ljava/lang/Object;
.source "PendingBuffer.java"


# instance fields
.field bitCount:I

.field bits:I

.field protected buf:[B

.field end:I

.field start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1000

    .line 60
    invoke-direct {p0, v0}, Lnet/sf/jazzlib/PendingBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array p1, p1, [B

    iput-object p1, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    return-void
.end method


# virtual methods
.method public final alignToByte()V
    .locals 6

    .line 113
    iget v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    if-lez v0, :cond_0

    .line 114
    iget-object v1, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    iget v4, p0, Lnet/sf/jazzlib/PendingBuffer;->bits:I

    int-to-byte v5, v4

    aput-byte v5, v1, v2

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    add-int/lit8 v0, v3, 0x1

    .line 116
    iput v0, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    ushr-int/lit8 v0, v4, 0x8

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bits:I

    .line 120
    iput v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    return-void
.end method

.method public final flush([BII)I
    .locals 6

    .line 167
    iget v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 168
    iget-object v2, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v3, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    iget v4, p0, Lnet/sf/jazzlib/PendingBuffer;->bits:I

    int-to-byte v5, v4

    aput-byte v5, v2, v3

    ushr-int/lit8 v2, v4, 0x8

    .line 169
    iput v2, p0, Lnet/sf/jazzlib/PendingBuffer;->bits:I

    sub-int/2addr v0, v1

    .line 170
    iput v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    .line 172
    :cond_0
    iget v0, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->start:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_1

    sub-int p3, v0, v1

    .line 174
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 175
    iput p1, p0, Lnet/sf/jazzlib/PendingBuffer;->start:I

    .line 176
    iput p1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget p1, p0, Lnet/sf/jazzlib/PendingBuffer;->start:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/sf/jazzlib/PendingBuffer;->start:I

    :goto_0
    return p3
.end method

.method public final getBitCount()I
    .locals 1

    .line 106
    iget v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    return v0
.end method

.method public final isFlushed()Z
    .locals 1

    .line 150
    iget v0, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    iput v0, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    iput v0, p0, Lnet/sf/jazzlib/PendingBuffer;->start:I

    return-void
.end method

.method public final toByteArray()[B
    .locals 5

    .line 192
    iget v0, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->start:I

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    .line 193
    iget-object v3, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput v4, p0, Lnet/sf/jazzlib/PendingBuffer;->start:I

    .line 195
    iput v4, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    return-object v2
.end method

.method public final writeBits(II)V
    .locals 5

    .line 131
    iget v0, p0, Lnet/sf/jazzlib/PendingBuffer;->bits:I

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lnet/sf/jazzlib/PendingBuffer;->bits:I

    add-int/2addr v1, p2

    .line 132
    iput v1, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_0

    .line 134
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 135
    iput v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    ushr-int/2addr p1, p2

    .line 136
    iput p1, p0, Lnet/sf/jazzlib/PendingBuffer;->bits:I

    sub-int/2addr v1, p2

    .line 137
    iput v1, p0, Lnet/sf/jazzlib/PendingBuffer;->bitCount:I

    :cond_0
    return-void
.end method

.method public final writeBlock([BII)V
    .locals 2

    .line 101
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget p1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    return-void
.end method

.method public final writeByte(I)V
    .locals 3

    .line 75
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public final writeInt(I)V
    .locals 4

    .line 90
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 91
    iput v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 92
    iput v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 93
    iput v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public final writeShort(I)V
    .locals 4

    .line 82
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 83
    iput v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public final writeShortMSB(I)V
    .locals 4

    .line 145
    iget-object v0, p0, Lnet/sf/jazzlib/PendingBuffer;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 146
    iput v1, p0, Lnet/sf/jazzlib/PendingBuffer;->end:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method
