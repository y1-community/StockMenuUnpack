.class public Linfo/monitorenter/io/LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedInputStream.java"


# instance fields
.field protected m_amountOfBytesReadable:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    iput p2, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    .line 94
    iget v1, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    if-ge v1, v0, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget v0, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 118
    iget v1, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    :cond_1
    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget v0, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ge v0, p3, :cond_1

    move p3, v0

    .line 148
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    .line 150
    iget p2, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    sub-int/2addr p2, p1

    iput p2, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    :cond_2
    :goto_0
    return p1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget v0, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    .line 168
    iget v0, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Linfo/monitorenter/io/LimitedInputStream;->m_amountOfBytesReadable:I

    :goto_0
    return-wide p1
.end method
