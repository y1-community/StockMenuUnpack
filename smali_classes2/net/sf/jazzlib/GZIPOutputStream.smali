.class public Lnet/sf/jazzlib/GZIPOutputStream;
.super Lnet/sf/jazzlib/DeflaterOutputStream;
.source "GZIPOutputStream.java"


# instance fields
.field protected crc:Lnet/sf/jazzlib/CRC32;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 70
    invoke-direct {p0, p1, v0}, Lnet/sf/jazzlib/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lnet/sf/jazzlib/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/jazzlib/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0, p2}, Lnet/sf/jazzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lnet/sf/jazzlib/Deflater;I)V

    .line 85
    new-instance p2, Lnet/sf/jazzlib/CRC32;

    invoke-direct {p2}, Lnet/sf/jazzlib/CRC32;-><init>()V

    iput-object p2, p0, Lnet/sf/jazzlib/GZIPOutputStream;->crc:Lnet/sf/jazzlib/CRC32;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int p2, v3

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/16 v3, 0x1f

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, -0x75

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v4, v0, v2

    int-to-byte v2, p2

    const/4 v5, 0x4

    aput-byte v2, v0, v5

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    const/4 v5, 0x5

    aput-byte v2, v0, v5

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    const/4 v5, 0x6

    aput-byte v2, v0, v5

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v2, 0x7

    aput-byte p2, v0, v2

    aput-byte v4, v0, v3

    const/16 p2, 0x9

    aput-byte v1, v0, p2

    .line 108
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lnet/sf/jazzlib/GZIPOutputStream;->finish()V

    .line 127
    iget-object v0, p0, Lnet/sf/jazzlib/GZIPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-super {p0}, Lnet/sf/jazzlib/DeflaterOutputStream;->finish()V

    .line 134
    iget-object v0, p0, Lnet/sf/jazzlib/GZIPOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Deflater;->getTotalIn()I

    move-result v0

    .line 135
    iget-object v1, p0, Lnet/sf/jazzlib/GZIPOutputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {v1}, Lnet/sf/jazzlib/CRC32;->getValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, 0x8

    new-array v1, v1, [B

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    int-to-byte v2, v0

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    .line 146
    iget-object v0, p0, Lnet/sf/jazzlib/GZIPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/jazzlib/DeflaterOutputStream;->write([BII)V

    .line 117
    iget-object v0, p0, Lnet/sf/jazzlib/GZIPOutputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/CRC32;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
