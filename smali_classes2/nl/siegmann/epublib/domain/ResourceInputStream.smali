.class public Lnl/siegmann/epublib/domain/ResourceInputStream;
.super Ljava/io/FilterInputStream;
.source "ResourceInputStream.java"


# instance fields
.field private final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipFile;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    iput-object p2, p0, Lnl/siegmann/epublib/domain/ResourceInputStream;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 35
    iget-object v0, p0, Lnl/siegmann/epublib/domain/ResourceInputStream;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method
