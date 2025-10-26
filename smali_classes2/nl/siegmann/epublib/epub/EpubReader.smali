.class public Lnl/siegmann/epublib/epub/EpubReader;
.super Ljava/lang/Object;
.source "EpubReader.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lnl/siegmann/epublib/epub/EpubReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/EpubReader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lnl/siegmann/epublib/epub/BookProcessor;->IDENTITY_BOOKPROCESSOR:Lnl/siegmann/epublib/epub/BookProcessor;

    iput-object v0, p0, Lnl/siegmann/epublib/epub/EpubReader;->bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;

    return-void
.end method

.method private getPackageResourceHref(Lnl/siegmann/epublib/domain/Resources;)Ljava/lang/String;
    .locals 3

    const-string v0, "META-INF/container.xml"

    .line 140
    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/Resources;->remove(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    const-string v0, "OEBPS/content.opf"

    if-nez p1, :cond_0

    return-object v0

    .line 145
    :cond_0
    :try_start_0
    invoke-static {p1}, Lnl/siegmann/epublib/util/ResourceUtil;->getAsDocument(Lnl/siegmann/epublib/domain/Resource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "rootfiles"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v2, "rootfile"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v1, "full-path"

    .line 147
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    sget-object v1, Lnl/siegmann/epublib/epub/EpubReader;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 151
    :goto_0
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private handleMimeType(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)V
    .locals 0

    const-string p1, "mimetype"

    .line 158
    invoke-virtual {p2, p1}, Lnl/siegmann/epublib/domain/Resources;->remove(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method

.method private postProcessBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;
    .locals 1

    .line 116
    iget-object v0, p0, Lnl/siegmann/epublib/epub/EpubReader;->bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1}, Lnl/siegmann/epublib/epub/BookProcessor;->processBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private processNcxResource(Lnl/siegmann/epublib/domain/Resource;Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Resource;
    .locals 0

    .line 123
    invoke-static {p2, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->read(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubReader;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    return-object p1
.end method

.method private processPackageResource(Ljava/lang/String;Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 127
    invoke-virtual {p3, p1}, Lnl/siegmann/epublib/domain/Resources;->remove(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    .line 129
    :try_start_0
    invoke-static {p1, p0, p2, p3}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->read(Lnl/siegmann/epublib/domain/Resource;Lnl/siegmann/epublib/epub/EpubReader;Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 131
    sget-object p3, Lnl/siegmann/epublib/epub/EpubReader;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public readEpub(Ljava/io/InputStream;)Lnl/siegmann/epublib/domain/Book;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 36
    invoke-virtual {p0, p1, v0}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Ljava/io/InputStream;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpub(Ljava/io/InputStream;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lnet/sf/jazzlib/ZipInputStream;

    invoke-direct {v0, p1}, Lnet/sf/jazzlib/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Lnet/sf/jazzlib/ZipInputStream;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpub(Lnet/sf/jazzlib/ZipFile;)Lnl/siegmann/epublib/domain/Book;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 44
    invoke-virtual {p0, p1, v0}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpub(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {p1, p2}, Lnl/siegmann/epublib/epub/ResourcesLoader;->loadResources(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpub(Lnet/sf/jazzlib/ZipInputStream;)Lnl/siegmann/epublib/domain/Book;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 40
    invoke-virtual {p0, p1, v0}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Lnet/sf/jazzlib/ZipInputStream;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpub(Lnet/sf/jazzlib/ZipInputStream;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p1, p2}, Lnl/siegmann/epublib/epub/ResourcesLoader;->loadResources(Lnet/sf/jazzlib/ZipInputStream;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpub(Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Book;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lnl/siegmann/epublib/domain/Book;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Book;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Lnl/siegmann/epublib/domain/Resources;Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpub(Lnl/siegmann/epublib/domain/Resources;Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 102
    new-instance p2, Lnl/siegmann/epublib/domain/Book;

    invoke-direct {p2}, Lnl/siegmann/epublib/domain/Book;-><init>()V

    .line 104
    :cond_0
    invoke-direct {p0, p2, p1}, Lnl/siegmann/epublib/epub/EpubReader;->handleMimeType(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)V

    .line 105
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/epub/EpubReader;->getPackageResourceHref(Lnl/siegmann/epublib/domain/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0, p2, p1}, Lnl/siegmann/epublib/epub/EpubReader;->processPackageResource(Ljava/lang/String;Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    .line 107
    invoke-virtual {p2, p1}, Lnl/siegmann/epublib/domain/Book;->setOpfResource(Lnl/siegmann/epublib/domain/Resource;)V

    .line 108
    invoke-direct {p0, p1, p2}, Lnl/siegmann/epublib/epub/EpubReader;->processNcxResource(Lnl/siegmann/epublib/domain/Resource;Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Lnl/siegmann/epublib/domain/Book;->setNcxResource(Lnl/siegmann/epublib/domain/Resource;)V

    .line 110
    invoke-direct {p0, p2}, Lnl/siegmann/epublib/epub/EpubReader;->postProcessBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpubLazy(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Book;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->mediatypes:[Lnl/siegmann/epublib/domain/MediaType;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnl/siegmann/epublib/epub/EpubReader;->readEpubLazy(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;Ljava/util/List;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method

.method public readEpubLazy(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;Ljava/util/List;)Lnl/siegmann/epublib/domain/Book;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/jazzlib/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/MediaType;",
            ">;)",
            "Lnl/siegmann/epublib/domain/Book;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p1, p2, p3}, Lnl/siegmann/epublib/epub/ResourcesLoader;->loadResources(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;Ljava/util/List;)Lnl/siegmann/epublib/domain/Resources;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/epub/EpubReader;->readEpub(Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    return-object p1
.end method
