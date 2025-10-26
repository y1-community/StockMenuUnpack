.class public Lnet/sf/jazzlib/CheckedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CheckedOutputStream.java"


# instance fields
.field private final sum:Lnet/sf/jazzlib/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lnet/sf/jazzlib/Checksum;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    iput-object p2, p0, Lnet/sf/jazzlib/CheckedOutputStream;->sum:Lnet/sf/jazzlib/Checksum;

    return-void
.end method


# virtual methods
.method public getChecksum()Lnet/sf/jazzlib/Checksum;
    .locals 1

    .line 73
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedOutputStream;->sum:Lnet/sf/jazzlib/Checksum;

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 82
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedOutputStream;->sum:Lnet/sf/jazzlib/Checksum;

    invoke-interface {v0, p1}, Lnet/sf/jazzlib/Checksum;->update(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 92
    iget-object v0, p0, Lnet/sf/jazzlib/CheckedOutputStream;->sum:Lnet/sf/jazzlib/Checksum;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/jazzlib/Checksum;->update([BII)V

    return-void
.end method
