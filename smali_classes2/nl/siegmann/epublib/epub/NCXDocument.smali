.class public Lnl/siegmann/epublib/epub/NCXDocument;
.super Ljava/lang/Object;
.source "NCXDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/siegmann/epublib/epub/NCXDocument$NCXAttributeValues;,
        Lnl/siegmann/epublib/epub/NCXDocument$NCXAttributes;,
        Lnl/siegmann/epublib/epub/NCXDocument$NCXTags;
    }
.end annotation


# static fields
.field public static final DEFAULT_NCX_HREF:Ljava/lang/String; = "toc.ncx"

.field public static final NAMESPACE_NCX:Ljava/lang/String; = "http://www.daisy.org/z3986/2005/ncx/"

.field public static final NCX_ITEM_ID:Ljava/lang/String; = "ncx"

.field public static final PREFIX_DTB:Ljava/lang/String; = "dtb"

.field public static final PREFIX_NCX:Ljava/lang/String; = "ncx"

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lnl/siegmann/epublib/epub/NCXDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/NCXDocument;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNCXResource(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lnl/siegmann/epublib/domain/TableOfContents;)Lnl/siegmann/epublib/domain/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Identifier;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Author;",
            ">;",
            "Lnl/siegmann/epublib/domain/TableOfContents;",
            ")",
            "Lnl/siegmann/epublib/domain/Resource;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    invoke-static {v0}, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->createXmlSerializer(Ljava/io/OutputStream;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 186
    invoke-static {v1, p0, p1, p2, p3}, Lnl/siegmann/epublib/epub/NCXDocument;->write(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lnl/siegmann/epublib/domain/TableOfContents;)V

    .line 187
    new-instance p0, Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    sget-object p2, Lnl/siegmann/epublib/service/MediatypeService;->NCX:Lnl/siegmann/epublib/domain/MediaType;

    const-string p3, "ncx"

    const-string v0, "toc.ncx"

    invoke-direct {p0, p3, p1, v0, p2}, Lnl/siegmann/epublib/domain/Resource;-><init>(Ljava/lang/String;[BLjava/lang/String;Lnl/siegmann/epublib/domain/MediaType;)V

    return-object p0
.end method

.method public static createNCXResource(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Metadata;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getAuthors()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getTableOfContents()Lnl/siegmann/epublib/domain/TableOfContents;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->createNCXResource(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lnl/siegmann/epublib/domain/TableOfContents;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static read(Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/epub/EpubReader;)Lnl/siegmann/epublib/domain/Resource;
    .locals 3

    .line 81
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p1

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 82
    sget-object p0, Lnl/siegmann/epublib/epub/NCXDocument;->log:Lorg/slf4j/Logger;

    const-string p1, "Book does not contain a table of contents file"

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-object v0

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p1

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v0

    .line 90
    :cond_1
    invoke-static {v0}, Lnl/siegmann/epublib/util/ResourceUtil;->getAsDocument(Lnl/siegmann/epublib/domain/Resource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "http://www.daisy.org/z3986/2005/ncx/"

    const-string v2, "navMap"

    invoke-static {p1, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 92
    new-instance v1, Lnl/siegmann/epublib/domain/TableOfContents;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-static {p1, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->readTOCReferences(Lorg/w3c/dom/NodeList;Lnl/siegmann/epublib/domain/Book;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lnl/siegmann/epublib/domain/TableOfContents;-><init>(Ljava/util/List;)V

    .line 93
    invoke-virtual {p0, v1}, Lnl/siegmann/epublib/domain/Book;->setTableOfContents(Lnl/siegmann/epublib/domain/TableOfContents;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    sget-object p1, Lnl/siegmann/epublib/epub/NCXDocument;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static readNavLabel(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://www.daisy.org/z3986/2005/ncx/"

    const-string v1, "navLabel"

    .line 152
    invoke-static {p0, v0, v1}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    const-string v1, "text"

    .line 153
    invoke-static {p0, v0, v1}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0}, Lnl/siegmann/epublib/epub/DOMUtil;->getTextChildrenContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readNavReference(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://www.daisy.org/z3986/2005/ncx/"

    const-string v1, "content"

    .line 141
    invoke-static {p0, v0, v1}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    const-string v1, "src"

    .line 142
    invoke-static {p0, v0, v1}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "UTF-8"

    .line 144
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lnl/siegmann/epublib/epub/NCXDocument;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method static readTOCReference(Lorg/w3c/dom/Element;Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 7

    .line 120
    invoke-static {p0}, Lnl/siegmann/epublib/epub/NCXDocument;->readNavLabel(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v1, v2}, Lnl/siegmann/epublib/util/StringUtil;->substringBeforeLast(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v3

    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnl/siegmann/epublib/epub/NCXDocument;->readNavReference(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnl/siegmann/epublib/util/StringUtil;->collapsePathDots(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    .line 128
    invoke-static {v1, v2}, Lnl/siegmann/epublib/util/StringUtil;->substringBefore(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v1, v2}, Lnl/siegmann/epublib/util/StringUtil;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v2

    if-nez v2, :cond_1

    .line 132
    sget-object v4, Lnl/siegmann/epublib/epub/NCXDocument;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource with href "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in NCX document not found"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 134
    :cond_1
    new-instance v3, Lnl/siegmann/epublib/domain/TOCReference;

    invoke-direct {v3, v0, v2, v1}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)V

    .line 135
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-static {p0, p1}, Lnl/siegmann/epublib/epub/NCXDocument;->readTOCReferences(Lorg/w3c/dom/NodeList;Lnl/siegmann/epublib/domain/Book;)Ljava/util/List;

    move-result-object p0

    .line 136
    invoke-virtual {v3, p0}, Lnl/siegmann/epublib/domain/TOCReference;->setChildren(Ljava/util/List;)V

    return-object v3
.end method

.method private static readTOCReferences(Lorg/w3c/dom/NodeList;Lnl/siegmann/epublib/domain/Book;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Lnl/siegmann/epublib/domain/Book;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 102
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 105
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 106
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "navPoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-static {v2, p1}, Lnl/siegmann/epublib/epub/NCXDocument;->readTOCReference(Lorg/w3c/dom/Element;Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/TOCReference;

    move-result-object v2

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static write(Lnl/siegmann/epublib/epub/EpubWriter;Lnl/siegmann/epublib/domain/Book;Ljava/util/zip/ZipOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance p0, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 159
    invoke-static {p2}, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->createXmlSerializer(Ljava/io/OutputStream;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 160
    invoke-static {p0, p1}, Lnl/siegmann/epublib/epub/NCXDocument;->write(Lorg/xmlpull/v1/XmlSerializer;Lnl/siegmann/epublib/domain/Book;)V

    .line 161
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-void
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lnl/siegmann/epublib/domain/TableOfContents;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Identifier;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Author;",
            ">;",
            "Lnl/siegmann/epublib/domain/TableOfContents;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, ""

    const-string v1, "http://www.daisy.org/z3986/2005/ncx/"

    .line 193
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ncx"

    .line 194
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "version"

    const-string v4, "2005-1"

    .line 197
    invoke-interface {p0, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "head"

    .line 198
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnl/siegmann/epublib/domain/Identifier;

    .line 201
    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Identifier;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Identifier;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->writeMetaElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    :cond_0
    const-string p1, "generator"

    const-string v3, "EPUBLib version 3.0"

    .line 204
    invoke-static {p1, v3, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->writeMetaElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 205
    invoke-virtual {p4}, Lnl/siegmann/epublib/domain/TableOfContents;->calculateDepth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "depth"

    invoke-static {v3, p1, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->writeMetaElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string p1, "totalPageCount"

    const-string v3, "0"

    .line 206
    invoke-static {p1, v3, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->writeMetaElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string p1, "maxPageNumber"

    .line 207
    invoke-static {p1, v3, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->writeMetaElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 209
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "docTitle"

    .line 211
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "text"

    .line 212
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    invoke-static {p2}, Lnl/siegmann/epublib/util/StringUtil;->defaultIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnl/siegmann/epublib/domain/Author;

    const-string p3, "docAuthor"

    .line 219
    invoke-interface {p0, v1, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Author;->getLastname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Author;->getFirstname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-interface {p0, v1, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_1
    const-string p1, "navMap"

    .line 226
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    invoke-virtual {p4}, Lnl/siegmann/epublib/domain/TableOfContents;->getTocReferences()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3, p0}, Lnl/siegmann/epublib/epub/NCXDocument;->writeNavPoints(Ljava/util/List;ILorg/xmlpull/v1/XmlSerializer;)I

    .line 228
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Lnl/siegmann/epublib/domain/Book;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Metadata;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getAuthors()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getTableOfContents()Lnl/siegmann/epublib/domain/TableOfContents;

    move-result-object p1

    invoke-static {p0, v0, v1, v2, p1}, Lnl/siegmann/epublib/epub/NCXDocument;->write(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lnl/siegmann/epublib/domain/TableOfContents;)V

    return-void
.end method

.method private static writeMetaElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.daisy.org/z3986/2005/ncx/"

    const-string v1, "meta"

    .line 236
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dtb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    const-string v3, "name"

    invoke-interface {p2, v2, v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "content"

    .line 238
    invoke-interface {p2, v2, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeNavPointEnd(Lnl/siegmann/epublib/domain/TOCReference;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "http://www.daisy.org/z3986/2005/ncx/"

    const-string v0, "navPoint"

    .line 276
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeNavPointStart(Lnl/siegmann/epublib/domain/TOCReference;ILorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.daisy.org/z3986/2005/ncx/"

    const-string v1, "navPoint"

    .line 261
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navPoint-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "id"

    invoke-interface {p2, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "playOrder"

    invoke-interface {p2, v2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "class"

    const-string v1, "chapter"

    .line 264
    invoke-interface {p2, v2, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "navLabel"

    .line 265
    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "text"

    .line 266
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/TOCReference;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "content"

    .line 270
    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/TOCReference;->getCompleteHref()Ljava/lang/String;

    move-result-object p0

    const-string v1, "src"

    invoke-interface {p2, v2, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeNavPoints(Ljava/util/List;ILorg/xmlpull/v1/XmlSerializer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;I",
            "Lorg/xmlpull/v1/XmlSerializer;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/TOCReference;

    .line 245
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/TOCReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnl/siegmann/epublib/epub/NCXDocument;->writeNavPoints(Ljava/util/List;ILorg/xmlpull/v1/XmlSerializer;)I

    move-result p1

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {v0, p1, p2}, Lnl/siegmann/epublib/epub/NCXDocument;->writeNavPointStart(Lnl/siegmann/epublib/domain/TOCReference;ILorg/xmlpull/v1/XmlSerializer;)V

    add-int/lit8 p1, p1, 0x1

    .line 251
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lnl/siegmann/epublib/epub/NCXDocument;->writeNavPoints(Ljava/util/List;ILorg/xmlpull/v1/XmlSerializer;)I

    move-result p1

    .line 254
    :cond_1
    invoke-static {v0, p2}, Lnl/siegmann/epublib/epub/NCXDocument;->writeNavPointEnd(Lnl/siegmann/epublib/domain/TOCReference;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    :cond_2
    return p1
.end method
