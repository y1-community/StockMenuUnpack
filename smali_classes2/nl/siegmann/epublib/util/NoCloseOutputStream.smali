.class public Lnl/siegmann/epublib/util/NoCloseOutputStream;
.super Ljava/io/OutputStream;
.source "NoCloseOutputStream.java"


# instance fields
.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lnl/siegmann/epublib/util/NoCloseOutputStream;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lnl/siegmann/epublib/util/NoCloseOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
