.class public Lnl/siegmann/epublib/util/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createResource(Ljava/io/File;)Lnl/siegmann/epublib/domain/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lnl/siegmann/epublib/util/IOUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 39
    new-instance v1, Lnl/siegmann/epublib/domain/Resource;

    invoke-direct {v1, p0, v0}, Lnl/siegmann/epublib/domain/Resource;-><init>([BLnl/siegmann/epublib/domain/MediaType;)V

    return-object v1
.end method

.method public static createResource(Ljava/lang/String;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;
    .locals 7

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</title></head><body><h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</h1></body></html>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 53
    new-instance v6, Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v4, Lnl/siegmann/epublib/service/MediatypeService;->XHTML:Lnl/siegmann/epublib/domain/MediaType;

    const/4 v1, 0x0

    const-string v5, "UTF-8"

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createResource(Lnet/sf/jazzlib/ZipEntry;Ljava/io/InputStream;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createResource(Lnet/sf/jazzlib/ZipEntry;Lnet/sf/jazzlib/ZipInputStream;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAsDocument(Lnl/siegmann/epublib/domain/Resource;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->createDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Lnl/siegmann/epublib/util/ResourceUtil;->getAsDocument(Lnl/siegmann/epublib/domain/Resource;Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static getAsDocument(Lnl/siegmann/epublib/domain/Resource;Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 124
    invoke-static {p0}, Lnl/siegmann/epublib/util/ResourceUtil;->getInputSource(Lnl/siegmann/epublib/domain/Resource;)Lorg/xml/sax/InputSource;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    invoke-virtual {p1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static getInputSource(Lnl/siegmann/epublib/domain/Resource;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getReader()Ljava/io/Reader;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 99
    :cond_1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static recode(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
