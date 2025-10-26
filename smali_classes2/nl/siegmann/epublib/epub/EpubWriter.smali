.class public Lnl/siegmann/epublib/epub/EpubWriter;
.super Ljava/lang/Object;
.source "EpubWriter.java"


# static fields
.field static final EMPTY_NAMESPACE_PREFIX:Ljava/lang/String; = ""

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lnl/siegmann/epublib/epub/EpubWriter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/EpubWriter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lnl/siegmann/epublib/epub/BookProcessor;->IDENTITY_BOOKPROCESSOR:Lnl/siegmann/epublib/epub/BookProcessor;

    invoke-direct {p0, v0}, Lnl/siegmann/epublib/epub/EpubWriter;-><init>(Lnl/siegmann/epublib/epub/BookProcessor;)V

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/epub/BookProcessor;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lnl/siegmann/epublib/epub/BookProcessor;->IDENTITY_BOOKPROCESSOR:Lnl/siegmann/epublib/epub/BookProcessor;

    .line 42
    iput-object p1, p0, Lnl/siegmann/epublib/epub/EpubWriter;->bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;

    return-void
.end method

.method private calculateCrc([B)J
    .locals 2

    .line 153
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 154
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 155
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private initTOCResource(Lnl/siegmann/epublib/domain/Book;)V
    .locals 3

    .line 67
    :try_start_0
    invoke-static {p1}, Lnl/siegmann/epublib/epub/NCXDocument;->createNCXResource(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnl/siegmann/epublib/domain/Resources;->remove(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    .line 72
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnl/siegmann/epublib/domain/Spine;->setTocResource(Lnl/siegmann/epublib/domain/Resource;)V

    .line 73
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    sget-object v0, Lnl/siegmann/epublib/epub/EpubWriter;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing table of contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;
    .locals 1

    .line 58
    iget-object v0, p0, Lnl/siegmann/epublib/epub/EpubWriter;->bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lnl/siegmann/epublib/epub/BookProcessor;->processBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private writeContainer(Ljava/util/zip/ZipOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "META-INF/container.xml"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 126
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string p1, "<?xml version=\"1.0\"?>\n"

    .line 127
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "<container version=\"1.0\" xmlns=\"urn:oasis:names:tc:opendocument:xmlns:container\">\n"

    .line 128
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "\t<rootfiles>\n"

    .line 129
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "\t\t<rootfile full-path=\"OEBPS/content.opf\" media-type=\"application/oebps-package+xml\"/>\n"

    .line 130
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "\t</rootfiles>\n"

    .line 131
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "</container>"

    .line 132
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method private writeMimeType(Ljava/util/zip/ZipOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "mimetype"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 145
    sget-object v1, Lnl/siegmann/epublib/service/MediatypeService;->EPUB:Lnl/siegmann/epublib/domain/MediaType;

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/MediaType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 146
    array-length v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 147
    invoke-direct {p0, v1}, Lnl/siegmann/epublib/epub/EpubWriter;->calculateCrc([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 149
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    return-void
.end method

.method private writePackageDocument(Lnl/siegmann/epublib/domain/Book;Ljava/util/zip/ZipOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "OEBPS/content.opf"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 111
    invoke-static {p2}, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->createXmlSerializer(Ljava/io/OutputStream;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p2

    .line 112
    invoke-static {p0, p2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->write(Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;Lnl/siegmann/epublib/domain/Book;)V

    .line 113
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-void
.end method

.method private writeResource(Lnl/siegmann/epublib/domain/Resource;Ljava/util/zip/ZipOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEBPS/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 100
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 101
    invoke-static {p1, p2}, Lnl/siegmann/epublib/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 102
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    sget-object p2, Lnl/siegmann/epublib/epub/EpubWriter;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private writeResources(Lnl/siegmann/epublib/domain/Book;Ljava/util/zip/ZipOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resources;->getAll()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/Resource;

    .line 82
    invoke-direct {p0, v0, p2}, Lnl/siegmann/epublib/epub/EpubWriter;->writeResource(Lnl/siegmann/epublib/domain/Resource;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBookProcessor()Lnl/siegmann/epublib/epub/BookProcessor;
    .locals 1

    .line 171
    iget-object v0, p0, Lnl/siegmann/epublib/epub/EpubWriter;->bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;

    return-object v0
.end method

.method getNcxHref()Ljava/lang/String;
    .locals 1

    const-string v0, "toc.ncx"

    return-object v0
.end method

.method getNcxId()Ljava/lang/String;
    .locals 1

    const-string v0, "ncx"

    return-object v0
.end method

.method getNcxMediaType()Ljava/lang/String;
    .locals 1

    .line 167
    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->NCX:Lnl/siegmann/epublib/domain/MediaType;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/MediaType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBookProcessor(Lnl/siegmann/epublib/epub/BookProcessor;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lnl/siegmann/epublib/epub/EpubWriter;->bookProcessor:Lnl/siegmann/epublib/epub/BookProcessor;

    return-void
.end method

.method public write(Lnl/siegmann/epublib/domain/Book;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/epub/EpubWriter;->processBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    .line 48
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/epub/EpubWriter;->writeMimeType(Ljava/util/zip/ZipOutputStream;)V

    .line 50
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/epub/EpubWriter;->writeContainer(Ljava/util/zip/ZipOutputStream;)V

    .line 51
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/epub/EpubWriter;->initTOCResource(Lnl/siegmann/epublib/domain/Book;)V

    .line 52
    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/epub/EpubWriter;->writeResources(Lnl/siegmann/epublib/domain/Book;Ljava/util/zip/ZipOutputStream;)V

    .line 53
    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/epub/EpubWriter;->writePackageDocument(Lnl/siegmann/epublib/domain/Book;Ljava/util/zip/ZipOutputStream;)V

    .line 54
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method
