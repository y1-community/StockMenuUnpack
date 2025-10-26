.class Lnet/sf/jazzlib/OutputWindow;
.super Ljava/lang/Object;
.source "OutputWindow.java"


# instance fields
.field private final WINDOW_MASK:I

.field private final WINDOW_SIZE:I

.field private final window:[B

.field private window_end:I

.field private window_filled:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 51
    iput v0, p0, Lnet/sf/jazzlib/OutputWindow;->WINDOW_SIZE:I

    const/16 v1, 0x7fff

    .line 52
    iput v1, p0, Lnet/sf/jazzlib/OutputWindow;->WINDOW_MASK:I

    new-array v0, v0, [B

    .line 54
    iput-object v0, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    .line 57
    iput v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    return-void
.end method

.method private final slowRepeat(III)V
    .locals 3

    :goto_0
    add-int/lit8 p3, p2, -0x1

    if-lez p2, :cond_0

    .line 69
    iget-object p2, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p2, p1

    aput-byte p1, p2, v0

    and-int/lit16 p1, v1, 0x7fff

    .line 70
    iput p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    and-int/lit16 p1, v2, 0x7fff

    move p2, p3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copyDict([BII)V
    .locals 2

    .line 120
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    if-gtz v0, :cond_1

    const v0, 0x8000

    if-le p3, v0, :cond_0

    add-int/lit16 p3, p3, -0x8000

    add-int/2addr p2, p3

    const p3, 0x8000

    .line 128
    :cond_0
    iget-object v0, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit16 p1, p3, 0x7fff

    .line 129
    iput p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    return-void

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public copyOutput([BII)I
    .locals 4

    .line 141
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    .line 142
    iget v1, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    if-le p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    and-int/lit16 v0, v0, 0x7fff

    :goto_0
    sub-int v1, p3, v0

    if-lez v1, :cond_1

    .line 152
    iget-object v2, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    const v3, 0x8000

    sub-int/2addr v3, v1

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p3

    .line 157
    :goto_1
    iget-object v2, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    sub-int/2addr v0, v1

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    sub-int/2addr p1, p3

    iput p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    if-ltz p1, :cond_2

    return p3

    .line 160
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public copyStored(Lnet/sf/jazzlib/StreamManipulator;I)I
    .locals 4

    .line 100
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    const v1, 0x8000

    sub-int v0, v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 101
    invoke-virtual {p1}, Lnet/sf/jazzlib/StreamManipulator;->getAvailableBytes()I

    move-result v0

    .line 100
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 104
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    sub-int/2addr v1, v0

    if-le p2, v1, :cond_0

    .line 106
    iget-object v2, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    invoke-virtual {p1, v2, v0, v1}, Lnet/sf/jazzlib/StreamManipulator;->copyBytes([BII)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v2, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    const/4 v3, 0x0

    sub-int/2addr p2, v1

    invoke-virtual {p1, v2, v3, p2}, Lnet/sf/jazzlib/StreamManipulator;->copyBytes([BII)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    invoke-virtual {p1, v1, v0, p2}, Lnet/sf/jazzlib/StreamManipulator;->copyBytes([BII)I

    move-result v0

    .line 114
    :cond_1
    :goto_0
    iget p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    add-int/2addr p1, v0

    and-int/lit16 p1, p1, 0x7fff

    iput p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    .line 115
    iget p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    return v0
.end method

.method public getAvailable()I
    .locals 1

    .line 137
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    return v0
.end method

.method public getFreeSpace()I
    .locals 2

    .line 133
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    const v1, 0x8000

    sub-int/2addr v1, v0

    return v1
.end method

.method public repeat(II)V
    .locals 3

    .line 76
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    const v1, 0x8000

    if-gt v0, v1, :cond_3

    .line 80
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    sub-int v2, v0, p2

    and-int/lit16 v2, v2, 0x7fff

    sub-int/2addr v1, p1

    if-gt v2, v1, :cond_1

    if-ge v0, v1, :cond_1

    if-gt p1, p2, :cond_0

    .line 84
    iget-object p2, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    invoke-static {p2, v2, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget p2, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    add-int/2addr p2, p1

    iput p2, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_2

    .line 91
    iget-object p1, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    move p1, p2

    move v2, v1

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0, v2, p1, p2}, Lnet/sf/jazzlib/OutputWindow;->slowRepeat(III)V

    :cond_2
    :goto_1
    return-void

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Window full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    iput v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    return-void
.end method

.method public write(I)V
    .locals 3

    .line 60
    iget v0, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/jazzlib/OutputWindow;->window_filled:I

    const v1, 0x8000

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lnet/sf/jazzlib/OutputWindow;->window:[B

    iget v1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    and-int/lit16 p1, v2, 0x7fff

    .line 64
    iput p1, p0, Lnet/sf/jazzlib/OutputWindow;->window_end:I

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Window full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
