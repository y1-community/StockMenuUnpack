.class public Lnet/sf/jazzlib/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# instance fields
.field protected buf:[B

.field protected inf:Lnet/sf/jazzlib/Inflater;

.field protected len:I

.field private final onebytebuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 86
    new-instance v0, Lnet/sf/jazzlib/Inflater;

    invoke-direct {v0}, Lnet/sf/jazzlib/Inflater;-><init>()V

    const/16 v1, 0x1000

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/jazzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lnet/sf/jazzlib/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/sf/jazzlib/Inflater;)V
    .locals 1

    const/16 v0, 0x1000

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lnet/sf/jazzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lnet/sf/jazzlib/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/sf/jazzlib/Inflater;I)V
    .locals 1

    .line 115
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 76
    iput-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->onebytebuffer:[B

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->len:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    .line 128
    iput-object p2, p0, Lnet/sf/jazzlib/InflaterInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    .line 129
    new-array p1, p3, [B

    iput-object p1, p0, Lnet/sf/jazzlib/InflaterInputStream;->buf:[B

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inf may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "in may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->finished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lnet/sf/jazzlib/InflaterInputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->len:I

    if-ltz v0, :cond_0

    .line 168
    iget-object v1, p0, Lnet/sf/jazzlib/InflaterInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    iget-object v2, p0, Lnet/sf/jazzlib/InflaterInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Lnet/sf/jazzlib/Inflater;->setInput([BII)V

    return-void

    .line 165
    :cond_0
    new-instance v0, Lnet/sf/jazzlib/ZipException;

    const-string v1, "Deflated stream ends early."

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance v0, Lnet/sf/jazzlib/ZipException;

    const-string v1, "InflaterInputStream is closed"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->onebytebuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/jazzlib/InflaterInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->onebytebuffer:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 208
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/Inflater;->inflate([BII)I

    move-result v0
    :try_end_0
    .catch Lnet/sf/jazzlib/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    return v0

    .line 217
    :cond_1
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->needsDictionary()Z

    move-result v0

    iget-object v1, p0, Lnet/sf/jazzlib/InflaterInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v1}, Lnet/sf/jazzlib/Inflater;->finished()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 219
    :cond_2
    iget-object v0, p0, Lnet/sf/jazzlib/InflaterInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {p0}, Lnet/sf/jazzlib/InflaterInputStream;->fill()V

    goto :goto_0

    .line 222
    :cond_3
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Don\'t know what to do"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 210
    new-instance p2, Lnet/sf/jazzlib/ZipException;

    invoke-virtual {p1}, Lnet/sf/jazzlib/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_5

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x800

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    const/16 v2, 0x800

    goto :goto_0

    :cond_1
    long-to-int v2, p1

    .line 247
    :goto_0
    new-array v3, v2, [B

    move-wide v4, p1

    :goto_1
    cmp-long v6, v4, v0

    if-lez v6, :cond_4

    const/4 v6, 0x0

    int-to-long v7, v2

    cmp-long v9, v4, v7

    if-lez v9, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    long-to-int v7, v4

    .line 251
    :goto_2
    invoke-virtual {p0, v3, v6, v7}, Lnet/sf/jazzlib/InflaterInputStream;->read([BII)I

    move-result v6

    if-gtz v6, :cond_3

    goto :goto_3

    :cond_3
    int-to-long v6, v6

    sub-long/2addr v4, v6

    goto :goto_1

    :cond_4
    :goto_3
    sub-long/2addr p1, v4

    return-wide p1

    .line 236
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
