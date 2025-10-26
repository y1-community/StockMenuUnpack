.class public Lnet/sf/jazzlib/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private final sum:Lnet/sf/jazzlib/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lnet/sf/jazzlib/Checksum;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    iput-object p2, p0, Lnet/sf/jazzlib/CheckedInputStream;->sum:Lnet/sf/jazzlib/Checksum;

    return-void
.end method


# virtual methods
.method public getChecksum()Lnet/sf/jazzlib/Checksum;
    .locals 1

    .line 73
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedInputStream;->sum:Lnet/sf/jazzlib/Checksum;

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lnet/sf/jazzlib/CheckedInputStream;->sum:Lnet/sf/jazzlib/Checksum;

    invoke-interface {v1, v0}, Lnet/sf/jazzlib/Checksum;->update(I)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedInputStream;->sum:Lnet/sf/jazzlib/Checksum;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/jazzlib/Checksum;->update([BII)V

    :cond_0
    return p3
.end method

.method public skip(J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x400

    .line 115
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 116
    new-array v4, v5, [B

    move-wide v6, v0

    :goto_0
    cmp-long v8, p1, v0

    if-lez v8, :cond_2

    .line 120
    iget-object v8, p0, Lnet/sf/jazzlib/CheckedInputStream;->in:Ljava/io/InputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v10, v5

    sub-long/2addr p1, v10

    add-long/2addr v6, v10

    .line 126
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v8, v10

    .line 127
    iget-object v10, p0, Lnet/sf/jazzlib/CheckedInputStream;->sum:Lnet/sf/jazzlib/Checksum;

    invoke-interface {v10, v4, v9, v5}, Lnet/sf/jazzlib/Checksum;->update([BII)V

    move v5, v8

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v6
.end method
