.class public Lnet/sf/jazzlib/ZipInputStream;
.super Lnet/sf/jazzlib/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Lnet/sf/jazzlib/ZipConstants;


# instance fields
.field private avail:I

.field private crc:Lnet/sf/jazzlib/CRC32;

.field private csize:I

.field private entry:Lnet/sf/jazzlib/ZipEntry;

.field private entryAtEOF:Z

.field private flags:I

.field private method:I

.field private size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 69
    new-instance v0, Lnet/sf/jazzlib/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lnet/sf/jazzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lnet/sf/jazzlib/Inflater;)V

    .line 55
    new-instance p1, Lnet/sf/jazzlib/CRC32;

    invoke-direct {p1}, Lnet/sf/jazzlib/CRC32;-><init>()V

    iput-object p1, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    return-void
.end method

.method private fillBuf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->buf:[B

    iget-object v2, p0, Lnet/sf/jazzlib/ZipInputStream;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->len:I

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    return-void
.end method

.method private readBuf([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    if-gtz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->fillBuf()V

    .line 80
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 84
    :cond_0
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    if-le p3, v0, :cond_1

    move p3, v0

    .line 87
    :cond_1
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->len:I

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget p1, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    sub-int/2addr p1, p3

    iput p1, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    return p3
.end method

.method private readDataDescr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v0

    const v1, 0x8074b50

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lnet/sf/jazzlib/ZipEntry;->setCrc(J)V

    .line 199
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    .line 200
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    .line 201
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    int-to-long v5, v0

    and-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lnet/sf/jazzlib/ZipEntry;->setSize(J)V

    .line 202
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    int-to-long v1, v1

    and-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lnet/sf/jazzlib/ZipEntry;->setCompressedSize(J)V

    return-void

    .line 196
    :cond_0
    new-instance v0, Lnet/sf/jazzlib/ZipException;

    const-string v1, "Data descriptor signature not found"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFully([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 96
    invoke-direct {p0, p1, v1, v0}, Lnet/sf/jazzlib/ZipInputStream;->readBuf([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method private final readLeByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    if-gtz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->fillBuf()V

    .line 108
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lnet/sf/jazzlib/ZipException;

    const-string v1, "EOF in header"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->len:I

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final readLeInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeShort()I

    move-result v0

    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeShort()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private final readLeShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeByte()I

    move-result v0

    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entryAtEOF:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-super {p0}, Lnet/sf/jazzlib/InflaterInputStream;->close()V

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    .line 366
    iput-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entryAtEOF:Z

    return-void
.end method

.method public closeEntry()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    if-eqz v0, :cond_8

    .line 212
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->method:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 217
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 220
    :goto_0
    invoke-virtual {p0, v0}, Lnet/sf/jazzlib/ZipInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 226
    :cond_2
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    iget-object v2, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v2}, Lnet/sf/jazzlib/Inflater;->getTotalIn()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    .line 227
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->getRemaining()I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    .line 230
    :cond_3
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    const/4 v3, 0x0

    if-le v0, v2, :cond_4

    if-ltz v2, :cond_4

    sub-int/2addr v0, v2

    .line 231
    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v0

    .line 233
    iput v2, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    .line 234
    iput v3, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    .line 235
    :goto_1
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    int-to-long v4, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 240
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    int-to-long v6, v0

    sub-long/2addr v6, v4

    long-to-int v0, v6

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    goto :goto_1

    .line 238
    :cond_5
    new-instance v0, Lnet/sf/jazzlib/ZipException;

    const-string v1, "zip archive ends early."

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_6
    :goto_2
    iput v3, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    .line 245
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/CRC32;->reset()V

    .line 246
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->method:I

    if-ne v0, v1, :cond_7

    .line 247
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->reset()V

    :cond_7
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entryAtEOF:Z

    return-void

    .line 210
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method protected createZipEntry(Ljava/lang/String;)Lnet/sf/jazzlib/ZipEntry;
    .locals 1

    .line 378
    new-instance v0, Lnet/sf/jazzlib/ZipEntry;

    invoke-direct {v0, p1}, Lnet/sf/jazzlib/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Lnet/sf/jazzlib/ZipEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    if-eqz v0, :cond_8

    .line 137
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipInputStream;->closeEntry()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipInputStream;->close()V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const v1, 0x4034b50

    if-ne v0, v1, :cond_7

    .line 152
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeShort()I

    .line 153
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeShort()I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->flags:I

    .line 154
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeShort()I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->method:I

    .line 155
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v0

    .line 156
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v1

    .line 157
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v2

    iput v2, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    .line 158
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeInt()I

    move-result v2

    iput v2, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    .line 159
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeShort()I

    move-result v2

    .line 160
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readLeShort()I

    move-result v3

    .line 162
    iget v4, p0, Lnet/sf/jazzlib/ZipInputStream;->method:I

    if-nez v4, :cond_3

    iget v4, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    iget v5, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Lnet/sf/jazzlib/ZipException;

    const-string v1, "Stored, but compressed != uncompressed"

    invoke-direct {v0, v1}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3
    :goto_0
    new-array v2, v2, [B

    .line 167
    invoke-direct {p0, v2}, Lnet/sf/jazzlib/ZipInputStream;->readFully([B)V

    .line 168
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 170
    invoke-virtual {p0, v4}, Lnet/sf/jazzlib/ZipInputStream;->createZipEntry(Ljava/lang/String;)Lnet/sf/jazzlib/ZipEntry;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    const/4 v4, 0x0

    .line 171
    iput-boolean v4, p0, Lnet/sf/jazzlib/ZipInputStream;->entryAtEOF:Z

    .line 172
    iget v5, p0, Lnet/sf/jazzlib/ZipInputStream;->method:I

    invoke-virtual {v2, v5}, Lnet/sf/jazzlib/ZipEntry;->setMethod(I)V

    .line 173
    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->flags:I

    const/16 v5, 0x8

    and-int/2addr v2, v5

    if-nez v2, :cond_4

    .line 174
    iget-object v2, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lnet/sf/jazzlib/ZipEntry;->setCrc(J)V

    .line 175
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    int-to-long v6, v2

    and-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Lnet/sf/jazzlib/ZipEntry;->setSize(J)V

    .line 176
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    int-to-long v6, v2

    and-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Lnet/sf/jazzlib/ZipEntry;->setCompressedSize(J)V

    .line 178
    :cond_4
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    invoke-virtual {v1, v0}, Lnet/sf/jazzlib/ZipEntry;->setDOSTime(I)V

    if-lez v3, :cond_5

    .line 180
    new-array v0, v3, [B

    .line 181
    invoke-direct {p0, v0}, Lnet/sf/jazzlib/ZipInputStream;->readFully([B)V

    .line 182
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    invoke-virtual {v1, v0}, Lnet/sf/jazzlib/ZipEntry;->setExtra([B)V

    .line 185
    :cond_5
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->method:I

    if-ne v0, v5, :cond_6

    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    if-lez v0, :cond_6

    .line 186
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->buf:[B

    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->len:I

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/sf/jazzlib/ZipInputStream;->buf:[B

    iget v3, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->len:I

    .line 188
    iput v4, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    .line 189
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->buf:[B

    iget v2, p0, Lnet/sf/jazzlib/ZipInputStream;->len:I

    invoke-virtual {v0, v1, v4, v2}, Lnet/sf/jazzlib/Inflater;->setInput([BII)V

    .line 191
    :cond_6
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    return-object v0

    .line 148
    :cond_7
    new-instance v1, Lnet/sf/jazzlib/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong Local header signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/jazzlib/ZipInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 291
    :cond_0
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    if-eqz v1, :cond_10

    .line 294
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 298
    :cond_1
    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->method:I

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    goto/16 :goto_1

    .line 300
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lnet/sf/jazzlib/InflaterInputStream;->read([BII)I

    move-result p3

    if-gez p3, :cond_a

    .line 302
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->getRemaining()I

    move-result v0

    iput v0, p0, Lnet/sf/jazzlib/ZipInputStream;->avail:I

    .line 306
    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 307
    invoke-direct {p0}, Lnet/sf/jazzlib/ZipInputStream;->readDataDescr()V

    .line 310
    :cond_3
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->getTotalIn()I

    move-result v0

    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->getTotalOut()I

    move-result v0

    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    if-ne v0, v1, :cond_4

    .line 315
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->reset()V

    goto :goto_0

    .line 311
    :cond_4
    new-instance p1, Lnet/sf/jazzlib/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "size mismatch: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " <-> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    .line 312
    invoke-virtual {v0}, Lnet/sf/jazzlib/Inflater;->getTotalIn()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/sf/jazzlib/ZipInputStream;->inf:Lnet/sf/jazzlib/Inflater;

    .line 313
    invoke-virtual {p3}, Lnet/sf/jazzlib/Inflater;->getTotalOut()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_5
    new-instance p1, Lnet/sf/jazzlib/ZipException;

    const-string p2, "Inflater not finished!?"

    invoke-direct {p1, p2}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_6
    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    if-le p3, v1, :cond_7

    if-ltz v1, :cond_7

    move p3, v1

    .line 326
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/jazzlib/ZipInputStream;->readBuf([BII)I

    move-result p3

    if-lez p3, :cond_8

    .line 328
    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    sub-int/2addr v1, p3

    iput v1, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    .line 329
    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    sub-int/2addr v1, p3

    iput v1, p0, Lnet/sf/jazzlib/ZipInputStream;->size:I

    .line 332
    :cond_8
    iget v1, p0, Lnet/sf/jazzlib/ZipInputStream;->csize:I

    if-nez v1, :cond_9

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    if-ltz p3, :cond_f

    :cond_a
    :goto_1
    if-lez p3, :cond_b

    .line 341
    iget-object v1, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Lnet/sf/jazzlib/CRC32;->update([BII)V

    :cond_b
    if-eqz v0, :cond_e

    .line 345
    iget-object p1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    invoke-virtual {p1}, Lnet/sf/jazzlib/ZipEntry;->getCrc()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_d

    .line 346
    iget-object v0, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {v0}, Lnet/sf/jazzlib/CRC32;->getValue()J

    move-result-wide v0

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    cmp-long v3, v0, p1

    if-nez v3, :cond_c

    goto :goto_2

    .line 347
    :cond_c
    new-instance p1, Lnet/sf/jazzlib/ZipException;

    const-string p2, "CRC mismatch"

    invoke-direct {p1, p2}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_d
    :goto_2
    iget-object p1, p0, Lnet/sf/jazzlib/ZipInputStream;->crc:Lnet/sf/jazzlib/CRC32;

    invoke-virtual {p1}, Lnet/sf/jazzlib/CRC32;->reset()V

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lnet/sf/jazzlib/ZipInputStream;->entry:Lnet/sf/jazzlib/ZipEntry;

    .line 351
    iput-boolean v2, p0, Lnet/sf/jazzlib/ZipInputStream;->entryAtEOF:Z

    :cond_e
    return p3

    .line 335
    :cond_f
    new-instance p1, Lnet/sf/jazzlib/ZipException;

    const-string p2, "EOF in stored block"

    invoke-direct {p1, p2}, Lnet/sf/jazzlib/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
