.class public Lnl/siegmann/epublib/util/NoCloseWriter;
.super Ljava/io/Writer;
.source "NoCloseWriter.java"


# instance fields
.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 20
    iput-object p1, p0, Lnl/siegmann/epublib/util/NoCloseWriter;->writer:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lnl/siegmann/epublib/util/NoCloseWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lnl/siegmann/epublib/util/NoCloseWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
