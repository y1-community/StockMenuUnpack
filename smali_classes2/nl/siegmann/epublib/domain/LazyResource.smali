.class public Lnl/siegmann/epublib/domain/LazyResource;
.super Lnl/siegmann/epublib/domain/Resource;
.source "LazyResource.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = 0x46a12ec3ca3f1332L


# instance fields
.field private cachedSize:J

.field private filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lnl/siegmann/epublib/domain/LazyResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/domain/LazyResource;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {p1, p3}, Lnl/siegmann/epublib/util/IOUtil;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p1

    invoke-static {p4}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p4, v0}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;)V

    .line 65
    iput-object p2, p0, Lnl/siegmann/epublib/domain/LazyResource;->filename:Ljava/lang/String;

    int-to-long p1, p3

    .line 66
    iput-wide p1, p0, Lnl/siegmann/epublib/domain/LazyResource;->cachedSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 43
    invoke-static {p4}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p4, v0}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;)V

    .line 44
    iput-object p1, p0, Lnl/siegmann/epublib/domain/LazyResource;->filename:Ljava/lang/String;

    .line 45
    iput-wide p2, p0, Lnl/siegmann/epublib/domain/LazyResource;->cachedSize:J

    return-void
.end method

.method private getResourceStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/LazyResource;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lnl/siegmann/epublib/domain/LazyResource;->originalHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v2, Lnl/siegmann/epublib/domain/ResourceInputStream;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lnl/siegmann/epublib/domain/ResourceInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipFile;)V

    return-object v2

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnl/siegmann/epublib/domain/LazyResource;->originalHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in epub file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnl/siegmann/epublib/domain/LazyResource;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 140
    iget-object v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->data:[B

    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->data:[B

    if-nez v0, :cond_1

    .line 106
    sget-object v0, Lnl/siegmann/epublib/domain/LazyResource;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing lazy resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnl/siegmann/epublib/domain/LazyResource;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/LazyResource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lnl/siegmann/epublib/domain/LazyResource;->getResourceStream()Ljava/io/InputStream;

    move-result-object v0

    .line 109
    iget-wide v1, p0, Lnl/siegmann/epublib/domain/LazyResource;->cachedSize:J

    long-to-int v2, v1

    invoke-static {v0, v2}, Lnl/siegmann/epublib/util/IOUtil;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iput-object v1, p0, Lnl/siegmann/epublib/domain/LazyResource;->data:[B

    .line 116
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load the contents of entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/LazyResource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from epub file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnl/siegmann/epublib/domain/LazyResource;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->data:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/LazyResource;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/LazyResource;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 80
    :cond_0
    invoke-direct {p0}, Lnl/siegmann/epublib/domain/LazyResource;->getResourceStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 160
    iget-object v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->data:[B

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    .line 164
    :cond_0
    iget-wide v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->cachedSize:J

    return-wide v0
.end method

.method public initialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/LazyResource;->getData()[B

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lnl/siegmann/epublib/domain/LazyResource;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
