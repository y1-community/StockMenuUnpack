.class public Lnet/sf/jazzlib/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field protected buf:[B

.field protected def:Lnet/sf/jazzlib/Deflater;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 102
    new-instance v0, Lnet/sf/jazzlib/Deflater;

    invoke-direct {v0}, Lnet/sf/jazzlib/Deflater;-><init>()V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/jazzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lnet/sf/jazzlib/Deflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lnet/sf/jazzlib/Deflater;)V
    .locals 1

    const/16 v0, 0x200

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lnet/sf/jazzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lnet/sf/jazzlib/Deflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lnet/sf/jazzlib/Deflater;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-lez p3, :cond_0

    .line 137
    new-array p1, p3, [B

    iput-object p1, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->buf:[B

    .line 138
    iput-object p2, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    return-void

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufsize <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterOutputStream;->finish()V

    .line 178
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    :goto_0
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/jazzlib/Deflater;->deflate([BII)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 89
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Can\'t deflate all input?"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Deflater;->finish()V

    .line 159
    :goto_0
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/jazzlib/Deflater;->deflate([BII)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    iget-object v1, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Can\'t deflate all input?"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0}, Lnet/sf/jazzlib/Deflater;->flush()V

    .line 149
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterOutputStream;->deflate()V

    .line 150
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 191
    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/jazzlib/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lnet/sf/jazzlib/DeflaterOutputStream;->def:Lnet/sf/jazzlib/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/jazzlib/Deflater;->setInput([BII)V

    .line 208
    invoke-virtual {p0}, Lnet/sf/jazzlib/DeflaterOutputStream;->deflate()V

    return-void
.end method
