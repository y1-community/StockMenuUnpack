.class public Lnl/siegmann/epublib/epub/PackageDocumentWriter;
.super Lnl/siegmann/epublib/epub/PackageDocumentBase;
.source "PackageDocumentWriter.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lnl/siegmann/epublib/epub/PackageDocumentWriter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lnl/siegmann/epublib/epub/PackageDocumentBase;-><init>()V

    return-void
.end method

.method private static ensureCoverPageGuideReferenceWritten(Lnl/siegmann/epublib/domain/Guide;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object p1, Lnl/siegmann/epublib/domain/GuideReference;->COVER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/domain/Guide;->getGuideReferencesByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Guide;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 186
    new-instance p1, Lnl/siegmann/epublib/domain/GuideReference;

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Guide;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p0

    sget-object v0, Lnl/siegmann/epublib/domain/GuideReference;->COVER:Ljava/lang/String;

    sget-object v1, Lnl/siegmann/epublib/domain/GuideReference;->COVER:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lnl/siegmann/epublib/domain/GuideReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->writeGuideReference(Lnl/siegmann/epublib/domain/GuideReference;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_1
    return-void
.end method

.method private static getAllResourcesSortById(Lnl/siegmann/epublib/domain/Book;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl/siegmann/epublib/domain/Book;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resources;->getAll()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    new-instance p0, Lnl/siegmann/epublib/epub/PackageDocumentWriter$1;

    invoke-direct {p0}, Lnl/siegmann/epublib/epub/PackageDocumentWriter$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static write(Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;Lnl/siegmann/epublib/domain/Book;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "package"

    const-string v2, "http://www.idpf.org/2007/opf"

    :try_start_0
    const-string v3, "UTF-8"

    const/4 v4, 0x0

    .line 38
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "opf"

    .line 39
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dc"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    .line 40
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "version"

    const-string v4, "2.0"

    .line 42
    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "unique-identifier"

    const-string v4, "BookId"

    .line 43
    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    invoke-static {p2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeMetaData(Lnl/siegmann/epublib/domain/Book;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 47
    invoke-static {p2, p0, p1}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->writeManifest(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 48
    invoke-static {p2, p0, p1}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->writeSpine(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 49
    invoke-static {p2, p0, p1}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->writeGuide(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 51
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static writeGuide(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.idpf.org/2007/opf"

    const-string v1, "guide"

    .line 171
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getGuide()Lnl/siegmann/epublib/domain/Guide;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->ensureCoverPageGuideReferenceWritten(Lnl/siegmann/epublib/domain/Guide;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 173
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getGuide()Lnl/siegmann/epublib/domain/Guide;

    move-result-object p0

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Guide;->getReferences()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl/siegmann/epublib/domain/GuideReference;

    .line 174
    invoke-static {p1, p2}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->writeGuideReference(Lnl/siegmann/epublib/domain/GuideReference;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeGuideReference(Lnl/siegmann/epublib/domain/GuideReference;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://www.idpf.org/2007/opf"

    const-string v1, "reference"

    .line 195
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/GuideReference;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "type"

    invoke-interface {p1, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/GuideReference;->getCompleteHref()Ljava/lang/String;

    move-result-object v2

    const-string v4, "href"

    invoke-interface {p1, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/GuideReference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/GuideReference;->getTitle()Ljava/lang/String;

    move-result-object p0

    const-string v2, "title"

    invoke-interface {p1, v3, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    :cond_1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeItem(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resource;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 130
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    sget-object v1, Lnl/siegmann/epublib/service/MediatypeService;->NCX:Lnl/siegmann/epublib/domain/MediaType;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p0

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p0

    const-string v0, ", mediatype:"

    const-string v1, ")"

    if-eqz p0, :cond_1

    .line 135
    sget-object p0, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource id must not be empty (href: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 139
    sget-object p0, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource href must not be empty (id: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_2
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object p0

    if-nez p0, :cond_3

    .line 143
    sget-object p0, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resource mediatype must not be empty (id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", href:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "http://www.idpf.org/2007/opf"

    const-string v0, "item"

    .line 146
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "id"

    invoke-interface {p2, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v1

    const-string v3, "href"

    invoke-interface {p2, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object p1

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/MediaType;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "media-type"

    invoke-interface {p2, v2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    :goto_0
    return-void
.end method

.method private static writeManifest(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.idpf.org/2007/opf"

    const-string v1, "manifest"

    .line 90
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "item"

    .line 92
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-virtual {p1}, Lnl/siegmann/epublib/epub/EpubWriter;->getNcxId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "id"

    invoke-interface {p2, v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-virtual {p1}, Lnl/siegmann/epublib/epub/EpubWriter;->getNcxHref()Ljava/lang/String;

    move-result-object v3

    const-string v5, "href"

    invoke-interface {p2, v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    invoke-virtual {p1}, Lnl/siegmann/epublib/epub/EpubWriter;->getNcxMediaType()Ljava/lang/String;

    move-result-object p1

    const-string v3, "media-type"

    invoke-interface {p2, v4, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->getAllResourcesSortById(Lnl/siegmann/epublib/domain/Book;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/Resource;

    .line 101
    invoke-static {p0, v2, p2}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->writeItem(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resource;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeSpine(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubWriter;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "http://www.idpf.org/2007/opf"

    const-string v0, "spine"

    .line 73
    invoke-interface {p2, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "toc"

    invoke-interface {p2, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v1

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnl/siegmann/epublib/domain/Spine;->findFirstResourceById(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "itemref"

    .line 79
    invoke-interface {p2, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "idref"

    invoke-interface {p2, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "linear"

    const-string v4, "no"

    .line 81
    invoke-interface {p2, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    invoke-interface {p2, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p0

    invoke-static {p0, p2}, Lnl/siegmann/epublib/epub/PackageDocumentWriter;->writeSpineItems(Lnl/siegmann/epublib/domain/Spine;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 85
    invoke-interface {p2, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeSpineItems(Lnl/siegmann/epublib/domain/Spine;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Spine;->getSpineReferences()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/SpineReference;

    const-string v1, "http://www.idpf.org/2007/opf"

    const-string v2, "itemref"

    .line 161
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/SpineReference;->getResourceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "idref"

    invoke-interface {p1, v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/SpineReference;->isLinear()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "linear"

    const-string v3, "no"

    .line 164
    invoke-interface {p1, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    :cond_0
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    return-void
.end method
