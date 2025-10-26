.class Lnet/sf/jazzlib/StreamManipulator;
.super Ljava/lang/Object;
.source "StreamManipulator.java"


# instance fields
.field private bits_in_buffer:I

.field private buffer:I

.field private window:[B

.field private window_end:I

.field private window_start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    .line 59
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    .line 61
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    .line 62
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    return-void
.end method


# virtual methods
.method public copyBytes([BII)I
    .locals 6

    if-ltz p3, :cond_5

    .line 150
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    const/16 v2, 0x8

    if-lez v1, :cond_0

    if-lez p3, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 157
    iget v4, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    int-to-byte v5, v4

    aput-byte v5, p1, p2

    ushr-int/lit8 p2, v4, 0x8

    .line 158
    iput p2, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    add-int/lit8 v1, v1, -0x8

    .line 159
    iput v1, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return v0

    .line 167
    :cond_1
    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    iget v3, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    sub-int/2addr v1, v3

    if-le p3, v1, :cond_2

    move p3, v1

    .line 171
    :cond_2
    iget-object v1, p0, Lnet/sf/jazzlib/StreamManipulator;->window:[B

    invoke-static {v1, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget p1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    .line 174
    iget p2, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    sub-int p2, p1, p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3

    .line 176
    iget-object p2, p0, Lnet/sf/jazzlib/StreamManipulator;->window:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    .line 177
    iput v2, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    :cond_3
    add-int/2addr v0, p3

    return v0

    .line 152
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Bit buffer is not aligned!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final dropBits(I)V
    .locals 1

    .line 88
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    ushr-int/2addr v0, p1

    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    .line 89
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    return-void
.end method

.method public final getAvailableBits()I
    .locals 1

    .line 113
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    return v0
.end method

.method public final getAvailableBytes()I
    .locals 2

    .line 122
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public final getBits(I)I
    .locals 1

    .line 99
    invoke-virtual {p0, p1}, Lnet/sf/jazzlib/StreamManipulator;->peekBits(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lnet/sf/jazzlib/StreamManipulator;->dropBits(I)V

    :cond_0
    return v0
.end method

.method public final needsInput()Z
    .locals 2

    .line 134
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final peekBits(I)I
    .locals 6

    .line 72
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    if-ge v0, p1, :cond_1

    .line 73
    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    iget v2, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    if-ne v1, v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 76
    :cond_0
    iget v2, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    iget-object v3, p0, Lnet/sf/jazzlib/StreamManipulator;->window:[B

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    shl-int/2addr v1, v0

    or-int/2addr v1, v2

    iput v1, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    add-int/lit8 v0, v0, 0x10

    .line 77
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    .line 79
    :cond_1
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    and-int/2addr p1, v0

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    return-void
.end method

.method public setInput([BII)V
    .locals 3

    .line 190
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    if-lt v0, v1, :cond_2

    add-int v0, p2, p3

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 201
    array-length v1, p1

    if-gt v0, v1, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 207
    iget p3, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iget v2, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    shl-int/2addr p2, v2

    or-int/2addr p2, p3

    iput p2, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    add-int/lit8 v2, v2, 0x8

    .line 208
    iput v2, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    move p2, v1

    .line 211
    :cond_0
    iput-object p1, p0, Lnet/sf/jazzlib/StreamManipulator;->window:[B

    .line 212
    iput p2, p0, Lnet/sf/jazzlib/StreamManipulator;->window_start:I

    .line 213
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->window_end:I

    return-void

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Old input was not completely processed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipToByteBoundary()V
    .locals 3

    .line 129
    iget v0, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    iget v1, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    and-int/lit8 v2, v1, 0x7

    shr-int/2addr v0, v2

    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->buffer:I

    and-int/lit8 v0, v1, -0x8

    .line 130
    iput v0, p0, Lnet/sf/jazzlib/StreamManipulator;->bits_in_buffer:I

    return-void
.end method
