.class public Lnl/siegmann/epublib/util/commons/io/BOMInputStream;
.super Lnl/siegmann/epublib/util/commons/io/ProxyInputStream;
.source "BOMInputStream.java"


# instance fields
.field private final boms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrderMark:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

.field private fbIndex:I

.field private fbLength:I

.field private firstBytes:[I

.field private final include:Z

.field private markFbIndex:I

.field private markedAtStart:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 89
    sget-object v1, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_8:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v2, v0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 100
    sget-object v1, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_8:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/util/commons/io/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p3, :cond_0

    .line 123
    array-length p1, p3

    if-eqz p1, :cond_0

    .line 126
    iput-boolean p2, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->include:Z

    .line 127
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->boms:Ljava/util/List;

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No BOMs specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/io/InputStream;[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0, p2}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    return-void
.end method

.method private find()Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;
    .locals 3

    .line 221
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->boms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 222
    invoke-direct {p0, v1}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->matches(Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private matches(Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)Z
    .locals 4

    .line 236
    invoke-virtual {p1}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->length()I

    move-result v0

    iget v1, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbLength:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 240
    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->get(I)I

    move-result v1

    iget-object v3, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    aget v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private readFirstBytes()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOM()Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 212
    iget v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbIndex:I

    iget v1, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbIndex:I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public getBOM()Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    if-nez v0, :cond_3

    .line 167
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->boms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 168
    invoke-virtual {v3}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 170
    :cond_0
    new-array v0, v2, [I

    iput-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    const/4 v0, 0x0

    .line 171
    :goto_1
    iget-object v2, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 172
    iget-object v3, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v2, v0

    .line 173
    iget v2, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbLength:I

    .line 174
    iget-object v2, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    aget v2, v2, v0

    if-gez v2, :cond_1

    goto :goto_2

    .line 178
    :cond_1
    invoke-direct {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->find()Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    move-result-object v2

    iput-object v2, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->byteOrderMark:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    if-eqz v2, :cond_2

    .line 180
    iget-boolean v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->include:Z

    if-nez v0, :cond_3

    .line 181
    iput v1, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbLength:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_3
    :goto_2
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->byteOrderMark:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    return-object v0
.end method

.method public getBOMCharsetName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOM()Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 199
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->byteOrderMark:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasBOM()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOM()Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBOM(Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->boms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->byteOrderMark:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOM()Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream not configure to detect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 307
    :try_start_0
    iget v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbIndex:I

    iput v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->markFbIndex:I

    .line 308
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->markedAtStart:Z

    .line 309
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->readFirstBytes()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    if-ltz v0, :cond_1

    .line 277
    invoke-direct {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->readFirstBytes()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v2, p2, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    .line 279
    aput-byte v3, p1, p2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    add-int/2addr v1, p1

    :goto_1
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 318
    :try_start_0
    iget v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->markFbIndex:I

    iput v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->fbIndex:I

    .line 319
    iget-boolean v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->markedAtStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->firstBytes:[I

    .line 323
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 335
    invoke-direct {p0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->readFirstBytes()I

    move-result v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
