.class public Lnet/sf/jazzlib/GZIPInputStream;
.super Lnet/sf/jazzlib/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field static final FCOMMENT:I = 0x10

.field static final FEXTRA:I = 0x4

.field static final FHCRC:I = 0x2

.field static final FNAME:I = 0x8

.field static final FTEXT:I = 0x1

.field public static final GZIP_MAGIC:I = 0x1f8b


# instance fields
.field protected crc:Lnet/sf/jazzlib/CRC32;

.field protected eos:Z

.field private readGZIPHeader:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 108
    invoke-direct {p0, p1, v0}, Lnet/sf/jazzlib/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Lnet/sf/jazzlib/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lnet/sf/jazzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lnet/sf/jazzlib/Inflater;I)V

    .line 127
    new-instance p1, Lnet/sf/jazzlib/CRC32;

    invoke-direct {p1}, Lnet/sf/jazzlib/CRC32;-><init>()V

    iput-object p1, p0, Lnet/sf/jazzlib/GZIPInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    return-void
.end method

.method private readFooter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 335
    iget-object v2, p0, Lnet/sf/jazzlib/GZIPInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v2}, Lnet/sf/jazzlib/Inflater;->getRemaining()I

    move-result v2

    if-le v2, v0, :cond_0

    const/16 v2, 0x8

    .line 339
    :cond_0
    iget-object v3, p0, Lnet/sf/jazzlib/GZIPInputStream;->buf:[B

    iget v4, p0, Lnet/sf/jazzlib/GZIPInputStream;->len:I

    iget-object v5, p0, Lnet/sf/jazzlib/GZIPInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v5}, Lnet/sf/jazzlib/Inflater;->getRemaining()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v2, 0x8

    :goto_0
    if-lez v2, :cond_2

    .line 342
    iget-object v3, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    rsub-int/lit8 v4, v2, 0x8

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_0

    .line 344
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Early EOF in GZIP footer"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    .line 351
    iget-object v4, p0, Lnet/sf/jazzlib/GZIPInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {v4}, Lnet/sf/jazzlib/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v5, v4

    if-ne v2, v5, :cond_4

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 359
    iget-object v1, p0, Lnet/sf/jazzlib/GZIPInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v1}, Lnet/sf/jazzlib/Inflater;->getTotalOut()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 367
    iput-boolean v3, p0, Lnet/sf/jazzlib/GZIPInputStream;->eos:Z

    return-void

    .line 360
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Number of bytes mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GZIP crc sum mismatch, theirs \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" and ours \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/jazzlib/GZIPInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    .line 354
    invoke-virtual {v2}, Lnet/sf/jazzlib/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private readHeader()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Lnet/sf/jazzlib/CRC32;

    invoke-direct {v0}, Lnet/sf/jazzlib/CRC32;-><init>()V

    .line 198
    iget-object v1, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 200
    iput-boolean v2, p0, Lnet/sf/jazzlib/GZIPInputStream;->eos:Z

    return-void

    .line 203
    :cond_0
    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/CRC32;->update(I)V

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_17

    .line 209
    iget-object v1, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0x8b

    if-ne v1, v3, :cond_16

    .line 214
    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/CRC32;->update(I)V

    .line 217
    iget-object v1, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_15

    .line 222
    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/CRC32;->update(I)V

    .line 225
    iget-object v1, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const-string v4, "Early EOF in GZIP header"

    if-ltz v1, :cond_14

    .line 229
    invoke-virtual {v0, v1}, Lnet/sf/jazzlib/CRC32;->update(I)V

    and-int/lit16 v5, v1, 0xd0

    if-nez v5, :cond_13

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    .line 245
    iget-object v7, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_1

    .line 249
    invoke-virtual {v0, v7}, Lnet/sf/jazzlib/CRC32;->update(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 247
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    .line 256
    iget-object v8, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_3

    .line 260
    invoke-virtual {v0, v8}, Lnet/sf/jazzlib/CRC32;->update(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 258
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_4
    iget-object v6, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_7

    iget-object v6, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_7

    .line 267
    iget-object v6, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 268
    iget-object v8, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v6, :cond_6

    if-ltz v8, :cond_6

    .line 272
    invoke-virtual {v0, v6}, Lnet/sf/jazzlib/CRC32;->update(I)V

    .line 273
    invoke-virtual {v0, v8}, Lnet/sf/jazzlib/CRC32;->update(I)V

    shl-int/2addr v6, v3

    or-int/2addr v6, v8

    :goto_2
    if-ge v5, v6, :cond_8

    .line 277
    iget-object v8, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ltz v8, :cond_5

    .line 281
    invoke-virtual {v0, v8}, Lnet/sf/jazzlib/CRC32;->update(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 279
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_b

    .line 288
    :goto_3
    iget-object v5, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-lez v5, :cond_9

    .line 289
    invoke-virtual {v0, v5}, Lnet/sf/jazzlib/CRC32;->update(I)V

    goto :goto_3

    :cond_9
    if-ltz v5, :cond_a

    .line 294
    invoke-virtual {v0, v5}, Lnet/sf/jazzlib/CRC32;->update(I)V

    goto :goto_4

    .line 292
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Early EOF in GZIP file name"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_e

    .line 300
    :goto_5
    iget-object v5, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-lez v5, :cond_c

    .line 301
    invoke-virtual {v0, v5}, Lnet/sf/jazzlib/CRC32;->update(I)V

    goto :goto_5

    :cond_c
    if-ltz v5, :cond_d

    .line 307
    invoke-virtual {v0, v5}, Lnet/sf/jazzlib/CRC32;->update(I)V

    goto :goto_6

    .line 305
    :cond_d
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Early EOF in GZIP comment"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_6
    and-int/2addr v1, v7

    if-eqz v1, :cond_12

    .line 313
    iget-object v1, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_11

    .line 318
    iget-object v5, p0, Lnet/sf/jazzlib/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_10

    shl-int/2addr v1, v3

    or-int/2addr v1, v5

    .line 324
    invoke-virtual {v0}, Lnet/sf/jazzlib/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v0, v3

    const v3, 0xffff

    and-int/2addr v0, v3

    if-ne v1, v0, :cond_f

    goto :goto_7

    .line 325
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Header CRC value mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_10
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_11
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_12
    :goto_7
    iput-boolean v2, p0, Lnet/sf/jazzlib/GZIPInputStream;->readGZIPHeader:Z

    return-void

    .line 240
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reserved flag bits in GZIP header != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_14
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in GZIP header, data not in deflate format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in GZIP header, second byte doesn\'t match"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in GZIP header, first byte doesn\'t match"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-super {p0}, Lnet/sf/jazzlib/InflaterInputStream;->close()V

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lnet/sf/jazzlib/GZIPInputStream;->readGZIPHeader:Z

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lnet/sf/jazzlib/GZIPInputStream;->readHeader()V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lnet/sf/jazzlib/GZIPInputStream;->eos:Z

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 181
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lnet/sf/jazzlib/InflaterInputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_2

    .line 183
    iget-object v0, p0, Lnet/sf/jazzlib/GZIPInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/CRC32;->update([BII)V

    .line 186
    :cond_2
    iget-object p1, p0, Lnet/sf/jazzlib/GZIPInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {p1}, Lnet/sf/jazzlib/Inflater;->finished()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 187
    invoke-direct {p0}, Lnet/sf/jazzlib/GZIPInputStream;->readFooter()V

    :cond_3
    return p3
.end method
