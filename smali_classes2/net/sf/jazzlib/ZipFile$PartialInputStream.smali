.class Lnet/sf/jazzlib/ZipFile$PartialInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/jazzlib/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialInputStream"
.end annotation


# instance fields
.field end:J

.field filepos:J

.field private final raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJ)V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 501
    iput-object p1, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 502
    iput-wide p2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    add-long/2addr p2, p4

    .line 503
    iput-wide p2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->end:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5

    .line 508
    iget-wide v0, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->end:J

    iget-wide v2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v1, v0

    return v1
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-wide v0, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    iget-wide v2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->end:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 520
    :cond_0
    iget-object v0, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->raf:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 522
    iget-object v1, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    .line 529
    iget-wide v2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->end:J

    iget-wide v4, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    sub-long v6, v2, v4

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    sub-long/2addr v2, v4

    long-to-int p3, v2

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 535
    :cond_0
    iget-object v0, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->raf:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 537
    iget-object v1, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    .line 539
    iget-wide v1, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    int-to-long p2, p3

    add-long/2addr v1, p2

    iput-wide v1, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    .line 541
    :cond_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public skip(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 550
    iget-wide v0, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->end:J

    iget-wide v2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    sub-long v4, v0, v2

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    sub-long p1, v0, v2

    :cond_0
    add-long/2addr v2, p1

    .line 553
    iput-wide v2, p0, Lnet/sf/jazzlib/ZipFile$PartialInputStream;->filepos:J

    return-wide p1

    .line 548
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
