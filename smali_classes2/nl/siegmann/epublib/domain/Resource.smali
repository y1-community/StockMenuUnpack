.class public Lnl/siegmann/epublib/domain/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xe7cd7ffecf1a485L


# instance fields
.field protected data:[B

.field private href:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private inputEncoding:Ljava/lang/String;

.field private mediaType:Lnl/siegmann/epublib/domain/MediaType;

.field protected originalHref:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lnl/siegmann/epublib/util/IOUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p2}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 85
    invoke-static {p1, v0}, Lnl/siegmann/epublib/util/IOUtil;->toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p2}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v5

    const/4 v2, 0x0

    const-string v6, "UTF-8"

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 44
    invoke-static {p1}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1, v1}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;)V
    .locals 6

    const-string v5, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 118
    invoke-direct/range {v0 .. v5}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Resource;->id:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lnl/siegmann/epublib/domain/Resource;->href:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lnl/siegmann/epublib/domain/Resource;->originalHref:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lnl/siegmann/epublib/domain/Resource;->mediaType:Lnl/siegmann/epublib/domain/MediaType;

    .line 137
    iput-object p5, p0, Lnl/siegmann/epublib/domain/Resource;->inputEncoding:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lnl/siegmann/epublib/domain/Resource;->data:[B

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 6

    .line 72
    invoke-static {p2}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v4

    const/4 v1, 0x0

    const-string v5, "UTF-8"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLnl/siegmann/epublib/domain/MediaType;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, p1, v0, p2}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 283
    instance-of v0, p1, Lnl/siegmann/epublib/domain/Resource;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 286
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->href:Ljava/lang/String;

    check-cast p1, Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->data:[B

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getMediaType()Lnl/siegmann/epublib/domain/MediaType;
    .locals 1

    .line 295
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->mediaType:Lnl/siegmann/epublib/domain/MediaType;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    new-instance v0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getInputEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 185
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 274
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resource;->href:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setData([B)V
    .locals 0

    .line 176
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Resource;->data:[B

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Resource;->href:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Resource;->id:Ljava/lang/String;

    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Resource;->inputEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(Lnl/siegmann/epublib/domain/MediaType;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Resource;->mediaType:Lnl/siegmann/epublib/domain/MediaType;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Resource;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 307
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Resource;->id:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "title"

    aput-object v3, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Resource;->title:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v3, "encoding"

    aput-object v3, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Resource;->inputEncoding:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v3, "mediaType"

    aput-object v3, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Resource;->mediaType:Lnl/siegmann/epublib/domain/MediaType;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v1, 0x8

    const-string v3, "href"

    aput-object v3, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Resource;->href:Ljava/lang/String;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v3, "size"

    aput-object v3, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Resource;->data:[B

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, v1

    .line 312
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 307
    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
